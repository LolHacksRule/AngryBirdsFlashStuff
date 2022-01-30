package §?!E§
{
   import §!t§.*;
   import §&!n§.*;
   import §8,§.*;
   import §9v§.*;
   import §`§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §!!I§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §[=§;
      
      private var §8!T§:b2ContactListener;
      
      private var §?!o§:b2ContactSolver;
      
      b2internal var §@f§:Vector.<b2Body>;
      
      b2internal var §4&§:Vector.<b2Contact>;
      
      b2internal var §6!-§:Vector.<b2Joint>;
      
      b2internal var § -§:int;
      
      b2internal var §,=§:int;
      
      b2internal var §2o§:int;
      
      private var §<!W§:int;
      
      b2internal var §[!C§:int;
      
      b2internal var §<!j§:int;
      
      public function b2Island()
      {
         super();
         this.§@f§ = new Vector.<b2Body>();
         this.§4&§ = new Vector.<b2Contact>();
         this.§6!-§ = new Vector.<b2Joint>();
      }
      
      public function §`!&§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§<!W§ = param1;
         this.§[!C§ = param2;
         this.§<!j§ = param3;
         this.§ -§ = 0;
         this.§2o§ = 0;
         this.§,=§ = 0;
         this.§[=§ = param4;
         this.§8!T§ = param5;
         this.§?!o§ = param6;
         _loc7_ = this.§@f§.length;
         while(_loc7_ < param1)
         {
            this.§@f§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§4&§.length;
         while(_loc7_ < param2)
         {
            this.§4&§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§6!-§.length;
         while(_loc7_ < param3)
         {
            this.§6!-§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §8!f§() : void
      {
         this.§ -§ = 0;
         this.§2o§ = 0;
         this.§,=§ = 0;
      }
      
      public function §=!3§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§ -§)
         {
            if((_loc6_ = this.§@f§[_loc4_]).§7![§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§?!%§.x += param1.§,!i§ * (param2.x + _loc6_.§-!P§ * _loc6_.§[!^§.x);
               _loc6_.§?!%§.y += param1.§,!i§ * (param2.y + _loc6_.§-!P§ * _loc6_.§[!^§.y);
               _loc6_.m_angularVelocity += param1.§,!i§ * _loc6_.§;c§ * _loc6_.§^<§;
               _loc6_.§?!%§.§3!J§(b2Math.§"A§(1 - param1.§,!i§ * _loc6_.§>"'§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§"A§(1 - param1.§,!i§ * _loc6_.§]!o§,0,1);
            }
            _loc4_++;
         }
         this.§?!o§.§`!&§(param1,this.§4&§,this.§2o§,this.§[=§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§?!o§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§,=§)
         {
            (_loc7_ = this.§6!-§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§'!$§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§,=§)
            {
               (_loc7_ = this.§6!-§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§,=§)
         {
            (_loc7_ = this.§6!-§[_loc4_]).§6D§();
            _loc4_++;
         }
         _loc8_.§6D§();
         _loc4_ = 0;
         while(_loc4_ < this.§ -§)
         {
            if((_loc6_ = this.§@f§[_loc4_]).§7![§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§,!i§ * _loc6_.§?!%§.x;
               _loc10_ = param1.§,!i§ * _loc6_.§?!%§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§?!%§.Normalize();
                  _loc6_.§?!%§.x *= b2Settings.b2_maxTranslation * param1.§2!B§;
                  _loc6_.§?!%§.y *= b2Settings.b2_maxTranslation * param1.§2!B§;
               }
               _loc11_ = param1.§,!i§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§2!B§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§2!B§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§,!i§ * _loc6_.§?!%§.x;
               _loc6_.m_sweep.c.y += param1.§,!i§ * _loc6_.§?!%§.y;
               _loc6_.m_sweep.a += param1.§,!i§ * _loc6_.m_angularVelocity;
               _loc6_.§]!k§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§;9§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§,=§)
            {
               _loc14_ = (_loc7_ = this.§6!-§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§ ]§(_loc8_.§-!3§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§ -§)
            {
               if((_loc6_ = this.§@f§[_loc4_]).§7![§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§5"4§ & b2Body.§9W§) == 0)
                  {
                     _loc6_.§5!E§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§5"4§ & b2Body.§9W§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§%m§(_loc6_.§?!%§,_loc6_.§?!%§) > _loc16_)
                  {
                     _loc6_.§5!E§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§5!E§ += param1.§,!i§;
                     _loc15_ = b2Math.§,n§(_loc15_,_loc6_.§5!E§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§ -§)
               {
                  (_loc6_ = this.§@f§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §6!9§(param1:b2TimeStep) : void
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
         this.§?!o§.§`!&§(param1,this.§4&§,this.§2o§,this.§[=§);
         var _loc4_:b2ContactSolver = this.§?!o§;
         _loc2_ = 0;
         while(_loc2_ < this.§,=§)
         {
            this.§6!-§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§'!$§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§,=§)
            {
               this.§6!-§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ -§)
         {
            if((_loc6_ = this.§@f§[_loc2_]).§7![§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§,!i§ * _loc6_.§?!%§.x;
               _loc8_ = param1.§,!i§ * _loc6_.§?!%§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§?!%§.Normalize();
                  _loc6_.§?!%§.x *= b2Settings.b2_maxTranslation * param1.§2!B§;
                  _loc6_.§?!%§.y *= b2Settings.b2_maxTranslation * param1.§2!B§;
               }
               _loc9_ = param1.§,!i§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§2!B§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§2!B§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§,!i§ * _loc6_.§?!%§.x;
               _loc6_.m_sweep.c.y += param1.§,!i§ * _loc6_.§?!%§.y;
               _loc6_.m_sweep.a += param1.§,!i§ * _loc6_.m_angularVelocity;
               _loc6_.§]!k§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§;9§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§,=§)
            {
               _loc12_ = this.§6!-§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§ ]§(_loc4_.§-!3§);
      }
      
      public function § ]§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§8!T§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§2o§)
         {
            _loc3_ = this.§4&§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§5+§)
            {
               §!!I§.§7=§[_loc5_] = _loc4_.§,_§[_loc5_].normalImpulse;
               §!!I§.§ !;§[_loc5_] = _loc4_.§,_§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§8!T§.PostSolve(_loc3_,§!!I§);
            _loc2_++;
         }
      }
      
      public function §7F§(param1:b2Body) : void
      {
         param1.§!!Q§ = this.§ -§;
         var _loc2_:* = this.§ -§++;
         this.§@f§[_loc2_] = param1;
      }
      
      public function §;T§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§2o§++;
         this.§4&§[_loc2_] = param1;
      }
      
      public function §4!H§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§,=§++;
         this.§6!-§[_loc2_] = param1;
      }
   }
}
