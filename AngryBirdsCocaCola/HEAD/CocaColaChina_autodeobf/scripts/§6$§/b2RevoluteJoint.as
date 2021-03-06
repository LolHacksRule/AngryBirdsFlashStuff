package §6$§
{
   import §&!L§.b2Mat22;
   import §&!L§.b2Mat33;
   import §&!L§.b2Math;
   import §&!L§.b2Vec2;
   import §&!L§.b2Vec3;
   import §3f§.b2Body;
   import §3f§.b2TimeStep;
   import §7!C§.b2Settings;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §-! §:b2Vec2 = new b2Vec2();
       
      
      private var §"!2§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §7!@§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §7!P§:b2Vec3;
      
      private var §"h§:Number;
      
      private var § !4§:b2Mat33;
      
      private var §4!T§:Number;
      
      private var §`!&§:Boolean;
      
      private var §with§:Number;
      
      private var §^!R§:Number;
      
      private var §6Q§:Boolean;
      
      private var override:Number;
      
      private var §#![§:Number;
      
      private var §2z§:Number;
      
      private var §,!L§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§"!2§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§7!@§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§7!P§ = new b2Vec3();
         this.§ !4§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8!Z§);
         this.m_localAnchor2.SetV(param1.§]!P§);
         this.override = param1.§[1§;
         this.§7!P§.§`§();
         this.§"h§ = 0;
         this.§#![§ = param1.§=!P§;
         this.§2z§ = param1.§'!7§;
         this.§with§ = param1.§'!N§;
         this.§^!R§ = param1.motorSpeed;
         this.§6Q§ = param1.§>C§;
         this.§`!&§ = param1.§+g§;
         this.§,!L§ = b2internal::]m;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!I.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!#.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§7!P§.x,param1 * this.§7!P§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§7!P§.z;
      }
      
      public function §",§() : Number
      {
         return b2internal::%!#.m_sweep.a - b2internal::2!I.m_sweep.a - this.override;
      }
      
      public function §!!7§() : Number
      {
         return b2internal::%!#.m_angularVelocity - b2internal::2!I.m_angularVelocity;
      }
      
      public function §4M§() : Boolean
      {
         return this.§6Q§;
      }
      
      public function §>!V§(param1:Boolean) : void
      {
         this.§6Q§ = param1;
      }
      
      public function §"G§() : Number
      {
         return this.§#![§;
      }
      
      public function §1S§() : Number
      {
         return this.§2z§;
      }
      
      public function §#!T§(param1:Number, param2:Number) : void
      {
         this.§#![§ = param1;
         this.§2z§ = param2;
      }
      
      public function §%!Q§() : Boolean
      {
         b2internal::2!I.SetAwake(true);
         b2internal::%!#.SetAwake(true);
         return this.§`!&§;
      }
      
      public function §-!d§(param1:Boolean) : void
      {
         this.§`!&§ = param1;
      }
      
      public function §-!a§(param1:Number) : void
      {
         b2internal::2!I.SetAwake(true);
         b2internal::%!#.SetAwake(true);
         this.§^!R§ = param1;
      }
      
      public function § 1§() : Number
      {
         return this.§^!R§;
      }
      
      public function §]j§(param1:Number) : void
      {
         this.§with§ = param1;
      }
      
      public function §8!C§() : Number
      {
         return this.§with§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = b2internal::2!I;
         _loc3_ = b2internal::%!#;
         if(this.§`!&§ || this.§6Q§)
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
         var _loc10_:Number = _loc2_.§3!`§;
         var _loc11_:Number = _loc3_.§3!`§;
         var _loc12_:Number = _loc2_.§=4§;
         var _loc13_:Number = _loc3_.§=4§;
         this.§ !4§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§ !4§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§ !4§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§ !4§.col1.y = this.§ !4§.col2.x;
         this.§ !4§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§ !4§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§ !4§.col1.z = this.§ !4§.col3.x;
         this.§ !4§.col2.z = this.§ !4§.col3.y;
         this.§ !4§.col3.z = _loc12_ + _loc13_;
         this.§4!T§ = 1 / (_loc12_ + _loc13_);
         if(this.§`!&§ == false)
         {
            this.§"h§ = 0;
         }
         if(this.§6Q§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.override;
            if(b2Math.§5y§(this.§2z§ - this.§#![§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§,!L§ = b2internal::5!<;
            }
            else if(_loc14_ <= this.§#![§)
            {
               if(this.§,!L§ != b2internal::``)
               {
                  this.§7!P§.z = 0;
               }
               this.§,!L§ = b2internal::``;
            }
            else if(_loc14_ >= this.§2z§)
            {
               if(this.§,!L§ != b2internal::=A)
               {
                  this.§7!P§.z = 0;
               }
               this.§,!L§ = b2internal::=A;
            }
            else
            {
               this.§,!L§ = b2internal::]m;
               this.§7!P§.z = 0;
            }
         }
         else
         {
            this.§,!L§ = b2internal::]m;
         }
         if(param1.§&!X§)
         {
            this.§7!P§.x *= param1.§@=§;
            this.§7!P§.y *= param1.§@=§;
            this.§"h§ *= param1.§@=§;
            _loc15_ = this.§7!P§.x;
            _loc16_ = this.§7!P§.y;
            _loc2_.§9!Q§.x -= _loc10_ * _loc15_;
            _loc2_.§9!Q§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§"h§ + this.§7!P§.z);
            _loc3_.§9!Q§.x += _loc11_ * _loc15_;
            _loc3_.§9!Q§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§"h§ + this.§7!P§.z);
         }
         else
         {
            this.§7!P§.§`§();
            this.§"h§ = 0;
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
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = b2internal::2!I;
         var _loc3_:b2Body = b2internal::%!#;
         var _loc11_:b2Vec2 = _loc2_.§9!Q§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§9!Q§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§3!`§;
         var _loc16_:Number = _loc3_.§3!`§;
         var _loc17_:Number = _loc2_.§=4§;
         var _loc18_:Number = _loc3_.§=4§;
         if(this.§`!&§ && this.§,!L§ != b2internal::5!<)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§^!R§;
            _loc20_ = this.§4!T§ * -_loc19_;
            _loc21_ = this.§"h§;
            _loc22_ = param1.§"p§ * this.§with§;
            this.§"h§ = b2Math.§2m§(this.§"h§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§"h§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§6Q§ && this.§,!L§ != b2internal::]m)
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
            _loc23_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc24_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc25_ = _loc14_ - _loc12_;
            this.§ !4§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§,!L§ == b2internal::5!<)
            {
               this.§7!P§.§9Y§(this.impulse3);
            }
            else if(this.§,!L§ == b2internal::``)
            {
               if((_loc6_ = this.§7!P§.z + this.impulse3.z) < 0)
               {
                  this.§ !4§.Solve22(this.§7!@§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§7!@§.x;
                  this.impulse3.y = this.§7!@§.y;
                  this.impulse3.z = -this.§7!P§.z;
                  this.§7!P§.x += this.§7!@§.x;
                  this.§7!P§.y += this.§7!@§.y;
                  this.§7!P§.z = 0;
               }
            }
            else if(this.§,!L§ == b2internal::=A)
            {
               if((_loc6_ = this.§7!P§.z + this.impulse3.z) > 0)
               {
                  this.§ !4§.Solve22(this.§7!@§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§7!@§.x;
                  this.impulse3.y = this.§7!@§.y;
                  this.impulse3.z = -this.§7!P§.z;
                  this.§7!P§.x += this.§7!@§.x;
                  this.§7!P§.y += this.§7!@§.y;
                  this.§7!P§.z = 0;
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
            _loc26_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc27_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§ !4§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§7!P§.x += this.impulse2.x;
            this.§7!P§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§9!Q§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§9!Q§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:b2Body = b2internal::2!I;
         var _loc6_:b2Body = b2internal::%!#;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§6Q§ && this.§,!L§ != b2internal::]m)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.override;
            _loc26_ = 0;
            if(this.§,!L§ == b2internal::5!<)
            {
               _loc3_ = b2Math.§2m§(_loc25_ - this.§#![§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4!T§ * _loc3_;
               _loc7_ = b2Math.§5y§(_loc3_);
            }
            else if(this.§,!L§ == b2internal::``)
            {
               _loc3_ = _loc25_ - this.§#![§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§2m§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§4!T§ * _loc3_;
            }
            else if(this.§,!L§ == b2internal::=A)
            {
               _loc3_ = _loc25_ - this.§2z§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§2m§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4!T§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§=4§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§=4§ * _loc26_;
            _loc5_.§4B§();
            _loc6_.§4B§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc12_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc13_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc12_ + _loc4_.col2.x * _loc13_;
         _loc13_ = _loc4_.col1.y * _loc12_ + _loc4_.col2.y * _loc13_;
         _loc12_ = _loc9_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc14_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc15_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc14_ + _loc4_.col2.x * _loc15_;
         _loc15_ = _loc4_.col1.y * _loc14_ + _loc4_.col2.y * _loc15_;
         _loc14_ = _loc9_;
         var _loc16_:Number = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§3!`§;
         var _loc21_:Number = _loc6_.§3!`§;
         var _loc22_:Number = _loc5_.§=4§;
         var _loc23_:Number = _loc6_.§=4§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.c.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.c.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.c.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         }
         this.K1.col1.x = _loc20_ + _loc21_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc20_ + _loc21_;
         this.K2.col1.x = _loc22_ * _loc13_ * _loc13_;
         this.K2.col2.x = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col1.y = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col2.y = _loc22_ * _loc12_ * _loc12_;
         this.K3.col1.x = _loc23_ * _loc15_ * _loc15_;
         this.K3.col2.x = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col1.y = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col2.y = _loc23_ * _loc14_ * _loc14_;
         this.§"!2§.§+!<§(this.K1);
         this.§"!2§.§1!J§(this.K2);
         this.§"!2§.§1!J§(this.K3);
         this.§"!2§.§#m§(§-! §,-_loc16_,-_loc17_);
         _loc10_ = §-! §.x;
         _loc11_ = §-! §.y;
         _loc5_.m_sweep.c.x -= _loc5_.§3!`§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§3!`§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§=4§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§3!`§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§3!`§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§=4§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§4B§();
         _loc6_.§4B§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
