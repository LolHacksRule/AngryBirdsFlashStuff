package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Mat33;
   import §#]§.b2Math;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §#]§.b2Vec3;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §5!n§:b2Vec2;
      
      private var §66§:b2Vec2;
      
      private var §,!y§:Number;
      
      private var §<!j§:b2Vec2;
      
      private var §4!c§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §1!o§:b2Mat33;
      
      private var §0!y§:b2Vec3;
      
      private var §""C§:Number;
      
      private var § b§:Number;
      
      private var §%R§:Number;
      
      private var §9!H§:Number;
      
      private var § !m§:Number;
      
      private var §%p§:Number;
      
      private var §=!1§:Boolean;
      
      private var §]!_§:Boolean;
      
      private var §#Q§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5!n§ = new b2Vec2();
         this.§66§ = new b2Vec2();
         this.§<!j§ = new b2Vec2();
         this.§4!c§ = new b2Vec2();
         this.§1!o§ = new b2Mat33();
         this.§0!y§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§#C§);
         this.m_localAnchor2.SetV(param1.§^!J§);
         this.§5!n§.SetV(param1.§8"C§);
         this.§66§.x = -this.§5!n§.y;
         this.§66§.y = this.§5!n§.x;
         this.§,!y§ = param1.§ var§;
         this.§0!y§.§;v§();
         this.§""C§ = 0;
         this.§ b§ = 0;
         this.§%R§ = param1.§[!7§;
         this.§9!H§ = param1.§<!T§;
         this.§ !m§ = param1.§22§;
         this.§%p§ = param1.motorSpeed;
         this.§=!1§ = param1.§3"%§;
         this.§]!_§ = param1.§[!c§;
         this.§#Q§ = b2internal::2!3;
         this.§<!j§.§;v§();
         this.§4!c§.§;v§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§0!y§.x * this.§4!c§.x + (this.§ b§ + this.§0!y§.z) * this.§<!j§.x),param1 * (this.§0!y§.x * this.§4!c§.y + (this.§ b§ + this.§0!y§.z) * this.§<!j§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0!y§.y;
      }
      
      public function §`z§() : Number
      {
         var _loc1_:b2Body = b2internal::8!Z;
         var _loc2_:b2Body = b2internal::4"0;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§9!]§(this.§5!n§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §8!>§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::8!Z;
         var _loc2_:b2Body = b2internal::4"0;
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
         var _loc15_:b2Vec2 = _loc1_.§9!]§(this.§5!n§);
         var _loc16_:b2Vec2 = _loc1_.§="8§;
         var _loc17_:b2Vec2 = _loc2_.§="8§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §1"1§() : Boolean
      {
         return this.§=!1§;
      }
      
      public function §6@§(param1:Boolean) : void
      {
         b2internal::8!Z.SetAwake(true);
         b2internal::4"0.SetAwake(true);
         this.§=!1§ = param1;
      }
      
      public function §#K§() : Number
      {
         return this.§%R§;
      }
      
      public function §4s§() : Number
      {
         return this.§9!H§;
      }
      
      public function §9!r§(param1:Number, param2:Number) : void
      {
         b2internal::8!Z.SetAwake(true);
         b2internal::4"0.SetAwake(true);
         this.§%R§ = param1;
         this.§9!H§ = param2;
      }
      
      public function §1!L§() : Boolean
      {
         return this.§]!_§;
      }
      
      public function §+!P§(param1:Boolean) : void
      {
         b2internal::8!Z.SetAwake(true);
         b2internal::4"0.SetAwake(true);
         this.§]!_§ = param1;
      }
      
      public function §3C§(param1:Number) : void
      {
         b2internal::8!Z.SetAwake(true);
         b2internal::4"0.SetAwake(true);
         this.§%p§ = param1;
      }
      
      public function §6<§() : Number
      {
         return this.§%p§;
      }
      
      public function §`2§(param1:Number) : void
      {
         b2internal::8!Z.SetAwake(true);
         b2internal::4"0.SetAwake(true);
         this.§ !m§ = param1;
      }
      
      public function §-!$§() : Number
      {
         return this.§ b§;
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
         var _loc2_:b2Body = b2internal::8!Z;
         var _loc3_:b2Body = b2internal::4"0;
         b2internal::%! .SetV(_loc2_.§!",§());
         b2internal::>";.SetV(_loc3_.§!",§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::%! .x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::%! .y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::>";.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::>";.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §>!m§ = _loc2_.§["A§;
         §&!W§ = _loc3_.§["A§;
         §;!o§ = _loc2_.§"g§;
         §7m§ = _loc3_.§"g§;
         this.§<!j§.SetV(b2Math.§?"1§(_loc6_.R,this.§5!n§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§<!j§.y - (_loc13_ + _loc9_) * this.§<!j§.x;
         this.m_a2 = _loc10_ * this.§<!j§.y - _loc11_ * this.§<!j§.x;
         this.§""C§ = b2internal::>!m + b2internal::&!W + b2internal::;!o * this.m_a1 * this.m_a1 + b2internal::7m * this.m_a2 * this.m_a2;
         if(this.§""C§ > Number.MIN_VALUE)
         {
            this.§""C§ = 1 / this.§""C§;
         }
         this.§4!c§.SetV(b2Math.§?"1§(_loc6_.R,this.§66§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§4!c§.y - (_loc13_ + _loc9_) * this.§4!c§.x;
         this.m_s2 = _loc10_ * this.§4!c§.y - _loc11_ * this.§4!c§.x;
         var _loc14_:Number = b2internal::>!m;
         var _loc15_:Number = b2internal::&!W;
         var _loc16_:Number = b2internal::;!o;
         var _loc17_:Number = b2internal::7m;
         this.§1!o§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§1!o§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§1!o§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§1!o§.col2.x = this.§1!o§.col1.y;
         this.§1!o§.col2.y = _loc16_ + _loc17_;
         this.§1!o§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§1!o§.col3.x = this.§1!o§.col1.z;
         this.§1!o§.col3.y = this.§1!o§.col2.z;
         this.§1!o§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§=!1§)
         {
            _loc18_ = this.§<!j§.x * _loc12_ + this.§<!j§.y * _loc13_;
            if(b2Math.§"p§(this.§9!H§ - this.§%R§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§#Q§ = b2internal::3"9;
            }
            else if(_loc18_ <= this.§%R§)
            {
               if(this.§#Q§ != b2internal::+p)
               {
                  this.§#Q§ = b2internal::+p;
                  this.§0!y§.z = 0;
               }
            }
            else if(_loc18_ >= this.§9!H§)
            {
               if(this.§#Q§ != b2internal::9!i)
               {
                  this.§#Q§ = b2internal::9!i;
                  this.§0!y§.z = 0;
               }
            }
            else
            {
               this.§#Q§ = b2internal::2!3;
               this.§0!y§.z = 0;
            }
         }
         else
         {
            this.§#Q§ = b2internal::2!3;
         }
         if(this.§]!_§ == false)
         {
            this.§ b§ = 0;
         }
         if(param1.§'i§)
         {
            this.§0!y§.x *= param1.§ ,§;
            this.§0!y§.y *= param1.§ ,§;
            this.§ b§ *= param1.§ ,§;
            _loc19_ = this.§0!y§.x * this.§4!c§.x + (this.§ b§ + this.§0!y§.z) * this.§<!j§.x;
            _loc20_ = this.§0!y§.x * this.§4!c§.y + (this.§ b§ + this.§0!y§.z) * this.§<!j§.y;
            _loc21_ = this.§0!y§.x * this.m_s1 + this.§0!y§.y + (this.§ b§ + this.§0!y§.z) * this.m_a1;
            _loc22_ = this.§0!y§.x * this.m_s2 + this.§0!y§.y + (this.§ b§ + this.§0!y§.z) * this.m_a2;
            _loc2_.§="8§.x -= b2internal::>!m * _loc19_;
            _loc2_.§="8§.y -= b2internal::>!m * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::;!o * _loc21_;
            _loc3_.§="8§.x += b2internal::&!W * _loc19_;
            _loc3_.§="8§.y += b2internal::&!W * _loc20_;
            _loc3_.m_angularVelocity += b2internal::7m * _loc22_;
         }
         else
         {
            this.§0!y§.§;v§();
            this.§ b§ = 0;
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
         var _loc2_:b2Body = b2internal::8!Z;
         var _loc3_:b2Body = b2internal::4"0;
         var _loc4_:b2Vec2 = _loc2_.§="8§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§="8§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§]!_§ && this.§#Q§ != b2internal::3"9)
         {
            _loc14_ = this.§<!j§.x * (_loc6_.x - _loc4_.x) + this.§<!j§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§""C§ * (this.§%p§ - _loc14_);
            _loc16_ = this.§ b§;
            _loc17_ = param1.§4"?§ * this.§ !m§;
            this.§ b§ = b2Math.§<O§(this.§ b§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§ b§ - _loc16_) * this.§<!j§.x;
            _loc9_ = _loc15_ * this.§<!j§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::>!m * _loc8_;
            _loc4_.y -= b2internal::>!m * _loc9_;
            _loc5_ -= b2internal::;!o * _loc10_;
            _loc6_.x += b2internal::&!W * _loc8_;
            _loc6_.y += b2internal::&!W * _loc9_;
            _loc7_ += b2internal::7m * _loc11_;
         }
         var _loc12_:Number = this.§4!c§.x * (_loc6_.x - _loc4_.x) + this.§4!c§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§=!1§ && this.§#Q§ != b2internal::2!3)
         {
            _loc18_ = this.§<!j§.x * (_loc6_.x - _loc4_.x) + this.§<!j§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§0!y§.Copy();
            _loc20_ = this.§1!o§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§0!y§.§&3§(_loc20_);
            if(this.§#Q§ == b2internal::+p)
            {
               this.§0!y§.z = b2Math.§2Y§(this.§0!y§.z,0);
            }
            else if(this.§#Q§ == b2internal::9!i)
            {
               this.§0!y§.z = b2Math.§]"=§(this.§0!y§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§0!y§.z - _loc19_.z) * this.§1!o§.col3.x;
            _loc22_ = -_loc13_ - (this.§0!y§.z - _loc19_.z) * this.§1!o§.col3.y;
            _loc23_ = this.§1!o§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§0!y§.x = _loc23_.x;
            this.§0!y§.y = _loc23_.y;
            _loc20_.x = this.§0!y§.x - _loc19_.x;
            _loc20_.y = this.§0!y§.y - _loc19_.y;
            _loc20_.z = this.§0!y§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§4!c§.x + _loc20_.z * this.§<!j§.x;
            _loc9_ = _loc20_.x * this.§4!c§.y + _loc20_.z * this.§<!j§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::>!m * _loc8_;
            _loc4_.y -= b2internal::>!m * _loc9_;
            _loc5_ -= b2internal::;!o * _loc10_;
            _loc6_.x += b2internal::&!W * _loc8_;
            _loc6_.y += b2internal::&!W * _loc9_;
            _loc7_ += b2internal::7m * _loc11_;
         }
         else
         {
            _loc24_ = this.§1!o§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§0!y§.x += _loc24_.x;
            this.§0!y§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§4!c§.x;
            _loc9_ = _loc24_.x * this.§4!c§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::>!m * _loc8_;
            _loc4_.y -= b2internal::>!m * _loc9_;
            _loc5_ -= b2internal::;!o * _loc10_;
            _loc6_.x += b2internal::&!W * _loc8_;
            _loc6_.y += b2internal::&!W * _loc9_;
            _loc7_ += b2internal::7m * _loc11_;
         }
         _loc2_.§="8§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§="8§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::8!Z;
         var _loc5_:b2Body = b2internal::4"0;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§ r§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§ r§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::%! .x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::%! .y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::>";.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::>";.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§=!1§)
         {
            this.§<!j§ = b2Math.§?"1§(_loc20_,this.§5!n§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§<!j§.y - (_loc27_ + _loc23_) * this.§<!j§.x;
            this.m_a2 = _loc24_ * this.§<!j§.y - _loc25_ * this.§<!j§.x;
            _loc35_ = this.§<!j§.x * _loc26_ + this.§<!j§.y * _loc27_;
            if(b2Math.§"p§(this.§9!H§ - this.§%R§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§<O§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§"p§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§%R§)
            {
               _loc19_ = b2Math.§<O§(_loc35_ - this.§%R§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§%R§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§9!H§)
            {
               _loc19_ = b2Math.§<O§(_loc35_ - this.§9!H§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§9!H§;
               _loc18_ = true;
            }
         }
         this.§4!c§ = b2Math.§?"1§(_loc20_,this.§66§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§4!c§.y - (_loc27_ + _loc23_) * this.§4!c§.x;
         this.m_s2 = _loc24_ * this.§4!c§.y - _loc25_ * this.§4!c§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§4!c§.x * _loc26_ + this.§4!c§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§,!y§;
         _loc16_ = b2Math.§2Y§(_loc16_,b2Math.§"p§(_loc29_));
         _loc17_ = b2Math.§"p§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::>!m;
            _loc13_ = b2internal::&!W;
            _loc14_ = b2internal::;!o;
            _loc15_ = b2internal::7m;
            this.§1!o§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§1!o§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§1!o§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§1!o§.col2.x = this.§1!o§.col1.y;
            this.§1!o§.col2.y = _loc14_ + _loc15_;
            this.§1!o§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§1!o§.col3.x = this.§1!o§.col1.z;
            this.§1!o§.col3.y = this.§1!o§.col2.z;
            this.§1!o§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§1!o§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::>!m;
            _loc13_ = b2internal::&!W;
            _loc14_ = b2internal::;!o;
            _loc15_ = b2internal::7m;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§1!o§.col1.Set(_loc36_,_loc37_,0);
            this.§1!o§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§1!o§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§4!c§.x + _loc28_.z * this.§<!j§.x;
         var _loc32_:Number = _loc28_.x * this.§4!c§.y + _loc28_.z * this.§<!j§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::>!m * _loc31_;
         _loc6_.y -= b2internal::>!m * _loc32_;
         _loc7_ -= b2internal::;!o * _loc33_;
         _loc8_.x += b2internal::&!W * _loc31_;
         _loc8_.y += b2internal::&!W * _loc32_;
         _loc9_ += b2internal::7m * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§,6§();
         _loc5_.§,6§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
