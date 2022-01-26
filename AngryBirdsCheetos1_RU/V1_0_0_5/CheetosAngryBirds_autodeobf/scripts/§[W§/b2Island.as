package §[W§
{
   import § !5§.*;
   import §!6§.*;
   import §+,§.*;
   import §3!O§.*;
   import §?§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §=!J§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §8!B§;
      
      private var §&S§:b2ContactListener;
      
      private var §6M§:b2ContactSolver;
      
      b2internal var §!T§:Vector.<b2Body>;
      
      b2internal var §&$§:Vector.<b2Contact>;
      
      b2internal var §2!`§:Vector.<b2Joint>;
      
      b2internal var §[!=§:int;
      
      b2internal var §-X§:int;
      
      b2internal var §6e§:int;
      
      private var §@d§:int;
      
      b2internal var §%?§:int;
      
      b2internal var §<+§:int;
      
      public function b2Island()
      {
         super();
         this.§!T§ = new Vector.<b2Body>();
         this.§&$§ = new Vector.<b2Contact>();
         this.§2!`§ = new Vector.<b2Joint>();
      }
      
      public function §+!R§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§@d§ = param1;
         this.§%?§ = param2;
         this.§<+§ = param3;
         this.§[!=§ = 0;
         this.§6e§ = 0;
         this.§-X§ = 0;
         this.§8!B§ = param4;
         this.§&S§ = param5;
         this.§6M§ = param6;
         _loc7_ = this.§!T§.length;
         while(_loc7_ < param1)
         {
            this.§!T§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&$§.length;
         while(_loc7_ < param2)
         {
            this.§&$§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2!`§.length;
         while(_loc7_ < param3)
         {
            this.§2!`§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §9'§() : void
      {
         this.§[!=§ = 0;
         this.§6e§ = 0;
         this.§-X§ = 0;
      }
      
      public function §%!?§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§[!=§)
         {
            if((_loc6_ = this.§!T§[_loc4_]).§@i§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§%!N§.x += param1.§=S§ * (param2.x + _loc6_.§^!^§ * _loc6_.§6U§.x);
               _loc6_.§%!N§.y += param1.§=S§ * (param2.y + _loc6_.§^!^§ * _loc6_.§6U§.y);
               _loc6_.m_angularVelocity += param1.§=S§ * _loc6_.§^U§ * _loc6_.§#o§;
               _loc6_.§%!N§.§!!T§(b2Math.§ !`§(1 - param1.§=S§ * _loc6_.§<D§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§ !`§(1 - param1.§=S§ * _loc6_.§8]§,0,1);
            }
            _loc4_++;
         }
         this.§6M§.§+!R§(param1,this.§&$§,this.§6e§,this.§8!B§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§6M§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§-X§)
         {
            (_loc7_ = this.§2!`§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#I§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§-X§)
            {
               (_loc7_ = this.§2!`§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§-X§)
         {
            (_loc7_ = this.§2!`§[_loc4_]).§1&§();
            _loc4_++;
         }
         _loc8_.§1&§();
         _loc4_ = 0;
         while(_loc4_ < this.§[!=§)
         {
            if((_loc6_ = this.§!T§[_loc4_]).§@i§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§=S§ * _loc6_.§%!N§.x;
               _loc10_ = param1.§=S§ * _loc6_.§%!N§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%!N§.Normalize();
                  _loc6_.§%!N§.x *= b2Settings.b2_maxTranslation * param1.§9C§;
                  _loc6_.§%!N§.y *= b2Settings.b2_maxTranslation * param1.§9C§;
               }
               _loc11_ = param1.§=S§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§9C§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§9C§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§=S§ * _loc6_.§%!N§.x;
               _loc6_.m_sweep.c.y += param1.§=S§ * _loc6_.§%!N§.y;
               _loc6_.m_sweep.a += param1.§=S§ * _loc6_.m_angularVelocity;
               _loc6_.§'!N§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§2E§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§-X§)
            {
               _loc14_ = (_loc7_ = this.§2!`§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§=x§(_loc8_.§0-§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§[!=§)
            {
               if((_loc6_ = this.§!T§[_loc4_]).§@i§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§;>§ & b2Body.§[!%§) == 0)
                  {
                     _loc6_.§-!A§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§;>§ & b2Body.§[!%§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§@G§(_loc6_.§%!N§,_loc6_.§%!N§) > _loc16_)
                  {
                     _loc6_.§-!A§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§-!A§ += param1.§=S§;
                     _loc15_ = b2Math.§>! §(_loc15_,_loc6_.§-!A§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§[!=§)
               {
                  (_loc6_ = this.§!T§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §%x§(param1:b2TimeStep) : void
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
         this.§6M§.§+!R§(param1,this.§&$§,this.§6e§,this.§8!B§);
         var _loc4_:b2ContactSolver = this.§6M§;
         _loc2_ = 0;
         while(_loc2_ < this.§-X§)
         {
            this.§2!`§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§#I§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§-X§)
            {
               this.§2!`§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[!=§)
         {
            if((_loc6_ = this.§!T§[_loc2_]).§@i§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§=S§ * _loc6_.§%!N§.x;
               _loc8_ = param1.§=S§ * _loc6_.§%!N§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%!N§.Normalize();
                  _loc6_.§%!N§.x *= b2Settings.b2_maxTranslation * param1.§9C§;
                  _loc6_.§%!N§.y *= b2Settings.b2_maxTranslation * param1.§9C§;
               }
               _loc9_ = param1.§=S§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§9C§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§9C§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§=S§ * _loc6_.§%!N§.x;
               _loc6_.m_sweep.c.y += param1.§=S§ * _loc6_.§%!N§.y;
               _loc6_.m_sweep.a += param1.§=S§ * _loc6_.m_angularVelocity;
               _loc6_.§'!N§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§2E§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§-X§)
            {
               _loc12_ = this.§2!`§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§=x§(_loc4_.§0-§);
      }
      
      public function §=x§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§&S§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§6e§)
         {
            _loc3_ = this.§&$§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§`!E§)
            {
               §=!J§.§!Q§[_loc5_] = _loc4_.§^d§[_loc5_].normalImpulse;
               §=!J§.§ z§[_loc5_] = _loc4_.§^d§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§&S§.PostSolve(_loc3_,§=!J§);
            _loc2_++;
         }
      }
      
      public function §1!,§(param1:b2Body) : void
      {
         param1.§7p§ = this.§[!=§;
         var _loc2_:* = this.§[!=§++;
         this.§!T§[_loc2_] = param1;
      }
      
      public function §6g§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§6e§++;
         this.§&$§[_loc2_] = param1;
      }
      
      public function §%5§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§-X§++;
         this.§2!`§[_loc2_] = param1;
      }
   }
}
