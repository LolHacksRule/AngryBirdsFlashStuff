package §2_§
{
   import §?!C§.b2Mat22;
   import §?!C§.b2Mat33;
   import §?!C§.b2Math;
   import §?!C§.b2Transform;
   import §?!C§.b2Vec2;
   import §?!C§.b2Vec3;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §85§:b2Vec2;
      
      private var §9#?§:b2Vec2;
      
      private var §8"e§:Number;
      
      private var §]!<§:b2Vec2;
      
      private var §&"-§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §@"Q§:b2Mat33;
      
      private var § w§:b2Vec3;
      
      private var §=$=§:Number;
      
      private var §;#P§:Number;
      
      private var §!"4§:Number;
      
      private var §8!%§:Number;
      
      private var §&Q§:Number;
      
      private var §6$6§:Number;
      
      private var §^#P§:Boolean;
      
      private var §^#d§:Boolean;
      
      private var §8!q§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§85§ = new b2Vec2();
         this.§9#?§ = new b2Vec2();
         this.§]!<§ = new b2Vec2();
         this.§&"-§ = new b2Vec2();
         this.§@"Q§ = new b2Mat33();
         this.§ w§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§0$&§);
         this.m_localAnchor2.SetV(param1.§=#I§);
         this.§85§.SetV(param1.§&F§);
         this.§9#?§.x = -this.§85§.y;
         this.§9#?§.y = this.§85§.x;
         this.§8"e§ = param1.§`#,§;
         this.§ w§.§1c§();
         this.§=$=§ = 0;
         this.§;#P§ = 0;
         this.§!"4§ = param1.§5#8§;
         this.§8!%§ = param1.§'!Q§;
         this.§&Q§ = param1.§;w§;
         this.§6$6§ = param1.motorSpeed;
         this.§^#P§ = param1.§8!R§;
         this.§^#d§ = param1.§2`§;
         this.§8!q§ = b2internal::5!;
         this.§]!<§.§1c§();
         this.§&"-§.§1c§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!".GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"$'.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§ w§.x * this.§&"-§.x + (this.§;#P§ + this.§ w§.z) * this.§]!<§.x),param1 * (this.§ w§.x * this.§&"-§.y + (this.§;#P§ + this.§ w§.z) * this.§]!<§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ w§.y;
      }
      
      public function §"#@§() : Number
      {
         var _loc1_:b2Body = b2internal::]!";
         var _loc2_:b2Body = b2internal::"$';
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§,v§(this.§85§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §-$'§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::]!";
         var _loc2_:b2Body = b2internal::"$';
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
         var _loc15_:b2Vec2 = _loc1_.§,v§(this.§85§);
         var _loc16_:b2Vec2 = _loc1_.§!#p§;
         var _loc17_:b2Vec2 = _loc2_.§!#p§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §'$2§() : Boolean
      {
         return this.§^#P§;
      }
      
      public function §99§(param1:Boolean) : void
      {
         b2internal::]!".SetAwake(true);
         b2internal::"$'.SetAwake(true);
         this.§^#P§ = param1;
      }
      
      public function §;!7§() : Number
      {
         return this.§!"4§;
      }
      
      public function §9"9§() : Number
      {
         return this.§8!%§;
      }
      
      public function §2#&§(param1:Number, param2:Number) : void
      {
         b2internal::]!".SetAwake(true);
         b2internal::"$'.SetAwake(true);
         this.§!"4§ = param1;
         this.§8!%§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§^#d§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::]!".SetAwake(true);
         b2internal::"$'.SetAwake(true);
         this.§^#d§ = param1;
      }
      
      public function §[$4§(param1:Number) : void
      {
         b2internal::]!".SetAwake(true);
         b2internal::"$'.SetAwake(true);
         this.§6$6§ = param1;
      }
      
      public function §1#f§() : Number
      {
         return this.§6$6§;
      }
      
      public function §<!v§(param1:Number) : void
      {
         b2internal::]!".SetAwake(true);
         b2internal::"$'.SetAwake(true);
         this.§&Q§ = param1;
      }
      
      public function §]"T§() : Number
      {
         return this.§;#P§;
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
         var _loc2_:b2Body = b2internal::]!";
         var _loc3_:b2Body = b2internal::"$';
         b2internal::=$&.SetV(_loc2_.§[#Q§());
         b2internal::0#l.SetV(_loc3_.§[#Q§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::=$&.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::=$&.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::0#l.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::0#l.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §%"y§ = _loc2_.§;#>§;
         §7#>§ = _loc3_.§;#>§;
         §&"5§ = _loc2_.§!#k§;
         §7!_§ = _loc3_.§!#k§;
         this.§]!<§.SetV(b2Math.§4!i§(_loc6_.R,this.§85§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§]!<§.y - (_loc13_ + _loc9_) * this.§]!<§.x;
         this.m_a2 = _loc10_ * this.§]!<§.y - _loc11_ * this.§]!<§.x;
         this.§=$=§ = b2internal::%"y + b2internal::7#> + b2internal::&"5 * this.m_a1 * this.m_a1 + b2internal::7!_ * this.m_a2 * this.m_a2;
         if(this.§=$=§ > Number.MIN_VALUE)
         {
            this.§=$=§ = 1 / this.§=$=§;
         }
         this.§&"-§.SetV(b2Math.§4!i§(_loc6_.R,this.§9#?§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§&"-§.y - (_loc13_ + _loc9_) * this.§&"-§.x;
         this.m_s2 = _loc10_ * this.§&"-§.y - _loc11_ * this.§&"-§.x;
         var _loc14_:Number = b2internal::%"y;
         var _loc15_:Number = b2internal::7#>;
         var _loc16_:Number = b2internal::&"5;
         var _loc17_:Number = b2internal::7!_;
         this.§@"Q§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§@"Q§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§@"Q§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§@"Q§.col2.x = this.§@"Q§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§@"Q§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§@"Q§.col2.y = 1;
         }
         this.§@"Q§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§@"Q§.col3.x = this.§@"Q§.col1.z;
         this.§@"Q§.col3.y = this.§@"Q§.col2.z;
         this.§@"Q§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§^#P§)
         {
            _loc18_ = this.§]!<§.x * _loc12_ + this.§]!<§.y * _loc13_;
            if(b2Math.§`a§(this.§8!%§ - this.§!"4§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§8!q§ = b2internal::-a;
            }
            else if(_loc18_ <= this.§!"4§)
            {
               if(this.§8!q§ != b2internal::0$2)
               {
                  this.§8!q§ = b2internal::0$2;
                  this.§ w§.z = 0;
               }
            }
            else if(_loc18_ >= this.§8!%§)
            {
               if(this.§8!q§ != b2internal::5#_)
               {
                  this.§8!q§ = b2internal::5#_;
                  this.§ w§.z = 0;
               }
            }
            else
            {
               this.§8!q§ = b2internal::5!;
               this.§ w§.z = 0;
            }
         }
         else
         {
            this.§8!q§ = b2internal::5!;
            this.§ w§.z = 0;
         }
         if(this.§^#d§ == false)
         {
            this.§;#P§ = 0;
         }
         if(param1.§,#g§)
         {
            this.§ w§.x *= param1.§+!y§;
            this.§ w§.y *= param1.§+!y§;
            this.§;#P§ *= param1.§+!y§;
            _loc19_ = this.§ w§.x * this.§&"-§.x + (this.§;#P§ + this.§ w§.z) * this.§]!<§.x;
            _loc20_ = this.§ w§.x * this.§&"-§.y + (this.§;#P§ + this.§ w§.z) * this.§]!<§.y;
            _loc21_ = this.§ w§.x * this.m_s1 + this.§ w§.y + (this.§;#P§ + this.§ w§.z) * this.m_a1;
            _loc22_ = this.§ w§.x * this.m_s2 + this.§ w§.y + (this.§;#P§ + this.§ w§.z) * this.m_a2;
            _loc2_.§!#p§.x -= b2internal::%"y * _loc19_;
            _loc2_.§!#p§.y -= b2internal::%"y * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::&"5 * _loc21_;
            _loc3_.§!#p§.x += b2internal::7#> * _loc19_;
            _loc3_.§!#p§.y += b2internal::7#> * _loc20_;
            _loc3_.m_angularVelocity += b2internal::7!_ * _loc22_;
         }
         else
         {
            this.§ w§.§1c§();
            this.§;#P§ = 0;
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
         var _loc2_:b2Body = b2internal::]!";
         var _loc3_:b2Body = b2internal::"$';
         var _loc4_:b2Vec2 = _loc2_.§!#p§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§!#p§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§^#d§ && this.§8!q§ != b2internal::-a)
         {
            _loc14_ = this.§]!<§.x * (_loc6_.x - _loc4_.x) + this.§]!<§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§=$=§ * (this.§6$6§ - _loc14_);
            _loc16_ = this.§;#P§;
            _loc17_ = param1.dt * this.§&Q§;
            this.§;#P§ = b2Math.§<!f§(this.§;#P§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§;#P§ - _loc16_) * this.§]!<§.x;
            _loc9_ = _loc15_ * this.§]!<§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::%"y * _loc8_;
            _loc4_.y -= b2internal::%"y * _loc9_;
            _loc5_ -= b2internal::&"5 * _loc10_;
            _loc6_.x += b2internal::7#> * _loc8_;
            _loc6_.y += b2internal::7#> * _loc9_;
            _loc7_ += b2internal::7!_ * _loc11_;
         }
         var _loc12_:Number = this.§&"-§.x * (_loc6_.x - _loc4_.x) + this.§&"-§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§^#P§ && this.§8!q§ != b2internal::5!)
         {
            _loc18_ = this.§]!<§.x * (_loc6_.x - _loc4_.x) + this.§]!<§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§ w§.Copy();
            _loc20_ = this.§@"Q§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§ w§.§ #H§(_loc20_);
            if(this.§8!q§ == b2internal::0$2)
            {
               this.§ w§.z = b2Math.§>g§(this.§ w§.z,0);
            }
            else if(this.§8!q§ == b2internal::5#_)
            {
               this.§ w§.z = b2Math.§!g§(this.§ w§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§ w§.z - _loc19_.z) * this.§@"Q§.col3.x;
            _loc22_ = -_loc13_ - (this.§ w§.z - _loc19_.z) * this.§@"Q§.col3.y;
            _loc23_ = this.§@"Q§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§ w§.x = _loc23_.x;
            this.§ w§.y = _loc23_.y;
            _loc20_.x = this.§ w§.x - _loc19_.x;
            _loc20_.y = this.§ w§.y - _loc19_.y;
            _loc20_.z = this.§ w§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§&"-§.x + _loc20_.z * this.§]!<§.x;
            _loc9_ = _loc20_.x * this.§&"-§.y + _loc20_.z * this.§]!<§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::%"y * _loc8_;
            _loc4_.y -= b2internal::%"y * _loc9_;
            _loc5_ -= b2internal::&"5 * _loc10_;
            _loc6_.x += b2internal::7#> * _loc8_;
            _loc6_.y += b2internal::7#> * _loc9_;
            _loc7_ += b2internal::7!_ * _loc11_;
         }
         else
         {
            _loc24_ = this.§@"Q§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§ w§.x += _loc24_.x;
            this.§ w§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§&"-§.x;
            _loc9_ = _loc24_.x * this.§&"-§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::%"y * _loc8_;
            _loc4_.y -= b2internal::%"y * _loc9_;
            _loc5_ -= b2internal::&"5 * _loc10_;
            _loc6_.x += b2internal::7#> * _loc8_;
            _loc6_.y += b2internal::7#> * _loc9_;
            _loc7_ += b2internal::7!_ * _loc11_;
         }
         _loc2_.§!#p§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§!#p§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::]!";
         var _loc5_:b2Body = b2internal::"$';
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§8"I§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§8"I§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::=$&.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::=$&.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::0#l.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::0#l.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§^#P§)
         {
            this.§]!<§ = b2Math.§4!i§(_loc20_,this.§85§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§]!<§.y - (_loc27_ + _loc23_) * this.§]!<§.x;
            this.m_a2 = _loc24_ * this.§]!<§.y - _loc25_ * this.§]!<§.x;
            _loc35_ = this.§]!<§.x * _loc26_ + this.§]!<§.y * _loc27_;
            if(b2Math.§`a§(this.§8!%§ - this.§!"4§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§<!f§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§`a§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§!"4§)
            {
               _loc19_ = b2Math.§<!f§(_loc35_ - this.§!"4§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§!"4§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§8!%§)
            {
               _loc19_ = b2Math.§<!f§(_loc35_ - this.§8!%§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§8!%§;
               _loc18_ = true;
            }
         }
         this.§&"-§ = b2Math.§4!i§(_loc20_,this.§9#?§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§&"-§.y - (_loc27_ + _loc23_) * this.§&"-§.x;
         this.m_s2 = _loc24_ * this.§&"-§.y - _loc25_ * this.§&"-§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§&"-§.x * _loc26_ + this.§&"-§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§8"e§;
         _loc16_ = b2Math.§>g§(_loc16_,b2Math.§`a§(_loc29_));
         _loc17_ = b2Math.§`a§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::%"y;
            _loc13_ = b2internal::7#>;
            _loc14_ = b2internal::&"5;
            _loc15_ = b2internal::7!_;
            this.§@"Q§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§@"Q§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§@"Q§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§@"Q§.col2.x = this.§@"Q§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§@"Q§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§@"Q§.col2.y = 1;
            }
            this.§@"Q§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§@"Q§.col3.x = this.§@"Q§.col1.z;
            this.§@"Q§.col3.y = this.§@"Q§.col2.z;
            this.§@"Q§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§@"Q§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::%"y;
            _loc13_ = b2internal::7#>;
            _loc14_ = b2internal::&"5;
            _loc15_ = b2internal::7!_;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§@"Q§.col1.Set(_loc36_,_loc37_,0);
            this.§@"Q§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§@"Q§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§&"-§.x + _loc28_.z * this.§]!<§.x;
         var _loc32_:Number = _loc28_.x * this.§&"-§.y + _loc28_.z * this.§]!<§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::%"y * _loc31_;
         _loc6_.y -= b2internal::%"y * _loc32_;
         _loc7_ -= b2internal::&"5 * _loc33_;
         _loc8_.x += b2internal::7#> * _loc31_;
         _loc8_.y += b2internal::7#> * _loc32_;
         _loc9_ += b2internal::7!_ * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§[X§();
         _loc5_.§[X§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
