package §6>§
{
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2TimeStep;
   import §=i§.b2Mat22;
   import §=i§.b2Mat33;
   import §=i§.b2Math;
   import §=i§.b2Transform;
   import §=i§.b2Vec2;
   import §=i§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0!V§:b2Vec2;
      
      private var §!!`§:b2Vec2;
      
      private var §2T§:Number;
      
      private var §]§:b2Vec2;
      
      private var §,!+§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §+Z§:b2Mat33;
      
      private var §=!3§:b2Vec3;
      
      private var §06§:Number;
      
      private var §[K§:Number;
      
      private var §"!"§:Number;
      
      private var §5!,§:Number;
      
      private var §-p§:Number;
      
      private var §'!&§:Number;
      
      private var §,?§:Boolean;
      
      private var §6!U§:Boolean;
      
      private var §6'§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0!V§ = new b2Vec2();
         this.§!!`§ = new b2Vec2();
         this.§]§ = new b2Vec2();
         this.§,!+§ = new b2Vec2();
         this.§+Z§ = new b2Mat33();
         this.§=!3§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ i§);
         this.m_localAnchor2.SetV(param1.§<=§);
         this.§0!V§.SetV(param1.§=h§);
         this.§!!`§.x = -this.§0!V§.y;
         this.§!!`§.y = this.§0!V§.x;
         this.§2T§ = param1.§&!U§;
         this.§=!3§.§0!=§();
         this.§06§ = 0;
         this.§[K§ = 0;
         this.§"!"§ = param1.§1^§;
         this.§5!,§ = param1.§??§;
         this.§-p§ = param1.§#`§;
         this.§'!&§ = param1.motorSpeed;
         this.§,?§ = param1.§^a§;
         this.§6!U§ = param1.§;r§;
         this.§6'§ = b2internal::;W;
         this.§]§.§0!=§();
         this.§,!+§.§0!=§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+!N.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@;.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§=!3§.x * this.§,!+§.x + (this.§[K§ + this.§=!3§.z) * this.§]§.x),param1 * (this.§=!3§.x * this.§,!+§.y + (this.§[K§ + this.§=!3§.z) * this.§]§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§=!3§.y;
      }
      
      public function §!L§() : Number
      {
         var _loc1_:b2Body = b2internal::+!N;
         var _loc2_:b2Body = b2internal::@;;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§8G§(this.§0!V§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §2§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::+!N;
         var _loc2_:b2Body = b2internal::@;;
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
         var _loc15_:b2Vec2 = _loc1_.§8G§(this.§0!V§);
         var _loc16_:b2Vec2 = _loc1_.§]J§;
         var _loc17_:b2Vec2 = _loc2_.§]J§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §',§() : Boolean
      {
         return this.§,?§;
      }
      
      public function §>!I§(param1:Boolean) : void
      {
         b2internal::+!N.SetAwake(true);
         b2internal::@;.SetAwake(true);
         this.§,?§ = param1;
      }
      
      public function §^!]§() : Number
      {
         return this.§"!"§;
      }
      
      public function §!I§() : Number
      {
         return this.§5!,§;
      }
      
      public function §8$§(param1:Number, param2:Number) : void
      {
         b2internal::+!N.SetAwake(true);
         b2internal::@;.SetAwake(true);
         this.§"!"§ = param1;
         this.§5!,§ = param2;
      }
      
      public function §`o§() : Boolean
      {
         return this.§6!U§;
      }
      
      public function §6L§(param1:Boolean) : void
      {
         b2internal::+!N.SetAwake(true);
         b2internal::@;.SetAwake(true);
         this.§6!U§ = param1;
      }
      
      public function §@!N§(param1:Number) : void
      {
         b2internal::+!N.SetAwake(true);
         b2internal::@;.SetAwake(true);
         this.§'!&§ = param1;
      }
      
      public function §;!S§() : Number
      {
         return this.§'!&§;
      }
      
      public function §,!6§(param1:Number) : void
      {
         b2internal::+!N.SetAwake(true);
         b2internal::@;.SetAwake(true);
         this.§-p§ = param1;
      }
      
      public function §3p§() : Number
      {
         return this.§[K§;
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
         var _loc2_:b2Body = b2internal::+!N;
         var _loc3_:b2Body = b2internal::@;;
         b2internal::+3.SetV(_loc2_.§]!2§());
         b2internal::+h.SetV(_loc3_.§]!2§());
         var _loc6_:b2Transform = _loc2_.§0c§();
         var _loc7_:b2Transform = _loc3_.§0c§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::+3.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::+3.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::+h.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::+h.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §@W§ = _loc2_.§=!C§;
         §01§ = _loc3_.§=!C§;
         §"!D§ = _loc2_.§!!§;
         §`!J§ = _loc3_.§!!§;
         this.§]§.SetV(b2Math.§^!<§(_loc6_.R,this.§0!V§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§]§.y - (_loc13_ + _loc9_) * this.§]§.x;
         this.m_a2 = _loc10_ * this.§]§.y - _loc11_ * this.§]§.x;
         this.§06§ = b2internal::@W + b2internal::01 + b2internal::"!D * this.m_a1 * this.m_a1 + b2internal::`!J * this.m_a2 * this.m_a2;
         if(this.§06§ > Number.MIN_VALUE)
         {
            this.§06§ = 1 / this.§06§;
         }
         this.§,!+§.SetV(b2Math.§^!<§(_loc6_.R,this.§!!`§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§,!+§.y - (_loc13_ + _loc9_) * this.§,!+§.x;
         this.m_s2 = _loc10_ * this.§,!+§.y - _loc11_ * this.§,!+§.x;
         var _loc14_:Number = b2internal::@W;
         var _loc15_:Number = b2internal::01;
         var _loc16_:Number = b2internal::"!D;
         var _loc17_:Number = b2internal::`!J;
         this.§+Z§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§+Z§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§+Z§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§+Z§.col2.x = this.§+Z§.col1.y;
         this.§+Z§.col2.y = _loc16_ + _loc17_;
         this.§+Z§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§+Z§.col3.x = this.§+Z§.col1.z;
         this.§+Z§.col3.y = this.§+Z§.col2.z;
         this.§+Z§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§,?§)
         {
            _loc18_ = this.§]§.x * _loc12_ + this.§]§.y * _loc13_;
            if(b2Math.§]3§(this.§5!,§ - this.§"!"§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§6'§ = b2internal::`!1;
            }
            else if(_loc18_ <= this.§"!"§)
            {
               if(this.§6'§ != b2internal::8!O)
               {
                  this.§6'§ = b2internal::8!O;
                  this.§=!3§.z = 0;
               }
            }
            else if(_loc18_ >= this.§5!,§)
            {
               if(this.§6'§ != b2internal::&![)
               {
                  this.§6'§ = b2internal::&![;
                  this.§=!3§.z = 0;
               }
            }
            else
            {
               this.§6'§ = b2internal::;W;
               this.§=!3§.z = 0;
            }
         }
         else
         {
            this.§6'§ = b2internal::;W;
         }
         if(this.§6!U§ == false)
         {
            this.§[K§ = 0;
         }
         if(param1.§%r§)
         {
            this.§=!3§.x *= param1.§^!Y§;
            this.§=!3§.y *= param1.§^!Y§;
            this.§[K§ *= param1.§^!Y§;
            _loc19_ = this.§=!3§.x * this.§,!+§.x + (this.§[K§ + this.§=!3§.z) * this.§]§.x;
            _loc20_ = this.§=!3§.x * this.§,!+§.y + (this.§[K§ + this.§=!3§.z) * this.§]§.y;
            _loc21_ = this.§=!3§.x * this.m_s1 + this.§=!3§.y + (this.§[K§ + this.§=!3§.z) * this.m_a1;
            _loc22_ = this.§=!3§.x * this.m_s2 + this.§=!3§.y + (this.§[K§ + this.§=!3§.z) * this.m_a2;
            _loc2_.§]J§.x -= b2internal::@W * _loc19_;
            _loc2_.§]J§.y -= b2internal::@W * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::"!D * _loc21_;
            _loc3_.§]J§.x += b2internal::01 * _loc19_;
            _loc3_.§]J§.y += b2internal::01 * _loc20_;
            _loc3_.m_angularVelocity += b2internal::`!J * _loc22_;
         }
         else
         {
            this.§=!3§.§0!=§();
            this.§[K§ = 0;
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
         var _loc2_:b2Body = b2internal::+!N;
         var _loc3_:b2Body = b2internal::@;;
         var _loc4_:b2Vec2 = _loc2_.§]J§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§]J§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§6!U§ && this.§6'§ != b2internal::`!1)
         {
            _loc14_ = this.§]§.x * (_loc6_.x - _loc4_.x) + this.§]§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§06§ * (this.§'!&§ - _loc14_);
            _loc16_ = this.§[K§;
            _loc17_ = param1.§5!8§ * this.§-p§;
            this.§[K§ = b2Math.§%!c§(this.§[K§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§[K§ - _loc16_) * this.§]§.x;
            _loc9_ = _loc15_ * this.§]§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::@W * _loc8_;
            _loc4_.y -= b2internal::@W * _loc9_;
            _loc5_ -= b2internal::"!D * _loc10_;
            _loc6_.x += b2internal::01 * _loc8_;
            _loc6_.y += b2internal::01 * _loc9_;
            _loc7_ += b2internal::`!J * _loc11_;
         }
         var _loc12_:Number = this.§,!+§.x * (_loc6_.x - _loc4_.x) + this.§,!+§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§,?§ && this.§6'§ != b2internal::;W)
         {
            _loc18_ = this.§]§.x * (_loc6_.x - _loc4_.x) + this.§]§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§=!3§.Copy();
            _loc20_ = this.§+Z§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§=!3§.§%<§(_loc20_);
            if(this.§6'§ == b2internal::8!O)
            {
               this.§=!3§.z = b2Math.§3y§(this.§=!3§.z,0);
            }
            else if(this.§6'§ == b2internal::&![)
            {
               this.§=!3§.z = b2Math.§,S§(this.§=!3§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§=!3§.z - _loc19_.z) * this.§+Z§.col3.x;
            _loc22_ = -_loc13_ - (this.§=!3§.z - _loc19_.z) * this.§+Z§.col3.y;
            _loc23_ = this.§+Z§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§=!3§.x = _loc23_.x;
            this.§=!3§.y = _loc23_.y;
            _loc20_.x = this.§=!3§.x - _loc19_.x;
            _loc20_.y = this.§=!3§.y - _loc19_.y;
            _loc20_.z = this.§=!3§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§,!+§.x + _loc20_.z * this.§]§.x;
            _loc9_ = _loc20_.x * this.§,!+§.y + _loc20_.z * this.§]§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::@W * _loc8_;
            _loc4_.y -= b2internal::@W * _loc9_;
            _loc5_ -= b2internal::"!D * _loc10_;
            _loc6_.x += b2internal::01 * _loc8_;
            _loc6_.y += b2internal::01 * _loc9_;
            _loc7_ += b2internal::`!J * _loc11_;
         }
         else
         {
            _loc24_ = this.§+Z§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§=!3§.x += _loc24_.x;
            this.§=!3§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§,!+§.x;
            _loc9_ = _loc24_.x * this.§,!+§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::@W * _loc8_;
            _loc4_.y -= b2internal::@W * _loc9_;
            _loc5_ -= b2internal::"!D * _loc10_;
            _loc6_.x += b2internal::01 * _loc8_;
            _loc6_.y += b2internal::01 * _loc9_;
            _loc7_ += b2internal::`!J * _loc11_;
         }
         _loc2_.§]J§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§]J§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::+!N;
         var _loc5_:b2Body = b2internal::@;;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§1?§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§1?§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::+3.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::+3.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::+h.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::+h.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§,?§)
         {
            this.§]§ = b2Math.§^!<§(_loc20_,this.§0!V§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§]§.y - (_loc27_ + _loc23_) * this.§]§.x;
            this.m_a2 = _loc24_ * this.§]§.y - _loc25_ * this.§]§.x;
            _loc35_ = this.§]§.x * _loc26_ + this.§]§.y * _loc27_;
            if(b2Math.§]3§(this.§5!,§ - this.§"!"§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§%!c§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§]3§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§"!"§)
            {
               _loc19_ = b2Math.§%!c§(_loc35_ - this.§"!"§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§"!"§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§5!,§)
            {
               _loc19_ = b2Math.§%!c§(_loc35_ - this.§5!,§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§5!,§;
               _loc18_ = true;
            }
         }
         this.§,!+§ = b2Math.§^!<§(_loc20_,this.§!!`§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§,!+§.y - (_loc27_ + _loc23_) * this.§,!+§.x;
         this.m_s2 = _loc24_ * this.§,!+§.y - _loc25_ * this.§,!+§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§,!+§.x * _loc26_ + this.§,!+§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§2T§;
         _loc16_ = b2Math.§3y§(_loc16_,b2Math.§]3§(_loc29_));
         _loc17_ = b2Math.§]3§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::@W;
            _loc13_ = b2internal::01;
            _loc14_ = b2internal::"!D;
            _loc15_ = b2internal::`!J;
            this.§+Z§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§+Z§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§+Z§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§+Z§.col2.x = this.§+Z§.col1.y;
            this.§+Z§.col2.y = _loc14_ + _loc15_;
            this.§+Z§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§+Z§.col3.x = this.§+Z§.col1.z;
            this.§+Z§.col3.y = this.§+Z§.col2.z;
            this.§+Z§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§+Z§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::@W;
            _loc13_ = b2internal::01;
            _loc14_ = b2internal::"!D;
            _loc15_ = b2internal::`!J;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§+Z§.col1.Set(_loc36_,_loc37_,0);
            this.§+Z§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§+Z§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§,!+§.x + _loc28_.z * this.§]§.x;
         var _loc32_:Number = _loc28_.x * this.§,!+§.y + _loc28_.z * this.§]§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::@W * _loc31_;
         _loc6_.y -= b2internal::@W * _loc32_;
         _loc7_ -= b2internal::"!D * _loc33_;
         _loc8_.x += b2internal::01 * _loc31_;
         _loc8_.y += b2internal::01 * _loc32_;
         _loc9_ += b2internal::`!J * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§,M§();
         _loc5_.§,M§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
