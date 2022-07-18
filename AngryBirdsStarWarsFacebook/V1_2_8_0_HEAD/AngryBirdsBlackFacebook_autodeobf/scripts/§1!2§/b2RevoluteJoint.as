package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Mat33;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   import §[R§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §&"&§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §6!Q§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §##,§:b2Vec3;
      
      private var §4#5§:Number;
      
      private var §9#6§:b2Mat33;
      
      private var §99§:Number;
      
      private var §9!X§:Boolean;
      
      private var §0#E§:Number;
      
      private var §7#R§:Number;
      
      private var §'s§:Boolean;
      
      private var §^!#§:Number;
      
      private var §2!"§:Number;
      
      private var §-#2§:Number;
      
      private var §<!G§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§6!Q§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§##,§ = new b2Vec3();
         this.§9#6§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!"4§);
         this.m_localAnchor2.SetV(param1.§#"B§);
         this.§^!#§ = param1.§!#W§;
         this.§##,§.§&"Q§();
         this.§4#5§ = 0;
         this.§2!"§ = param1.§ "x§;
         this.§-#2§ = param1.§<!y§;
         this.§0#E§ = param1.§?"Z§;
         this.§7#R§ = param1.motorSpeed;
         this.§'s§ = param1.§#d§;
         this.§9!X§ = param1.§!#G§;
         this.§<!G§ = b2internal::"!G;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§##,§.x,param1 * this.§##,§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§##,§.z;
      }
      
      public function §4"F§() : Number
      {
         return b2internal:: "z.m_sweep.a - b2internal::2!g.m_sweep.a - this.§^!#§;
      }
      
      public function §&!Z§() : Number
      {
         return b2internal:: "z.m_angularVelocity - b2internal::2!g.m_angularVelocity;
      }
      
      public function §['§() : Boolean
      {
         return this.§'s§;
      }
      
      public function §8""§(param1:Boolean) : void
      {
         this.§'s§ = param1;
      }
      
      public function §3!;§() : Number
      {
         return this.§2!"§;
      }
      
      public function §+"!§() : Number
      {
         return this.§-#2§;
      }
      
      public function § !L§(param1:Number, param2:Number) : void
      {
         this.§2!"§ = param1;
         this.§-#2§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§9!X§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::2!g.SetAwake(true);
         b2internal:: "z.SetAwake(true);
         this.§9!X§ = param1;
      }
      
      public function §8#S§(param1:Number) : void
      {
         b2internal::2!g.SetAwake(true);
         b2internal:: "z.SetAwake(true);
         this.§7#R§ = param1;
      }
      
      public function §+#0§() : Number
      {
         return this.§7#R§;
      }
      
      public function §92§(param1:Number) : void
      {
         this.§0#E§ = param1;
      }
      
      public function §1!u§() : Number
      {
         return this.§0#E§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc2_ = b2internal::2!g;
         _loc3_ = b2internal:: "z;
         if(this.§9!X§ || this.§'s§)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.§3#>§;
         var _loc11_:Number = _loc3_.§3#>§;
         var _loc12_:Number = _loc2_.§3"y§;
         var _loc13_:Number = _loc3_.§3"y§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§9#6§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§9#6§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§9#6§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§9#6§.col1.y = this.§9#6§.col2.x;
         this.§9#6§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§9#6§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§9#6§.col1.z = this.§9#6§.col3.x;
         this.§9#6§.col2.z = this.§9#6§.col3.y;
         this.§9#6§.col3.z = _loc12_ + _loc13_;
         this.§99§ = 1 / (_loc12_ + _loc13_);
         if(this.§9!X§ == false || _loc14_)
         {
            this.§4#5§ = 0;
         }
         if(this.§'s§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§^!#§;
            if(b2Math.§6"%§(this.§-#2§ - this.§2!"§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§<!G§ = b2internal::?!b;
            }
            else if(_loc15_ <= this.§2!"§)
            {
               if(this.§<!G§ != b2internal::5#C)
               {
                  this.§##,§.z = 0;
               }
               this.§<!G§ = b2internal::5#C;
            }
            else if(_loc15_ >= this.§-#2§)
            {
               if(this.§<!G§ != b2internal::#"e)
               {
                  this.§##,§.z = 0;
               }
               this.§<!G§ = b2internal::#"e;
            }
            else
            {
               this.§<!G§ = b2internal::"!G;
               this.§##,§.z = 0;
            }
         }
         else
         {
            this.§<!G§ = b2internal::"!G;
         }
         if(param1.§-'§)
         {
            this.§##,§.x *= param1.§8"]§;
            this.§##,§.y *= param1.§8"]§;
            this.§4#5§ *= param1.§8"]§;
            _loc16_ = this.§##,§.x;
            _loc17_ = this.§##,§.y;
            _loc2_.§ #`§.x -= _loc10_ * _loc16_;
            _loc2_.§ #`§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§4#5§ + this.§##,§.z);
            _loc3_.§ #`§.x += _loc11_ * _loc16_;
            _loc3_.§ #`§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§4#5§ + this.§##,§.z);
         }
         else
         {
            this.§##,§.§&"Q§();
            this.§4#5§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc2_:b2Body = b2internal::2!g;
         var _loc3_:b2Body = b2internal:: "z;
         var _loc11_:b2Vec2 = _loc2_.§ #`§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§ #`§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§3#>§;
         var _loc16_:Number = _loc3_.§3#>§;
         var _loc17_:Number = _loc2_.§3"y§;
         var _loc18_:Number = _loc3_.§3"y§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§9!X§ && this.§<!G§ != b2internal::?!b && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§7#R§;
            _loc21_ = this.§99§ * -_loc20_;
            _loc22_ = this.§4#5§;
            _loc23_ = param1.§1!O§ * this.§0#E§;
            this.§4#5§ = b2Math.§<"X§(this.§4#5§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§4#5§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§'s§ && this.§<!G§ != b2internal::"!G && !_loc19_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc24_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc25_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc26_ = _loc14_ - _loc12_;
            this.§9#6§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§<!G§ == b2internal::?!b)
            {
               this.§##,§.§ true§(this.impulse3);
            }
            else if(this.§<!G§ == b2internal::5#C)
            {
               if((_loc6_ = this.§##,§.z + this.impulse3.z) < 0)
               {
                  this.§9#6§.Solve22(this.§6!Q§,-_loc24_ + this.§##,§.z * this.§9#6§.col3.x,-_loc25_ + this.§##,§.z * this.§9#6§.col3.y);
                  this.impulse3.x = this.§6!Q§.x;
                  this.impulse3.y = this.§6!Q§.y;
                  this.impulse3.z = -this.§##,§.z;
                  this.§##,§.x += this.§6!Q§.x;
                  this.§##,§.y += this.§6!Q§.y;
                  this.§##,§.z = 0;
               }
               else
               {
                  this.§##,§.x += this.impulse3.x;
                  this.§##,§.y += this.impulse3.y;
                  this.§##,§.z += this.impulse3.z;
               }
            }
            else if(this.§<!G§ == b2internal::#"e)
            {
               if((_loc6_ = this.§##,§.z + this.impulse3.z) > 0)
               {
                  this.§9#6§.Solve22(this.§6!Q§,-_loc24_ + this.§##,§.z * this.§9#6§.col3.x,-_loc25_ + this.§##,§.z * this.§9#6§.col3.y);
                  this.impulse3.x = this.§6!Q§.x;
                  this.impulse3.y = this.§6!Q§.y;
                  this.impulse3.z = -this.§##,§.z;
                  this.§##,§.x += this.§6!Q§.x;
                  this.§##,§.y += this.§6!Q§.y;
                  this.§##,§.z = 0;
               }
               else
               {
                  this.§##,§.x += this.impulse3.x;
                  this.§##,§.y += this.impulse3.y;
                  this.§##,§.z += this.impulse3.z;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc27_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc28_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§9#6§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§##,§.x += this.impulse2.x;
            this.§##,§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§ #`§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§ #`§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal::2!g;
         var _loc6_:b2Body = b2internal:: "z;
         var _loc7_:* = b2internal::]r + b2internal::-w == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§'s§ && this.§<!G§ != b2internal::"!G && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§^!#§;
            _loc27_ = 0;
            if(this.§<!G§ == b2internal::?!b)
            {
               _loc3_ = b2Math.§<"X§(_loc26_ - this.§2!"§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§99§ * _loc3_;
               _loc8_ = b2Math.§6"%§(_loc3_);
            }
            else if(this.§<!G§ == b2internal::5#C)
            {
               _loc3_ = _loc26_ - this.§2!"§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§<"X§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§99§ * _loc3_;
            }
            else if(this.§<!G§ == b2internal::#"e)
            {
               _loc3_ = _loc26_ - this.§-#2§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§<"X§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§99§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§3"y§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§3"y§ * _loc27_;
            _loc5_.§`"a§();
            _loc6_.§`"a§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc13_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc14_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc13_ + _loc4_.col2.x * _loc14_;
         _loc14_ = _loc4_.col1.y * _loc13_ + _loc4_.col2.y * _loc14_;
         _loc13_ = _loc10_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc15_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc16_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc15_ + _loc4_.col2.x * _loc16_;
         _loc16_ = _loc4_.col1.y * _loc15_ + _loc4_.col2.y * _loc16_;
         _loc15_ = _loc10_;
         var _loc17_:Number = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
         var _loc18_:Number = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         var _loc19_:Number = _loc17_ * _loc17_ + _loc18_ * _loc18_;
         var _loc20_:Number;
         _loc9_ = _loc20_ = Math.sqrt(_loc19_);
         var _loc21_:Number = _loc5_.§3#>§;
         var _loc22_:Number = _loc6_.§3#>§;
         var _loc23_:Number = _loc5_.§3"y§;
         var _loc24_:Number = _loc6_.§3"y§;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            _loc28_ = _loc17_ / _loc20_;
            _loc29_ = _loc18_ / _loc20_;
            _loc30_ = _loc21_ + _loc22_;
            _loc11_ = (_loc31_ = 1 / _loc30_) * -_loc17_;
            _loc12_ = _loc31_ * -_loc18_;
            _loc32_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc32_ * _loc21_ * _loc11_;
            _loc5_.m_sweep.c.y -= _loc32_ * _loc21_ * _loc12_;
            _loc6_.m_sweep.c.x += _loc32_ * _loc22_ * _loc11_;
            _loc6_.m_sweep.c.y += _loc32_ * _loc22_ * _loc12_;
            _loc17_ = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
            _loc18_ = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         }
         this.K1.col1.x = _loc21_ + _loc22_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc21_ + _loc22_;
         this.K2.col1.x = _loc23_ * _loc14_ * _loc14_;
         this.K2.col2.x = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col1.y = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col2.y = _loc23_ * _loc13_ * _loc13_;
         this.K3.col1.x = _loc24_ * _loc16_ * _loc16_;
         this.K3.col2.x = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col1.y = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col2.y = _loc24_ * _loc15_ * _loc15_;
         this.K.§&!c§(this.K1);
         this.K.§1"W§(this.K2);
         this.K.§1"W§(this.K3);
         this.K.§=#6§(§&"&§,-_loc17_,-_loc18_);
         _loc11_ = §&"&§.x;
         _loc12_ = §&"&§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§3#>§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§3#>§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§3"y§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§3#>§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§3#>§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§3"y§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§`"a§();
         _loc6_.§`"a§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
