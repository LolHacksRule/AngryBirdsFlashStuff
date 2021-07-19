package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Mat33;
   import §6Z§.b2Math;
   import §6Z§.b2Vec2;
   import §6Z§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §3g§:b2Vec2 = new b2Vec2();
       
      
      private var §""%§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §>;§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §0!F§:b2Vec3;
      
      private var §8!9§:Number;
      
      private var §6!L§:b2Mat33;
      
      private var §9q§:Number;
      
      private var §%O§:Boolean;
      
      private var §8D§:Number;
      
      private var §0!9§:Number;
      
      private var § !§:Boolean;
      
      private var §!!3§:Number;
      
      private var §;M§:Number;
      
      private var §"p§:Number;
      
      private var §%!T§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§""%§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§>;§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0!F§ = new b2Vec3();
         this.§6!L§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§0O§);
         this.m_localAnchor2.SetV(param1.§ @§);
         this.§!!3§ = param1.§<!b§;
         this.§0!F§.§5!H§();
         this.§8!9§ = 0;
         this.§;M§ = param1.§ +§;
         this.§"p§ = param1.§,!n§;
         this.§8D§ = param1.§1&§;
         this.§0!9§ = param1.motorSpeed;
         this.§ !§ = param1.§+!<§;
         this.§%O§ = param1.§[!W§;
         this.§%!T§ = b2internal::-!Z;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0!F§.x,param1 * this.§0!F§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0!F§.z;
      }
      
      public function §@-§() : Number
      {
         return b2internal::8!F.m_sweep.a - b2internal::[Z.m_sweep.a - this.§!!3§;
      }
      
      public function §="'§() : Number
      {
         return b2internal::8!F.m_angularVelocity - b2internal::[Z.m_angularVelocity;
      }
      
      public function §!!B§() : Boolean
      {
         return this.§ !§;
      }
      
      public function §2!4§(param1:Boolean) : void
      {
         this.§ !§ = param1;
      }
      
      public function §]!7§() : Number
      {
         return this.§;M§;
      }
      
      public function §%!Z§() : Number
      {
         return this.§"p§;
      }
      
      public function §;1§(param1:Number, param2:Number) : void
      {
         this.§;M§ = param1;
         this.§"p§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§%O§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.§%O§ = param1;
      }
      
      public function §"!v§(param1:Number) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.§0!9§ = param1;
      }
      
      public function §7"%§() : Number
      {
         return this.§0!9§;
      }
      
      public function §9!=§(param1:Number) : void
      {
         this.§8D§ = param1;
      }
      
      public function §!y§() : Number
      {
         return this.§8D§;
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
         _loc2_ = b2internal::[Z;
         _loc3_ = b2internal::8!F;
         if(this.§%O§ || this.§ !§)
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
         var _loc10_:Number = _loc2_.§4!&§;
         var _loc11_:Number = _loc3_.§4!&§;
         var _loc12_:Number = _loc2_.§`!`§;
         var _loc13_:Number = _loc3_.§`!`§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§6!L§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§6!L§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§6!L§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§6!L§.col1.y = this.§6!L§.col2.x;
         this.§6!L§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§6!L§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§6!L§.col1.z = this.§6!L§.col3.x;
         this.§6!L§.col2.z = this.§6!L§.col3.y;
         this.§6!L§.col3.z = _loc12_ + _loc13_;
         this.§9q§ = 1 / (_loc12_ + _loc13_);
         if(this.§%O§ == false || _loc14_)
         {
            this.§8!9§ = 0;
         }
         if(this.§ !§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§!!3§;
            if(b2Math.§"!2§(this.§"p§ - this.§;M§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§%!T§ = b2internal::8!E;
            }
            else if(_loc15_ <= this.§;M§)
            {
               if(this.§%!T§ != b2internal::@<)
               {
                  this.§0!F§.z = 0;
               }
               this.§%!T§ = b2internal::@<;
            }
            else if(_loc15_ >= this.§"p§)
            {
               if(this.§%!T§ != b2internal::%S)
               {
                  this.§0!F§.z = 0;
               }
               this.§%!T§ = b2internal::%S;
            }
            else
            {
               this.§%!T§ = b2internal::-!Z;
               this.§0!F§.z = 0;
            }
         }
         else
         {
            this.§%!T§ = b2internal::-!Z;
         }
         if(param1.§?j§)
         {
            this.§0!F§.x *= param1.§-k§;
            this.§0!F§.y *= param1.§-k§;
            this.§8!9§ *= param1.§-k§;
            _loc16_ = this.§0!F§.x;
            _loc17_ = this.§0!F§.y;
            _loc2_.§?!^§.x -= _loc10_ * _loc16_;
            _loc2_.§?!^§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§8!9§ + this.§0!F§.z);
            _loc3_.§?!^§.x += _loc11_ * _loc16_;
            _loc3_.§?!^§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§8!9§ + this.§0!F§.z);
         }
         else
         {
            this.§0!F§.§5!H§();
            this.§8!9§ = 0;
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
         var _loc2_:b2Body = b2internal::[Z;
         var _loc3_:b2Body = b2internal::8!F;
         var _loc11_:b2Vec2 = _loc2_.§?!^§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§?!^§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§4!&§;
         var _loc16_:Number = _loc3_.§4!&§;
         var _loc17_:Number = _loc2_.§`!`§;
         var _loc18_:Number = _loc3_.§`!`§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§%O§ && this.§%!T§ != b2internal::8!E && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§0!9§;
            _loc21_ = this.§9q§ * -_loc20_;
            _loc22_ = this.§8!9§;
            _loc23_ = param1.§`!9§ * this.§8D§;
            this.§8!9§ = b2Math.§&a§(this.§8!9§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§8!9§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§ !§ && this.§%!T§ != b2internal::-!Z && !_loc19_)
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
            this.§6!L§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§%!T§ == b2internal::8!E)
            {
               this.§0!F§.§-!r§(this.impulse3);
            }
            else if(this.§%!T§ == b2internal::@<)
            {
               if((_loc6_ = this.§0!F§.z + this.impulse3.z) < 0)
               {
                  this.§6!L§.Solve22(this.§>;§,-_loc24_ + this.§0!F§.z * this.§6!L§.col3.x,-_loc25_ + this.§0!F§.z * this.§6!L§.col3.y);
                  this.impulse3.x = this.§>;§.x;
                  this.impulse3.y = this.§>;§.y;
                  this.impulse3.z = -this.§0!F§.z;
                  this.§0!F§.x += this.§>;§.x;
                  this.§0!F§.y += this.§>;§.y;
                  this.§0!F§.z = 0;
               }
               else
               {
                  this.§0!F§.x += this.impulse3.x;
                  this.§0!F§.y += this.impulse3.y;
                  this.§0!F§.z += this.impulse3.z;
               }
            }
            else if(this.§%!T§ == b2internal::%S)
            {
               if((_loc6_ = this.§0!F§.z + this.impulse3.z) > 0)
               {
                  this.§6!L§.Solve22(this.§>;§,-_loc24_ + this.§0!F§.z * this.§6!L§.col3.x,-_loc25_ + this.§0!F§.z * this.§6!L§.col3.y);
                  this.impulse3.x = this.§>;§.x;
                  this.impulse3.y = this.§>;§.y;
                  this.impulse3.z = -this.§0!F§.z;
                  this.§0!F§.x += this.§>;§.x;
                  this.§0!F§.y += this.§>;§.y;
                  this.§0!F§.z = 0;
               }
               else
               {
                  this.§0!F§.x += this.impulse3.x;
                  this.§0!F§.y += this.impulse3.y;
                  this.§0!F§.z += this.impulse3.z;
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
            this.§6!L§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§0!F§.x += this.impulse2.x;
            this.§0!F§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§?!^§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§?!^§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::[Z;
         var _loc6_:b2Body = b2internal::8!F;
         var _loc7_:* = b2internal::`2 + b2internal::,T == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§ !§ && this.§%!T§ != b2internal::-!Z && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§!!3§;
            _loc27_ = 0;
            if(this.§%!T§ == b2internal::8!E)
            {
               _loc3_ = b2Math.§&a§(_loc26_ - this.§;M§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§9q§ * _loc3_;
               _loc8_ = b2Math.§"!2§(_loc3_);
            }
            else if(this.§%!T§ == b2internal::@<)
            {
               _loc3_ = _loc26_ - this.§;M§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§&a§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§9q§ * _loc3_;
            }
            else if(this.§%!T§ == b2internal::%S)
            {
               _loc3_ = _loc26_ - this.§"p§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§&a§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§9q§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§`!`§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§`!`§ * _loc27_;
            _loc5_.§-F§();
            _loc6_.§-F§();
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
         var _loc21_:Number = _loc5_.§4!&§;
         var _loc22_:Number = _loc6_.§4!&§;
         var _loc23_:Number = _loc5_.§`!`§;
         var _loc24_:Number = _loc6_.§`!`§;
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
         this.§""%§.§17§(this.K1);
         this.§""%§.§"M§(this.K2);
         this.§""%§.§"M§(this.K3);
         this.§""%§.§=^§(§3g§,-_loc17_,-_loc18_);
         _loc11_ = §3g§.x;
         _loc12_ = §3g§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§4!&§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§4!&§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§`!`§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§4!&§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§4!&§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§`!`§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§-F§();
         _loc6_.§-F§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
