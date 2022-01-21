package §!4§
{
   import §&x§.b2Body;
   import §&x§.b2TimeStep;
   import §0,§.b2Mat22;
   import §0,§.b2Mat33;
   import §0,§.b2Math;
   import §0,§.b2Transform;
   import §0,§.b2Vec2;
   import §0,§.b2Vec3;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §%!#§:b2Vec2;
      
      private var §]S§:b2Vec2;
      
      private var §!!i§:Number;
      
      private var §+!l§:b2Vec2;
      
      private var §1!9§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §-U§:b2Mat33;
      
      private var §8!§:b2Vec3;
      
      private var §5M§:Number;
      
      private var §?L§:Number;
      
      private var §;!$§:Number;
      
      private var §5c§:Number;
      
      private var §3<§:Number;
      
      private var §4!W§:Number;
      
      private var §9#§:Boolean;
      
      private var §1#§:Boolean;
      
      private var §%g§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§%!#§ = new b2Vec2();
         this.§]S§ = new b2Vec2();
         this.§+!l§ = new b2Vec2();
         this.§1!9§ = new b2Vec2();
         this.§-U§ = new b2Mat33();
         this.§8!§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§3_§);
         this.m_localAnchor2.SetV(param1.§-<§);
         this.§%!#§.SetV(param1.§+!Q§);
         this.§]S§.x = -this.§%!#§.y;
         this.§]S§.y = this.§%!#§.x;
         this.§!!i§ = param1.§57§;
         this.§8!§.§ !b§();
         this.§5M§ = 0;
         this.§?L§ = 0;
         this.§;!$§ = param1.§4!k§;
         this.§5c§ = param1.§4!6§;
         this.§3<§ = param1.§3d§;
         this.§4!W§ = param1.motorSpeed;
         this.§9#§ = param1.§'! §;
         this.§1#§ = param1.§'!+§;
         this.§%g§ = b2internal::1!`;
         this.§+!l§.§ !b§();
         this.§1!9§.§ !b§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::=s.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§8!§.x * this.§1!9§.x + (this.§?L§ + this.§8!§.z) * this.§+!l§.x),param1 * (this.§8!§.x * this.§1!9§.y + (this.§?L§ + this.§8!§.z) * this.§+!l§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!§.y;
      }
      
      public function §'!]§() : Number
      {
         var _loc1_:b2Body = b2internal::=s;
         var _loc2_:b2Body = b2internal::"!;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§1!f§(this.§%!#§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §1!F§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::=s;
         var _loc2_:b2Body = b2internal::"!;
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
         var _loc15_:b2Vec2 = _loc1_.§1!f§(this.§%!#§);
         var _loc16_:b2Vec2 = _loc1_.§"M§;
         var _loc17_:b2Vec2 = _loc2_.§"M§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §4u§() : Boolean
      {
         return this.§9#§;
      }
      
      public function §,4§(param1:Boolean) : void
      {
         b2internal::=s.SetAwake(true);
         b2internal::"!.SetAwake(true);
         this.§9#§ = param1;
      }
      
      public function §?%§() : Number
      {
         return this.§;!$§;
      }
      
      public function §^H§() : Number
      {
         return this.§5c§;
      }
      
      public function §]!Z§(param1:Number, param2:Number) : void
      {
         b2internal::=s.SetAwake(true);
         b2internal::"!.SetAwake(true);
         this.§;!$§ = param1;
         this.§5c§ = param2;
      }
      
      public function §^!T§() : Boolean
      {
         return this.§1#§;
      }
      
      public function §<L§(param1:Boolean) : void
      {
         b2internal::=s.SetAwake(true);
         b2internal::"!.SetAwake(true);
         this.§1#§ = param1;
      }
      
      public function §5!+§(param1:Number) : void
      {
         b2internal::=s.SetAwake(true);
         b2internal::"!.SetAwake(true);
         this.§4!W§ = param1;
      }
      
      public function §6M§() : Number
      {
         return this.§4!W§;
      }
      
      public function §#b§(param1:Number) : void
      {
         b2internal::=s.SetAwake(true);
         b2internal::"!.SetAwake(true);
         this.§3<§ = param1;
      }
      
      public function §+!J§() : Number
      {
         return this.§?L§;
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
         var _loc2_:b2Body = b2internal::=s;
         var _loc3_:b2Body = b2internal::"!;
         b2internal::-!4.SetV(_loc2_.§]!X§());
         b2internal::4K.SetV(_loc3_.§]!X§());
         var _loc6_:b2Transform = _loc2_.§<9§();
         var _loc7_:b2Transform = _loc3_.§<9§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::-!4.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::-!4.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::4K.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::4K.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §4T§ = _loc2_.§&l§;
         §#!9§ = _loc3_.§&l§;
         §^S§ = _loc2_.§]!Q§;
         §0K§ = _loc3_.§]!Q§;
         this.§+!l§.SetV(b2Math.§#F§(_loc6_.R,this.§%!#§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§+!l§.y - (_loc13_ + _loc9_) * this.§+!l§.x;
         this.m_a2 = _loc10_ * this.§+!l§.y - _loc11_ * this.§+!l§.x;
         this.§5M§ = b2internal::4T + b2internal::#!9 + b2internal::^S * this.m_a1 * this.m_a1 + b2internal::0K * this.m_a2 * this.m_a2;
         if(this.§5M§ > Number.MIN_VALUE)
         {
            this.§5M§ = 1 / this.§5M§;
         }
         this.§1!9§.SetV(b2Math.§#F§(_loc6_.R,this.§]S§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§1!9§.y - (_loc13_ + _loc9_) * this.§1!9§.x;
         this.m_s2 = _loc10_ * this.§1!9§.y - _loc11_ * this.§1!9§.x;
         var _loc14_:Number = b2internal::4T;
         var _loc15_:Number = b2internal::#!9;
         var _loc16_:Number = b2internal::^S;
         var _loc17_:Number = b2internal::0K;
         this.§-U§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§-U§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§-U§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§-U§.col2.x = this.§-U§.col1.y;
         this.§-U§.col2.y = _loc16_ + _loc17_;
         this.§-U§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§-U§.col3.x = this.§-U§.col1.z;
         this.§-U§.col3.y = this.§-U§.col2.z;
         this.§-U§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§9#§)
         {
            _loc18_ = this.§+!l§.x * _loc12_ + this.§+!l§.y * _loc13_;
            if(b2Math.§`!9§(this.§5c§ - this.§;!$§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§%g§ = b2internal::<>;
            }
            else if(_loc18_ <= this.§;!$§)
            {
               if(this.§%g§ != b2internal::[!<)
               {
                  this.§%g§ = b2internal::[!<;
                  this.§8!§.z = 0;
               }
            }
            else if(_loc18_ >= this.§5c§)
            {
               if(this.§%g§ != b2internal::6!B)
               {
                  this.§%g§ = b2internal::6!B;
                  this.§8!§.z = 0;
               }
            }
            else
            {
               this.§%g§ = b2internal::1!`;
               this.§8!§.z = 0;
            }
         }
         else
         {
            this.§%g§ = b2internal::1!`;
         }
         if(this.§1#§ == false)
         {
            this.§?L§ = 0;
         }
         if(param1.§8!&§)
         {
            this.§8!§.x *= param1.§,!m§;
            this.§8!§.y *= param1.§,!m§;
            this.§?L§ *= param1.§,!m§;
            _loc19_ = this.§8!§.x * this.§1!9§.x + (this.§?L§ + this.§8!§.z) * this.§+!l§.x;
            _loc20_ = this.§8!§.x * this.§1!9§.y + (this.§?L§ + this.§8!§.z) * this.§+!l§.y;
            _loc21_ = this.§8!§.x * this.m_s1 + this.§8!§.y + (this.§?L§ + this.§8!§.z) * this.m_a1;
            _loc22_ = this.§8!§.x * this.m_s2 + this.§8!§.y + (this.§?L§ + this.§8!§.z) * this.m_a2;
            _loc2_.§"M§.x -= b2internal::4T * _loc19_;
            _loc2_.§"M§.y -= b2internal::4T * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::^S * _loc21_;
            _loc3_.§"M§.x += b2internal::#!9 * _loc19_;
            _loc3_.§"M§.y += b2internal::#!9 * _loc20_;
            _loc3_.m_angularVelocity += b2internal::0K * _loc22_;
         }
         else
         {
            this.§8!§.§ !b§();
            this.§?L§ = 0;
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
         var _loc2_:b2Body = b2internal::=s;
         var _loc3_:b2Body = b2internal::"!;
         var _loc4_:b2Vec2 = _loc2_.§"M§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§"M§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§1#§ && this.§%g§ != b2internal::<>)
         {
            _loc14_ = this.§+!l§.x * (_loc6_.x - _loc4_.x) + this.§+!l§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§5M§ * (this.§4!W§ - _loc14_);
            _loc16_ = this.§?L§;
            _loc17_ = param1.§"!?§ * this.§3<§;
            this.§?L§ = b2Math.§@!-§(this.§?L§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§?L§ - _loc16_) * this.§+!l§.x;
            _loc9_ = _loc15_ * this.§+!l§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::4T * _loc8_;
            _loc4_.y -= b2internal::4T * _loc9_;
            _loc5_ -= b2internal::^S * _loc10_;
            _loc6_.x += b2internal::#!9 * _loc8_;
            _loc6_.y += b2internal::#!9 * _loc9_;
            _loc7_ += b2internal::0K * _loc11_;
         }
         var _loc12_:Number = this.§1!9§.x * (_loc6_.x - _loc4_.x) + this.§1!9§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§9#§ && this.§%g§ != b2internal::1!`)
         {
            _loc18_ = this.§+!l§.x * (_loc6_.x - _loc4_.x) + this.§+!l§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§8!§.Copy();
            _loc20_ = this.§-U§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§8!§.§;3§(_loc20_);
            if(this.§%g§ == b2internal::[!<)
            {
               this.§8!§.z = b2Math.§[!l§(this.§8!§.z,0);
            }
            else if(this.§%g§ == b2internal::6!B)
            {
               this.§8!§.z = b2Math.§;!F§(this.§8!§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§8!§.z - _loc19_.z) * this.§-U§.col3.x;
            _loc22_ = -_loc13_ - (this.§8!§.z - _loc19_.z) * this.§-U§.col3.y;
            _loc23_ = this.§-U§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§8!§.x = _loc23_.x;
            this.§8!§.y = _loc23_.y;
            _loc20_.x = this.§8!§.x - _loc19_.x;
            _loc20_.y = this.§8!§.y - _loc19_.y;
            _loc20_.z = this.§8!§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§1!9§.x + _loc20_.z * this.§+!l§.x;
            _loc9_ = _loc20_.x * this.§1!9§.y + _loc20_.z * this.§+!l§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::4T * _loc8_;
            _loc4_.y -= b2internal::4T * _loc9_;
            _loc5_ -= b2internal::^S * _loc10_;
            _loc6_.x += b2internal::#!9 * _loc8_;
            _loc6_.y += b2internal::#!9 * _loc9_;
            _loc7_ += b2internal::0K * _loc11_;
         }
         else
         {
            _loc24_ = this.§-U§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§8!§.x += _loc24_.x;
            this.§8!§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§1!9§.x;
            _loc9_ = _loc24_.x * this.§1!9§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::4T * _loc8_;
            _loc4_.y -= b2internal::4T * _loc9_;
            _loc5_ -= b2internal::^S * _loc10_;
            _loc6_.x += b2internal::#!9 * _loc8_;
            _loc6_.y += b2internal::#!9 * _loc9_;
            _loc7_ += b2internal::0K * _loc11_;
         }
         _loc2_.§"M§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§"M§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::=s;
         var _loc5_:b2Body = b2internal::"!;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§>!^§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§>!^§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::-!4.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::-!4.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::4K.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::4K.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§9#§)
         {
            this.§+!l§ = b2Math.§#F§(_loc20_,this.§%!#§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§+!l§.y - (_loc27_ + _loc23_) * this.§+!l§.x;
            this.m_a2 = _loc24_ * this.§+!l§.y - _loc25_ * this.§+!l§.x;
            _loc35_ = this.§+!l§.x * _loc26_ + this.§+!l§.y * _loc27_;
            if(b2Math.§`!9§(this.§5c§ - this.§;!$§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§@!-§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§`!9§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§;!$§)
            {
               _loc19_ = b2Math.§@!-§(_loc35_ - this.§;!$§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§;!$§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§5c§)
            {
               _loc19_ = b2Math.§@!-§(_loc35_ - this.§5c§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§5c§;
               _loc18_ = true;
            }
         }
         this.§1!9§ = b2Math.§#F§(_loc20_,this.§]S§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§1!9§.y - (_loc27_ + _loc23_) * this.§1!9§.x;
         this.m_s2 = _loc24_ * this.§1!9§.y - _loc25_ * this.§1!9§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§1!9§.x * _loc26_ + this.§1!9§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§!!i§;
         _loc16_ = b2Math.§[!l§(_loc16_,b2Math.§`!9§(_loc29_));
         _loc17_ = b2Math.§`!9§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::4T;
            _loc13_ = b2internal::#!9;
            _loc14_ = b2internal::^S;
            _loc15_ = b2internal::0K;
            this.§-U§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§-U§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§-U§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§-U§.col2.x = this.§-U§.col1.y;
            this.§-U§.col2.y = _loc14_ + _loc15_;
            this.§-U§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§-U§.col3.x = this.§-U§.col1.z;
            this.§-U§.col3.y = this.§-U§.col2.z;
            this.§-U§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§-U§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::4T;
            _loc13_ = b2internal::#!9;
            _loc14_ = b2internal::^S;
            _loc15_ = b2internal::0K;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§-U§.col1.Set(_loc36_,_loc37_,0);
            this.§-U§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§-U§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§1!9§.x + _loc28_.z * this.§+!l§.x;
         var _loc32_:Number = _loc28_.x * this.§1!9§.y + _loc28_.z * this.§+!l§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::4T * _loc31_;
         _loc6_.y -= b2internal::4T * _loc32_;
         _loc7_ -= b2internal::^S * _loc33_;
         _loc8_.x += b2internal::#!9 * _loc31_;
         _loc8_.y += b2internal::#!9 * _loc32_;
         _loc9_ += b2internal::0K * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§4l§();
         _loc5_.§4l§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
