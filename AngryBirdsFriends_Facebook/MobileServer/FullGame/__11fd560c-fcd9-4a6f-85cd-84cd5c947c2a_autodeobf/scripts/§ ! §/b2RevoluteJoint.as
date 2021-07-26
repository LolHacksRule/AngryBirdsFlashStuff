package § ! §
{
   import § "%§.b2Mat22;
   import § "%§.b2Mat33;
   import § "%§.b2Math;
   import § "%§.b2Vec2;
   import § "%§.b2Vec3;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §`4§:b2Vec2 = new b2Vec2();
       
      
      private var §4#W§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §<!t§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §1#a§:b2Vec3;
      
      private var §8#Z§:Number;
      
      private var §?"-§:b2Mat33;
      
      private var §9!h§:Number;
      
      private var §=#E§:Boolean;
      
      private var §3"x§:Number;
      
      private var §3C§:Number;
      
      private var §3!f§:Boolean;
      
      private var §`!S§:Number;
      
      private var §##L§:Number;
      
      private var §>1§:Number;
      
      private var § z§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§4#W§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§<!t§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§1#a§ = new b2Vec3();
         this.§?"-§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§#"z§);
         this.m_localAnchor2.SetV(param1.§>#C§);
         this.§`!S§ = param1.§=#I§;
         this.§1#a§.§#!t§();
         this.§8#Z§ = 0;
         this.§##L§ = param1.§6c§;
         this.§>1§ = param1.§ # §;
         this.§3"x§ = param1.set;
         this.§3C§ = param1.motorSpeed;
         this.§3!f§ = param1.§?$&§;
         this.§=#E§ = param1.§!#6§;
         this.§ z§ = b2internal::7m;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3!^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^U.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§1#a§.x,param1 * this.§1#a§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§1#a§.z;
      }
      
      public function §?#9§() : Number
      {
         return b2internal::^U.m_sweep.a - b2internal::3!^.m_sweep.a - this.§`!S§;
      }
      
      public function §7#V§() : Number
      {
         return b2internal::^U.m_angularVelocity - b2internal::3!^.m_angularVelocity;
      }
      
      public function §<!3§() : Boolean
      {
         return this.§3!f§;
      }
      
      public function §`!w§(param1:Boolean) : void
      {
         this.§3!f§ = param1;
      }
      
      public function §8"c§() : Number
      {
         return this.§##L§;
      }
      
      public function §2$8§() : Number
      {
         return this.§>1§;
      }
      
      public function §]#f§(param1:Number, param2:Number) : void
      {
         this.§##L§ = param1;
         this.§>1§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§=#E§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::3!^.SetAwake(true);
         b2internal::^U.SetAwake(true);
         this.§=#E§ = param1;
      }
      
      public function §,"q§(param1:Number) : void
      {
         b2internal::3!^.SetAwake(true);
         b2internal::^U.SetAwake(true);
         this.§3C§ = param1;
      }
      
      public function §^#w§() : Number
      {
         return this.§3C§;
      }
      
      public function §0L§(param1:Number) : void
      {
         this.§3"x§ = param1;
      }
      
      public function §-#W§() : Number
      {
         return this.§3"x§;
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
         _loc2_ = b2internal::3!^;
         _loc3_ = b2internal::^U;
         if(this.§=#E§ || this.§3!f§)
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
         var _loc10_:Number = _loc2_.§@P§;
         var _loc11_:Number = _loc3_.§@P§;
         var _loc12_:Number = _loc2_.§ !q§;
         var _loc13_:Number = _loc3_.§ !q§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§?"-§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§?"-§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§?"-§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§?"-§.col1.y = this.§?"-§.col2.x;
         this.§?"-§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§?"-§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§?"-§.col1.z = this.§?"-§.col3.x;
         this.§?"-§.col2.z = this.§?"-§.col3.y;
         this.§?"-§.col3.z = _loc12_ + _loc13_;
         this.§9!h§ = 1 / (_loc12_ + _loc13_);
         if(this.§=#E§ == false || _loc14_)
         {
            this.§8#Z§ = 0;
         }
         if(this.§3!f§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§`!S§;
            if(b2Math.§[^§(this.§>1§ - this.§##L§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§ z§ = b2internal::]H;
            }
            else if(_loc15_ <= this.§##L§)
            {
               if(this.§ z§ != b2internal::=!A)
               {
                  this.§1#a§.z = 0;
               }
               this.§ z§ = b2internal::=!A;
            }
            else if(_loc15_ >= this.§>1§)
            {
               if(this.§ z§ != b2internal::`!)
               {
                  this.§1#a§.z = 0;
               }
               this.§ z§ = b2internal::`!;
            }
            else
            {
               this.§ z§ = b2internal::7m;
               this.§1#a§.z = 0;
            }
         }
         else
         {
            this.§ z§ = b2internal::7m;
         }
         if(param1.§##q§)
         {
            this.§1#a§.x *= param1.§4$B§;
            this.§1#a§.y *= param1.§4$B§;
            this.§8#Z§ *= param1.§4$B§;
            _loc16_ = this.§1#a§.x;
            _loc17_ = this.§1#a§.y;
            _loc2_.§4!I§.x -= _loc10_ * _loc16_;
            _loc2_.§4!I§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§8#Z§ + this.§1#a§.z);
            _loc3_.§4!I§.x += _loc11_ * _loc16_;
            _loc3_.§4!I§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§8#Z§ + this.§1#a§.z);
         }
         else
         {
            this.§1#a§.§#!t§();
            this.§8#Z§ = 0;
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
         var _loc2_:b2Body = b2internal::3!^;
         var _loc3_:b2Body = b2internal::^U;
         var _loc11_:b2Vec2 = _loc2_.§4!I§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§4!I§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§@P§;
         var _loc16_:Number = _loc3_.§@P§;
         var _loc17_:Number = _loc2_.§ !q§;
         var _loc18_:Number = _loc3_.§ !q§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§=#E§ && this.§ z§ != b2internal::]H && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§3C§;
            _loc21_ = this.§9!h§ * -_loc20_;
            _loc22_ = this.§8#Z§;
            _loc23_ = param1.dt * this.§3"x§;
            this.§8#Z§ = b2Math.§0"k§(this.§8#Z§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§8#Z§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§3!f§ && this.§ z§ != b2internal::7m && !_loc19_)
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
            this.§?"-§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§ z§ == b2internal::]H)
            {
               this.§1#a§.§<I§(this.impulse3);
            }
            else if(this.§ z§ == b2internal::=!A)
            {
               if((_loc6_ = this.§1#a§.z + this.impulse3.z) < 0)
               {
                  this.§?"-§.Solve22(this.§<!t§,-_loc24_ + this.§1#a§.z * this.§?"-§.col3.x,-_loc25_ + this.§1#a§.z * this.§?"-§.col3.y);
                  this.impulse3.x = this.§<!t§.x;
                  this.impulse3.y = this.§<!t§.y;
                  this.impulse3.z = -this.§1#a§.z;
                  this.§1#a§.x += this.§<!t§.x;
                  this.§1#a§.y += this.§<!t§.y;
                  this.§1#a§.z = 0;
               }
               else
               {
                  this.§1#a§.x += this.impulse3.x;
                  this.§1#a§.y += this.impulse3.y;
                  this.§1#a§.z += this.impulse3.z;
               }
            }
            else if(this.§ z§ == b2internal::`!)
            {
               if((_loc6_ = this.§1#a§.z + this.impulse3.z) > 0)
               {
                  this.§?"-§.Solve22(this.§<!t§,-_loc24_ + this.§1#a§.z * this.§?"-§.col3.x,-_loc25_ + this.§1#a§.z * this.§?"-§.col3.y);
                  this.impulse3.x = this.§<!t§.x;
                  this.impulse3.y = this.§<!t§.y;
                  this.impulse3.z = -this.§1#a§.z;
                  this.§1#a§.x += this.§<!t§.x;
                  this.§1#a§.y += this.§<!t§.y;
                  this.§1#a§.z = 0;
               }
               else
               {
                  this.§1#a§.x += this.impulse3.x;
                  this.§1#a§.y += this.impulse3.y;
                  this.§1#a§.z += this.impulse3.z;
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
            this.§?"-§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§1#a§.x += this.impulse2.x;
            this.§1#a§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§4!I§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§4!I§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::3!^;
         var _loc6_:b2Body = b2internal::^U;
         var _loc7_:* = b2internal::%L + b2internal::"#P == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§3!f§ && this.§ z§ != b2internal::7m && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§`!S§;
            _loc27_ = 0;
            if(this.§ z§ == b2internal::]H)
            {
               _loc3_ = b2Math.§0"k§(_loc26_ - this.§##L§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§9!h§ * _loc3_;
               _loc8_ = b2Math.§[^§(_loc3_);
            }
            else if(this.§ z§ == b2internal::=!A)
            {
               _loc3_ = _loc26_ - this.§##L§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§0"k§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§9!h§ * _loc3_;
            }
            else if(this.§ z§ == b2internal::`!)
            {
               _loc3_ = _loc26_ - this.§>1§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§0"k§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§9!h§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§ !q§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§ !q§ * _loc27_;
            _loc5_.§6#K§();
            _loc6_.§6#K§();
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
         var _loc21_:Number = _loc5_.§@P§;
         var _loc22_:Number = _loc6_.§@P§;
         var _loc23_:Number = _loc5_.§ !q§;
         var _loc24_:Number = _loc6_.§ !q§;
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
         this.§4#W§.§ "u§(this.K1);
         this.§4#W§.§[e§(this.K2);
         this.§4#W§.§[e§(this.K3);
         this.§4#W§.§3!Z§(§`4§,-_loc17_,-_loc18_);
         _loc11_ = §`4§.x;
         _loc12_ = §`4§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§@P§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§@P§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§ !q§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§@P§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§@P§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§ !q§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§6#K§();
         _loc6_.§6#K§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
