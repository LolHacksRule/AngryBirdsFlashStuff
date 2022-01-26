package §5n§
{
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2TimeStep;
   import §5!K§.b2Mat22;
   import §5!K§.b2Mat33;
   import §5!K§.b2Math;
   import §5!K§.b2Transform;
   import §5!K§.b2Vec2;
   import §5!K§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §?!@§:b2Vec2;
      
      private var §9j§:b2Vec2;
      
      private var §0c§:Number;
      
      private var §-g§:b2Vec2;
      
      private var §>N§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §!8§:b2Mat33;
      
      private var §8!2§:b2Vec3;
      
      private var §9!8§:Number;
      
      private var § u§:Number;
      
      private var § !L§:Number;
      
      private var §0R§:Number;
      
      private var §5!U§:Number;
      
      private var §3!"§:Number;
      
      private var §>5§:Boolean;
      
      private var §3-§:Boolean;
      
      private var §<m§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?!@§ = new b2Vec2();
         this.§9j§ = new b2Vec2();
         this.§-g§ = new b2Vec2();
         this.§>N§ = new b2Vec2();
         this.§!8§ = new b2Mat33();
         this.§8!2§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!!B§);
         this.m_localAnchor2.SetV(param1.§<!_§);
         this.§?!@§.SetV(param1.§&H§);
         this.§9j§.x = -this.§?!@§.y;
         this.§9j§.y = this.§?!@§.x;
         this.§0c§ = param1.§2v§;
         this.§8!2§.§6d§();
         this.§9!8§ = 0;
         this.§ u§ = 0;
         this.§ !L§ = param1.§12§;
         this.§0R§ = param1.§do §;
         this.§5!U§ = param1.§'R§;
         this.§3!"§ = param1.motorSpeed;
         this.§>5§ = param1.§64§;
         this.§3-§ = param1.§ in§;
         this.§<m§ = b2internal::`4;
         this.§-g§.§6d§();
         this.§>N§.§6d§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"8.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!;.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§8!2§.x * this.§>N§.x + (this.§ u§ + this.§8!2§.z) * this.§-g§.x),param1 * (this.§8!2§.x * this.§>N§.y + (this.§ u§ + this.§8!2§.z) * this.§-g§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!2§.y;
      }
      
      public function §^d§() : Number
      {
         var _loc1_:b2Body = b2internal::"8;
         var _loc2_:b2Body = b2internal::2!;;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§!I§(this.§?!@§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §@!W§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::"8;
         var _loc2_:b2Body = b2internal::2!;;
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
         var _loc15_:b2Vec2 = _loc1_.§!I§(this.§?!@§);
         var _loc16_:b2Vec2 = _loc1_.§;!#§;
         var _loc17_:b2Vec2 = _loc2_.§;!#§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §>!§() : Boolean
      {
         return this.§>5§;
      }
      
      public function §2?§(param1:Boolean) : void
      {
         b2internal::"8.SetAwake(true);
         b2internal::2!;.SetAwake(true);
         this.§>5§ = param1;
      }
      
      public function § E§() : Number
      {
         return this.§ !L§;
      }
      
      public function § i§() : Number
      {
         return this.§0R§;
      }
      
      public function § do§(param1:Number, param2:Number) : void
      {
         b2internal::"8.SetAwake(true);
         b2internal::2!;.SetAwake(true);
         this.§ !L§ = param1;
         this.§0R§ = param2;
      }
      
      public function §^z§() : Boolean
      {
         return this.§3-§;
      }
      
      public function §5v§(param1:Boolean) : void
      {
         b2internal::"8.SetAwake(true);
         b2internal::2!;.SetAwake(true);
         this.§3-§ = param1;
      }
      
      public function §-!#§(param1:Number) : void
      {
         b2internal::"8.SetAwake(true);
         b2internal::2!;.SetAwake(true);
         this.§3!"§ = param1;
      }
      
      public function §>&§() : Number
      {
         return this.§3!"§;
      }
      
      public function §-J§(param1:Number) : void
      {
         b2internal::"8.SetAwake(true);
         b2internal::2!;.SetAwake(true);
         this.§5!U§ = param1;
      }
      
      public function §%!`§() : Number
      {
         return this.§ u§;
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
         var _loc2_:b2Body = b2internal::"8;
         var _loc3_:b2Body = b2internal::2!;;
         b2internal::7U.SetV(_loc2_.§8!R§());
         b2internal::'k.SetV(_loc3_.§8!R§());
         var _loc6_:b2Transform = _loc2_.§5!C§();
         var _loc7_:b2Transform = _loc3_.§5!C§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::7U.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::7U.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::'k.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::'k.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §3!5§ = _loc2_.§"!§;
         §"M§ = _loc3_.§"!§;
         §6!§ = _loc2_.§9y§;
         §=!9§ = _loc3_.§9y§;
         this.§-g§.SetV(b2Math.§8%§(_loc6_.R,this.§?!@§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§-g§.y - (_loc13_ + _loc9_) * this.§-g§.x;
         this.m_a2 = _loc10_ * this.§-g§.y - _loc11_ * this.§-g§.x;
         this.§9!8§ = b2internal::3!5 + b2internal::"M + b2internal::6! * this.m_a1 * this.m_a1 + b2internal::=!9 * this.m_a2 * this.m_a2;
         if(this.§9!8§ > Number.MIN_VALUE)
         {
            this.§9!8§ = 1 / this.§9!8§;
         }
         this.§>N§.SetV(b2Math.§8%§(_loc6_.R,this.§9j§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§>N§.y - (_loc13_ + _loc9_) * this.§>N§.x;
         this.m_s2 = _loc10_ * this.§>N§.y - _loc11_ * this.§>N§.x;
         var _loc14_:Number = b2internal::3!5;
         var _loc15_:Number = b2internal::"M;
         var _loc16_:Number = b2internal::6!;
         var _loc17_:Number = b2internal::=!9;
         this.§!8§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§!8§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§!8§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§!8§.col2.x = this.§!8§.col1.y;
         this.§!8§.col2.y = _loc16_ + _loc17_;
         this.§!8§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§!8§.col3.x = this.§!8§.col1.z;
         this.§!8§.col3.y = this.§!8§.col2.z;
         this.§!8§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§>5§)
         {
            _loc18_ = this.§-g§.x * _loc12_ + this.§-g§.y * _loc13_;
            if(b2Math.§-x§(this.§0R§ - this.§ !L§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§<m§ = b2internal::9P;
            }
            else if(_loc18_ <= this.§ !L§)
            {
               if(this.§<m§ != b2internal::@E)
               {
                  this.§<m§ = b2internal::@E;
                  this.§8!2§.z = 0;
               }
            }
            else if(_loc18_ >= this.§0R§)
            {
               if(this.§<m§ != b2internal::3G)
               {
                  this.§<m§ = b2internal::3G;
                  this.§8!2§.z = 0;
               }
            }
            else
            {
               this.§<m§ = b2internal::`4;
               this.§8!2§.z = 0;
            }
         }
         else
         {
            this.§<m§ = b2internal::`4;
         }
         if(this.§3-§ == false)
         {
            this.§ u§ = 0;
         }
         if(param1.§[1§)
         {
            this.§8!2§.x *= param1.§8!J§;
            this.§8!2§.y *= param1.§8!J§;
            this.§ u§ *= param1.§8!J§;
            _loc19_ = this.§8!2§.x * this.§>N§.x + (this.§ u§ + this.§8!2§.z) * this.§-g§.x;
            _loc20_ = this.§8!2§.x * this.§>N§.y + (this.§ u§ + this.§8!2§.z) * this.§-g§.y;
            _loc21_ = this.§8!2§.x * this.m_s1 + this.§8!2§.y + (this.§ u§ + this.§8!2§.z) * this.m_a1;
            _loc22_ = this.§8!2§.x * this.m_s2 + this.§8!2§.y + (this.§ u§ + this.§8!2§.z) * this.m_a2;
            _loc2_.§;!#§.x -= b2internal::3!5 * _loc19_;
            _loc2_.§;!#§.y -= b2internal::3!5 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::6! * _loc21_;
            _loc3_.§;!#§.x += b2internal::"M * _loc19_;
            _loc3_.§;!#§.y += b2internal::"M * _loc20_;
            _loc3_.m_angularVelocity += b2internal::=!9 * _loc22_;
         }
         else
         {
            this.§8!2§.§6d§();
            this.§ u§ = 0;
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
         var _loc2_:b2Body = b2internal::"8;
         var _loc3_:b2Body = b2internal::2!;;
         var _loc4_:b2Vec2 = _loc2_.§;!#§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§;!#§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§3-§ && this.§<m§ != b2internal::9P)
         {
            _loc14_ = this.§-g§.x * (_loc6_.x - _loc4_.x) + this.§-g§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§9!8§ * (this.§3!"§ - _loc14_);
            _loc16_ = this.§ u§;
            _loc17_ = param1.§0O§ * this.§5!U§;
            this.§ u§ = b2Math.§=!,§(this.§ u§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§ u§ - _loc16_) * this.§-g§.x;
            _loc9_ = _loc15_ * this.§-g§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::3!5 * _loc8_;
            _loc4_.y -= b2internal::3!5 * _loc9_;
            _loc5_ -= b2internal::6! * _loc10_;
            _loc6_.x += b2internal::"M * _loc8_;
            _loc6_.y += b2internal::"M * _loc9_;
            _loc7_ += b2internal::=!9 * _loc11_;
         }
         var _loc12_:Number = this.§>N§.x * (_loc6_.x - _loc4_.x) + this.§>N§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§>5§ && this.§<m§ != b2internal::`4)
         {
            _loc18_ = this.§-g§.x * (_loc6_.x - _loc4_.x) + this.§-g§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§8!2§.Copy();
            _loc20_ = this.§!8§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§8!2§.§0![§(_loc20_);
            if(this.§<m§ == b2internal::@E)
            {
               this.§8!2§.z = b2Math.§`!L§(this.§8!2§.z,0);
            }
            else if(this.§<m§ == b2internal::3G)
            {
               this.§8!2§.z = b2Math.§;!5§(this.§8!2§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§8!2§.z - _loc19_.z) * this.§!8§.col3.x;
            _loc22_ = -_loc13_ - (this.§8!2§.z - _loc19_.z) * this.§!8§.col3.y;
            _loc23_ = this.§!8§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§8!2§.x = _loc23_.x;
            this.§8!2§.y = _loc23_.y;
            _loc20_.x = this.§8!2§.x - _loc19_.x;
            _loc20_.y = this.§8!2§.y - _loc19_.y;
            _loc20_.z = this.§8!2§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§>N§.x + _loc20_.z * this.§-g§.x;
            _loc9_ = _loc20_.x * this.§>N§.y + _loc20_.z * this.§-g§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::3!5 * _loc8_;
            _loc4_.y -= b2internal::3!5 * _loc9_;
            _loc5_ -= b2internal::6! * _loc10_;
            _loc6_.x += b2internal::"M * _loc8_;
            _loc6_.y += b2internal::"M * _loc9_;
            _loc7_ += b2internal::=!9 * _loc11_;
         }
         else
         {
            _loc24_ = this.§!8§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§8!2§.x += _loc24_.x;
            this.§8!2§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§>N§.x;
            _loc9_ = _loc24_.x * this.§>N§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::3!5 * _loc8_;
            _loc4_.y -= b2internal::3!5 * _loc9_;
            _loc5_ -= b2internal::6! * _loc10_;
            _loc6_.x += b2internal::"M * _loc8_;
            _loc6_.y += b2internal::"M * _loc9_;
            _loc7_ += b2internal::=!9 * _loc11_;
         }
         _loc2_.§;!#§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§;!#§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::"8;
         var _loc5_:b2Body = b2internal::2!;;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§7p§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§7p§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::7U.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::7U.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::'k.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::'k.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§>5§)
         {
            this.§-g§ = b2Math.§8%§(_loc20_,this.§?!@§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§-g§.y - (_loc27_ + _loc23_) * this.§-g§.x;
            this.m_a2 = _loc24_ * this.§-g§.y - _loc25_ * this.§-g§.x;
            _loc35_ = this.§-g§.x * _loc26_ + this.§-g§.y * _loc27_;
            if(b2Math.§-x§(this.§0R§ - this.§ !L§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§=!,§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§-x§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§ !L§)
            {
               _loc19_ = b2Math.§=!,§(_loc35_ - this.§ !L§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§ !L§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§0R§)
            {
               _loc19_ = b2Math.§=!,§(_loc35_ - this.§0R§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§0R§;
               _loc18_ = true;
            }
         }
         this.§>N§ = b2Math.§8%§(_loc20_,this.§9j§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§>N§.y - (_loc27_ + _loc23_) * this.§>N§.x;
         this.m_s2 = _loc24_ * this.§>N§.y - _loc25_ * this.§>N§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§>N§.x * _loc26_ + this.§>N§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§0c§;
         _loc16_ = b2Math.§`!L§(_loc16_,b2Math.§-x§(_loc29_));
         _loc17_ = b2Math.§-x§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::3!5;
            _loc13_ = b2internal::"M;
            _loc14_ = b2internal::6!;
            _loc15_ = b2internal::=!9;
            this.§!8§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§!8§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§!8§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§!8§.col2.x = this.§!8§.col1.y;
            this.§!8§.col2.y = _loc14_ + _loc15_;
            this.§!8§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§!8§.col3.x = this.§!8§.col1.z;
            this.§!8§.col3.y = this.§!8§.col2.z;
            this.§!8§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§!8§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::3!5;
            _loc13_ = b2internal::"M;
            _loc14_ = b2internal::6!;
            _loc15_ = b2internal::=!9;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§!8§.col1.Set(_loc36_,_loc37_,0);
            this.§!8§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§!8§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§>N§.x + _loc28_.z * this.§-g§.x;
         var _loc32_:Number = _loc28_.x * this.§>N§.y + _loc28_.z * this.§-g§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::3!5 * _loc31_;
         _loc6_.y -= b2internal::3!5 * _loc32_;
         _loc7_ -= b2internal::6! * _loc33_;
         _loc8_.x += b2internal::"M * _loc31_;
         _loc8_.y += b2internal::"M * _loc32_;
         _loc9_ += b2internal::=!9 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§8]§();
         _loc5_.§8]§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
