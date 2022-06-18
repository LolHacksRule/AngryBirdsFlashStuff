package §7C§
{
   import §&!+§.b2Mat22;
   import §&!+§.b2Mat33;
   import §&!+§.b2Math;
   import §&!+§.b2Transform;
   import §&!+§.b2Vec2;
   import §&!+§.b2Vec3;
   import §4!&§.b2Body;
   import §4!&§.b2TimeStep;
   import §8!%§.b2Settings;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §4!G§:b2Vec2;
      
      private var §-7§:b2Vec2;
      
      private var §=!,§:Number;
      
      private var §@^§:b2Vec2;
      
      private var §[T§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^!!§:b2Mat33;
      
      private var §[!8§:b2Vec3;
      
      private var §9W§:Number;
      
      private var §7!>§:Number;
      
      private var §97§:Number;
      
      private var §6W§:Number;
      
      private var §7;§:Number;
      
      private var §;H§:Number;
      
      private var §"M§:Boolean;
      
      private var §!!;§:Boolean;
      
      private var §@w§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§4!G§ = new b2Vec2();
         this.§-7§ = new b2Vec2();
         this.§@^§ = new b2Vec2();
         this.§[T§ = new b2Vec2();
         this.§^!!§ = new b2Mat33();
         this.§[!8§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§,!K§);
         this.m_localAnchor2.SetV(param1.§[!5§);
         this.§4!G§.SetV(param1.§@!4§);
         this.§-7§.x = -this.§4!G§.y;
         this.§-7§.y = this.§4!G§.x;
         this.§=!,§ = param1.§^!Y§;
         this.§[!8§.§8Q§();
         this.§9W§ = 0;
         this.§7!>§ = 0;
         this.§97§ = param1.§!!G§;
         this.§6W§ = param1.§4!_§;
         this.§7;§ = param1.§8! §;
         this.§;H§ = param1.motorSpeed;
         this.§"M§ = param1.§2!'§;
         this.§!!;§ = param1.§&!>§;
         this.§@w§ = b2internal::+!2;
         this.§@^§.§8Q§();
         this.§[T§.§8Q§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::@6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[L.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§[!8§.x * this.§[T§.x + (this.§7!>§ + this.§[!8§.z) * this.§@^§.x),param1 * (this.§[!8§.x * this.§[T§.y + (this.§7!>§ + this.§[!8§.z) * this.§@^§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[!8§.y;
      }
      
      public function §^!E§() : Number
      {
         var _loc1_:b2Body = b2internal::@6;
         var _loc2_:b2Body = b2internal::[L;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§4!V§(this.§4!G§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §6!,§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::@6;
         var _loc2_:b2Body = b2internal::[L;
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
         var _loc15_:b2Vec2 = _loc1_.§4!V§(this.§4!G§);
         var _loc16_:b2Vec2 = _loc1_.§5+§;
         var _loc17_:b2Vec2 = _loc2_.§5+§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §1F§() : Boolean
      {
         return this.§"M§;
      }
      
      public function §"![§(param1:Boolean) : void
      {
         b2internal::@6.SetAwake(true);
         b2internal::[L.SetAwake(true);
         this.§"M§ = param1;
      }
      
      public function §0X§() : Number
      {
         return this.§97§;
      }
      
      public function §;F§() : Number
      {
         return this.§6W§;
      }
      
      public function §9a§(param1:Number, param2:Number) : void
      {
         b2internal::@6.SetAwake(true);
         b2internal::[L.SetAwake(true);
         this.§97§ = param1;
         this.§6W§ = param2;
      }
      
      public function §6X§() : Boolean
      {
         return this.§!!;§;
      }
      
      public function §>N§(param1:Boolean) : void
      {
         b2internal::@6.SetAwake(true);
         b2internal::[L.SetAwake(true);
         this.§!!;§ = param1;
      }
      
      public function §8F§(param1:Number) : void
      {
         b2internal::@6.SetAwake(true);
         b2internal::[L.SetAwake(true);
         this.§;H§ = param1;
      }
      
      public function §0s§() : Number
      {
         return this.§;H§;
      }
      
      public function §use§(param1:Number) : void
      {
         b2internal::@6.SetAwake(true);
         b2internal::[L.SetAwake(true);
         this.§7;§ = param1;
      }
      
      public function §4!+§() : Number
      {
         return this.§7!>§;
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
         var _loc2_:b2Body = b2internal::@6;
         var _loc3_:b2Body = b2internal::[L;
         b2internal::`!U.SetV(_loc2_.§68§());
         b2internal::8U.SetV(_loc3_.§68§());
         var _loc6_:b2Transform = _loc2_.§3!H§();
         var _loc7_:b2Transform = _loc3_.§3!H§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::`!U.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::`!U.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::8U.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::8U.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §>Y§ = _loc2_.§=!P§;
         §7Y§ = _loc3_.§=!P§;
         §>Q§ = _loc2_.§`!6§;
         §#W§ = _loc3_.§`!6§;
         this.§@^§.SetV(b2Math.§4k§(_loc6_.R,this.§4!G§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§@^§.y - (_loc13_ + _loc9_) * this.§@^§.x;
         this.m_a2 = _loc10_ * this.§@^§.y - _loc11_ * this.§@^§.x;
         this.§9W§ = b2internal::>Y + b2internal::7Y + b2internal::>Q * this.m_a1 * this.m_a1 + b2internal::#W * this.m_a2 * this.m_a2;
         if(this.§9W§ > Number.MIN_VALUE)
         {
            this.§9W§ = 1 / this.§9W§;
         }
         this.§[T§.SetV(b2Math.§4k§(_loc6_.R,this.§-7§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§[T§.y - (_loc13_ + _loc9_) * this.§[T§.x;
         this.m_s2 = _loc10_ * this.§[T§.y - _loc11_ * this.§[T§.x;
         var _loc14_:Number = b2internal::>Y;
         var _loc15_:Number = b2internal::7Y;
         var _loc16_:Number = b2internal::>Q;
         var _loc17_:Number = b2internal::#W;
         this.§^!!§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§^!!§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§^!!§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§^!!§.col2.x = this.§^!!§.col1.y;
         this.§^!!§.col2.y = _loc16_ + _loc17_;
         this.§^!!§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§^!!§.col3.x = this.§^!!§.col1.z;
         this.§^!!§.col3.y = this.§^!!§.col2.z;
         this.§^!!§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§"M§)
         {
            _loc18_ = this.§@^§.x * _loc12_ + this.§@^§.y * _loc13_;
            if(b2Math.§+Q§(this.§6W§ - this.§97§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§@w§ = b2internal::5a;
            }
            else if(_loc18_ <= this.§97§)
            {
               if(this.§@w§ != b2internal::=D)
               {
                  this.§@w§ = b2internal::=D;
                  this.§[!8§.z = 0;
               }
            }
            else if(_loc18_ >= this.§6W§)
            {
               if(this.§@w§ != b2internal::;!-)
               {
                  this.§@w§ = b2internal::;!-;
                  this.§[!8§.z = 0;
               }
            }
            else
            {
               this.§@w§ = b2internal::+!2;
               this.§[!8§.z = 0;
            }
         }
         else
         {
            this.§@w§ = b2internal::+!2;
         }
         if(this.§!!;§ == false)
         {
            this.§7!>§ = 0;
         }
         if(param1.§3j§)
         {
            this.§[!8§.x *= param1.§'7§;
            this.§[!8§.y *= param1.§'7§;
            this.§7!>§ *= param1.§'7§;
            _loc19_ = this.§[!8§.x * this.§[T§.x + (this.§7!>§ + this.§[!8§.z) * this.§@^§.x;
            _loc20_ = this.§[!8§.x * this.§[T§.y + (this.§7!>§ + this.§[!8§.z) * this.§@^§.y;
            _loc21_ = this.§[!8§.x * this.m_s1 + this.§[!8§.y + (this.§7!>§ + this.§[!8§.z) * this.m_a1;
            _loc22_ = this.§[!8§.x * this.m_s2 + this.§[!8§.y + (this.§7!>§ + this.§[!8§.z) * this.m_a2;
            _loc2_.§5+§.x -= b2internal::>Y * _loc19_;
            _loc2_.§5+§.y -= b2internal::>Y * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::>Q * _loc21_;
            _loc3_.§5+§.x += b2internal::7Y * _loc19_;
            _loc3_.§5+§.y += b2internal::7Y * _loc20_;
            _loc3_.m_angularVelocity += b2internal::#W * _loc22_;
         }
         else
         {
            this.§[!8§.§8Q§();
            this.§7!>§ = 0;
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
         var _loc2_:b2Body = b2internal::@6;
         var _loc3_:b2Body = b2internal::[L;
         var _loc4_:b2Vec2 = _loc2_.§5+§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§5+§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§!!;§ && this.§@w§ != b2internal::5a)
         {
            _loc14_ = this.§@^§.x * (_loc6_.x - _loc4_.x) + this.§@^§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§9W§ * (this.§;H§ - _loc14_);
            _loc16_ = this.§7!>§;
            _loc17_ = param1.§2!2§ * this.§7;§;
            this.§7!>§ = b2Math.§5!%§(this.§7!>§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§7!>§ - _loc16_) * this.§@^§.x;
            _loc9_ = _loc15_ * this.§@^§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::>Y * _loc8_;
            _loc4_.y -= b2internal::>Y * _loc9_;
            _loc5_ -= b2internal::>Q * _loc10_;
            _loc6_.x += b2internal::7Y * _loc8_;
            _loc6_.y += b2internal::7Y * _loc9_;
            _loc7_ += b2internal::#W * _loc11_;
         }
         var _loc12_:Number = this.§[T§.x * (_loc6_.x - _loc4_.x) + this.§[T§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§"M§ && this.§@w§ != b2internal::+!2)
         {
            _loc18_ = this.§@^§.x * (_loc6_.x - _loc4_.x) + this.§@^§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§[!8§.Copy();
            _loc20_ = this.§^!!§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§[!8§.§#H§(_loc20_);
            if(this.§@w§ == b2internal::=D)
            {
               this.§[!8§.z = b2Math.§+!]§(this.§[!8§.z,0);
            }
            else if(this.§@w§ == b2internal::;!-)
            {
               this.§[!8§.z = b2Math.§6!9§(this.§[!8§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§[!8§.z - _loc19_.z) * this.§^!!§.col3.x;
            _loc22_ = -_loc13_ - (this.§[!8§.z - _loc19_.z) * this.§^!!§.col3.y;
            _loc23_ = this.§^!!§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§[!8§.x = _loc23_.x;
            this.§[!8§.y = _loc23_.y;
            _loc20_.x = this.§[!8§.x - _loc19_.x;
            _loc20_.y = this.§[!8§.y - _loc19_.y;
            _loc20_.z = this.§[!8§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§[T§.x + _loc20_.z * this.§@^§.x;
            _loc9_ = _loc20_.x * this.§[T§.y + _loc20_.z * this.§@^§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::>Y * _loc8_;
            _loc4_.y -= b2internal::>Y * _loc9_;
            _loc5_ -= b2internal::>Q * _loc10_;
            _loc6_.x += b2internal::7Y * _loc8_;
            _loc6_.y += b2internal::7Y * _loc9_;
            _loc7_ += b2internal::#W * _loc11_;
         }
         else
         {
            _loc24_ = this.§^!!§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§[!8§.x += _loc24_.x;
            this.§[!8§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§[T§.x;
            _loc9_ = _loc24_.x * this.§[T§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::>Y * _loc8_;
            _loc4_.y -= b2internal::>Y * _loc9_;
            _loc5_ -= b2internal::>Q * _loc10_;
            _loc6_.x += b2internal::7Y * _loc8_;
            _loc6_.y += b2internal::7Y * _loc9_;
            _loc7_ += b2internal::#W * _loc11_;
         }
         _loc2_.§5+§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§5+§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::@6;
         var _loc5_:b2Body = b2internal::[L;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§9u§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§9u§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::`!U.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::`!U.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::8U.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::8U.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§"M§)
         {
            this.§@^§ = b2Math.§4k§(_loc20_,this.§4!G§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§@^§.y - (_loc27_ + _loc23_) * this.§@^§.x;
            this.m_a2 = _loc24_ * this.§@^§.y - _loc25_ * this.§@^§.x;
            _loc35_ = this.§@^§.x * _loc26_ + this.§@^§.y * _loc27_;
            if(b2Math.§+Q§(this.§6W§ - this.§97§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§5!%§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§+Q§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§97§)
            {
               _loc19_ = b2Math.§5!%§(_loc35_ - this.§97§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§97§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§6W§)
            {
               _loc19_ = b2Math.§5!%§(_loc35_ - this.§6W§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§6W§;
               _loc18_ = true;
            }
         }
         this.§[T§ = b2Math.§4k§(_loc20_,this.§-7§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§[T§.y - (_loc27_ + _loc23_) * this.§[T§.x;
         this.m_s2 = _loc24_ * this.§[T§.y - _loc25_ * this.§[T§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§[T§.x * _loc26_ + this.§[T§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§=!,§;
         _loc16_ = b2Math.§+!]§(_loc16_,b2Math.§+Q§(_loc29_));
         _loc17_ = b2Math.§+Q§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::>Y;
            _loc13_ = b2internal::7Y;
            _loc14_ = b2internal::>Q;
            _loc15_ = b2internal::#W;
            this.§^!!§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§^!!§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§^!!§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§^!!§.col2.x = this.§^!!§.col1.y;
            this.§^!!§.col2.y = _loc14_ + _loc15_;
            this.§^!!§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§^!!§.col3.x = this.§^!!§.col1.z;
            this.§^!!§.col3.y = this.§^!!§.col2.z;
            this.§^!!§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§^!!§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::>Y;
            _loc13_ = b2internal::7Y;
            _loc14_ = b2internal::>Q;
            _loc15_ = b2internal::#W;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§^!!§.col1.Set(_loc36_,_loc37_,0);
            this.§^!!§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§^!!§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§[T§.x + _loc28_.z * this.§@^§.x;
         var _loc32_:Number = _loc28_.x * this.§[T§.y + _loc28_.z * this.§@^§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::>Y * _loc31_;
         _loc6_.y -= b2internal::>Y * _loc32_;
         _loc7_ -= b2internal::>Q * _loc33_;
         _loc8_.x += b2internal::7Y * _loc31_;
         _loc8_.y += b2internal::7Y * _loc32_;
         _loc9_ += b2internal::#W * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§@d§();
         _loc5_.§@d§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
