package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Mat33;
   import §9t§.b2Math;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §9t§.b2Vec3;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0"6§:b2Vec2;
      
      private var §%G§:b2Vec2;
      
      private var §"P§:Number;
      
      private var §4H§:b2Vec2;
      
      private var §-m§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<T§:b2Mat33;
      
      private var §0"3§:b2Vec3;
      
      private var §!!#§:Number;
      
      private var §9H§:Number;
      
      private var §+!+§:Number;
      
      private var §3O§:Number;
      
      private var §8!R§:Number;
      
      private var §7B§:Number;
      
      private var §]U§:Boolean;
      
      private var §5!z§:Boolean;
      
      private var §?§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0"6§ = new b2Vec2();
         this.§%G§ = new b2Vec2();
         this.§4H§ = new b2Vec2();
         this.§-m§ = new b2Vec2();
         this.§<T§ = new b2Mat33();
         this.§0"3§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!8§);
         this.m_localAnchor2.SetV(param1.§@W§);
         this.§0"6§.SetV(param1.§8!<§);
         this.§%G§.x = -this.§0"6§.y;
         this.§%G§.y = this.§0"6§.x;
         this.§"P§ = param1.§+!L§;
         this.§0"3§.§@!d§();
         this.§!!#§ = 0;
         this.§9H§ = 0;
         this.§+!+§ = param1.§-!L§;
         this.§3O§ = param1.§ !W§;
         this.§8!R§ = param1.§7!;§;
         this.§7B§ = param1.motorSpeed;
         this.§]U§ = param1.§+"!§;
         this.§5!z§ = param1.§+!b§;
         this.§?§ = b2internal::[!_;
         this.§4H§.§@!d§();
         this.§-m§.§@!d§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§0"3§.x * this.§-m§.x + (this.§9H§ + this.§0"3§.z) * this.§4H§.x),param1 * (this.§0"3§.x * this.§-m§.y + (this.§9H§ + this.§0"3§.z) * this.§4H§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0"3§.y;
      }
      
      public function §]Z§() : Number
      {
         var _loc1_:b2Body = b2internal::<!1;
         var _loc2_:b2Body = b2internal::?H;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§+!y§(this.§0"6§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §1! §() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::<!1;
         var _loc2_:b2Body = b2internal::?H;
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
         var _loc15_:b2Vec2 = _loc1_.§+!y§(this.§0"6§);
         var _loc16_:b2Vec2 = _loc1_.§?o§;
         var _loc17_:b2Vec2 = _loc2_.§?o§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §5C§() : Boolean
      {
         return this.§]U§;
      }
      
      public function §;F§(param1:Boolean) : void
      {
         b2internal::<!1.SetAwake(true);
         b2internal::?H.SetAwake(true);
         this.§]U§ = param1;
      }
      
      public function §8,§() : Number
      {
         return this.§+!+§;
      }
      
      public function §`";§() : Number
      {
         return this.§3O§;
      }
      
      public function §&!7§(param1:Number, param2:Number) : void
      {
         b2internal::<!1.SetAwake(true);
         b2internal::?H.SetAwake(true);
         this.§+!+§ = param1;
         this.§3O§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§5!z§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::<!1.SetAwake(true);
         b2internal::?H.SetAwake(true);
         this.§5!z§ = param1;
      }
      
      public function §+K§(param1:Number) : void
      {
         b2internal::<!1.SetAwake(true);
         b2internal::?H.SetAwake(true);
         this.§7B§ = param1;
      }
      
      public function §2"5§() : Number
      {
         return this.§7B§;
      }
      
      public function §`"6§(param1:Number) : void
      {
         b2internal::<!1.SetAwake(true);
         b2internal::?H.SetAwake(true);
         this.§8!R§ = param1;
      }
      
      public function §'!k§() : Number
      {
         return this.§9H§;
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
         var _loc2_:b2Body = b2internal::<!1;
         var _loc3_:b2Body = b2internal::?H;
         b2internal::#">.SetV(_loc2_.§4!p§());
         b2internal::7N.SetV(_loc3_.§4!p§());
         var _loc6_:b2Transform = _loc2_.§>u§();
         var _loc7_:b2Transform = _loc3_.§>u§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::#">.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::#">.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::7N.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::7N.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §8"2§ = _loc2_.§6!W§;
         §9;§ = _loc3_.§6!W§;
         §-!J§ = _loc2_.§<!%§;
         §6"2§ = _loc3_.§<!%§;
         this.§4H§.SetV(b2Math.§,!s§(_loc6_.R,this.§0"6§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§4H§.y - (_loc13_ + _loc9_) * this.§4H§.x;
         this.m_a2 = _loc10_ * this.§4H§.y - _loc11_ * this.§4H§.x;
         this.§!!#§ = b2internal::8"2 + b2internal::9; + b2internal::-!J * this.m_a1 * this.m_a1 + b2internal::6"2 * this.m_a2 * this.m_a2;
         if(this.§!!#§ > Number.MIN_VALUE)
         {
            this.§!!#§ = 1 / this.§!!#§;
         }
         this.§-m§.SetV(b2Math.§,!s§(_loc6_.R,this.§%G§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§-m§.y - (_loc13_ + _loc9_) * this.§-m§.x;
         this.m_s2 = _loc10_ * this.§-m§.y - _loc11_ * this.§-m§.x;
         var _loc14_:Number = b2internal::8"2;
         var _loc15_:Number = b2internal::9;;
         var _loc16_:Number = b2internal::-!J;
         var _loc17_:Number = b2internal::6"2;
         this.§<T§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§<T§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§<T§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§<T§.col2.x = this.§<T§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§<T§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§<T§.col2.y = 1;
         }
         this.§<T§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§<T§.col3.x = this.§<T§.col1.z;
         this.§<T§.col3.y = this.§<T§.col2.z;
         this.§<T§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§]U§)
         {
            _loc18_ = this.§4H§.x * _loc12_ + this.§4H§.y * _loc13_;
            if(b2Math.§<D§(this.§3O§ - this.§+!+§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§?§ = b2internal::<4;
            }
            else if(_loc18_ <= this.§+!+§)
            {
               if(this.§?§ != b2internal::6!S)
               {
                  this.§?§ = b2internal::6!S;
                  this.§0"3§.z = 0;
               }
            }
            else if(_loc18_ >= this.§3O§)
            {
               if(this.§?§ != b2internal::]!=)
               {
                  this.§?§ = b2internal::]!=;
                  this.§0"3§.z = 0;
               }
            }
            else
            {
               this.§?§ = b2internal::[!_;
               this.§0"3§.z = 0;
            }
         }
         else
         {
            this.§?§ = b2internal::[!_;
            this.§0"3§.z = 0;
         }
         if(this.§5!z§ == false)
         {
            this.§9H§ = 0;
         }
         if(param1.§`m§)
         {
            this.§0"3§.x *= param1.§-I§;
            this.§0"3§.y *= param1.§-I§;
            this.§9H§ *= param1.§-I§;
            _loc19_ = this.§0"3§.x * this.§-m§.x + (this.§9H§ + this.§0"3§.z) * this.§4H§.x;
            _loc20_ = this.§0"3§.x * this.§-m§.y + (this.§9H§ + this.§0"3§.z) * this.§4H§.y;
            _loc21_ = this.§0"3§.x * this.m_s1 + this.§0"3§.y + (this.§9H§ + this.§0"3§.z) * this.m_a1;
            _loc22_ = this.§0"3§.x * this.m_s2 + this.§0"3§.y + (this.§9H§ + this.§0"3§.z) * this.m_a2;
            _loc2_.§?o§.x -= b2internal::8"2 * _loc19_;
            _loc2_.§?o§.y -= b2internal::8"2 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::-!J * _loc21_;
            _loc3_.§?o§.x += b2internal::9; * _loc19_;
            _loc3_.§?o§.y += b2internal::9; * _loc20_;
            _loc3_.m_angularVelocity += b2internal::6"2 * _loc22_;
         }
         else
         {
            this.§0"3§.§@!d§();
            this.§9H§ = 0;
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
         var _loc2_:b2Body = b2internal::<!1;
         var _loc3_:b2Body = b2internal::?H;
         var _loc4_:b2Vec2 = _loc2_.§?o§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§?o§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§5!z§ && this.§?§ != b2internal::<4)
         {
            _loc14_ = this.§4H§.x * (_loc6_.x - _loc4_.x) + this.§4H§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§!!#§ * (this.§7B§ - _loc14_);
            _loc16_ = this.§9H§;
            _loc17_ = param1.§2^§ * this.§8!R§;
            this.§9H§ = b2Math.§`J§(this.§9H§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§9H§ - _loc16_) * this.§4H§.x;
            _loc9_ = _loc15_ * this.§4H§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::8"2 * _loc8_;
            _loc4_.y -= b2internal::8"2 * _loc9_;
            _loc5_ -= b2internal::-!J * _loc10_;
            _loc6_.x += b2internal::9; * _loc8_;
            _loc6_.y += b2internal::9; * _loc9_;
            _loc7_ += b2internal::6"2 * _loc11_;
         }
         var _loc12_:Number = this.§-m§.x * (_loc6_.x - _loc4_.x) + this.§-m§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§]U§ && this.§?§ != b2internal::[!_)
         {
            _loc18_ = this.§4H§.x * (_loc6_.x - _loc4_.x) + this.§4H§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§0"3§.Copy();
            _loc20_ = this.§<T§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§0"3§.§]!H§(_loc20_);
            if(this.§?§ == b2internal::6!S)
            {
               this.§0"3§.z = b2Math.§'!i§(this.§0"3§.z,0);
            }
            else if(this.§?§ == b2internal::]!=)
            {
               this.§0"3§.z = b2Math.§+!G§(this.§0"3§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§0"3§.z - _loc19_.z) * this.§<T§.col3.x;
            _loc22_ = -_loc13_ - (this.§0"3§.z - _loc19_.z) * this.§<T§.col3.y;
            _loc23_ = this.§<T§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§0"3§.x = _loc23_.x;
            this.§0"3§.y = _loc23_.y;
            _loc20_.x = this.§0"3§.x - _loc19_.x;
            _loc20_.y = this.§0"3§.y - _loc19_.y;
            _loc20_.z = this.§0"3§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§-m§.x + _loc20_.z * this.§4H§.x;
            _loc9_ = _loc20_.x * this.§-m§.y + _loc20_.z * this.§4H§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::8"2 * _loc8_;
            _loc4_.y -= b2internal::8"2 * _loc9_;
            _loc5_ -= b2internal::-!J * _loc10_;
            _loc6_.x += b2internal::9; * _loc8_;
            _loc6_.y += b2internal::9; * _loc9_;
            _loc7_ += b2internal::6"2 * _loc11_;
         }
         else
         {
            _loc24_ = this.§<T§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§0"3§.x += _loc24_.x;
            this.§0"3§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§-m§.x;
            _loc9_ = _loc24_.x * this.§-m§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::8"2 * _loc8_;
            _loc4_.y -= b2internal::8"2 * _loc9_;
            _loc5_ -= b2internal::-!J * _loc10_;
            _loc6_.x += b2internal::9; * _loc8_;
            _loc6_.y += b2internal::9; * _loc9_;
            _loc7_ += b2internal::6"2 * _loc11_;
         }
         _loc2_.§?o§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§?o§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::<!1;
         var _loc5_:b2Body = b2internal::?H;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§@!O§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§@!O§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::#">.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::#">.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::7N.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::7N.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§]U§)
         {
            this.§4H§ = b2Math.§,!s§(_loc20_,this.§0"6§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§4H§.y - (_loc27_ + _loc23_) * this.§4H§.x;
            this.m_a2 = _loc24_ * this.§4H§.y - _loc25_ * this.§4H§.x;
            _loc35_ = this.§4H§.x * _loc26_ + this.§4H§.y * _loc27_;
            if(b2Math.§<D§(this.§3O§ - this.§+!+§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§`J§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§<D§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§+!+§)
            {
               _loc19_ = b2Math.§`J§(_loc35_ - this.§+!+§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§+!+§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§3O§)
            {
               _loc19_ = b2Math.§`J§(_loc35_ - this.§3O§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§3O§;
               _loc18_ = true;
            }
         }
         this.§-m§ = b2Math.§,!s§(_loc20_,this.§%G§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§-m§.y - (_loc27_ + _loc23_) * this.§-m§.x;
         this.m_s2 = _loc24_ * this.§-m§.y - _loc25_ * this.§-m§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§-m§.x * _loc26_ + this.§-m§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§"P§;
         _loc16_ = b2Math.§'!i§(_loc16_,b2Math.§<D§(_loc29_));
         _loc17_ = b2Math.§<D§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::8"2;
            _loc13_ = b2internal::9;;
            _loc14_ = b2internal::-!J;
            _loc15_ = b2internal::6"2;
            this.§<T§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§<T§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§<T§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§<T§.col2.x = this.§<T§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§<T§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§<T§.col2.y = 1;
            }
            this.§<T§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§<T§.col3.x = this.§<T§.col1.z;
            this.§<T§.col3.y = this.§<T§.col2.z;
            this.§<T§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§<T§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::8"2;
            _loc13_ = b2internal::9;;
            _loc14_ = b2internal::-!J;
            _loc15_ = b2internal::6"2;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§<T§.col1.Set(_loc36_,_loc37_,0);
            this.§<T§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§<T§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§-m§.x + _loc28_.z * this.§4H§.x;
         var _loc32_:Number = _loc28_.x * this.§-m§.y + _loc28_.z * this.§4H§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::8"2 * _loc31_;
         _loc6_.y -= b2internal::8"2 * _loc32_;
         _loc7_ -= b2internal::-!J * _loc33_;
         _loc8_.x += b2internal::9; * _loc31_;
         _loc8_.y += b2internal::9; * _loc32_;
         _loc9_ += b2internal::6"2 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§6!+§();
         _loc5_.§6!+§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
