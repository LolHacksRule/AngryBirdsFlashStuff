package §9A§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Mat22;
   import §3q§.b2Mat33;
   import §3q§.b2Math;
   import §3q§.b2Transform;
   import §3q§.b2Vec2;
   import §3q§.b2Vec3;
   import §?0§.b2Body;
   import §?0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §84§:b2Vec2;
      
      private var §@!B§:b2Vec2;
      
      private var §9p§:Number;
      
      private var §1G§:b2Vec2;
      
      private var §#!W§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §0!2§:b2Mat33;
      
      private var §&S§:b2Vec3;
      
      private var §4!&§:Number;
      
      private var §"^§:Number;
      
      private var §7!Y§:Number;
      
      private var §+a§:Number;
      
      private var §;!7§:Number;
      
      private var §4!A§:Number;
      
      private var §`z§:Boolean;
      
      private var §3;§:Boolean;
      
      private var §%&§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§84§ = new b2Vec2();
         this.§@!B§ = new b2Vec2();
         this.§1G§ = new b2Vec2();
         this.§#!W§ = new b2Vec2();
         this.§0!2§ = new b2Mat33();
         this.§&S§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§`!X§);
         this.m_localAnchor2.SetV(param1.§+!,§);
         this.§84§.SetV(param1.§1!`§);
         this.§@!B§.x = -this.§84§.y;
         this.§@!B§.y = this.§84§.x;
         this.§9p§ = param1.§5o§;
         this.§&S§.§<!5§();
         this.§4!&§ = 0;
         this.§"^§ = 0;
         this.§7!Y§ = param1.§;r§;
         this.§+a§ = param1.§92§;
         this.§;!7§ = param1.§4R§;
         this.§4!A§ = param1.motorSpeed;
         this.§`z§ = param1.§-$§;
         this.§3;§ = param1.§2l§;
         this.§%&§ = b2internal::26;
         this.§1G§.§<!5§();
         this.§#!W§.§<!5§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::try.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-f.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§&S§.x * this.§#!W§.x + (this.§"^§ + this.§&S§.z) * this.§1G§.x),param1 * (this.§&S§.x * this.§#!W§.y + (this.§"^§ + this.§&S§.z) * this.§1G§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§&S§.y;
      }
      
      public function §`H§() : Number
      {
         var _loc1_:b2Body = b2internal::try;
         var _loc2_:b2Body = b2internal::-f;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§var§(this.§84§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §'#§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::try;
         var _loc2_:b2Body = b2internal::-f;
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
         var _loc15_:b2Vec2 = _loc1_.§var§(this.§84§);
         var _loc16_:b2Vec2 = _loc1_.§2!G§;
         var _loc17_:b2Vec2 = _loc2_.§2!G§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §2!U§() : Boolean
      {
         return this.§`z§;
      }
      
      public function §^u§(param1:Boolean) : void
      {
         b2internal::try.SetAwake(true);
         b2internal::-f.SetAwake(true);
         this.§`z§ = param1;
      }
      
      public function §"!E§() : Number
      {
         return this.§7!Y§;
      }
      
      public function §2N§() : Number
      {
         return this.§+a§;
      }
      
      public function §6!M§(param1:Number, param2:Number) : void
      {
         b2internal::try.SetAwake(true);
         b2internal::-f.SetAwake(true);
         this.§7!Y§ = param1;
         this.§+a§ = param2;
      }
      
      public function §9W§() : Boolean
      {
         return this.§3;§;
      }
      
      public function §+!$§(param1:Boolean) : void
      {
         b2internal::try.SetAwake(true);
         b2internal::-f.SetAwake(true);
         this.§3;§ = param1;
      }
      
      public function §^=§(param1:Number) : void
      {
         b2internal::try.SetAwake(true);
         b2internal::-f.SetAwake(true);
         this.§4!A§ = param1;
      }
      
      public function §!!W§() : Number
      {
         return this.§4!A§;
      }
      
      public function §8!V§(param1:Number) : void
      {
         b2internal::try.SetAwake(true);
         b2internal::-f.SetAwake(true);
         this.§;!7§ = param1;
      }
      
      public function §72§() : Number
      {
         return this.§"^§;
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
         var _loc2_:b2Body = b2internal::try;
         var _loc3_:b2Body = b2internal::-f;
         b2internal::&!%.SetV(_loc2_.§`!>§());
         b2internal::<!+.SetV(_loc3_.§`!>§());
         var _loc6_:b2Transform = _loc2_.§[!4§();
         var _loc7_:b2Transform = _loc3_.§[!4§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::&!%.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::&!%.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::<!+.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::<!+.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §>!3§ = _loc2_.§-q§;
         §5_§ = _loc3_.§-q§;
         §1@§ = _loc2_.§'a§;
         §0x§ = _loc3_.§'a§;
         this.§1G§.SetV(b2Math.§@!H§(_loc6_.R,this.§84§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§1G§.y - (_loc13_ + _loc9_) * this.§1G§.x;
         this.m_a2 = _loc10_ * this.§1G§.y - _loc11_ * this.§1G§.x;
         this.§4!&§ = b2internal::>!3 + b2internal::5_ + b2internal::1@ * this.m_a1 * this.m_a1 + b2internal::0x * this.m_a2 * this.m_a2;
         if(this.§4!&§ > Number.MIN_VALUE)
         {
            this.§4!&§ = 1 / this.§4!&§;
         }
         this.§#!W§.SetV(b2Math.§@!H§(_loc6_.R,this.§@!B§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§#!W§.y - (_loc13_ + _loc9_) * this.§#!W§.x;
         this.m_s2 = _loc10_ * this.§#!W§.y - _loc11_ * this.§#!W§.x;
         var _loc14_:Number = b2internal::>!3;
         var _loc15_:Number = b2internal::5_;
         var _loc16_:Number = b2internal::1@;
         var _loc17_:Number = b2internal::0x;
         this.§0!2§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§0!2§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§0!2§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§0!2§.col2.x = this.§0!2§.col1.y;
         this.§0!2§.col2.y = _loc16_ + _loc17_;
         this.§0!2§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§0!2§.col3.x = this.§0!2§.col1.z;
         this.§0!2§.col3.y = this.§0!2§.col2.z;
         this.§0!2§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§`z§)
         {
            _loc18_ = this.§1G§.x * _loc12_ + this.§1G§.y * _loc13_;
            if(b2Math.§@6§(this.§+a§ - this.§7!Y§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§%&§ = b2internal::=6;
            }
            else if(_loc18_ <= this.§7!Y§)
            {
               if(this.§%&§ != b2internal::1-)
               {
                  this.§%&§ = b2internal::1-;
                  this.§&S§.z = 0;
               }
            }
            else if(_loc18_ >= this.§+a§)
            {
               if(this.§%&§ != b2internal::<j)
               {
                  this.§%&§ = b2internal::<j;
                  this.§&S§.z = 0;
               }
            }
            else
            {
               this.§%&§ = b2internal::26;
               this.§&S§.z = 0;
            }
         }
         else
         {
            this.§%&§ = b2internal::26;
         }
         if(this.§3;§ == false)
         {
            this.§"^§ = 0;
         }
         if(param1.§4!D§)
         {
            this.§&S§.x *= param1.§1a§;
            this.§&S§.y *= param1.§1a§;
            this.§"^§ *= param1.§1a§;
            _loc19_ = this.§&S§.x * this.§#!W§.x + (this.§"^§ + this.§&S§.z) * this.§1G§.x;
            _loc20_ = this.§&S§.x * this.§#!W§.y + (this.§"^§ + this.§&S§.z) * this.§1G§.y;
            _loc21_ = this.§&S§.x * this.m_s1 + this.§&S§.y + (this.§"^§ + this.§&S§.z) * this.m_a1;
            _loc22_ = this.§&S§.x * this.m_s2 + this.§&S§.y + (this.§"^§ + this.§&S§.z) * this.m_a2;
            _loc2_.§2!G§.x -= b2internal::>!3 * _loc19_;
            _loc2_.§2!G§.y -= b2internal::>!3 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::1@ * _loc21_;
            _loc3_.§2!G§.x += b2internal::5_ * _loc19_;
            _loc3_.§2!G§.y += b2internal::5_ * _loc20_;
            _loc3_.m_angularVelocity += b2internal::0x * _loc22_;
         }
         else
         {
            this.§&S§.§<!5§();
            this.§"^§ = 0;
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
         var _loc2_:b2Body = b2internal::try;
         var _loc3_:b2Body = b2internal::-f;
         var _loc4_:b2Vec2 = _loc2_.§2!G§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§2!G§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§3;§ && this.§%&§ != b2internal::=6)
         {
            _loc14_ = this.§1G§.x * (_loc6_.x - _loc4_.x) + this.§1G§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§4!&§ * (this.§4!A§ - _loc14_);
            _loc16_ = this.§"^§;
            _loc17_ = param1.§+!I§ * this.§;!7§;
            this.§"^§ = b2Math.§;f§(this.§"^§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§"^§ - _loc16_) * this.§1G§.x;
            _loc9_ = _loc15_ * this.§1G§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::>!3 * _loc8_;
            _loc4_.y -= b2internal::>!3 * _loc9_;
            _loc5_ -= b2internal::1@ * _loc10_;
            _loc6_.x += b2internal::5_ * _loc8_;
            _loc6_.y += b2internal::5_ * _loc9_;
            _loc7_ += b2internal::0x * _loc11_;
         }
         var _loc12_:Number = this.§#!W§.x * (_loc6_.x - _loc4_.x) + this.§#!W§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§`z§ && this.§%&§ != b2internal::26)
         {
            _loc18_ = this.§1G§.x * (_loc6_.x - _loc4_.x) + this.§1G§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§&S§.Copy();
            _loc20_ = this.§0!2§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§&S§.§=O§(_loc20_);
            if(this.§%&§ == b2internal::1-)
            {
               this.§&S§.z = b2Math.§[!6§(this.§&S§.z,0);
            }
            else if(this.§%&§ == b2internal::<j)
            {
               this.§&S§.z = b2Math.§]!A§(this.§&S§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§&S§.z - _loc19_.z) * this.§0!2§.col3.x;
            _loc22_ = -_loc13_ - (this.§&S§.z - _loc19_.z) * this.§0!2§.col3.y;
            _loc23_ = this.§0!2§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§&S§.x = _loc23_.x;
            this.§&S§.y = _loc23_.y;
            _loc20_.x = this.§&S§.x - _loc19_.x;
            _loc20_.y = this.§&S§.y - _loc19_.y;
            _loc20_.z = this.§&S§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§#!W§.x + _loc20_.z * this.§1G§.x;
            _loc9_ = _loc20_.x * this.§#!W§.y + _loc20_.z * this.§1G§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::>!3 * _loc8_;
            _loc4_.y -= b2internal::>!3 * _loc9_;
            _loc5_ -= b2internal::1@ * _loc10_;
            _loc6_.x += b2internal::5_ * _loc8_;
            _loc6_.y += b2internal::5_ * _loc9_;
            _loc7_ += b2internal::0x * _loc11_;
         }
         else
         {
            _loc24_ = this.§0!2§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§&S§.x += _loc24_.x;
            this.§&S§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§#!W§.x;
            _loc9_ = _loc24_.x * this.§#!W§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::>!3 * _loc8_;
            _loc4_.y -= b2internal::>!3 * _loc9_;
            _loc5_ -= b2internal::1@ * _loc10_;
            _loc6_.x += b2internal::5_ * _loc8_;
            _loc6_.y += b2internal::5_ * _loc9_;
            _loc7_ += b2internal::0x * _loc11_;
         }
         _loc2_.§2!G§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§2!G§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::try;
         var _loc5_:b2Body = b2internal::-f;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§4!`§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§4!`§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::&!%.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::&!%.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::<!+.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::<!+.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§`z§)
         {
            this.§1G§ = b2Math.§@!H§(_loc20_,this.§84§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§1G§.y - (_loc27_ + _loc23_) * this.§1G§.x;
            this.m_a2 = _loc24_ * this.§1G§.y - _loc25_ * this.§1G§.x;
            _loc35_ = this.§1G§.x * _loc26_ + this.§1G§.y * _loc27_;
            if(b2Math.§@6§(this.§+a§ - this.§7!Y§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§;f§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§@6§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§7!Y§)
            {
               _loc19_ = b2Math.§;f§(_loc35_ - this.§7!Y§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§7!Y§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§+a§)
            {
               _loc19_ = b2Math.§;f§(_loc35_ - this.§+a§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§+a§;
               _loc18_ = true;
            }
         }
         this.§#!W§ = b2Math.§@!H§(_loc20_,this.§@!B§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§#!W§.y - (_loc27_ + _loc23_) * this.§#!W§.x;
         this.m_s2 = _loc24_ * this.§#!W§.y - _loc25_ * this.§#!W§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§#!W§.x * _loc26_ + this.§#!W§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§9p§;
         _loc16_ = b2Math.§[!6§(_loc16_,b2Math.§@6§(_loc29_));
         _loc17_ = b2Math.§@6§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::>!3;
            _loc13_ = b2internal::5_;
            _loc14_ = b2internal::1@;
            _loc15_ = b2internal::0x;
            this.§0!2§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§0!2§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§0!2§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§0!2§.col2.x = this.§0!2§.col1.y;
            this.§0!2§.col2.y = _loc14_ + _loc15_;
            this.§0!2§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§0!2§.col3.x = this.§0!2§.col1.z;
            this.§0!2§.col3.y = this.§0!2§.col2.z;
            this.§0!2§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§0!2§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::>!3;
            _loc13_ = b2internal::5_;
            _loc14_ = b2internal::1@;
            _loc15_ = b2internal::0x;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§0!2§.col1.Set(_loc36_,_loc37_,0);
            this.§0!2§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§0!2§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§#!W§.x + _loc28_.z * this.§1G§.x;
         var _loc32_:Number = _loc28_.x * this.§#!W§.y + _loc28_.z * this.§1G§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::>!3 * _loc31_;
         _loc6_.y -= b2internal::>!3 * _loc32_;
         _loc7_ -= b2internal::1@ * _loc33_;
         _loc8_.x += b2internal::5_ * _loc31_;
         _loc8_.y += b2internal::5_ * _loc32_;
         _loc9_ += b2internal::0x * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§>W§();
         _loc5_.§>W§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
