package §7z§
{
   import § 6§.*;
   import § q§.*;
   import §+L§.*;
   import §9![§.*;
   import §^+§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §''§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §0!5§;
      
      private var §0!g§:b2ContactListener;
      
      private var §'!r§:b2ContactSolver;
      
      b2internal var §#'§:Vector.<b2Body>;
      
      b2internal var §&!K§:Vector.<b2Contact>;
      
      b2internal var §6!5§:Vector.<b2Joint>;
      
      b2internal var §0!1§:int;
      
      b2internal var §'!d§:int;
      
      b2internal var §!!<§:int;
      
      private var §@!X§:int;
      
      b2internal var §>!r§:int;
      
      b2internal var §!!8§:int;
      
      public function b2Island()
      {
         super();
         this.§#'§ = new Vector.<b2Body>();
         this.§&!K§ = new Vector.<b2Contact>();
         this.§6!5§ = new Vector.<b2Joint>();
      }
      
      public function §5$§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§@!X§ = param1;
         this.§>!r§ = param2;
         this.§!!8§ = param3;
         this.§0!1§ = 0;
         this.§!!<§ = 0;
         this.§'!d§ = 0;
         this.§0!5§ = param4;
         this.§0!g§ = param5;
         this.§'!r§ = param6;
         _loc7_ = this.§#'§.length;
         while(_loc7_ < param1)
         {
            this.§#'§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&!K§.length;
         while(_loc7_ < param2)
         {
            this.§&!K§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§6!5§.length;
         while(_loc7_ < param3)
         {
            this.§6!5§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §"]§() : void
      {
         this.§0!1§ = 0;
         this.§!!<§ = 0;
         this.§'!d§ = 0;
      }
      
      public function §]z§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§0!1§)
         {
            if((_loc6_ = this.§#'§[_loc4_]).§,!B§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§#"3§.x += param1.§'!R§ * (param2.x + _loc6_.§4`§ * _loc6_.§ !l§.x);
               _loc6_.§#"3§.y += param1.§'!R§ * (param2.y + _loc6_.§4`§ * _loc6_.§ !l§.y);
               _loc6_.m_angularVelocity += param1.§'!R§ * _loc6_.§^J§ * _loc6_.§1!,§;
               _loc6_.§#"3§.§9"!§(b2Math.§`V§(1 - param1.§'!R§ * _loc6_.§`!c§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§`V§(1 - param1.§'!R§ * _loc6_.§`"'§,0,1);
            }
            _loc4_++;
         }
         this.§'!r§.§5$§(param1,this.§&!K§,this.§!!<§,this.§0!5§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§'!r§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§'!d§)
         {
            (_loc7_ = this.§6!5§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§+!h§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§'!d§)
            {
               (_loc7_ = this.§6!5§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§'!d§)
         {
            (_loc7_ = this.§6!5§[_loc4_]).§"p§();
            _loc4_++;
         }
         _loc8_.§"p§();
         _loc4_ = 0;
         while(_loc4_ < this.§0!1§)
         {
            if((_loc6_ = this.§#'§[_loc4_]).§,!B§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§'!R§ * _loc6_.§#"3§.x;
               _loc10_ = param1.§'!R§ * _loc6_.§#"3§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§#"3§.Normalize();
                  _loc6_.§#"3§.x *= b2Settings.b2_maxTranslation * param1.§+!F§;
                  _loc6_.§#"3§.y *= b2Settings.b2_maxTranslation * param1.§+!F§;
               }
               _loc11_ = param1.§'!R§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§+!F§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§+!F§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§'!R§ * _loc6_.§#"3§.x;
               _loc6_.m_sweep.c.y += param1.§'!R§ * _loc6_.§#"3§.y;
               _loc6_.m_sweep.a += param1.§'!R§ * _loc6_.m_angularVelocity;
               _loc6_.§-y§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§ !Y§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§'!d§)
            {
               _loc14_ = (_loc7_ = this.§6!5§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§`u§(_loc8_.§super§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§0!1§)
            {
               if((_loc6_ = this.§#'§[_loc4_]).§,!B§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§]!4§ & b2Body.§4"1§) == 0)
                  {
                     _loc6_.§3""§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§]!4§ & b2Body.§4"1§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§&"4§(_loc6_.§#"3§,_loc6_.§#"3§) > _loc16_)
                  {
                     _loc6_.§3""§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§3""§ += param1.§'!R§;
                     _loc15_ = b2Math.§]0§(_loc15_,_loc6_.§3""§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§0!1§)
               {
                  (_loc6_ = this.§#'§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §^!4§(param1:b2TimeStep) : void
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
         this.§'!r§.§5$§(param1,this.§&!K§,this.§!!<§,this.§0!5§);
         var _loc4_:b2ContactSolver = this.§'!r§;
         _loc2_ = 0;
         while(_loc2_ < this.§'!d§)
         {
            this.§6!5§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§+!h§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§'!d§)
            {
               this.§6!5§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0!1§)
         {
            if((_loc6_ = this.§#'§[_loc2_]).§,!B§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§'!R§ * _loc6_.§#"3§.x;
               _loc8_ = param1.§'!R§ * _loc6_.§#"3§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§#"3§.Normalize();
                  _loc6_.§#"3§.x *= b2Settings.b2_maxTranslation * param1.§+!F§;
                  _loc6_.§#"3§.y *= b2Settings.b2_maxTranslation * param1.§+!F§;
               }
               _loc9_ = param1.§'!R§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§+!F§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§+!F§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§'!R§ * _loc6_.§#"3§.x;
               _loc6_.m_sweep.c.y += param1.§'!R§ * _loc6_.§#"3§.y;
               _loc6_.m_sweep.a += param1.§'!R§ * _loc6_.m_angularVelocity;
               _loc6_.§-y§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§ !Y§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§'!d§)
            {
               _loc12_ = this.§6!5§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§`u§(_loc4_.§super§);
      }
      
      public function §`u§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§0!g§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!<§)
         {
            _loc3_ = this.§&!K§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§-o§)
            {
               §''§.§5!]§[_loc5_] = _loc4_.§#!V§[_loc5_].normalImpulse;
               §''§.§1! §[_loc5_] = _loc4_.§#!V§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§0!g§.PostSolve(_loc3_,§''§);
            _loc2_++;
         }
      }
      
      public function §9"7§(param1:b2Body) : void
      {
         param1.§?!§ = this.§0!1§;
         var _loc2_:* = this.§0!1§++;
         this.§#'§[_loc2_] = param1;
      }
      
      public function §"!I§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§!!<§++;
         this.§&!K§[_loc2_] = param1;
      }
      
      public function §?D§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§'!d§++;
         this.§6!5§[_loc2_] = param1;
      }
   }
}
