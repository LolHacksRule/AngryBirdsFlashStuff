package §&!Y§
{
   import § !0§.*;
   import §"G§.*;
   import §4!2§.*;
   import §7F§.*;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §9!l§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §!!_§;
      
      private var §]k§:b2ContactListener;
      
      private var §,!a§:b2ContactSolver;
      
      b2internal var §+!A§:Vector.<b2Body>;
      
      b2internal var §"!-§:Vector.<b2Contact>;
      
      b2internal var §?" §:Vector.<b2Joint>;
      
      b2internal var §1U§:int;
      
      b2internal var §]M§:int;
      
      b2internal var §`s§:int;
      
      private var §3!G§:int;
      
      b2internal var §"l§:int;
      
      b2internal var §#!Q§:int;
      
      public function b2Island()
      {
         super();
         this.§+!A§ = new Vector.<b2Body>();
         this.§"!-§ = new Vector.<b2Contact>();
         this.§?" § = new Vector.<b2Joint>();
      }
      
      public function §,!9§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§3!G§ = param1;
         this.§"l§ = param2;
         this.§#!Q§ = param3;
         this.§1U§ = 0;
         this.§`s§ = 0;
         this.§]M§ = 0;
         this.§!!_§ = param4;
         this.§]k§ = param5;
         this.§,!a§ = param6;
         _loc7_ = this.§+!A§.length;
         while(_loc7_ < param1)
         {
            this.§+!A§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§"!-§.length;
         while(_loc7_ < param2)
         {
            this.§"!-§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§?" §.length;
         while(_loc7_ < param3)
         {
            this.§?" §[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §2"J§() : void
      {
         this.§1U§ = 0;
         this.§`s§ = 0;
         this.§]M§ = 0;
      }
      
      public function §3-§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc4_ = 0;
         while(_loc4_ < this.§1U§)
         {
            if((_loc6_ = this.§+!A§[_loc4_]).§;!w§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§,!1§.x += param1.§&!K§ * (param2.x + _loc6_.§6!j§ * _loc6_.§="F§.x);
               _loc6_.§,!1§.y += param1.§&!K§ * (param2.y + _loc6_.§6!j§ * _loc6_.§="F§.y);
               _loc6_.m_angularVelocity += param1.§&!K§ * _loc6_.§6!$§ * _loc6_.§',§;
               _loc6_.§,!1§.§ !>§(b2Math.§&+§(1 - param1.§&!K§ * _loc6_.§[8§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§&+§(1 - param1.§&!K§ * _loc6_.§'!K§,0,1);
            }
            _loc4_++;
         }
         this.§,!a§.§,!9§(param1,this.§"!-§,this.§`s§,this.§!!_§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§,!a§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§]M§)
         {
            (_loc7_ = this.§?" §[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§'!S§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§]M§)
            {
               (_loc7_ = this.§?" §[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§]M§)
         {
            (_loc7_ = this.§?" §[_loc4_]).§?!"§();
            _loc4_++;
         }
         _loc8_.§?!"§();
         _loc4_ = 0;
         while(_loc4_ < this.§1U§)
         {
            if((_loc6_ = this.§+!A§[_loc4_]).§;!w§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§&!K§ * _loc6_.§,!1§.x;
               _loc10_ = param1.§&!K§ * _loc6_.§,!1§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§,!1§.Normalize();
                  _loc6_.§,!1§.x *= b2Settings.b2_maxTranslation * param1.§`k§;
                  _loc6_.§,!1§.y *= b2Settings.b2_maxTranslation * param1.§`k§;
               }
               _loc11_ = param1.§&!K§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§`k§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§`k§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§&!K§ * _loc6_.§,!1§.x;
               _loc6_.m_sweep.c.y += param1.§&!K§ * _loc6_.§,!1§.y;
               _loc6_.m_sweep.a += param1.§&!K§ * _loc6_.m_angularVelocity;
               _loc6_.§-v§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§5"@§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§]M§)
            {
               _loc14_ = (_loc7_ = this.§?" §[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§0"H§(_loc8_.§>",§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§1U§)
            {
               if((_loc6_ = this.§+!A§[_loc4_]).§;!w§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§^Q§ & b2Body.§+"9§) == 0)
                  {
                     _loc6_.§4"4§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§^Q§ & b2Body.§+"9§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§"V§(_loc6_.§,!1§,_loc6_.§,!1§) > _loc16_)
                  {
                     _loc6_.§4"4§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§4"4§ += param1.§&!K§;
                     _loc15_ = b2Math.§>!]§(_loc15_,_loc6_.§4"4§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§1U§)
               {
                  (_loc6_ = this.§+!A§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §0"3§(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         this.§,!a§.§,!9§(param1,this.§"!-§,this.§`s§,this.§!!_§);
         var _loc4_:b2ContactSolver = this.§,!a§;
         _loc2_ = 0;
         while(_loc2_ < this.§]M§)
         {
            this.§?" §[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§'!S§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§]M§)
            {
               this.§?" §[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1U§)
         {
            if((_loc6_ = this.§+!A§[_loc2_]).§;!w§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§&!K§ * _loc6_.§,!1§.x;
               _loc8_ = param1.§&!K§ * _loc6_.§,!1§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§,!1§.Normalize();
                  _loc6_.§,!1§.x *= b2Settings.b2_maxTranslation * param1.§`k§;
                  _loc6_.§,!1§.y *= b2Settings.b2_maxTranslation * param1.§`k§;
               }
               _loc9_ = param1.§&!K§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§`k§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§`k§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§&!K§ * _loc6_.§,!1§.x;
               _loc6_.m_sweep.c.y += param1.§&!K§ * _loc6_.§,!1§.y;
               _loc6_.m_sweep.a += param1.§&!K§ * _loc6_.m_angularVelocity;
               _loc6_.§-v§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§5"@§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§]M§)
            {
               _loc12_ = this.§?" §[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§0"H§(_loc4_.§>",§);
      }
      
      public function §0"H§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§]k§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`s§)
         {
            _loc3_ = this.§"!-§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§8",§)
            {
               §9!l§.§=!3§[_loc5_] = _loc4_.§0!R§[_loc5_].normalImpulse;
               §9!l§.§7"&§[_loc5_] = _loc4_.§0!R§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§]k§.PostSolve(_loc3_,§9!l§);
            _loc2_++;
         }
      }
      
      public function §0!S§(param1:b2Body) : void
      {
         param1.§5!3§ = this.§1U§;
         var _loc2_:* = this.§1U§++;
         this.§+!A§[_loc2_] = param1;
      }
      
      public function §4!S§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§`s§++;
         this.§"!-§[_loc2_] = param1;
      }
      
      public function §3!@§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§]M§++;
         this.§?" §[_loc2_] = param1;
      }
   }
}
