package §2",§
{
   import §1x§.b2Body;
   import §1x§.b2TimeStep;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §^>§.b2Mat22;
   import §^>§.b2Mat33;
   import §^>§.b2Math;
   import §^>§.b2Vec2;
   import §^>§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var § "`§:b2Vec2 = new b2Vec2();
       
      
      private var §=!L§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §%l§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §^!t§:b2Vec3;
      
      private var §,"w§:Number;
      
      private var §'J§:b2Mat33;
      
      private var §?!C§:Number;
      
      private var §&!`§:Boolean;
      
      private var § c§:Number;
      
      private var §4"c§:Number;
      
      private var §@!O§:Boolean;
      
      private var §+!a§:Number;
      
      private var §<!N§:Number;
      
      private var §>!,§:Number;
      
      private var §'"6§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§=!L§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§%l§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^!t§ = new b2Vec3();
         this.§'J§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§2"g§);
         this.m_localAnchor2.SetV(param1.§#l§);
         this.§+!a§ = param1.§ %§;
         this.§^!t§.§@e§();
         this.§,"w§ = 0;
         this.§<!N§ = param1.§@k§;
         this.§>!,§ = param1.§&"t§;
         this.§ c§ = param1.§ K§;
         this.§4"c§ = param1.motorSpeed;
         this.§@!O§ = param1.§@"a§;
         this.§&!`§ = param1.§<!l§;
         this.§'"6§ = b2internal::<!D;
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
         return new b2Vec2(param1 * this.§^!t§.x,param1 * this.§^!t§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^!t§.z;
      }
      
      public function §7!,§() : Number
      {
         return b2internal::@!u.m_sweep.a - b2internal::0"n.m_sweep.a - this.§+!a§;
      }
      
      public function §?"8§() : Number
      {
         return b2internal::@!u.m_angularVelocity - b2internal::0"n.m_angularVelocity;
      }
      
      public function §["2§() : Boolean
      {
         return this.§@!O§;
      }
      
      public function §7!6§(param1:Boolean) : void
      {
         this.§@!O§ = param1;
      }
      
      public function §?!P§() : Number
      {
         return this.§<!N§;
      }
      
      public function §#@§() : Number
      {
         return this.§>!,§;
      }
      
      public function §`"M§(param1:Number, param2:Number) : void
      {
         this.§<!N§ = param1;
         this.§>!,§ = param2;
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
      
      public function §#!p§(param1:Number) : void
      {
         this.§ c§ = param1;
      }
      
      public function §#"B§() : Number
      {
         return this.§ c§;
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
         _loc2_ = b2internal::0"n;
         _loc3_ = b2internal::@!u;
         if(this.§&!`§ || this.§@!O§)
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
         var _loc10_:Number = _loc2_.§@"P§;
         var _loc11_:Number = _loc3_.§@"P§;
         var _loc12_:Number = _loc2_.§%#2§;
         var _loc13_:Number = _loc3_.§%#2§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§'J§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§'J§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§'J§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§'J§.col1.y = this.§'J§.col2.x;
         this.§'J§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§'J§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§'J§.col1.z = this.§'J§.col3.x;
         this.§'J§.col2.z = this.§'J§.col3.y;
         this.§'J§.col3.z = _loc12_ + _loc13_;
         this.§?!C§ = 1 / (_loc12_ + _loc13_);
         if(this.§&!`§ == false || _loc14_)
         {
            this.§,"w§ = 0;
         }
         if(this.§@!O§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§+!a§;
            if(b2Math.§=G§(this.§>!,§ - this.§<!N§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§'"6§ = b2internal::<!I;
            }
            else if(_loc15_ <= this.§<!N§)
            {
               if(this.§'"6§ != b2internal::6+)
               {
                  this.§^!t§.z = 0;
               }
               this.§'"6§ = b2internal::6+;
            }
            else if(_loc15_ >= this.§>!,§)
            {
               if(this.§'"6§ != b2internal::6#-)
               {
                  this.§^!t§.z = 0;
               }
               this.§'"6§ = b2internal::6#-;
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
         }
         if(param1.§56§)
         {
            this.§^!t§.x *= param1.§<J§;
            this.§^!t§.y *= param1.§<J§;
            this.§,"w§ *= param1.§<J§;
            _loc16_ = this.§^!t§.x;
            _loc17_ = this.§^!t§.y;
            _loc2_.§5!r§.x -= _loc10_ * _loc16_;
            _loc2_.§5!r§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§,"w§ + this.§^!t§.z);
            _loc3_.§5!r§.x += _loc11_ * _loc16_;
            _loc3_.§5!r§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§,"w§ + this.§^!t§.z);
         }
         else
         {
            this.§^!t§.§@e§();
            this.§,"w§ = 0;
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
         var _loc2_:b2Body = b2internal::0"n;
         var _loc3_:b2Body = b2internal::@!u;
         var _loc11_:b2Vec2 = _loc2_.§5!r§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§5!r§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§@"P§;
         var _loc16_:Number = _loc3_.§@"P§;
         var _loc17_:Number = _loc2_.§%#2§;
         var _loc18_:Number = _loc3_.§%#2§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§&!`§ && this.§'"6§ != b2internal::<!I && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§4"c§;
            _loc21_ = this.§?!C§ * -_loc20_;
            _loc22_ = this.§,"w§;
            _loc23_ = param1.§&"%§ * this.§ c§;
            this.§,"w§ = b2Math.§2"R§(this.§,"w§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§,"w§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§@!O§ && this.§'"6§ != b2internal::<!D && !_loc19_)
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
            this.§'J§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§'"6§ == b2internal::<!I)
            {
               this.§^!t§.§%#3§(this.impulse3);
            }
            else if(this.§'"6§ == b2internal::6+)
            {
               if((_loc6_ = this.§^!t§.z + this.impulse3.z) < 0)
               {
                  this.§'J§.Solve22(this.§%l§,-_loc24_ + this.§^!t§.z * this.§'J§.col3.x,-_loc25_ + this.§^!t§.z * this.§'J§.col3.y);
                  this.impulse3.x = this.§%l§.x;
                  this.impulse3.y = this.§%l§.y;
                  this.impulse3.z = -this.§^!t§.z;
                  this.§^!t§.x += this.§%l§.x;
                  this.§^!t§.y += this.§%l§.y;
                  this.§^!t§.z = 0;
               }
               else
               {
                  this.§^!t§.x += this.impulse3.x;
                  this.§^!t§.y += this.impulse3.y;
                  this.§^!t§.z += this.impulse3.z;
               }
            }
            else if(this.§'"6§ == b2internal::6#-)
            {
               if((_loc6_ = this.§^!t§.z + this.impulse3.z) > 0)
               {
                  this.§'J§.Solve22(this.§%l§,-_loc24_ + this.§^!t§.z * this.§'J§.col3.x,-_loc25_ + this.§^!t§.z * this.§'J§.col3.y);
                  this.impulse3.x = this.§%l§.x;
                  this.impulse3.y = this.§%l§.y;
                  this.impulse3.z = -this.§^!t§.z;
                  this.§^!t§.x += this.§%l§.x;
                  this.§^!t§.y += this.§%l§.y;
                  this.§^!t§.z = 0;
               }
               else
               {
                  this.§^!t§.x += this.impulse3.x;
                  this.§^!t§.y += this.impulse3.y;
                  this.§^!t§.z += this.impulse3.z;
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
            this.§'J§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§^!t§.x += this.impulse2.x;
            this.§^!t§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§5!r§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§5!r§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::0"n;
         var _loc6_:b2Body = b2internal::@!u;
         var _loc7_:* = b2internal::,!U + b2internal::]C == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§@!O§ && this.§'"6§ != b2internal::<!D && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§+!a§;
            _loc27_ = 0;
            if(this.§'"6§ == b2internal::<!I)
            {
               _loc3_ = b2Math.§2"R§(_loc26_ - this.§<!N§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§?!C§ * _loc3_;
               _loc8_ = b2Math.§=G§(_loc3_);
            }
            else if(this.§'"6§ == b2internal::6+)
            {
               _loc3_ = _loc26_ - this.§<!N§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§2"R§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§?!C§ * _loc3_;
            }
            else if(this.§'"6§ == b2internal::6#-)
            {
               _loc3_ = _loc26_ - this.§>!,§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§2"R§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§?!C§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§%#2§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§%#2§ * _loc27_;
            _loc5_.§"a§();
            _loc6_.§"a§();
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
         var _loc21_:Number = _loc5_.§@"P§;
         var _loc22_:Number = _loc6_.§@"P§;
         var _loc23_:Number = _loc5_.§%#2§;
         var _loc24_:Number = _loc6_.§%#2§;
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
         this.§=!L§.§6!8§(this.K1);
         this.§=!L§.§%!O§(this.K2);
         this.§=!L§.§%!O§(this.K3);
         this.§=!L§.§]"K§(§ "`§,-_loc17_,-_loc18_);
         _loc11_ = § "`§.x;
         _loc12_ = § "`§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§@"P§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§@"P§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§%#2§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§@"P§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§@"P§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§%#2§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§"a§();
         _loc6_.§"a§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
