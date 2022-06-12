package §`]§
{
   import §!S§.*;
   import §1!1§.*;
   import §2!+§.*;
   import §?!h§.*;
   import §^!2§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §2!a§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §#!b§;
      
      private var §+!R§:b2ContactListener;
      
      private var §&9§:b2ContactSolver;
      
      b2internal var §>!3§:Vector.<b2Body>;
      
      b2internal var §%h§:Vector.<b2Contact>;
      
      b2internal var §8!F§:Vector.<b2Joint>;
      
      b2internal var §5K§:int;
      
      b2internal var §=!>§:int;
      
      b2internal var §`!&§:int;
      
      private var §4!U§:int;
      
      b2internal var §`"!§:int;
      
      b2internal var §"!u§:int;
      
      public function b2Island()
      {
         super();
         this.§>!3§ = new Vector.<b2Body>();
         this.§%h§ = new Vector.<b2Contact>();
         this.§8!F§ = new Vector.<b2Joint>();
      }
      
      public function §6"8§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§4!U§ = param1;
         this.§`"!§ = param2;
         this.§"!u§ = param3;
         this.§5K§ = 0;
         this.§`!&§ = 0;
         this.§=!>§ = 0;
         this.§#!b§ = param4;
         this.§+!R§ = param5;
         this.§&9§ = param6;
         _loc7_ = this.§>!3§.length;
         while(_loc7_ < param1)
         {
            this.§>!3§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§%h§.length;
         while(_loc7_ < param2)
         {
            this.§%h§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8!F§.length;
         while(_loc7_ < param3)
         {
            this.§8!F§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §]I§() : void
      {
         this.§5K§ = 0;
         this.§`!&§ = 0;
         this.§=!>§ = 0;
      }
      
      public function §8",§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§5K§)
         {
            if((_loc6_ = this.§>!3§[_loc4_]).§8!d§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§#!S§.x += param1.§7"2§ * (param2.x + _loc6_.§+w§ * _loc6_.§'%§.x);
               _loc6_.§#!S§.y += param1.§7"2§ * (param2.y + _loc6_.§+w§ * _loc6_.§'%§.y);
               _loc6_.m_angularVelocity += param1.§7"2§ * _loc6_.§-A§ * _loc6_.§9!j§;
               _loc6_.§#!S§.§<!4§(b2Math.§9!n§(1 - param1.§7"2§ * _loc6_.§7!c§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§9!n§(1 - param1.§7"2§ * _loc6_.§'Z§,0,1);
            }
            _loc4_++;
         }
         this.§&9§.§6"8§(param1,this.§%h§,this.§`!&§,this.§#!b§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§&9§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§=!>§)
         {
            (_loc7_ = this.§8!F§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§&Y§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§=!>§)
            {
               (_loc7_ = this.§8!F§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§=!>§)
         {
            (_loc7_ = this.§8!F§[_loc4_]).§8Q§();
            _loc4_++;
         }
         _loc8_.§8Q§();
         _loc4_ = 0;
         while(_loc4_ < this.§5K§)
         {
            if((_loc6_ = this.§>!3§[_loc4_]).§8!d§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§7"2§ * _loc6_.§#!S§.x;
               _loc10_ = param1.§7"2§ * _loc6_.§#!S§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§#!S§.Normalize();
                  _loc6_.§#!S§.x *= b2Settings.b2_maxTranslation * param1.§2"0§;
                  _loc6_.§#!S§.y *= b2Settings.b2_maxTranslation * param1.§2"0§;
               }
               _loc11_ = param1.§7"2§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§2"0§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§2"0§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7"2§ * _loc6_.§#!S§.x;
               _loc6_.m_sweep.c.y += param1.§7"2§ * _loc6_.§#!S§.y;
               _loc6_.m_sweep.a += param1.§7"2§ * _loc6_.m_angularVelocity;
               _loc6_.§^&§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§,h§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§=!>§)
            {
               _loc14_ = (_loc7_ = this.§8!F§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§#!v§(_loc8_.§^!`§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§5K§)
            {
               if((_loc6_ = this.§>!3§[_loc4_]).§8!d§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§3u§ & b2Body.§%!3§) == 0)
                  {
                     _loc6_.§>P§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§3u§ & b2Body.§%!3§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§`",§(_loc6_.§#!S§,_loc6_.§#!S§) > _loc16_)
                  {
                     _loc6_.§>P§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§>P§ += param1.§7"2§;
                     _loc15_ = b2Math.§]§(_loc15_,_loc6_.§>P§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§5K§)
               {
                  (_loc6_ = this.§>!3§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §06§(param1:b2TimeStep) : void
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
         this.§&9§.§6"8§(param1,this.§%h§,this.§`!&§,this.§#!b§);
         var _loc4_:b2ContactSolver = this.§&9§;
         _loc2_ = 0;
         while(_loc2_ < this.§=!>§)
         {
            this.§8!F§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§&Y§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§=!>§)
            {
               this.§8!F§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§5K§)
         {
            if((_loc6_ = this.§>!3§[_loc2_]).§8!d§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§7"2§ * _loc6_.§#!S§.x;
               _loc8_ = param1.§7"2§ * _loc6_.§#!S§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§#!S§.Normalize();
                  _loc6_.§#!S§.x *= b2Settings.b2_maxTranslation * param1.§2"0§;
                  _loc6_.§#!S§.y *= b2Settings.b2_maxTranslation * param1.§2"0§;
               }
               _loc9_ = param1.§7"2§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§2"0§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§2"0§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7"2§ * _loc6_.§#!S§.x;
               _loc6_.m_sweep.c.y += param1.§7"2§ * _loc6_.§#!S§.y;
               _loc6_.m_sweep.a += param1.§7"2§ * _loc6_.m_angularVelocity;
               _loc6_.§^&§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§,h§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§=!>§)
            {
               _loc12_ = this.§8!F§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§#!v§(_loc4_.§^!`§);
      }
      
      public function §#!v§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§+!R§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!&§)
         {
            _loc3_ = this.§%h§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§3!y§)
            {
               §2!a§.§^!6§[_loc5_] = _loc4_.§2`§[_loc5_].normalImpulse;
               §2!a§.§;3§[_loc5_] = _loc4_.§2`§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§+!R§.PostSolve(_loc3_,§2!a§);
            _loc2_++;
         }
      }
      
      public function §0z§(param1:b2Body) : void
      {
         param1.§7B§ = this.§5K§;
         var _loc2_:* = this.§5K§++;
         this.§>!3§[_loc2_] = param1;
      }
      
      public function §#!B§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§`!&§++;
         this.§%h§[_loc2_] = param1;
      }
      
      public function §'b§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§=!>§++;
         this.§8!F§[_loc2_] = param1;
      }
   }
}
