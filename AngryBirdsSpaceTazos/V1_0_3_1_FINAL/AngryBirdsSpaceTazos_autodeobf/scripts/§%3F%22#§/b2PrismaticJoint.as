package §?"#§
{
   import §8K§.b2Settings;
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §;`§.b2TimeStep;
   import §[!f§.b2Mat22;
   import §[!f§.b2Mat33;
   import §[!f§.b2Math;
   import §[!f§.b2Transform;
   import §[!f§.b2Vec2;
   import §[!f§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0n§:b2Vec2;
      
      private var §`4§:b2Vec2;
      
      private var §;!N§:Number;
      
      private var §;!p§:b2Vec2;
      
      private var §-!l§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<C§:b2Mat33;
      
      private var §2""§:b2Vec3;
      
      private var §>$§:Number;
      
      private var §9p§:Number;
      
      private var §-I§:Number;
      
      private var §-!p§:Number;
      
      private var §1#§:Number;
      
      private var §?!C§:Number;
      
      private var §+"5§:Boolean;
      
      private var §>!%§:Boolean;
      
      private var §+!r§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0n§ = new b2Vec2();
         this.§`4§ = new b2Vec2();
         this.§;!p§ = new b2Vec2();
         this.§-!l§ = new b2Vec2();
         this.§<C§ = new b2Mat33();
         this.§2""§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§5";§);
         this.m_localAnchor2.SetV(param1.§["%§);
         this.§0n§.SetV(param1.§,x§);
         this.§`4§.x = -this.§0n§.y;
         this.§`4§.y = this.§0n§.x;
         this.§;!N§ = param1.§"9§;
         this.§2""§.§]#§();
         this.§>$§ = 0;
         this.§9p§ = 0;
         this.§-I§ = param1.§9"?§;
         this.§-!p§ = param1.§'!g§;
         this.§1#§ = param1.§3"#§;
         this.§?!C§ = param1.motorSpeed;
         this.§+"5§ = param1.§?!h§;
         this.§>!%§ = param1.§9!"§;
         this.§+!r§ = b2internal::5!G;
         this.§;!p§.§]#§();
         this.§-!l§.§]#§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!M.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8"?.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§2""§.x * this.§-!l§.x + (this.§9p§ + this.§2""§.z) * this.§;!p§.x),param1 * (this.§2""§.x * this.§-!l§.y + (this.§9p§ + this.§2""§.z) * this.§;!p§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§2""§.y;
      }
      
      public function §4!i§() : Number
      {
         var _loc1_:b2Body = b2internal::8!M;
         var _loc2_:b2Body = b2internal::8"?;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§?6§(this.§0n§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §#a§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::8!M;
         var _loc2_:b2Body = b2internal::8"?;
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
         var _loc15_:b2Vec2 = _loc1_.§?6§(this.§0n§);
         var _loc16_:b2Vec2 = _loc1_.§0!'§;
         var _loc17_:b2Vec2 = _loc2_.§0!'§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §3!f§() : Boolean
      {
         return this.§+"5§;
      }
      
      public function §5D§(param1:Boolean) : void
      {
         b2internal::8!M.SetAwake(true);
         b2internal::8"?.SetAwake(true);
         this.§+"5§ = param1;
      }
      
      public function §@l§() : Number
      {
         return this.§-I§;
      }
      
      public function §4"F§() : Number
      {
         return this.§-!p§;
      }
      
      public function §]! §(param1:Number, param2:Number) : void
      {
         b2internal::8!M.SetAwake(true);
         b2internal::8"?.SetAwake(true);
         this.§-I§ = param1;
         this.§-!p§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§>!%§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::8!M.SetAwake(true);
         b2internal::8"?.SetAwake(true);
         this.§>!%§ = param1;
      }
      
      public function §7n§(param1:Number) : void
      {
         b2internal::8!M.SetAwake(true);
         b2internal::8"?.SetAwake(true);
         this.§?!C§ = param1;
      }
      
      public function §+!S§() : Number
      {
         return this.§?!C§;
      }
      
      public function §?p§(param1:Number) : void
      {
         b2internal::8!M.SetAwake(true);
         b2internal::8"?.SetAwake(true);
         this.§1#§ = param1;
      }
      
      public function §for §() : Number
      {
         return this.§9p§;
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
         var _loc2_:b2Body = b2internal::8!M;
         var _loc3_:b2Body = b2internal::8"?;
         b2internal::=A.SetV(_loc2_.§3!A§());
         b2internal::`"4.SetV(_loc3_.§3!A§());
         var _loc6_:b2Transform = _loc2_.§[!1§();
         var _loc7_:b2Transform = _loc3_.§[!1§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::=A.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::=A.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::`"4.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::`"4.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §"u§ = _loc2_.§9K§;
         §4V§ = _loc3_.§9K§;
         §7T§ = _loc2_.§%"+§;
         §=3§ = _loc3_.§%"+§;
         this.§;!p§.SetV(b2Math.§5%§(_loc6_.R,this.§0n§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§;!p§.y - (_loc13_ + _loc9_) * this.§;!p§.x;
         this.m_a2 = _loc10_ * this.§;!p§.y - _loc11_ * this.§;!p§.x;
         this.§>$§ = b2internal::"u + b2internal::4V + b2internal::7T * this.m_a1 * this.m_a1 + b2internal::=3 * this.m_a2 * this.m_a2;
         if(this.§>$§ > Number.MIN_VALUE)
         {
            this.§>$§ = 1 / this.§>$§;
         }
         this.§-!l§.SetV(b2Math.§5%§(_loc6_.R,this.§`4§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§-!l§.y - (_loc13_ + _loc9_) * this.§-!l§.x;
         this.m_s2 = _loc10_ * this.§-!l§.y - _loc11_ * this.§-!l§.x;
         var _loc14_:Number = b2internal::"u;
         var _loc15_:Number = b2internal::4V;
         var _loc16_:Number = b2internal::7T;
         var _loc17_:Number = b2internal::=3;
         this.§<C§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§<C§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§<C§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§<C§.col2.x = this.§<C§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§<C§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§<C§.col2.y = 1;
         }
         this.§<C§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§<C§.col3.x = this.§<C§.col1.z;
         this.§<C§.col3.y = this.§<C§.col2.z;
         this.§<C§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§+"5§)
         {
            _loc18_ = this.§;!p§.x * _loc12_ + this.§;!p§.y * _loc13_;
            if(b2Math.§8A§(this.§-!p§ - this.§-I§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§+!r§ = b2internal:: _;
            }
            else if(_loc18_ <= this.§-I§)
            {
               if(this.§+!r§ != b2internal::=!C)
               {
                  this.§+!r§ = b2internal::=!C;
                  this.§2""§.z = 0;
               }
            }
            else if(_loc18_ >= this.§-!p§)
            {
               if(this.§+!r§ != b2internal::2!M)
               {
                  this.§+!r§ = b2internal::2!M;
                  this.§2""§.z = 0;
               }
            }
            else
            {
               this.§+!r§ = b2internal::5!G;
               this.§2""§.z = 0;
            }
         }
         else
         {
            this.§+!r§ = b2internal::5!G;
            this.§2""§.z = 0;
         }
         if(this.§>!%§ == false)
         {
            this.§9p§ = 0;
         }
         if(param1.§%Z§)
         {
            this.§2""§.x *= param1.§0!`§;
            this.§2""§.y *= param1.§0!`§;
            this.§9p§ *= param1.§0!`§;
            _loc19_ = this.§2""§.x * this.§-!l§.x + (this.§9p§ + this.§2""§.z) * this.§;!p§.x;
            _loc20_ = this.§2""§.x * this.§-!l§.y + (this.§9p§ + this.§2""§.z) * this.§;!p§.y;
            _loc21_ = this.§2""§.x * this.m_s1 + this.§2""§.y + (this.§9p§ + this.§2""§.z) * this.m_a1;
            _loc22_ = this.§2""§.x * this.m_s2 + this.§2""§.y + (this.§9p§ + this.§2""§.z) * this.m_a2;
            _loc2_.§0!'§.x -= b2internal::"u * _loc19_;
            _loc2_.§0!'§.y -= b2internal::"u * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::7T * _loc21_;
            _loc3_.§0!'§.x += b2internal::4V * _loc19_;
            _loc3_.§0!'§.y += b2internal::4V * _loc20_;
            _loc3_.m_angularVelocity += b2internal::=3 * _loc22_;
         }
         else
         {
            this.§2""§.§]#§();
            this.§9p§ = 0;
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
         var _loc2_:b2Body = b2internal::8!M;
         var _loc3_:b2Body = b2internal::8"?;
         var _loc4_:b2Vec2 = _loc2_.§0!'§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§0!'§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§>!%§ && this.§+!r§ != b2internal:: _)
         {
            _loc14_ = this.§;!p§.x * (_loc6_.x - _loc4_.x) + this.§;!p§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§>$§ * (this.§?!C§ - _loc14_);
            _loc16_ = this.§9p§;
            _loc17_ = param1.§;!!§ * this.§1#§;
            this.§9p§ = b2Math.§>!]§(this.§9p§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§9p§ - _loc16_) * this.§;!p§.x;
            _loc9_ = _loc15_ * this.§;!p§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::"u * _loc8_;
            _loc4_.y -= b2internal::"u * _loc9_;
            _loc5_ -= b2internal::7T * _loc10_;
            _loc6_.x += b2internal::4V * _loc8_;
            _loc6_.y += b2internal::4V * _loc9_;
            _loc7_ += b2internal::=3 * _loc11_;
         }
         var _loc12_:Number = this.§-!l§.x * (_loc6_.x - _loc4_.x) + this.§-!l§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§+"5§ && this.§+!r§ != b2internal::5!G)
         {
            _loc18_ = this.§;!p§.x * (_loc6_.x - _loc4_.x) + this.§;!p§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§2""§.Copy();
            _loc20_ = this.§<C§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§2""§.§ ,§(_loc20_);
            if(this.§+!r§ == b2internal::=!C)
            {
               this.§2""§.z = b2Math.§<"4§(this.§2""§.z,0);
            }
            else if(this.§+!r§ == b2internal::2!M)
            {
               this.§2""§.z = b2Math.§@]§(this.§2""§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§2""§.z - _loc19_.z) * this.§<C§.col3.x;
            _loc22_ = -_loc13_ - (this.§2""§.z - _loc19_.z) * this.§<C§.col3.y;
            _loc23_ = this.§<C§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§2""§.x = _loc23_.x;
            this.§2""§.y = _loc23_.y;
            _loc20_.x = this.§2""§.x - _loc19_.x;
            _loc20_.y = this.§2""§.y - _loc19_.y;
            _loc20_.z = this.§2""§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§-!l§.x + _loc20_.z * this.§;!p§.x;
            _loc9_ = _loc20_.x * this.§-!l§.y + _loc20_.z * this.§;!p§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::"u * _loc8_;
            _loc4_.y -= b2internal::"u * _loc9_;
            _loc5_ -= b2internal::7T * _loc10_;
            _loc6_.x += b2internal::4V * _loc8_;
            _loc6_.y += b2internal::4V * _loc9_;
            _loc7_ += b2internal::=3 * _loc11_;
         }
         else
         {
            _loc24_ = this.§<C§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§2""§.x += _loc24_.x;
            this.§2""§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§-!l§.x;
            _loc9_ = _loc24_.x * this.§-!l§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::"u * _loc8_;
            _loc4_.y -= b2internal::"u * _loc9_;
            _loc5_ -= b2internal::7T * _loc10_;
            _loc6_.x += b2internal::4V * _loc8_;
            _loc6_.y += b2internal::4V * _loc9_;
            _loc7_ += b2internal::=3 * _loc11_;
         }
         _loc2_.§0!'§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§0!'§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::8!M;
         var _loc5_:b2Body = b2internal::8"?;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§]@§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§]@§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::=A.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::=A.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::`"4.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::`"4.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§+"5§)
         {
            this.§;!p§ = b2Math.§5%§(_loc20_,this.§0n§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§;!p§.y - (_loc27_ + _loc23_) * this.§;!p§.x;
            this.m_a2 = _loc24_ * this.§;!p§.y - _loc25_ * this.§;!p§.x;
            _loc35_ = this.§;!p§.x * _loc26_ + this.§;!p§.y * _loc27_;
            if(b2Math.§8A§(this.§-!p§ - this.§-I§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§>!]§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§8A§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§-I§)
            {
               _loc19_ = b2Math.§>!]§(_loc35_ - this.§-I§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§-I§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§-!p§)
            {
               _loc19_ = b2Math.§>!]§(_loc35_ - this.§-!p§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§-!p§;
               _loc18_ = true;
            }
         }
         this.§-!l§ = b2Math.§5%§(_loc20_,this.§`4§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§-!l§.y - (_loc27_ + _loc23_) * this.§-!l§.x;
         this.m_s2 = _loc24_ * this.§-!l§.y - _loc25_ * this.§-!l§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§-!l§.x * _loc26_ + this.§-!l§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§;!N§;
         _loc16_ = b2Math.§<"4§(_loc16_,b2Math.§8A§(_loc29_));
         _loc17_ = b2Math.§8A§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::"u;
            _loc13_ = b2internal::4V;
            _loc14_ = b2internal::7T;
            _loc15_ = b2internal::=3;
            this.§<C§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§<C§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§<C§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§<C§.col2.x = this.§<C§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§<C§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§<C§.col2.y = 1;
            }
            this.§<C§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§<C§.col3.x = this.§<C§.col1.z;
            this.§<C§.col3.y = this.§<C§.col2.z;
            this.§<C§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§<C§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::"u;
            _loc13_ = b2internal::4V;
            _loc14_ = b2internal::7T;
            _loc15_ = b2internal::=3;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§<C§.col1.Set(_loc36_,_loc37_,0);
            this.§<C§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§<C§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§-!l§.x + _loc28_.z * this.§;!p§.x;
         var _loc32_:Number = _loc28_.x * this.§-!l§.y + _loc28_.z * this.§;!p§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::"u * _loc31_;
         _loc6_.y -= b2internal::"u * _loc32_;
         _loc7_ -= b2internal::7T * _loc33_;
         _loc8_.x += b2internal::4V * _loc31_;
         _loc8_.y += b2internal::4V * _loc32_;
         _loc9_ += b2internal::=3 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§"t§();
         _loc5_.§"t§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
