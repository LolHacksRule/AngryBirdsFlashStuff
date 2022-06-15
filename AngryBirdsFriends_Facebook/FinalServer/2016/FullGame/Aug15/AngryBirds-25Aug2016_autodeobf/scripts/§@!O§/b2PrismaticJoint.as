package §@!O§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §0m§.b2Mat22;
   import §0m§.b2Mat33;
   import §0m§.b2Math;
   import §0m§.b2Transform;
   import §0m§.b2Vec2;
   import §0m§.b2Vec3;
   import §=#n§.b2Body;
   import §=#n§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0#W§:b2Vec2;
      
      private var §"+§:b2Vec2;
      
      private var §#"B§:Number;
      
      private var §6"j§:b2Vec2;
      
      private var §5"3§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §?X§:b2Mat33;
      
      private var §?$$§:b2Vec3;
      
      private var §?"h§:Number;
      
      private var §@R§:Number;
      
      private var §9?§:Number;
      
      private var §<!4§:Number;
      
      private var §1#§:Number;
      
      private var §%!u§:Number;
      
      private var §+#2§:Boolean;
      
      private var §04§:Boolean;
      
      private var §!!T§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0#W§ = new b2Vec2();
         this.§"+§ = new b2Vec2();
         this.§6"j§ = new b2Vec2();
         this.§5"3§ = new b2Vec2();
         this.§?X§ = new b2Mat33();
         this.§?$$§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§@2§);
         this.m_localAnchor2.SetV(param1.§7#$§);
         this.§0#W§.SetV(param1.§3$%§);
         this.§"+§.x = -this.§0#W§.y;
         this.§"+§.y = this.§0#W§.x;
         this.§#"B§ = param1.§[$"§;
         this.§?$$§.§,[§();
         this.§?"h§ = 0;
         this.§@R§ = 0;
         this.§9?§ = param1.§#-§;
         this.§<!4§ = param1.§-!p§;
         this.§1#§ = param1.§!!>§;
         this.§%!u§ = param1.motorSpeed;
         this.§+#2§ = param1.§`"R§;
         this.§04§ = param1.§"Y§;
         this.§!!T§ = b2internal::<g;
         this.§6"j§.§,[§();
         this.§5"3§.§,[§();
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
         return new b2Vec2(param1 * (this.§?$$§.x * this.§5"3§.x + (this.§@R§ + this.§?$$§.z) * this.§6"j§.x),param1 * (this.§?$$§.x * this.§5"3§.y + (this.§@R§ + this.§?$$§.z) * this.§6"j§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§?$$§.y;
      }
      
      public function §-",§() : Number
      {
         var _loc1_:b2Body = b2internal::;"Q;
         var _loc2_:b2Body = b2internal::%;;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§@!D§(this.§0#W§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §`#J§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::;"Q;
         var _loc2_:b2Body = b2internal::%;;
         _loc3_ = _loc1_.m_xf.R;
         var _loc4_:Number = this.m_localAnchor1.x - _loc1_.m_sweep.localCenter.x;
         var _loc5_:Number = this.m_localAnchor1.y - _loc1_.m_sweep.localCenter.y;
         var _loc6_:Number = _loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_;
         _loc5_ = _loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_;
         _loc4_ = _loc6_;
         _loc3_ = _loc2_.m_xf.R;
         var _loc7_:Number = this.m_localAnchor2.x - _loc2_.m_sweep.localCenter.x;
         var _loc8_:Number = this.m_localAnchor2.y - _loc2_.m_sweep.localCenter.y;
         _loc6_ = _loc3_.col1.x * _loc7_ + _loc3_.col2.x * _loc8_;
         _loc8_ = _loc3_.col1.y * _loc7_ + _loc3_.col2.y * _loc8_;
         _loc7_ = _loc6_;
         var _loc9_:Number = _loc1_.m_sweep.c.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.c.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.c.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§@!D§(this.§0#W§);
         var _loc16_:b2Vec2 = _loc1_.§'"_§;
         var _loc17_:b2Vec2 = _loc2_.§'"_§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §5"y§() : Boolean
      {
         return this.§+#2§;
      }
      
      public function §="s§(param1:Boolean) : void
      {
         b2internal::;"Q.SetAwake(true);
         b2internal::%;.SetAwake(true);
         this.§+#2§ = param1;
      }
      
      public function §[+§() : Number
      {
         return this.§9?§;
      }
      
      public function §]!v§() : Number
      {
         return this.§<!4§;
      }
      
      public function §use§(param1:Number, param2:Number) : void
      {
         b2internal::;"Q.SetAwake(true);
         b2internal::%;.SetAwake(true);
         this.§9?§ = param1;
         this.§<!4§ = param2;
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
      
      public function §#!V§(param1:Number) : void
      {
         b2internal::;"Q.SetAwake(true);
         b2internal::%;.SetAwake(true);
         this.§1#§ = param1;
      }
      
      public function §#$%§() : Number
      {
         return this.§@R§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::;"Q;
         var _loc3_:b2Body = b2internal::%;;
         b2internal::##".SetV(_loc2_.§"S§());
         b2internal::8#j.SetV(_loc3_.§"S§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::##".x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::##".y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::8#j.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::8#j.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §]!N§ = _loc2_.§7"P§;
         § #N§ = _loc3_.§7"P§;
         §!J§ = _loc2_.§3!F§;
         §>!,§ = _loc3_.§3!F§;
         this.§6"j§.SetV(b2Math.§@6§(_loc6_.R,this.§0#W§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§6"j§.y - (_loc13_ + _loc9_) * this.§6"j§.x;
         this.m_a2 = _loc10_ * this.§6"j§.y - _loc11_ * this.§6"j§.x;
         this.§?"h§ = b2internal::]!N + b2internal:: #N + b2internal::!J * this.m_a1 * this.m_a1 + b2internal::>!, * this.m_a2 * this.m_a2;
         if(this.§?"h§ > Number.MIN_VALUE)
         {
            this.§?"h§ = 1 / this.§?"h§;
         }
         this.§5"3§.SetV(b2Math.§@6§(_loc6_.R,this.§"+§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§5"3§.y - (_loc13_ + _loc9_) * this.§5"3§.x;
         this.m_s2 = _loc10_ * this.§5"3§.y - _loc11_ * this.§5"3§.x;
         var _loc14_:Number = b2internal::]!N;
         var _loc15_:Number = b2internal:: #N;
         var _loc16_:Number = b2internal::!J;
         var _loc17_:Number = b2internal::>!,;
         this.§?X§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§?X§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§?X§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§?X§.col2.x = this.§?X§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§?X§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§?X§.col2.y = 1;
         }
         this.§?X§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§?X§.col3.x = this.§?X§.col1.z;
         this.§?X§.col3.y = this.§?X§.col2.z;
         this.§?X§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§+#2§)
         {
            _loc18_ = this.§6"j§.x * _loc12_ + this.§6"j§.y * _loc13_;
            if(b2Math.§3!%§(this.§<!4§ - this.§9?§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§!!T§ = b2internal::'"h;
            }
            else if(_loc18_ <= this.§9?§)
            {
               if(this.§!!T§ != b2internal::2#E)
               {
                  this.§!!T§ = b2internal::2#E;
                  this.§?$$§.z = 0;
               }
            }
            else if(_loc18_ >= this.§<!4§)
            {
               if(this.§!!T§ != b2internal::#h)
               {
                  this.§!!T§ = b2internal::#h;
                  this.§?$$§.z = 0;
               }
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
            this.§?$$§.z = 0;
         }
         if(this.§04§ == false)
         {
            this.§@R§ = 0;
         }
         if(param1.§`A§)
         {
            this.§?$$§.x *= param1.§'"D§;
            this.§?$$§.y *= param1.§'"D§;
            this.§@R§ *= param1.§'"D§;
            _loc19_ = this.§?$$§.x * this.§5"3§.x + (this.§@R§ + this.§?$$§.z) * this.§6"j§.x;
            _loc20_ = this.§?$$§.x * this.§5"3§.y + (this.§@R§ + this.§?$$§.z) * this.§6"j§.y;
            _loc21_ = this.§?$$§.x * this.m_s1 + this.§?$$§.y + (this.§@R§ + this.§?$$§.z) * this.m_a1;
            _loc22_ = this.§?$$§.x * this.m_s2 + this.§?$$§.y + (this.§@R§ + this.§?$$§.z) * this.m_a2;
            _loc2_.§'"_§.x -= b2internal::]!N * _loc19_;
            _loc2_.§'"_§.y -= b2internal::]!N * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::!J * _loc21_;
            _loc3_.§'"_§.x += b2internal:: #N * _loc19_;
            _loc3_.§'"_§.y += b2internal:: #N * _loc20_;
            _loc3_.m_angularVelocity += b2internal::>!, * _loc22_;
         }
         else
         {
            this.§?$$§.§,[§();
            this.§@R§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::;"Q;
         var _loc3_:b2Body = b2internal::%;;
         var _loc4_:b2Vec2 = _loc2_.§'"_§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§'"_§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§04§ && this.§!!T§ != b2internal::'"h)
         {
            _loc14_ = this.§6"j§.x * (_loc6_.x - _loc4_.x) + this.§6"j§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§?"h§ * (this.§%!u§ - _loc14_);
            _loc16_ = this.§@R§;
            _loc17_ = param1.dt * this.§1#§;
            this.§@R§ = b2Math.§9#V§(this.§@R§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§@R§ - _loc16_) * this.§6"j§.x;
            _loc9_ = _loc15_ * this.§6"j§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::]!N * _loc8_;
            _loc4_.y -= b2internal::]!N * _loc9_;
            _loc5_ -= b2internal::!J * _loc10_;
            _loc6_.x += b2internal:: #N * _loc8_;
            _loc6_.y += b2internal:: #N * _loc9_;
            _loc7_ += b2internal::>!, * _loc11_;
         }
         var _loc12_:Number = this.§5"3§.x * (_loc6_.x - _loc4_.x) + this.§5"3§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§+#2§ && this.§!!T§ != b2internal::<g)
         {
            _loc18_ = this.§6"j§.x * (_loc6_.x - _loc4_.x) + this.§6"j§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§?$$§.Copy();
            _loc20_ = this.§?X§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§?$$§.§!!§(_loc20_);
            if(this.§!!T§ == b2internal::2#E)
            {
               this.§?$$§.z = b2Math.§;&§(this.§?$$§.z,0);
            }
            else if(this.§!!T§ == b2internal::#h)
            {
               this.§?$$§.z = b2Math.§1a§(this.§?$$§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§?$$§.z - _loc19_.z) * this.§?X§.col3.x;
            _loc22_ = -_loc13_ - (this.§?$$§.z - _loc19_.z) * this.§?X§.col3.y;
            _loc23_ = this.§?X§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§?$$§.x = _loc23_.x;
            this.§?$$§.y = _loc23_.y;
            _loc20_.x = this.§?$$§.x - _loc19_.x;
            _loc20_.y = this.§?$$§.y - _loc19_.y;
            _loc20_.z = this.§?$$§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§5"3§.x + _loc20_.z * this.§6"j§.x;
            _loc9_ = _loc20_.x * this.§5"3§.y + _loc20_.z * this.§6"j§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::]!N * _loc8_;
            _loc4_.y -= b2internal::]!N * _loc9_;
            _loc5_ -= b2internal::!J * _loc10_;
            _loc6_.x += b2internal:: #N * _loc8_;
            _loc6_.y += b2internal:: #N * _loc9_;
            _loc7_ += b2internal::>!, * _loc11_;
         }
         else
         {
            _loc24_ = this.§?X§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§?$$§.x += _loc24_.x;
            this.§?$$§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§5"3§.x;
            _loc9_ = _loc24_.x * this.§5"3§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::]!N * _loc8_;
            _loc4_.y -= b2internal::]!N * _loc9_;
            _loc5_ -= b2internal::!J * _loc10_;
            _loc6_.x += b2internal:: #N * _loc8_;
            _loc6_.y += b2internal:: #N * _loc9_;
            _loc7_ += b2internal::>!, * _loc11_;
         }
         _loc2_.§'"_§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§'"_§.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc10_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:b2Vec2 = null;
         var _loc4_:b2Body = b2internal::;"Q;
         var _loc5_:b2Body = b2internal::%;;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§3!R§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§3!R§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::##".x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::##".y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::8#j.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::8#j.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§+#2§)
         {
            this.§6"j§ = b2Math.§@6§(_loc20_,this.§0#W§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§6"j§.y - (_loc27_ + _loc23_) * this.§6"j§.x;
            this.m_a2 = _loc24_ * this.§6"j§.y - _loc25_ * this.§6"j§.x;
            _loc35_ = this.§6"j§.x * _loc26_ + this.§6"j§.y * _loc27_;
            if(b2Math.§3!%§(this.§<!4§ - this.§9?§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§9#V§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§3!%§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§9?§)
            {
               _loc19_ = b2Math.§9#V§(_loc35_ - this.§9?§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§9?§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§<!4§)
            {
               _loc19_ = b2Math.§9#V§(_loc35_ - this.§<!4§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§<!4§;
               _loc18_ = true;
            }
         }
         this.§5"3§ = b2Math.§@6§(_loc20_,this.§"+§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§5"3§.y - (_loc27_ + _loc23_) * this.§5"3§.x;
         this.m_s2 = _loc24_ * this.§5"3§.y - _loc25_ * this.§5"3§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§5"3§.x * _loc26_ + this.§5"3§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§#"B§;
         _loc16_ = b2Math.§;&§(_loc16_,b2Math.§3!%§(_loc29_));
         _loc17_ = b2Math.§3!%§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::]!N;
            _loc13_ = b2internal:: #N;
            _loc14_ = b2internal::!J;
            _loc15_ = b2internal::>!,;
            this.§?X§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§?X§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§?X§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§?X§.col2.x = this.§?X§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§?X§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§?X§.col2.y = 1;
            }
            this.§?X§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§?X§.col3.x = this.§?X§.col1.z;
            this.§?X§.col3.y = this.§?X§.col2.z;
            this.§?X§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§?X§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::]!N;
            _loc13_ = b2internal:: #N;
            _loc14_ = b2internal::!J;
            _loc15_ = b2internal::>!,;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§?X§.col1.Set(_loc36_,_loc37_,0);
            this.§?X§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§?X§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§5"3§.x + _loc28_.z * this.§6"j§.x;
         var _loc32_:Number = _loc28_.x * this.§5"3§.y + _loc28_.z * this.§6"j§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::]!N * _loc31_;
         _loc6_.y -= b2internal::]!N * _loc32_;
         _loc7_ -= b2internal::!J * _loc33_;
         _loc8_.x += b2internal:: #N * _loc31_;
         _loc8_.y += b2internal:: #N * _loc32_;
         _loc9_ += b2internal::>!, * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§#!i§();
         _loc5_.§#!i§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
