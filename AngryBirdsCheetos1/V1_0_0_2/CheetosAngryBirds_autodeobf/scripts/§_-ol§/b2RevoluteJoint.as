package §_-ol§
{
   import §_-43§.b2Body;
   import §_-43§.b2TimeStep;
   import §_-F2§.b2Mat22;
   import §_-F2§.b2Mat33;
   import §_-F2§.b2Math;
   import §_-F2§.b2Vec2;
   import §_-F2§.b2Vec3;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-1y§:b2Vec2 = new b2Vec2();
       
      
      private var §_-Tt§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-8y§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-cR§:b2Vec3;
      
      private var §_-Pi§:Number;
      
      private var §_-3i§:b2Mat33;
      
      private var §_-18§:Number;
      
      private var §_-0-o§:Boolean;
      
      private var §_-wy§:Number;
      
      private var §_-Z7§:Number;
      
      private var §_-j6§:Boolean;
      
      private var §_-YL§:Number;
      
      private var §_-3F§:Number;
      
      private var §_-8p§:Number;
      
      private var §_-5v§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-Tt§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-8y§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-cR§ = new b2Vec3();
         this.§_-3i§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-lj§);
         this.m_localAnchor2.SetV(param1.§_-zW§);
         this.§_-YL§ = param1.§_-oX§;
         this.§_-cR§.§_-t5§();
         this.§_-Pi§ = 0;
         this.§_-3F§ = param1.§_-0-A§;
         this.§_-8p§ = param1.§_-Ro§;
         this.§_-wy§ = param1.§_-T-§;
         this.§_-Z7§ = param1.motorSpeed;
         this.§_-j6§ = param1.§_-sR§;
         this.§_-0-o§ = param1.§_-zc§;
         this.§_-5v§ = b2internal::_-J1;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Fj.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-eo.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-cR§.x,param1 * this.§_-cR§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-cR§.z;
      }
      
      public function §_-sd§() : Number
      {
         return b2internal::_-eo.m_sweep.a - b2internal::_-Fj.m_sweep.a - this.§_-YL§;
      }
      
      public function §_-Fv§() : Number
      {
         return b2internal::_-eo.m_angularVelocity - b2internal::_-Fj.m_angularVelocity;
      }
      
      public function §_-cS§() : Boolean
      {
         return this.§_-j6§;
      }
      
      public function §_-au§(param1:Boolean) : void
      {
         this.§_-j6§ = param1;
      }
      
      public function §_-VZ§() : Number
      {
         return this.§_-3F§;
      }
      
      public function §_-F3§() : Number
      {
         return this.§_-8p§;
      }
      
      public function §_-0-m§(param1:Number, param2:Number) : void
      {
         this.§_-3F§ = param1;
         this.§_-8p§ = param2;
      }
      
      public function §_-WN§() : Boolean
      {
         b2internal::_-Fj.SetAwake(true);
         b2internal::_-eo.SetAwake(true);
         return this.§_-0-o§;
      }
      
      public function §_-WX§(param1:Boolean) : void
      {
         this.§_-0-o§ = param1;
      }
      
      public function §_-yc§(param1:Number) : void
      {
         b2internal::_-Fj.SetAwake(true);
         b2internal::_-eo.SetAwake(true);
         this.§_-Z7§ = param1;
      }
      
      public function §_-cD§() : Number
      {
         return this.§_-Z7§;
      }
      
      public function §_-lR§(param1:Number) : void
      {
         this.§_-wy§ = param1;
      }
      
      public function §_-IR§() : Number
      {
         return this.§_-wy§;
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
         _loc2_ = b2internal::_-Fj;
         _loc3_ = b2internal::_-eo;
         if(this.§_-0-o§ || this.§_-j6§)
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
         var _loc10_:Number = _loc2_.§_-N0§;
         var _loc11_:Number = _loc3_.§_-N0§;
         var _loc12_:Number = _loc2_.§_-pA§;
         var _loc13_:Number = _loc3_.§_-pA§;
         this.§_-3i§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-3i§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-3i§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-3i§.col1.y = this.§_-3i§.col2.x;
         this.§_-3i§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-3i§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-3i§.col1.z = this.§_-3i§.col3.x;
         this.§_-3i§.col2.z = this.§_-3i§.col3.y;
         this.§_-3i§.col3.z = _loc12_ + _loc13_;
         this.§_-18§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-0-o§ == false)
         {
            this.§_-Pi§ = 0;
         }
         if(this.§_-j6§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-YL§;
            if(b2Math.§_-qe§(this.§_-8p§ - this.§_-3F§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-5v§ = b2internal::_-4Q;
            }
            else if(_loc14_ <= this.§_-3F§)
            {
               if(this.§_-5v§ != b2internal::_-2p)
               {
                  this.§_-cR§.z = 0;
               }
               this.§_-5v§ = b2internal::_-2p;
            }
            else if(_loc14_ >= this.§_-8p§)
            {
               if(this.§_-5v§ != b2internal::_-3g)
               {
                  this.§_-cR§.z = 0;
               }
               this.§_-5v§ = b2internal::_-3g;
            }
            else
            {
               this.§_-5v§ = b2internal::_-J1;
               this.§_-cR§.z = 0;
            }
         }
         else
         {
            this.§_-5v§ = b2internal::_-J1;
         }
         if(param1.§_-fo§)
         {
            this.§_-cR§.x *= param1.§_-cz§;
            this.§_-cR§.y *= param1.§_-cz§;
            this.§_-Pi§ *= param1.§_-cz§;
            _loc15_ = this.§_-cR§.x;
            _loc16_ = this.§_-cR§.y;
            _loc2_.§_-We§.x -= _loc10_ * _loc15_;
            _loc2_.§_-We§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-Pi§ + this.§_-cR§.z);
            _loc3_.§_-We§.x += _loc11_ * _loc15_;
            _loc3_.§_-We§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-Pi§ + this.§_-cR§.z);
         }
         else
         {
            this.§_-cR§.§_-t5§();
            this.§_-Pi§ = 0;
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
         var _loc2_:b2Body = b2internal::_-Fj;
         var _loc3_:b2Body = b2internal::_-eo;
         var _loc11_:b2Vec2 = _loc2_.§_-We§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-We§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-N0§;
         var _loc16_:Number = _loc3_.§_-N0§;
         var _loc17_:Number = _loc2_.§_-pA§;
         var _loc18_:Number = _loc3_.§_-pA§;
         if(this.§_-0-o§ && this.§_-5v§ != b2internal::_-4Q)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-Z7§;
            _loc20_ = this.§_-18§ * -_loc19_;
            _loc21_ = this.§_-Pi§;
            _loc22_ = param1.§_-At§ * this.§_-wy§;
            this.§_-Pi§ = b2Math.§_-3V§(this.§_-Pi§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-Pi§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-j6§ && this.§_-5v§ != b2internal::_-J1)
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
            this.§_-3i§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-5v§ == b2internal::_-4Q)
            {
               this.§_-cR§.§_-5F§(this.impulse3);
            }
            else if(this.§_-5v§ == b2internal::_-2p)
            {
               if((_loc6_ = this.§_-cR§.z + this.impulse3.z) < 0)
               {
                  this.§_-3i§.Solve22(this.§_-8y§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-8y§.x;
                  this.impulse3.y = this.§_-8y§.y;
                  this.impulse3.z = -this.§_-cR§.z;
                  this.§_-cR§.x += this.§_-8y§.x;
                  this.§_-cR§.y += this.§_-8y§.y;
                  this.§_-cR§.z = 0;
               }
            }
            else if(this.§_-5v§ == b2internal::_-3g)
            {
               if((_loc6_ = this.§_-cR§.z + this.impulse3.z) > 0)
               {
                  this.§_-3i§.Solve22(this.§_-8y§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-8y§.x;
                  this.impulse3.y = this.§_-8y§.y;
                  this.impulse3.z = -this.§_-cR§.z;
                  this.§_-cR§.x += this.§_-8y§.x;
                  this.§_-cR§.y += this.§_-8y§.y;
                  this.§_-cR§.z = 0;
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
            this.§_-3i§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-cR§.x += this.impulse2.x;
            this.§_-cR§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-We§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-We§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-Fj;
         var _loc6_:b2Body = b2internal::_-eo;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-j6§ && this.§_-5v§ != b2internal::_-J1)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-YL§;
            _loc26_ = 0;
            if(this.§_-5v§ == b2internal::_-4Q)
            {
               _loc3_ = b2Math.§_-3V§(_loc25_ - this.§_-3F§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-18§ * _loc3_;
               _loc7_ = b2Math.§_-qe§(_loc3_);
            }
            else if(this.§_-5v§ == b2internal::_-2p)
            {
               _loc3_ = _loc25_ - this.§_-3F§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-3V§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-18§ * _loc3_;
            }
            else if(this.§_-5v§ == b2internal::_-3g)
            {
               _loc3_ = _loc25_ - this.§_-8p§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-3V§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-18§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-pA§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-pA§ * _loc26_;
            _loc5_.§_-76§();
            _loc6_.§_-76§();
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
         var _loc16_:Number = _loc6_.m_sweep.§_-FO§.x + _loc14_ - _loc5_.m_sweep.§_-FO§.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.§_-FO§.y + _loc15_ - _loc5_.m_sweep.§_-FO§.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§_-N0§;
         var _loc21_:Number = _loc6_.§_-N0§;
         var _loc22_:Number = _loc5_.§_-pA§;
         var _loc23_:Number = _loc6_.§_-pA§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.§_-FO§.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.§_-FO§.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.§_-FO§.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.§_-FO§.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.§_-FO§.x + _loc14_ - _loc5_.m_sweep.§_-FO§.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.§_-FO§.y + _loc15_ - _loc5_.m_sweep.§_-FO§.y - _loc13_;
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
         this.§_-Tt§.§_-x1§(this.K1);
         this.§_-Tt§.§_-U8§(this.K2);
         this.§_-Tt§.§_-U8§(this.K3);
         this.§_-Tt§.§_-mC§(§_-1y§,-_loc16_,-_loc17_);
         _loc10_ = §_-1y§.x;
         _loc11_ = §_-1y§.y;
         _loc5_.m_sweep.§_-FO§.x -= _loc5_.§_-N0§ * _loc10_;
         _loc5_.m_sweep.§_-FO§.y -= _loc5_.§_-N0§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-pA§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.§_-FO§.x += _loc6_.§_-N0§ * _loc10_;
         _loc6_.m_sweep.§_-FO§.y += _loc6_.§_-N0§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-pA§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-76§();
         _loc6_.§_-76§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
