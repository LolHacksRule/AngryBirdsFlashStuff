package §@!O§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §0m§.b2Mat22;
   import §0m§.b2Mat33;
   import §0m§.b2Math;
   import §0m§.b2Vec2;
   import §0m§.b2Vec3;
   import §=#n§.b2Body;
   import §=#n§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §""C§:b2Vec2 = new b2Vec2();
       
      
      private var §[#'§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §5!6§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §?$$§:b2Vec3;
      
      private var §@R§:Number;
      
      private var §8!L§:b2Mat33;
      
      private var §?"h§:Number;
      
      private var §04§:Boolean;
      
      private var §;#d§:Number;
      
      private var §%!u§:Number;
      
      private var §+#2§:Boolean;
      
      private var §=#D§:Number;
      
      private var §"$4§:Number;
      
      private var §-#H§:Number;
      
      private var §!!T§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§[#'§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§5!6§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?$$§ = new b2Vec3();
         this.§8!L§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§@2§);
         this.m_localAnchor2.SetV(param1.§7#$§);
         this.§=#D§ = param1.§[$"§;
         this.§?$$§.§,[§();
         this.§@R§ = 0;
         this.§"$4§ = param1.§"#j§;
         this.§-#H§ = param1.§4$'§;
         this.§;#d§ = param1.§!!j§;
         this.§%!u§ = param1.motorSpeed;
         this.§+#2§ = param1.§`"R§;
         this.§04§ = param1.§"Y§;
         this.§!!T§ = b2internal::<g;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::;"Q.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%;.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§?$$§.x,param1 * this.§?$$§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§?$$§.z;
      }
      
      public function §!#a§() : Number
      {
         return b2internal::%;.m_sweep.a - b2internal::;"Q.m_sweep.a - this.§=#D§;
      }
      
      public function §`#J§() : Number
      {
         return b2internal::%;.m_angularVelocity - b2internal::;"Q.m_angularVelocity;
      }
      
      public function §5"y§() : Boolean
      {
         return this.§+#2§;
      }
      
      public function §="s§(param1:Boolean) : void
      {
         this.§+#2§ = param1;
      }
      
      public function §[+§() : Number
      {
         return this.§"$4§;
      }
      
      public function §]!v§() : Number
      {
         return this.§-#H§;
      }
      
      public function §use§(param1:Number, param2:Number) : void
      {
         this.§"$4§ = param1;
         this.§-#H§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§04§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::;"Q.SetAwake(true);
         b2internal::%;.SetAwake(true);
         this.§04§ = param1;
      }
      
      public function §`#+§(param1:Number) : void
      {
         b2internal::;"Q.SetAwake(true);
         b2internal::%;.SetAwake(true);
         this.§%!u§ = param1;
      }
      
      public function §#!O§() : Number
      {
         return this.§%!u§;
      }
      
      public function §9+§(param1:Number) : void
      {
         this.§;#d§ = param1;
      }
      
      public function §^$6§() : Number
      {
         return this.§;#d§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc2_ = b2internal::;"Q;
         _loc3_ = b2internal::%;;
         if(this.§04§ || this.§+#2§)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.§7"P§;
         var _loc11_:Number = _loc3_.§7"P§;
         var _loc12_:Number = _loc2_.§3!F§;
         var _loc13_:Number = _loc3_.§3!F§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§8!L§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§8!L§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§8!L§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§8!L§.col1.y = this.§8!L§.col2.x;
         this.§8!L§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§8!L§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§8!L§.col1.z = this.§8!L§.col3.x;
         this.§8!L§.col2.z = this.§8!L§.col3.y;
         this.§8!L§.col3.z = _loc12_ + _loc13_;
         this.§?"h§ = 1 / (_loc12_ + _loc13_);
         if(this.§04§ == false || _loc14_)
         {
            this.§@R§ = 0;
         }
         if(this.§+#2§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§=#D§;
            if(b2Math.§3!%§(this.§-#H§ - this.§"$4§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§!!T§ = b2internal::'"h;
            }
            else if(_loc15_ <= this.§"$4§)
            {
               if(this.§!!T§ != b2internal::2#E)
               {
                  this.§?$$§.z = 0;
               }
               this.§!!T§ = b2internal::2#E;
            }
            else if(_loc15_ >= this.§-#H§)
            {
               if(this.§!!T§ != b2internal::#h)
               {
                  this.§?$$§.z = 0;
               }
               this.§!!T§ = b2internal::#h;
            }
            else
            {
               this.§!!T§ = b2internal::<g;
               this.§?$$§.z = 0;
            }
         }
         else
         {
            this.§!!T§ = b2internal::<g;
         }
         if(param1.§`A§)
         {
            this.§?$$§.x *= param1.§'"D§;
            this.§?$$§.y *= param1.§'"D§;
            this.§@R§ *= param1.§'"D§;
            _loc16_ = this.§?$$§.x;
            _loc17_ = this.§?$$§.y;
            _loc2_.§'"_§.x -= _loc10_ * _loc16_;
            _loc2_.§'"_§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§@R§ + this.§?$$§.z);
            _loc3_.§'"_§.x += _loc11_ * _loc16_;
            _loc3_.§'"_§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§@R§ + this.§?$$§.z);
         }
         else
         {
            this.§?$$§.§,[§();
            this.§@R§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc2_:b2Body = b2internal::;"Q;
         var _loc3_:b2Body = b2internal::%;;
         var _loc11_:b2Vec2 = _loc2_.§'"_§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§'"_§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§7"P§;
         var _loc16_:Number = _loc3_.§7"P§;
         var _loc17_:Number = _loc2_.§3!F§;
         var _loc18_:Number = _loc3_.§3!F§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§04§ && this.§!!T§ != b2internal::'"h && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§%!u§;
            _loc21_ = this.§?"h§ * -_loc20_;
            _loc22_ = this.§@R§;
            _loc23_ = param1.dt * this.§;#d§;
            this.§@R§ = b2Math.§9#V§(this.§@R§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§@R§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§+#2§ && this.§!!T§ != b2internal::<g && !_loc19_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc24_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc25_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc26_ = _loc14_ - _loc12_;
            this.§8!L§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§!!T§ == b2internal::'"h)
            {
               this.§?$$§.§!!§(this.impulse3);
            }
            else if(this.§!!T§ == b2internal::2#E)
            {
               if(Number(this.§?$$§.z + this.impulse3.z) < 0)
               {
                  this.§8!L§.Solve22(this.§5!6§,-_loc24_ + this.§?$$§.z * this.§8!L§.col3.x,-_loc25_ + this.§?$$§.z * this.§8!L§.col3.y);
                  this.impulse3.x = this.§5!6§.x;
                  this.impulse3.y = this.§5!6§.y;
                  this.impulse3.z = -this.§?$$§.z;
                  this.§?$$§.x += this.§5!6§.x;
                  this.§?$$§.y += this.§5!6§.y;
                  this.§?$$§.z = 0;
               }
               else
               {
                  this.§?$$§.x += this.impulse3.x;
                  this.§?$$§.y += this.impulse3.y;
                  this.§?$$§.z += this.impulse3.z;
               }
            }
            else if(this.§!!T§ == b2internal::#h)
            {
               if(Number(this.§?$$§.z + this.impulse3.z) > 0)
               {
                  this.§8!L§.Solve22(this.§5!6§,-_loc24_ + this.§?$$§.z * this.§8!L§.col3.x,-_loc25_ + this.§?$$§.z * this.§8!L§.col3.y);
                  this.impulse3.x = this.§5!6§.x;
                  this.impulse3.y = this.§5!6§.y;
                  this.impulse3.z = -this.§?$$§.z;
                  this.§?$$§.x += this.§5!6§.x;
                  this.§?$$§.y += this.§5!6§.y;
                  this.§?$$§.z = 0;
               }
               else
               {
                  this.§?$$§.x += this.impulse3.x;
                  this.§?$$§.y += this.impulse3.y;
                  this.§?$$§.z += this.impulse3.z;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc27_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc28_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§8!L§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§?$$§.x += this.impulse2.x;
            this.§?$$§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§'"_§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§'"_§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal::;"Q;
         var _loc6_:b2Body = b2internal::%;;
         var _loc7_:* = b2internal::!J + b2internal::>!, == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§+#2§ && this.§!!T§ != b2internal::<g && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§=#D§;
            _loc27_ = 0;
            if(this.§!!T§ == b2internal::'"h)
            {
               _loc3_ = b2Math.§9#V§(_loc26_ - this.§"$4§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§?"h§ * _loc3_;
               _loc8_ = b2Math.§3!%§(_loc3_);
            }
            else if(this.§!!T§ == b2internal::2#E)
            {
               _loc3_ = _loc26_ - this.§"$4§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§9#V§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§?"h§ * _loc3_;
            }
            else if(this.§!!T§ == b2internal::#h)
            {
               _loc3_ = _loc26_ - this.§-#H§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§9#V§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§?"h§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§3!F§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§3!F§ * _loc27_;
            _loc5_.§#!i§();
            _loc6_.§#!i§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc13_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc14_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc13_ + _loc4_.col2.x * _loc14_;
         _loc14_ = _loc4_.col1.y * _loc13_ + _loc4_.col2.y * _loc14_;
         _loc13_ = _loc10_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc15_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc16_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc15_ + _loc4_.col2.x * _loc16_;
         _loc16_ = _loc4_.col1.y * _loc15_ + _loc4_.col2.y * _loc16_;
         _loc15_ = _loc10_;
         var _loc17_:Number = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
         var _loc18_:Number = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         var _loc19_:Number = _loc17_ * _loc17_ + _loc18_ * _loc18_;
         var _loc20_:Number;
         _loc9_ = _loc20_ = Math.sqrt(_loc19_);
         var _loc21_:Number = _loc5_.§7"P§;
         var _loc22_:Number = _loc6_.§7"P§;
         var _loc23_:Number = _loc5_.§3!F§;
         var _loc24_:Number = _loc6_.§3!F§;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            Number(_loc17_ / _loc20_);
            Number(_loc18_ / _loc20_);
            _loc30_ = _loc21_ + _loc22_;
            _loc11_ = (_loc31_ = 1 / _loc30_) * -_loc17_;
            _loc12_ = _loc31_ * -_loc18_;
            _loc32_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc32_ * _loc21_ * _loc11_;
            _loc5_.m_sweep.c.y -= _loc32_ * _loc21_ * _loc12_;
            _loc6_.m_sweep.c.x += _loc32_ * _loc22_ * _loc11_;
            _loc6_.m_sweep.c.y += _loc32_ * _loc22_ * _loc12_;
            _loc17_ = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
            _loc18_ = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         }
         this.K1.col1.x = _loc21_ + _loc22_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc21_ + _loc22_;
         this.K2.col1.x = _loc23_ * _loc14_ * _loc14_;
         this.K2.col2.x = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col1.y = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col2.y = _loc23_ * _loc13_ * _loc13_;
         this.K3.col1.x = _loc24_ * _loc16_ * _loc16_;
         this.K3.col2.x = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col1.y = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col2.y = _loc24_ * _loc15_ * _loc15_;
         this.§[#'§.§"#6§(this.K1);
         this.§[#'§.§0#X§(this.K2);
         this.§[#'§.§0#X§(this.K3);
         this.§[#'§.§+"F§(§""C§,-_loc17_,-_loc18_);
         _loc11_ = §""C§.x;
         _loc12_ = §""C§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§7"P§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§7"P§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§3!F§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§7"P§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§7"P§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§3!F§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§#!i§();
         _loc6_.§#!i§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
