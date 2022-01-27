package §2",§
{
   import §1x§.b2Body;
   import §1x§.b2TimeStep;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §^>§.b2Mat22;
   import §^>§.b2Mat33;
   import §^>§.b2Math;
   import §^>§.b2Transform;
   import §^>§.b2Vec2;
   import §^>§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9!V§:b2Vec2;
      
      private var §<!k§:b2Vec2;
      
      private var §9#6§:Number;
      
      private var §0!L§:b2Vec2;
      
      private var §!#7§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §!!+§:b2Mat33;
      
      private var §^!t§:b2Vec3;
      
      private var §?!C§:Number;
      
      private var §,"w§:Number;
      
      private var §-a§:Number;
      
      private var §9![§:Number;
      
      private var §9!W§:Number;
      
      private var §4"c§:Number;
      
      private var §@!O§:Boolean;
      
      private var §&!`§:Boolean;
      
      private var §'"6§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9!V§ = new b2Vec2();
         this.§<!k§ = new b2Vec2();
         this.§0!L§ = new b2Vec2();
         this.§!#7§ = new b2Vec2();
         this.§!!+§ = new b2Mat33();
         this.§^!t§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§2"g§);
         this.m_localAnchor2.SetV(param1.§#l§);
         this.§9!V§.SetV(param1.§4z§);
         this.§<!k§.x = -this.§9!V§.y;
         this.§<!k§.y = this.§9!V§.x;
         this.§9#6§ = param1.§ %§;
         this.§^!t§.§@e§();
         this.§?!C§ = 0;
         this.§,"w§ = 0;
         this.§-a§ = param1.§8!n§;
         this.§9![§ = param1.§,"J§;
         this.§9!W§ = param1.§8!!§;
         this.§4"c§ = param1.motorSpeed;
         this.§@!O§ = param1.§@"a§;
         this.§&!`§ = param1.§<!l§;
         this.§'"6§ = b2internal::<!D;
         this.§0!L§.§@e§();
         this.§!#7§.§@e§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"n.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@!u.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§^!t§.x * this.§!#7§.x + (this.§,"w§ + this.§^!t§.z) * this.§0!L§.x),param1 * (this.§^!t§.x * this.§!#7§.y + (this.§,"w§ + this.§^!t§.z) * this.§0!L§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^!t§.y;
      }
      
      public function §4"C§() : Number
      {
         var _loc1_:b2Body = b2internal::0"n;
         var _loc2_:b2Body = b2internal::@!u;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§1"t§(this.§9!V§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §?"8§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::0"n;
         var _loc2_:b2Body = b2internal::@!u;
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
         var _loc15_:b2Vec2 = _loc1_.§1"t§(this.§9!V§);
         var _loc16_:b2Vec2 = _loc1_.§5!r§;
         var _loc17_:b2Vec2 = _loc2_.§5!r§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §["2§() : Boolean
      {
         return this.§@!O§;
      }
      
      public function §7!6§(param1:Boolean) : void
      {
         b2internal::0"n.SetAwake(true);
         b2internal::@!u.SetAwake(true);
         this.§@!O§ = param1;
      }
      
      public function §?!P§() : Number
      {
         return this.§-a§;
      }
      
      public function §#@§() : Number
      {
         return this.§9![§;
      }
      
      public function §`"M§(param1:Number, param2:Number) : void
      {
         b2internal::0"n.SetAwake(true);
         b2internal::@!u.SetAwake(true);
         this.§-a§ = param1;
         this.§9![§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§&!`§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::0"n.SetAwake(true);
         b2internal::@!u.SetAwake(true);
         this.§&!`§ = param1;
      }
      
      public function §="c§(param1:Number) : void
      {
         b2internal::0"n.SetAwake(true);
         b2internal::@!u.SetAwake(true);
         this.§4"c§ = param1;
      }
      
      public function §4"u§() : Number
      {
         return this.§4"c§;
      }
      
      public function §?1§(param1:Number) : void
      {
         b2internal::0"n.SetAwake(true);
         b2internal::@!u.SetAwake(true);
         this.§9!W§ = param1;
      }
      
      public function §;!;§() : Number
      {
         return this.§,"w§;
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
         var _loc2_:b2Body = b2internal::0"n;
         var _loc3_:b2Body = b2internal::@!u;
         b2internal::2"!.SetV(_loc2_.§4"z§());
         b2internal::6!0.SetV(_loc3_.§4"z§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::2"!.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::2"!.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::6!0.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::6!0.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §]q§ = _loc2_.§@"P§;
         §>"u§ = _loc3_.§@"P§;
         §,!U§ = _loc2_.§%#2§;
         §]C§ = _loc3_.§%#2§;
         this.§0!L§.SetV(b2Math.§&"f§(_loc6_.R,this.§9!V§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§0!L§.y - (_loc13_ + _loc9_) * this.§0!L§.x;
         this.m_a2 = _loc10_ * this.§0!L§.y - _loc11_ * this.§0!L§.x;
         this.§?!C§ = b2internal::]q + b2internal::>"u + b2internal::,!U * this.m_a1 * this.m_a1 + b2internal::]C * this.m_a2 * this.m_a2;
         if(this.§?!C§ > Number.MIN_VALUE)
         {
            this.§?!C§ = 1 / this.§?!C§;
         }
         this.§!#7§.SetV(b2Math.§&"f§(_loc6_.R,this.§<!k§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§!#7§.y - (_loc13_ + _loc9_) * this.§!#7§.x;
         this.m_s2 = _loc10_ * this.§!#7§.y - _loc11_ * this.§!#7§.x;
         var _loc14_:Number = b2internal::]q;
         var _loc15_:Number = b2internal::>"u;
         var _loc16_:Number = b2internal::,!U;
         var _loc17_:Number = b2internal::]C;
         this.§!!+§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§!!+§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§!!+§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§!!+§.col2.x = this.§!!+§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§!!+§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§!!+§.col2.y = 1;
         }
         this.§!!+§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§!!+§.col3.x = this.§!!+§.col1.z;
         this.§!!+§.col3.y = this.§!!+§.col2.z;
         this.§!!+§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§@!O§)
         {
            _loc18_ = this.§0!L§.x * _loc12_ + this.§0!L§.y * _loc13_;
            if(b2Math.§=G§(this.§9![§ - this.§-a§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§'"6§ = b2internal::<!I;
            }
            else if(_loc18_ <= this.§-a§)
            {
               if(this.§'"6§ != b2internal::6+)
               {
                  this.§'"6§ = b2internal::6+;
                  this.§^!t§.z = 0;
               }
            }
            else if(_loc18_ >= this.§9![§)
            {
               if(this.§'"6§ != b2internal::6#-)
               {
                  this.§'"6§ = b2internal::6#-;
                  this.§^!t§.z = 0;
               }
            }
            else
            {
               this.§'"6§ = b2internal::<!D;
               this.§^!t§.z = 0;
            }
         }
         else
         {
            this.§'"6§ = b2internal::<!D;
            this.§^!t§.z = 0;
         }
         if(this.§&!`§ == false)
         {
            this.§,"w§ = 0;
         }
         if(param1.§56§)
         {
            this.§^!t§.x *= param1.§<J§;
            this.§^!t§.y *= param1.§<J§;
            this.§,"w§ *= param1.§<J§;
            _loc19_ = this.§^!t§.x * this.§!#7§.x + (this.§,"w§ + this.§^!t§.z) * this.§0!L§.x;
            _loc20_ = this.§^!t§.x * this.§!#7§.y + (this.§,"w§ + this.§^!t§.z) * this.§0!L§.y;
            _loc21_ = this.§^!t§.x * this.m_s1 + this.§^!t§.y + (this.§,"w§ + this.§^!t§.z) * this.m_a1;
            _loc22_ = this.§^!t§.x * this.m_s2 + this.§^!t§.y + (this.§,"w§ + this.§^!t§.z) * this.m_a2;
            _loc2_.§5!r§.x -= b2internal::]q * _loc19_;
            _loc2_.§5!r§.y -= b2internal::]q * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::,!U * _loc21_;
            _loc3_.§5!r§.x += b2internal::>"u * _loc19_;
            _loc3_.§5!r§.y += b2internal::>"u * _loc20_;
            _loc3_.m_angularVelocity += b2internal::]C * _loc22_;
         }
         else
         {
            this.§^!t§.§@e§();
            this.§,"w§ = 0;
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
         var _loc2_:b2Body = b2internal::0"n;
         var _loc3_:b2Body = b2internal::@!u;
         var _loc4_:b2Vec2 = _loc2_.§5!r§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§5!r§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§&!`§ && this.§'"6§ != b2internal::<!I)
         {
            _loc14_ = this.§0!L§.x * (_loc6_.x - _loc4_.x) + this.§0!L§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§?!C§ * (this.§4"c§ - _loc14_);
            _loc16_ = this.§,"w§;
            _loc17_ = param1.§&"%§ * this.§9!W§;
            this.§,"w§ = b2Math.§2"R§(this.§,"w§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§,"w§ - _loc16_) * this.§0!L§.x;
            _loc9_ = _loc15_ * this.§0!L§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::]q * _loc8_;
            _loc4_.y -= b2internal::]q * _loc9_;
            _loc5_ -= b2internal::,!U * _loc10_;
            _loc6_.x += b2internal::>"u * _loc8_;
            _loc6_.y += b2internal::>"u * _loc9_;
            _loc7_ += b2internal::]C * _loc11_;
         }
         var _loc12_:Number = this.§!#7§.x * (_loc6_.x - _loc4_.x) + this.§!#7§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§@!O§ && this.§'"6§ != b2internal::<!D)
         {
            _loc18_ = this.§0!L§.x * (_loc6_.x - _loc4_.x) + this.§0!L§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§^!t§.Copy();
            _loc20_ = this.§!!+§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§^!t§.§%#3§(_loc20_);
            if(this.§'"6§ == b2internal::6+)
            {
               this.§^!t§.z = b2Math.§]V§(this.§^!t§.z,0);
            }
            else if(this.§'"6§ == b2internal::6#-)
            {
               this.§^!t§.z = b2Math.§9!P§(this.§^!t§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§^!t§.z - _loc19_.z) * this.§!!+§.col3.x;
            _loc22_ = -_loc13_ - (this.§^!t§.z - _loc19_.z) * this.§!!+§.col3.y;
            _loc23_ = this.§!!+§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§^!t§.x = _loc23_.x;
            this.§^!t§.y = _loc23_.y;
            _loc20_.x = this.§^!t§.x - _loc19_.x;
            _loc20_.y = this.§^!t§.y - _loc19_.y;
            _loc20_.z = this.§^!t§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§!#7§.x + _loc20_.z * this.§0!L§.x;
            _loc9_ = _loc20_.x * this.§!#7§.y + _loc20_.z * this.§0!L§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::]q * _loc8_;
            _loc4_.y -= b2internal::]q * _loc9_;
            _loc5_ -= b2internal::,!U * _loc10_;
            _loc6_.x += b2internal::>"u * _loc8_;
            _loc6_.y += b2internal::>"u * _loc9_;
            _loc7_ += b2internal::]C * _loc11_;
         }
         else
         {
            _loc24_ = this.§!!+§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§^!t§.x += _loc24_.x;
            this.§^!t§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§!#7§.x;
            _loc9_ = _loc24_.x * this.§!#7§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::]q * _loc8_;
            _loc4_.y -= b2internal::]q * _loc9_;
            _loc5_ -= b2internal::,!U * _loc10_;
            _loc6_.x += b2internal::>"u * _loc8_;
            _loc6_.y += b2internal::>"u * _loc9_;
            _loc7_ += b2internal::]C * _loc11_;
         }
         _loc2_.§5!r§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§5!r§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::0"n;
         var _loc5_:b2Body = b2internal::@!u;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§^""§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§^""§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::2"!.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::2"!.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::6!0.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::6!0.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§@!O§)
         {
            this.§0!L§ = b2Math.§&"f§(_loc20_,this.§9!V§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§0!L§.y - (_loc27_ + _loc23_) * this.§0!L§.x;
            this.m_a2 = _loc24_ * this.§0!L§.y - _loc25_ * this.§0!L§.x;
            _loc35_ = this.§0!L§.x * _loc26_ + this.§0!L§.y * _loc27_;
            if(b2Math.§=G§(this.§9![§ - this.§-a§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§2"R§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§=G§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§-a§)
            {
               _loc19_ = b2Math.§2"R§(_loc35_ - this.§-a§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§-a§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§9![§)
            {
               _loc19_ = b2Math.§2"R§(_loc35_ - this.§9![§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§9![§;
               _loc18_ = true;
            }
         }
         this.§!#7§ = b2Math.§&"f§(_loc20_,this.§<!k§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§!#7§.y - (_loc27_ + _loc23_) * this.§!#7§.x;
         this.m_s2 = _loc24_ * this.§!#7§.y - _loc25_ * this.§!#7§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§!#7§.x * _loc26_ + this.§!#7§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§9#6§;
         _loc16_ = b2Math.§]V§(_loc16_,b2Math.§=G§(_loc29_));
         _loc17_ = b2Math.§=G§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::]q;
            _loc13_ = b2internal::>"u;
            _loc14_ = b2internal::,!U;
            _loc15_ = b2internal::]C;
            this.§!!+§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§!!+§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§!!+§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§!!+§.col2.x = this.§!!+§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§!!+§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§!!+§.col2.y = 1;
            }
            this.§!!+§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§!!+§.col3.x = this.§!!+§.col1.z;
            this.§!!+§.col3.y = this.§!!+§.col2.z;
            this.§!!+§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§!!+§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::]q;
            _loc13_ = b2internal::>"u;
            _loc14_ = b2internal::,!U;
            _loc15_ = b2internal::]C;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§!!+§.col1.Set(_loc36_,_loc37_,0);
            this.§!!+§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§!!+§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§!#7§.x + _loc28_.z * this.§0!L§.x;
         var _loc32_:Number = _loc28_.x * this.§!#7§.y + _loc28_.z * this.§0!L§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::]q * _loc31_;
         _loc6_.y -= b2internal::]q * _loc32_;
         _loc7_ -= b2internal::,!U * _loc33_;
         _loc8_.x += b2internal::>"u * _loc31_;
         _loc8_.y += b2internal::>"u * _loc32_;
         _loc9_ += b2internal::]C * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§"a§();
         _loc5_.§"a§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
