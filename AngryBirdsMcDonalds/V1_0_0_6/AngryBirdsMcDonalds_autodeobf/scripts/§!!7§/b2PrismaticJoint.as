package §!!7§
{
   import §7!5§.b2Body;
   import §7!5§.b2TimeStep;
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §@![§.b2Mat22;
   import §@![§.b2Mat33;
   import §@![§.b2Math;
   import §@![§.b2Transform;
   import §@![§.b2Vec2;
   import §@![§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §,k§:b2Vec2;
      
      private var §"D§:b2Vec2;
      
      private var §<!%§:Number;
      
      private var §+!R§:b2Vec2;
      
      private var §84§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §&f§:b2Mat33;
      
      private var §^!7§:b2Vec3;
      
      private var §9H§:Number;
      
      private var §3!a§:Number;
      
      private var §"s§:Number;
      
      private var §?%§:Number;
      
      private var §-!S§:Number;
      
      private var §@!H§:Number;
      
      private var §&N§:Boolean;
      
      private var §`!-§:Boolean;
      
      private var §for §:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,k§ = new b2Vec2();
         this.§"D§ = new b2Vec2();
         this.§+!R§ = new b2Vec2();
         this.§84§ = new b2Vec2();
         this.§&f§ = new b2Mat33();
         this.§^!7§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'8§);
         this.m_localAnchor2.SetV(param1.§>!_§);
         this.§,k§.SetV(param1.§!!c§);
         this.§"D§.x = -this.§,k§.y;
         this.§"D§.y = this.§,k§.x;
         this.§<!%§ = param1.§=^§;
         this.§^!7§.§%!&§();
         this.§9H§ = 0;
         this.§3!a§ = 0;
         this.§"s§ = param1.§^!e§;
         this.§?%§ = param1.§'!T§;
         this.§-!S§ = param1.§3!8§;
         this.§@!H§ = param1.motorSpeed;
         this.§&N§ = param1.§#!D§;
         this.§`!-§ = param1.get;
         this.§for § = b2internal::&-;
         this.§+!R§.§%!&§();
         this.§84§.§%!&§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-!j.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::30.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§^!7§.x * this.§84§.x + (this.§3!a§ + this.§^!7§.z) * this.§+!R§.x),param1 * (this.§^!7§.x * this.§84§.y + (this.§3!a§ + this.§^!7§.z) * this.§+!R§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^!7§.y;
      }
      
      public function § !e§() : Number
      {
         var _loc1_:b2Body = b2internal::-!j;
         var _loc2_:b2Body = b2internal::30;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§1!6§(this.§,k§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function § var§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::-!j;
         var _loc2_:b2Body = b2internal::30;
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
         var _loc15_:b2Vec2 = _loc1_.§1!6§(this.§,k§);
         var _loc16_:b2Vec2 = _loc1_.§?!%§;
         var _loc17_:b2Vec2 = _loc2_.§?!%§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §!!<§() : Boolean
      {
         return this.§&N§;
      }
      
      public function §"n§(param1:Boolean) : void
      {
         b2internal::-!j.SetAwake(true);
         b2internal::30.SetAwake(true);
         this.§&N§ = param1;
      }
      
      public function §@W§() : Number
      {
         return this.§"s§;
      }
      
      public function §2§() : Number
      {
         return this.§?%§;
      }
      
      public function §]Z§(param1:Number, param2:Number) : void
      {
         b2internal::-!j.SetAwake(true);
         b2internal::30.SetAwake(true);
         this.§"s§ = param1;
         this.§?%§ = param2;
      }
      
      public function §-q§() : Boolean
      {
         return this.§`!-§;
      }
      
      public function §+x§(param1:Boolean) : void
      {
         b2internal::-!j.SetAwake(true);
         b2internal::30.SetAwake(true);
         this.§`!-§ = param1;
      }
      
      public function §!9§(param1:Number) : void
      {
         b2internal::-!j.SetAwake(true);
         b2internal::30.SetAwake(true);
         this.§@!H§ = param1;
      }
      
      public function §7w§() : Number
      {
         return this.§@!H§;
      }
      
      public function §<!<§(param1:Number) : void
      {
         b2internal::-!j.SetAwake(true);
         b2internal::30.SetAwake(true);
         this.§-!S§ = param1;
      }
      
      public function §5!U§() : Number
      {
         return this.§3!a§;
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
         var _loc2_:b2Body = b2internal::-!j;
         var _loc3_:b2Body = b2internal::30;
         b2internal::-5.SetV(_loc2_.§5!j§());
         b2internal::8!e.SetV(_loc3_.§5!j§());
         var _loc6_:b2Transform = _loc2_.§@!;§();
         var _loc7_:b2Transform = _loc3_.§@!;§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::-5.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::-5.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::8!e.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::8!e.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §?B§ = _loc2_.§0T§;
         §[x§ = _loc3_.§0T§;
         § !#§ = _loc2_.§#d§;
         §72§ = _loc3_.§#d§;
         this.§+!R§.SetV(b2Math.§&U§(_loc6_.R,this.§,k§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§+!R§.y - (_loc13_ + _loc9_) * this.§+!R§.x;
         this.m_a2 = _loc10_ * this.§+!R§.y - _loc11_ * this.§+!R§.x;
         this.§9H§ = b2internal::?B + b2internal::[x + b2internal:: !# * this.m_a1 * this.m_a1 + b2internal::72 * this.m_a2 * this.m_a2;
         if(this.§9H§ > Number.MIN_VALUE)
         {
            this.§9H§ = 1 / this.§9H§;
         }
         this.§84§.SetV(b2Math.§&U§(_loc6_.R,this.§"D§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§84§.y - (_loc13_ + _loc9_) * this.§84§.x;
         this.m_s2 = _loc10_ * this.§84§.y - _loc11_ * this.§84§.x;
         var _loc14_:Number = b2internal::?B;
         var _loc15_:Number = b2internal::[x;
         var _loc16_:Number = b2internal:: !#;
         var _loc17_:Number = b2internal::72;
         this.§&f§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§&f§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§&f§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§&f§.col2.x = this.§&f§.col1.y;
         this.§&f§.col2.y = _loc16_ + _loc17_;
         this.§&f§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§&f§.col3.x = this.§&f§.col1.z;
         this.§&f§.col3.y = this.§&f§.col2.z;
         this.§&f§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§&N§)
         {
            _loc18_ = this.§+!R§.x * _loc12_ + this.§+!R§.y * _loc13_;
            if(b2Math.§]!b§(this.§?%§ - this.§"s§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§for § = b2internal::4!b;
            }
            else if(_loc18_ <= this.§"s§)
            {
               if(this.§for § != b2internal::-A)
               {
                  this.§for § = b2internal::-A;
                  this.§^!7§.z = 0;
               }
            }
            else if(_loc18_ >= this.§?%§)
            {
               if(this.§for § != b2internal::@w)
               {
                  this.§for § = b2internal::@w;
                  this.§^!7§.z = 0;
               }
            }
            else
            {
               this.§for § = b2internal::&-;
               this.§^!7§.z = 0;
            }
         }
         else
         {
            this.§for § = b2internal::&-;
         }
         if(this.§`!-§ == false)
         {
            this.§3!a§ = 0;
         }
         if(param1.§0!J§)
         {
            this.§^!7§.x *= param1.§'!P§;
            this.§^!7§.y *= param1.§'!P§;
            this.§3!a§ *= param1.§'!P§;
            _loc19_ = this.§^!7§.x * this.§84§.x + (this.§3!a§ + this.§^!7§.z) * this.§+!R§.x;
            _loc20_ = this.§^!7§.x * this.§84§.y + (this.§3!a§ + this.§^!7§.z) * this.§+!R§.y;
            _loc21_ = this.§^!7§.x * this.m_s1 + this.§^!7§.y + (this.§3!a§ + this.§^!7§.z) * this.m_a1;
            _loc22_ = this.§^!7§.x * this.m_s2 + this.§^!7§.y + (this.§3!a§ + this.§^!7§.z) * this.m_a2;
            _loc2_.§?!%§.x -= b2internal::?B * _loc19_;
            _loc2_.§?!%§.y -= b2internal::?B * _loc20_;
            _loc2_.m_angularVelocity -= b2internal:: !# * _loc21_;
            _loc3_.§?!%§.x += b2internal::[x * _loc19_;
            _loc3_.§?!%§.y += b2internal::[x * _loc20_;
            _loc3_.m_angularVelocity += b2internal::72 * _loc22_;
         }
         else
         {
            this.§^!7§.§%!&§();
            this.§3!a§ = 0;
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
         var _loc2_:b2Body = b2internal::-!j;
         var _loc3_:b2Body = b2internal::30;
         var _loc4_:b2Vec2 = _loc2_.§?!%§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§?!%§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§`!-§ && this.§for § != b2internal::4!b)
         {
            _loc14_ = this.§+!R§.x * (_loc6_.x - _loc4_.x) + this.§+!R§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§9H§ * (this.§@!H§ - _loc14_);
            _loc16_ = this.§3!a§;
            _loc17_ = param1.§4l§ * this.§-!S§;
            this.§3!a§ = b2Math.§1!P§(this.§3!a§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§3!a§ - _loc16_) * this.§+!R§.x;
            _loc9_ = _loc15_ * this.§+!R§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::?B * _loc8_;
            _loc4_.y -= b2internal::?B * _loc9_;
            _loc5_ -= b2internal:: !# * _loc10_;
            _loc6_.x += b2internal::[x * _loc8_;
            _loc6_.y += b2internal::[x * _loc9_;
            _loc7_ += b2internal::72 * _loc11_;
         }
         var _loc12_:Number = this.§84§.x * (_loc6_.x - _loc4_.x) + this.§84§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§&N§ && this.§for § != b2internal::&-)
         {
            _loc18_ = this.§+!R§.x * (_loc6_.x - _loc4_.x) + this.§+!R§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§^!7§.Copy();
            _loc20_ = this.§&f§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§^!7§.§,g§(_loc20_);
            if(this.§for § == b2internal::-A)
            {
               this.§^!7§.z = b2Math.§<!!§(this.§^!7§.z,0);
            }
            else if(this.§for § == b2internal::@w)
            {
               this.§^!7§.z = b2Math.§4!T§(this.§^!7§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§^!7§.z - _loc19_.z) * this.§&f§.col3.x;
            _loc22_ = -_loc13_ - (this.§^!7§.z - _loc19_.z) * this.§&f§.col3.y;
            _loc23_ = this.§&f§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§^!7§.x = _loc23_.x;
            this.§^!7§.y = _loc23_.y;
            _loc20_.x = this.§^!7§.x - _loc19_.x;
            _loc20_.y = this.§^!7§.y - _loc19_.y;
            _loc20_.z = this.§^!7§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§84§.x + _loc20_.z * this.§+!R§.x;
            _loc9_ = _loc20_.x * this.§84§.y + _loc20_.z * this.§+!R§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::?B * _loc8_;
            _loc4_.y -= b2internal::?B * _loc9_;
            _loc5_ -= b2internal:: !# * _loc10_;
            _loc6_.x += b2internal::[x * _loc8_;
            _loc6_.y += b2internal::[x * _loc9_;
            _loc7_ += b2internal::72 * _loc11_;
         }
         else
         {
            _loc24_ = this.§&f§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§^!7§.x += _loc24_.x;
            this.§^!7§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§84§.x;
            _loc9_ = _loc24_.x * this.§84§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::?B * _loc8_;
            _loc4_.y -= b2internal::?B * _loc9_;
            _loc5_ -= b2internal:: !# * _loc10_;
            _loc6_.x += b2internal::[x * _loc8_;
            _loc6_.y += b2internal::[x * _loc9_;
            _loc7_ += b2internal::72 * _loc11_;
         }
         _loc2_.§?!%§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§?!%§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::-!j;
         var _loc5_:b2Body = b2internal::30;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§6-§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§6-§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::-5.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::-5.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::8!e.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::8!e.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§&N§)
         {
            this.§+!R§ = b2Math.§&U§(_loc20_,this.§,k§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§+!R§.y - (_loc27_ + _loc23_) * this.§+!R§.x;
            this.m_a2 = _loc24_ * this.§+!R§.y - _loc25_ * this.§+!R§.x;
            _loc35_ = this.§+!R§.x * _loc26_ + this.§+!R§.y * _loc27_;
            if(b2Math.§]!b§(this.§?%§ - this.§"s§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§1!P§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§]!b§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§"s§)
            {
               _loc19_ = b2Math.§1!P§(_loc35_ - this.§"s§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§"s§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§?%§)
            {
               _loc19_ = b2Math.§1!P§(_loc35_ - this.§?%§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§?%§;
               _loc18_ = true;
            }
         }
         this.§84§ = b2Math.§&U§(_loc20_,this.§"D§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§84§.y - (_loc27_ + _loc23_) * this.§84§.x;
         this.m_s2 = _loc24_ * this.§84§.y - _loc25_ * this.§84§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§84§.x * _loc26_ + this.§84§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§<!%§;
         _loc16_ = b2Math.§<!!§(_loc16_,b2Math.§]!b§(_loc29_));
         _loc17_ = b2Math.§]!b§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::?B;
            _loc13_ = b2internal::[x;
            _loc14_ = b2internal:: !#;
            _loc15_ = b2internal::72;
            this.§&f§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§&f§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§&f§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§&f§.col2.x = this.§&f§.col1.y;
            this.§&f§.col2.y = _loc14_ + _loc15_;
            this.§&f§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§&f§.col3.x = this.§&f§.col1.z;
            this.§&f§.col3.y = this.§&f§.col2.z;
            this.§&f§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§&f§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::?B;
            _loc13_ = b2internal::[x;
            _loc14_ = b2internal:: !#;
            _loc15_ = b2internal::72;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§&f§.col1.Set(_loc36_,_loc37_,0);
            this.§&f§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§&f§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§84§.x + _loc28_.z * this.§+!R§.x;
         var _loc32_:Number = _loc28_.x * this.§84§.y + _loc28_.z * this.§+!R§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::?B * _loc31_;
         _loc6_.y -= b2internal::?B * _loc32_;
         _loc7_ -= b2internal:: !# * _loc33_;
         _loc8_.x += b2internal::[x * _loc31_;
         _loc8_.y += b2internal::[x * _loc32_;
         _loc9_ += b2internal::72 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§5!%§();
         _loc5_.§5!%§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
