package §!H§
{
   import §!!B§.b2Body;
   import §!!B§.b2TimeStep;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Mat22;
   import §;U§.b2Mat33;
   import §;U§.b2Math;
   import §;U§.b2Transform;
   import §;U§.b2Vec2;
   import §;U§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §;%§:b2Vec2;
      
      private var §5F§:b2Vec2;
      
      private var §'!T§:Number;
      
      private var §8!W§:b2Vec2;
      
      private var §'H§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §&§:b2Mat33;
      
      private var §9$§:b2Vec3;
      
      private var §&!J§:Number;
      
      private var §3!N§:Number;
      
      private var §5r§:Number;
      
      private var §`!V§:Number;
      
      private var §+l§:Number;
      
      private var §!!_§:Number;
      
      private var §0b§:Boolean;
      
      private var §@=§:Boolean;
      
      private var §7!8§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§;%§ = new b2Vec2();
         this.§5F§ = new b2Vec2();
         this.§8!W§ = new b2Vec2();
         this.§'H§ = new b2Vec2();
         this.§&§ = new b2Mat33();
         this.§9$§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§7p§);
         this.m_localAnchor2.SetV(param1.§"!C§);
         this.§;%§.SetV(param1.§56§);
         this.§5F§.x = -this.§;%§.y;
         this.§5F§.y = this.§;%§.x;
         this.§'!T§ = param1.§#!V§;
         this.§9$§.§4S§();
         this.§&!J§ = 0;
         this.§3!N§ = 0;
         this.§5r§ = param1.§^h§;
         this.§`!V§ = param1.§`!;§;
         this.§+l§ = param1.§+!0§;
         this.§!!_§ = param1.motorSpeed;
         this.§0b§ = param1.§^+§;
         this.§@=§ = param1.§+!6§;
         this.§7!8§ = b2internal::29;
         this.§8!W§.§4S§();
         this.§'H§.§4S§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!!!.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§9$§.x * this.§'H§.x + (this.§3!N§ + this.§9$§.z) * this.§8!W§.x),param1 * (this.§9$§.x * this.§'H§.y + (this.§3!N§ + this.§9$§.z) * this.§8!W§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9$§.y;
      }
      
      public function §4#§() : Number
      {
         var _loc1_:b2Body = b2internal::!!!;
         var _loc2_:b2Body = b2internal::%!;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§+V§(this.§;%§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §9!=§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::!!!;
         var _loc2_:b2Body = b2internal::%!;
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
         var _loc15_:b2Vec2 = _loc1_.§+V§(this.§;%§);
         var _loc16_:b2Vec2 = _loc1_.§7W§;
         var _loc17_:b2Vec2 = _loc2_.§7W§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §5!C§() : Boolean
      {
         return this.§0b§;
      }
      
      public function §3!K§(param1:Boolean) : void
      {
         b2internal::!!!.SetAwake(true);
         b2internal::%!.SetAwake(true);
         this.§0b§ = param1;
      }
      
      public function §,!-§() : Number
      {
         return this.§5r§;
      }
      
      public function §+-§() : Number
      {
         return this.§`!V§;
      }
      
      public function §[o§(param1:Number, param2:Number) : void
      {
         b2internal::!!!.SetAwake(true);
         b2internal::%!.SetAwake(true);
         this.§5r§ = param1;
         this.§`!V§ = param2;
      }
      
      public function §;3§() : Boolean
      {
         return this.§@=§;
      }
      
      public function §+!'§(param1:Boolean) : void
      {
         b2internal::!!!.SetAwake(true);
         b2internal::%!.SetAwake(true);
         this.§@=§ = param1;
      }
      
      public function §-!3§(param1:Number) : void
      {
         b2internal::!!!.SetAwake(true);
         b2internal::%!.SetAwake(true);
         this.§!!_§ = param1;
      }
      
      public function §82§() : Number
      {
         return this.§!!_§;
      }
      
      public function §case §(param1:Number) : void
      {
         b2internal::!!!.SetAwake(true);
         b2internal::%!.SetAwake(true);
         this.§+l§ = param1;
      }
      
      public function §;!O§() : Number
      {
         return this.§3!N§;
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
         var _loc2_:b2Body = b2internal::!!!;
         var _loc3_:b2Body = b2internal::%!;
         b2internal::<!<.SetV(_loc2_.§0'§());
         b2internal::,,.SetV(_loc3_.§0'§());
         var _loc6_:b2Transform = _loc2_.§4>§();
         var _loc7_:b2Transform = _loc3_.§4>§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::<!<.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::<!<.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::,,.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::,,.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §'t§ = _loc2_.§?t§;
         §%!R§ = _loc3_.§?t§;
         §2!3§ = _loc2_.§<!V§;
         §2;§ = _loc3_.§<!V§;
         this.§8!W§.SetV(b2Math.§5!§(_loc6_.R,this.§;%§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§8!W§.y - (_loc13_ + _loc9_) * this.§8!W§.x;
         this.m_a2 = _loc10_ * this.§8!W§.y - _loc11_ * this.§8!W§.x;
         this.§&!J§ = b2internal::'t + b2internal::%!R + b2internal::2!3 * this.m_a1 * this.m_a1 + b2internal::2; * this.m_a2 * this.m_a2;
         if(this.§&!J§ > Number.MIN_VALUE)
         {
            this.§&!J§ = 1 / this.§&!J§;
         }
         this.§'H§.SetV(b2Math.§5!§(_loc6_.R,this.§5F§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§'H§.y - (_loc13_ + _loc9_) * this.§'H§.x;
         this.m_s2 = _loc10_ * this.§'H§.y - _loc11_ * this.§'H§.x;
         var _loc14_:Number = b2internal::'t;
         var _loc15_:Number = b2internal::%!R;
         var _loc16_:Number = b2internal::2!3;
         var _loc17_:Number = b2internal::2;;
         this.§&§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§&§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§&§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§&§.col2.x = this.§&§.col1.y;
         this.§&§.col2.y = _loc16_ + _loc17_;
         this.§&§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§&§.col3.x = this.§&§.col1.z;
         this.§&§.col3.y = this.§&§.col2.z;
         this.§&§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§0b§)
         {
            _loc18_ = this.§8!W§.x * _loc12_ + this.§8!W§.y * _loc13_;
            if(b2Math.§[!I§(this.§`!V§ - this.§5r§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§7!8§ = b2internal::"!^;
            }
            else if(_loc18_ <= this.§5r§)
            {
               if(this.§7!8§ != b2internal::@")
               {
                  this.§7!8§ = b2internal::@";
                  this.§9$§.z = 0;
               }
            }
            else if(_loc18_ >= this.§`!V§)
            {
               if(this.§7!8§ != b2internal::5!P)
               {
                  this.§7!8§ = b2internal::5!P;
                  this.§9$§.z = 0;
               }
            }
            else
            {
               this.§7!8§ = b2internal::29;
               this.§9$§.z = 0;
            }
         }
         else
         {
            this.§7!8§ = b2internal::29;
         }
         if(this.§@=§ == false)
         {
            this.§3!N§ = 0;
         }
         if(param1.§7!Z§)
         {
            this.§9$§.x *= param1.§+k§;
            this.§9$§.y *= param1.§+k§;
            this.§3!N§ *= param1.§+k§;
            _loc19_ = this.§9$§.x * this.§'H§.x + (this.§3!N§ + this.§9$§.z) * this.§8!W§.x;
            _loc20_ = this.§9$§.x * this.§'H§.y + (this.§3!N§ + this.§9$§.z) * this.§8!W§.y;
            _loc21_ = this.§9$§.x * this.m_s1 + this.§9$§.y + (this.§3!N§ + this.§9$§.z) * this.m_a1;
            _loc22_ = this.§9$§.x * this.m_s2 + this.§9$§.y + (this.§3!N§ + this.§9$§.z) * this.m_a2;
            _loc2_.§7W§.x -= b2internal::'t * _loc19_;
            _loc2_.§7W§.y -= b2internal::'t * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::2!3 * _loc21_;
            _loc3_.§7W§.x += b2internal::%!R * _loc19_;
            _loc3_.§7W§.y += b2internal::%!R * _loc20_;
            _loc3_.m_angularVelocity += b2internal::2; * _loc22_;
         }
         else
         {
            this.§9$§.§4S§();
            this.§3!N§ = 0;
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
         var _loc2_:b2Body = b2internal::!!!;
         var _loc3_:b2Body = b2internal::%!;
         var _loc4_:b2Vec2 = _loc2_.§7W§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§7W§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§@=§ && this.§7!8§ != b2internal::"!^)
         {
            _loc14_ = this.§8!W§.x * (_loc6_.x - _loc4_.x) + this.§8!W§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§&!J§ * (this.§!!_§ - _loc14_);
            _loc16_ = this.§3!N§;
            _loc17_ = param1.§1-§ * this.§+l§;
            this.§3!N§ = b2Math.§1!<§(this.§3!N§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§3!N§ - _loc16_) * this.§8!W§.x;
            _loc9_ = _loc15_ * this.§8!W§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::'t * _loc8_;
            _loc4_.y -= b2internal::'t * _loc9_;
            _loc5_ -= b2internal::2!3 * _loc10_;
            _loc6_.x += b2internal::%!R * _loc8_;
            _loc6_.y += b2internal::%!R * _loc9_;
            _loc7_ += b2internal::2; * _loc11_;
         }
         var _loc12_:Number = this.§'H§.x * (_loc6_.x - _loc4_.x) + this.§'H§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§0b§ && this.§7!8§ != b2internal::29)
         {
            _loc18_ = this.§8!W§.x * (_loc6_.x - _loc4_.x) + this.§8!W§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§9$§.Copy();
            _loc20_ = this.§&§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§9$§.§<!A§(_loc20_);
            if(this.§7!8§ == b2internal::@")
            {
               this.§9$§.z = b2Math.§set §(this.§9$§.z,0);
            }
            else if(this.§7!8§ == b2internal::5!P)
            {
               this.§9$§.z = b2Math.§,B§(this.§9$§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§9$§.z - _loc19_.z) * this.§&§.col3.x;
            _loc22_ = -_loc13_ - (this.§9$§.z - _loc19_.z) * this.§&§.col3.y;
            _loc23_ = this.§&§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§9$§.x = _loc23_.x;
            this.§9$§.y = _loc23_.y;
            _loc20_.x = this.§9$§.x - _loc19_.x;
            _loc20_.y = this.§9$§.y - _loc19_.y;
            _loc20_.z = this.§9$§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§'H§.x + _loc20_.z * this.§8!W§.x;
            _loc9_ = _loc20_.x * this.§'H§.y + _loc20_.z * this.§8!W§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::'t * _loc8_;
            _loc4_.y -= b2internal::'t * _loc9_;
            _loc5_ -= b2internal::2!3 * _loc10_;
            _loc6_.x += b2internal::%!R * _loc8_;
            _loc6_.y += b2internal::%!R * _loc9_;
            _loc7_ += b2internal::2; * _loc11_;
         }
         else
         {
            _loc24_ = this.§&§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§9$§.x += _loc24_.x;
            this.§9$§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§'H§.x;
            _loc9_ = _loc24_.x * this.§'H§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::'t * _loc8_;
            _loc4_.y -= b2internal::'t * _loc9_;
            _loc5_ -= b2internal::2!3 * _loc10_;
            _loc6_.x += b2internal::%!R * _loc8_;
            _loc6_.y += b2internal::%!R * _loc9_;
            _loc7_ += b2internal::2; * _loc11_;
         }
         _loc2_.§7W§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§7W§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::!!!;
         var _loc5_:b2Body = b2internal::%!;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§5D§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§5D§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::<!<.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::<!<.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::,,.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::,,.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§0b§)
         {
            this.§8!W§ = b2Math.§5!§(_loc20_,this.§;%§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§8!W§.y - (_loc27_ + _loc23_) * this.§8!W§.x;
            this.m_a2 = _loc24_ * this.§8!W§.y - _loc25_ * this.§8!W§.x;
            _loc35_ = this.§8!W§.x * _loc26_ + this.§8!W§.y * _loc27_;
            if(b2Math.§[!I§(this.§`!V§ - this.§5r§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§1!<§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§[!I§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§5r§)
            {
               _loc19_ = b2Math.§1!<§(_loc35_ - this.§5r§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§5r§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§`!V§)
            {
               _loc19_ = b2Math.§1!<§(_loc35_ - this.§`!V§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§`!V§;
               _loc18_ = true;
            }
         }
         this.§'H§ = b2Math.§5!§(_loc20_,this.§5F§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§'H§.y - (_loc27_ + _loc23_) * this.§'H§.x;
         this.m_s2 = _loc24_ * this.§'H§.y - _loc25_ * this.§'H§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§'H§.x * _loc26_ + this.§'H§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§'!T§;
         _loc16_ = b2Math.§set §(_loc16_,b2Math.§[!I§(_loc29_));
         _loc17_ = b2Math.§[!I§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::'t;
            _loc13_ = b2internal::%!R;
            _loc14_ = b2internal::2!3;
            _loc15_ = b2internal::2;;
            this.§&§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§&§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§&§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§&§.col2.x = this.§&§.col1.y;
            this.§&§.col2.y = _loc14_ + _loc15_;
            this.§&§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§&§.col3.x = this.§&§.col1.z;
            this.§&§.col3.y = this.§&§.col2.z;
            this.§&§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§&§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::'t;
            _loc13_ = b2internal::%!R;
            _loc14_ = b2internal::2!3;
            _loc15_ = b2internal::2;;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§&§.col1.Set(_loc36_,_loc37_,0);
            this.§&§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§&§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§'H§.x + _loc28_.z * this.§8!W§.x;
         var _loc32_:Number = _loc28_.x * this.§'H§.y + _loc28_.z * this.§8!W§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::'t * _loc31_;
         _loc6_.y -= b2internal::'t * _loc32_;
         _loc7_ -= b2internal::2!3 * _loc33_;
         _loc8_.x += b2internal::%!R * _loc31_;
         _loc8_.y += b2internal::%!R * _loc32_;
         _loc9_ += b2internal::2; * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§9!8§();
         _loc5_.§9!8§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
