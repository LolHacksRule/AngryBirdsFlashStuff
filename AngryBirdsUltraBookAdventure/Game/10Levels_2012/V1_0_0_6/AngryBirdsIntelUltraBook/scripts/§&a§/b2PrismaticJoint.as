package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Mat33;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   import §;%§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §!1§:b2Vec2;
      
      private var §&b§:b2Vec2;
      
      private var §^<§:Number;
      
      private var §<!^§:b2Vec2;
      
      private var §9?§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §%!m§:b2Mat33;
      
      private var §<<§:b2Vec3;
      
      private var §&!w§:Number;
      
      private var §1!'§:Number;
      
      private var §;!a§:Number;
      
      private var §>![§:Number;
      
      private var §1!W§:Number;
      
      private var §0i§:Number;
      
      private var §;!m§:Boolean;
      
      private var §2'§:Boolean;
      
      private var §"!"§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§!1§ = new b2Vec2();
         this.§&b§ = new b2Vec2();
         this.§<!^§ = new b2Vec2();
         this.§9?§ = new b2Vec2();
         this.§%!m§ = new b2Mat33();
         this.§<<§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§4!%§);
         this.m_localAnchor2.SetV(param1.§=!I§);
         this.§!1§.SetV(param1.§"! §);
         this.§&b§.x = -this.§!1§.y;
         this.§&b§.y = this.§!1§.x;
         this.§^<§ = param1.§<?§;
         this.§<<§.§&!K§();
         this.§&!w§ = 0;
         this.§1!'§ = 0;
         this.§;!a§ = param1.§class§;
         this.§>![§ = param1.§>^§;
         this.§1!W§ = param1.§4!C§;
         this.§0i§ = param1.motorSpeed;
         this.§;!m§ = param1.§-Q§;
         this.§2'§ = param1.§2!s§;
         this.§"!"§ = b2internal::#!?;
         this.§<!^§.§&!K§();
         this.§9?§.§&!K§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§<<§.x * this.§9?§.x + (this.§1!'§ + this.§<<§.z) * this.§<!^§.x),param1 * (this.§<<§.x * this.§9?§.y + (this.§1!'§ + this.§<<§.z) * this.§<!^§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§<<§.y;
      }
      
      public function §null §() : Number
      {
         var _loc1_:b2Body = b2internal::>0;
         var _loc2_:b2Body = b2internal::[=;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§4!1§(this.§!1§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §#!d§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::>0;
         var _loc2_:b2Body = b2internal::[=;
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
         var _loc15_:b2Vec2 = _loc1_.§4!1§(this.§!1§);
         var _loc16_:b2Vec2 = _loc1_.§%!V§;
         var _loc17_:b2Vec2 = _loc2_.§%!V§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §=P§() : Boolean
      {
         return this.§;!m§;
      }
      
      public function §5!m§(param1:Boolean) : void
      {
         b2internal::>0.SetAwake(true);
         b2internal::[=.SetAwake(true);
         this.§;!m§ = param1;
      }
      
      public function §-J§() : Number
      {
         return this.§;!a§;
      }
      
      public function § !'§() : Number
      {
         return this.§>![§;
      }
      
      public function §1!L§(param1:Number, param2:Number) : void
      {
         b2internal::>0.SetAwake(true);
         b2internal::[=.SetAwake(true);
         this.§;!a§ = param1;
         this.§>![§ = param2;
      }
      
      public function §[!k§() : Boolean
      {
         return this.§2'§;
      }
      
      public function §5!x§(param1:Boolean) : void
      {
         b2internal::>0.SetAwake(true);
         b2internal::[=.SetAwake(true);
         this.§2'§ = param1;
      }
      
      public function §4!K§(param1:Number) : void
      {
         b2internal::>0.SetAwake(true);
         b2internal::[=.SetAwake(true);
         this.§0i§ = param1;
      }
      
      public function §@!+§() : Number
      {
         return this.§0i§;
      }
      
      public function §'!k§(param1:Number) : void
      {
         b2internal::>0.SetAwake(true);
         b2internal::[=.SetAwake(true);
         this.§1!W§ = param1;
      }
      
      public function §;!<§() : Number
      {
         return this.§1!'§;
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
         var _loc2_:b2Body = b2internal::>0;
         var _loc3_:b2Body = b2internal::[=;
         b2internal::#A.SetV(_loc2_.§0Z§());
         b2internal::9!@.SetV(_loc3_.§0Z§());
         var _loc6_:b2Transform = _loc2_.§7§();
         var _loc7_:b2Transform = _loc3_.§7§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::#A.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::#A.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::9!@.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::9!@.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §,'§ = _loc2_.§-7§;
         §[!2§ = _loc3_.§-7§;
         §=!Z§ = _loc2_.§,!o§;
         §^!?§ = _loc3_.§,!o§;
         this.§<!^§.SetV(b2Math.§&!Q§(_loc6_.R,this.§!1§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§<!^§.y - (_loc13_ + _loc9_) * this.§<!^§.x;
         this.m_a2 = _loc10_ * this.§<!^§.y - _loc11_ * this.§<!^§.x;
         this.§&!w§ = b2internal::,' + b2internal::[!2 + b2internal::=!Z * this.m_a1 * this.m_a1 + b2internal::^!? * this.m_a2 * this.m_a2;
         if(this.§&!w§ > Number.MIN_VALUE)
         {
            this.§&!w§ = 1 / this.§&!w§;
         }
         this.§9?§.SetV(b2Math.§&!Q§(_loc6_.R,this.§&b§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§9?§.y - (_loc13_ + _loc9_) * this.§9?§.x;
         this.m_s2 = _loc10_ * this.§9?§.y - _loc11_ * this.§9?§.x;
         var _loc14_:Number = b2internal::,';
         var _loc15_:Number = b2internal::[!2;
         var _loc16_:Number = b2internal::=!Z;
         var _loc17_:Number = b2internal::^!?;
         this.§%!m§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§%!m§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§%!m§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§%!m§.col2.x = this.§%!m§.col1.y;
         this.§%!m§.col2.y = _loc16_ + _loc17_;
         this.§%!m§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§%!m§.col3.x = this.§%!m§.col1.z;
         this.§%!m§.col3.y = this.§%!m§.col2.z;
         this.§%!m§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§;!m§)
         {
            _loc18_ = this.§<!^§.x * _loc12_ + this.§<!^§.y * _loc13_;
            if(b2Math.§`c§(this.§>![§ - this.§;!a§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§"!"§ = b2internal::`C;
            }
            else if(_loc18_ <= this.§;!a§)
            {
               if(this.§"!"§ != b2internal::'`)
               {
                  this.§"!"§ = b2internal::'`;
                  this.§<<§.z = 0;
               }
            }
            else if(_loc18_ >= this.§>![§)
            {
               if(this.§"!"§ != b2internal::>6)
               {
                  this.§"!"§ = b2internal::>6;
                  this.§<<§.z = 0;
               }
            }
            else
            {
               this.§"!"§ = b2internal::#!?;
               this.§<<§.z = 0;
            }
         }
         else
         {
            this.§"!"§ = b2internal::#!?;
         }
         if(this.§2'§ == false)
         {
            this.§1!'§ = 0;
         }
         if(param1.§#!P§)
         {
            this.§<<§.x *= param1.§ !o§;
            this.§<<§.y *= param1.§ !o§;
            this.§1!'§ *= param1.§ !o§;
            _loc19_ = this.§<<§.x * this.§9?§.x + (this.§1!'§ + this.§<<§.z) * this.§<!^§.x;
            _loc20_ = this.§<<§.x * this.§9?§.y + (this.§1!'§ + this.§<<§.z) * this.§<!^§.y;
            _loc21_ = this.§<<§.x * this.m_s1 + this.§<<§.y + (this.§1!'§ + this.§<<§.z) * this.m_a1;
            _loc22_ = this.§<<§.x * this.m_s2 + this.§<<§.y + (this.§1!'§ + this.§<<§.z) * this.m_a2;
            _loc2_.§%!V§.x -= b2internal::,' * _loc19_;
            _loc2_.§%!V§.y -= b2internal::,' * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::=!Z * _loc21_;
            _loc3_.§%!V§.x += b2internal::[!2 * _loc19_;
            _loc3_.§%!V§.y += b2internal::[!2 * _loc20_;
            _loc3_.m_angularVelocity += b2internal::^!? * _loc22_;
         }
         else
         {
            this.§<<§.§&!K§();
            this.§1!'§ = 0;
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
         var _loc2_:b2Body = b2internal::>0;
         var _loc3_:b2Body = b2internal::[=;
         var _loc4_:b2Vec2 = _loc2_.§%!V§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§%!V§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§2'§ && this.§"!"§ != b2internal::`C)
         {
            _loc14_ = this.§<!^§.x * (_loc6_.x - _loc4_.x) + this.§<!^§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§&!w§ * (this.§0i§ - _loc14_);
            _loc16_ = this.§1!'§;
            _loc17_ = param1.§&!'§ * this.§1!W§;
            this.§1!'§ = b2Math.§]!M§(this.§1!'§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§1!'§ - _loc16_) * this.§<!^§.x;
            _loc9_ = _loc15_ * this.§<!^§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::,' * _loc8_;
            _loc4_.y -= b2internal::,' * _loc9_;
            _loc5_ -= b2internal::=!Z * _loc10_;
            _loc6_.x += b2internal::[!2 * _loc8_;
            _loc6_.y += b2internal::[!2 * _loc9_;
            _loc7_ += b2internal::^!? * _loc11_;
         }
         var _loc12_:Number = this.§9?§.x * (_loc6_.x - _loc4_.x) + this.§9?§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§;!m§ && this.§"!"§ != b2internal::#!?)
         {
            _loc18_ = this.§<!^§.x * (_loc6_.x - _loc4_.x) + this.§<!^§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§<<§.Copy();
            _loc20_ = this.§%!m§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§<<§.§'!<§(_loc20_);
            if(this.§"!"§ == b2internal::'`)
            {
               this.§<<§.z = b2Math.§!!X§(this.§<<§.z,0);
            }
            else if(this.§"!"§ == b2internal::>6)
            {
               this.§<<§.z = b2Math.§=!@§(this.§<<§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§<<§.z - _loc19_.z) * this.§%!m§.col3.x;
            _loc22_ = -_loc13_ - (this.§<<§.z - _loc19_.z) * this.§%!m§.col3.y;
            _loc23_ = this.§%!m§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§<<§.x = _loc23_.x;
            this.§<<§.y = _loc23_.y;
            _loc20_.x = this.§<<§.x - _loc19_.x;
            _loc20_.y = this.§<<§.y - _loc19_.y;
            _loc20_.z = this.§<<§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§9?§.x + _loc20_.z * this.§<!^§.x;
            _loc9_ = _loc20_.x * this.§9?§.y + _loc20_.z * this.§<!^§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::,' * _loc8_;
            _loc4_.y -= b2internal::,' * _loc9_;
            _loc5_ -= b2internal::=!Z * _loc10_;
            _loc6_.x += b2internal::[!2 * _loc8_;
            _loc6_.y += b2internal::[!2 * _loc9_;
            _loc7_ += b2internal::^!? * _loc11_;
         }
         else
         {
            _loc24_ = this.§%!m§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§<<§.x += _loc24_.x;
            this.§<<§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§9?§.x;
            _loc9_ = _loc24_.x * this.§9?§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::,' * _loc8_;
            _loc4_.y -= b2internal::,' * _loc9_;
            _loc5_ -= b2internal::=!Z * _loc10_;
            _loc6_.x += b2internal::[!2 * _loc8_;
            _loc6_.y += b2internal::[!2 * _loc9_;
            _loc7_ += b2internal::^!? * _loc11_;
         }
         _loc2_.§%!V§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§%!V§.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
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
         var _loc4_:b2Body = b2internal::>0;
         var _loc5_:b2Body = b2internal::[=;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§9!-§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§9!-§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::#A.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::#A.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::9!@.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::9!@.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§;!m§)
         {
            this.§<!^§ = b2Math.§&!Q§(_loc20_,this.§!1§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§<!^§.y - (_loc27_ + _loc23_) * this.§<!^§.x;
            this.m_a2 = _loc24_ * this.§<!^§.y - _loc25_ * this.§<!^§.x;
            _loc35_ = this.§<!^§.x * _loc26_ + this.§<!^§.y * _loc27_;
            if(b2Math.§`c§(this.§>![§ - this.§;!a§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§]!M§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§`c§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§;!a§)
            {
               _loc19_ = b2Math.§]!M§(_loc35_ - this.§;!a§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§;!a§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§>![§)
            {
               _loc19_ = b2Math.§]!M§(_loc35_ - this.§>![§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§>![§;
               _loc18_ = true;
            }
         }
         this.§9?§ = b2Math.§&!Q§(_loc20_,this.§&b§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§9?§.y - (_loc27_ + _loc23_) * this.§9?§.x;
         this.m_s2 = _loc24_ * this.§9?§.y - _loc25_ * this.§9?§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§9?§.x * _loc26_ + this.§9?§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§^<§;
         _loc16_ = b2Math.§!!X§(_loc16_,b2Math.§`c§(_loc29_));
         _loc17_ = b2Math.§`c§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::,';
            _loc13_ = b2internal::[!2;
            _loc14_ = b2internal::=!Z;
            _loc15_ = b2internal::^!?;
            this.§%!m§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§%!m§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§%!m§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§%!m§.col2.x = this.§%!m§.col1.y;
            this.§%!m§.col2.y = _loc14_ + _loc15_;
            this.§%!m§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§%!m§.col3.x = this.§%!m§.col1.z;
            this.§%!m§.col3.y = this.§%!m§.col2.z;
            this.§%!m§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§%!m§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::,';
            _loc13_ = b2internal::[!2;
            _loc14_ = b2internal::=!Z;
            _loc15_ = b2internal::^!?;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§%!m§.col1.Set(_loc36_,_loc37_,0);
            this.§%!m§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§%!m§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§9?§.x + _loc28_.z * this.§<!^§.x;
         var _loc32_:Number = _loc28_.x * this.§9?§.y + _loc28_.z * this.§<!^§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::,' * _loc31_;
         _loc6_.y -= b2internal::,' * _loc32_;
         _loc7_ -= b2internal::=!Z * _loc33_;
         _loc8_.x += b2internal::[!2 * _loc31_;
         _loc8_.y += b2internal::[!2 * _loc32_;
         _loc9_ += b2internal::^!? * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§#3§();
         _loc5_.§#3§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
