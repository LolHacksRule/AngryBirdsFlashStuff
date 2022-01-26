package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Mat33;
   import §_-dx§.b2Math;
   import §_-dx§.b2Vec2;
   import §_-dx§.b2Vec3;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-6V§:b2Vec2 = new b2Vec2();
       
      
      private var §_-2q§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-6s§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-TC§:b2Vec3;
      
      private var §_-OB§:Number;
      
      private var §_-dz§:b2Mat33;
      
      private var §_-ay§:Number;
      
      private var §_-iP§:Boolean;
      
      private var §_-qi§:Number;
      
      private var §_-lP§:Number;
      
      private var §_-Th§:Boolean;
      
      private var §_-f9§:Number;
      
      private var §_-jo§:Number;
      
      private var §_-tn§:Number;
      
      private var §_-N0§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-2q§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-6s§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-TC§ = new b2Vec3();
         this.§_-dz§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-uE§);
         this.m_localAnchor2.SetV(param1.§_-L5§);
         this.§_-f9§ = param1.§_-Rk§;
         this.§_-TC§.§_-pZ§();
         this.§_-OB§ = 0;
         this.§_-jo§ = param1.§_-Vw§;
         this.§_-tn§ = param1.§_-13§;
         this.§_-qi§ = param1.§_-ne§;
         this.§_-lP§ = param1.motorSpeed;
         this.§_-Th§ = param1.§_-fG§;
         this.§_-iP§ = param1.§_-HV§;
         this.§_-N0§ = b2internal::_-H9;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-t6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-7f.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TC§.x,param1 * this.§_-TC§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-TC§.z;
      }
      
      public function §_-k4§() : Number
      {
         return b2internal::_-7f.m_sweep.a - b2internal::_-t6.m_sweep.a - this.§_-f9§;
      }
      
      public function §_-rC§() : Number
      {
         return b2internal::_-7f.m_angularVelocity - b2internal::_-t6.m_angularVelocity;
      }
      
      public function §_-KT§() : Boolean
      {
         return this.§_-Th§;
      }
      
      public function §_-aM§(param1:Boolean) : void
      {
         this.§_-Th§ = param1;
      }
      
      public function §_-hr§() : Number
      {
         return this.§_-jo§;
      }
      
      public function §_-JF§() : Number
      {
         return this.§_-tn§;
      }
      
      public function §_-w6§(param1:Number, param2:Number) : void
      {
         this.§_-jo§ = param1;
         this.§_-tn§ = param2;
      }
      
      public function §_-YJ§() : Boolean
      {
         b2internal::_-t6.SetAwake(true);
         b2internal::_-7f.SetAwake(true);
         return this.§_-iP§;
      }
      
      public function §_-q1§(param1:Boolean) : void
      {
         this.§_-iP§ = param1;
      }
      
      public function §_-fH§(param1:Number) : void
      {
         b2internal::_-t6.SetAwake(true);
         b2internal::_-7f.SetAwake(true);
         this.§_-lP§ = param1;
      }
      
      public function §_-R1§() : Number
      {
         return this.§_-lP§;
      }
      
      public function §_-7n§(param1:Number) : void
      {
         this.§_-qi§ = param1;
      }
      
      public function §_-MF§() : Number
      {
         return this.§_-qi§;
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
         _loc2_ = b2internal::_-t6;
         _loc3_ = b2internal::_-7f;
         if(this.§_-iP§ || this.§_-Th§)
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
         var _loc10_:Number = _loc2_.§_-YH§;
         var _loc11_:Number = _loc3_.§_-YH§;
         var _loc12_:Number = _loc2_.§_-49§;
         var _loc13_:Number = _loc3_.§_-49§;
         this.§_-dz§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-dz§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-dz§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-dz§.col1.y = this.§_-dz§.col2.x;
         this.§_-dz§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-dz§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-dz§.col1.z = this.§_-dz§.col3.x;
         this.§_-dz§.col2.z = this.§_-dz§.col3.y;
         this.§_-dz§.col3.z = _loc12_ + _loc13_;
         this.§_-ay§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-iP§ == false)
         {
            this.§_-OB§ = 0;
         }
         if(this.§_-Th§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-f9§;
            if(b2Math.§_-2l§(this.§_-tn§ - this.§_-jo§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-N0§ = b2internal::extends;
            }
            else if(_loc14_ <= this.§_-jo§)
            {
               if(this.§_-N0§ != b2internal::_-lg)
               {
                  this.§_-TC§.z = 0;
               }
               this.§_-N0§ = b2internal::_-lg;
            }
            else if(_loc14_ >= this.§_-tn§)
            {
               if(this.§_-N0§ != b2internal::_-pq)
               {
                  this.§_-TC§.z = 0;
               }
               this.§_-N0§ = b2internal::_-pq;
            }
            else
            {
               this.§_-N0§ = b2internal::_-H9;
               this.§_-TC§.z = 0;
            }
         }
         else
         {
            this.§_-N0§ = b2internal::_-H9;
         }
         if(param1.§_-xV§)
         {
            this.§_-TC§.x *= param1.§_-3W§;
            this.§_-TC§.y *= param1.§_-3W§;
            this.§_-OB§ *= param1.§_-3W§;
            _loc15_ = this.§_-TC§.x;
            _loc16_ = this.§_-TC§.y;
            _loc2_.§_-Ce§.x -= _loc10_ * _loc15_;
            _loc2_.§_-Ce§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-OB§ + this.§_-TC§.z);
            _loc3_.§_-Ce§.x += _loc11_ * _loc15_;
            _loc3_.§_-Ce§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-OB§ + this.§_-TC§.z);
         }
         else
         {
            this.§_-TC§.§_-pZ§();
            this.§_-OB§ = 0;
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
         var _loc2_:b2Body = b2internal::_-t6;
         var _loc3_:b2Body = b2internal::_-7f;
         var _loc11_:b2Vec2 = _loc2_.§_-Ce§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-Ce§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-YH§;
         var _loc16_:Number = _loc3_.§_-YH§;
         var _loc17_:Number = _loc2_.§_-49§;
         var _loc18_:Number = _loc3_.§_-49§;
         if(this.§_-iP§ && this.§_-N0§ != b2internal::extends)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-lP§;
            _loc20_ = this.§_-ay§ * -_loc19_;
            _loc21_ = this.§_-OB§;
            _loc22_ = param1.§_-a9§ * this.§_-qi§;
            this.§_-OB§ = b2Math.§_-k3§(this.§_-OB§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-OB§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-Th§ && this.§_-N0§ != b2internal::_-H9)
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
            this.§_-dz§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-N0§ == b2internal::extends)
            {
               this.§_-TC§.§_-7H§(this.impulse3);
            }
            else if(this.§_-N0§ == b2internal::_-lg)
            {
               if((_loc6_ = this.§_-TC§.z + this.impulse3.z) < 0)
               {
                  this.§_-dz§.Solve22(this.§_-6s§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-6s§.x;
                  this.impulse3.y = this.§_-6s§.y;
                  this.impulse3.z = -this.§_-TC§.z;
                  this.§_-TC§.x += this.§_-6s§.x;
                  this.§_-TC§.y += this.§_-6s§.y;
                  this.§_-TC§.z = 0;
               }
            }
            else if(this.§_-N0§ == b2internal::_-pq)
            {
               if((_loc6_ = this.§_-TC§.z + this.impulse3.z) > 0)
               {
                  this.§_-dz§.Solve22(this.§_-6s§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-6s§.x;
                  this.impulse3.y = this.§_-6s§.y;
                  this.impulse3.z = -this.§_-TC§.z;
                  this.§_-TC§.x += this.§_-6s§.x;
                  this.§_-TC§.y += this.§_-6s§.y;
                  this.§_-TC§.z = 0;
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
            this.§_-dz§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-TC§.x += this.impulse2.x;
            this.§_-TC§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-Ce§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-Ce§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-t6;
         var _loc6_:b2Body = b2internal::_-7f;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-Th§ && this.§_-N0§ != b2internal::_-H9)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-f9§;
            _loc26_ = 0;
            if(this.§_-N0§ == b2internal::extends)
            {
               _loc3_ = b2Math.§_-k3§(_loc25_ - this.§_-jo§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-ay§ * _loc3_;
               _loc7_ = b2Math.§_-2l§(_loc3_);
            }
            else if(this.§_-N0§ == b2internal::_-lg)
            {
               _loc3_ = _loc25_ - this.§_-jo§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-k3§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-ay§ * _loc3_;
            }
            else if(this.§_-N0§ == b2internal::_-pq)
            {
               _loc3_ = _loc25_ - this.§_-tn§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-k3§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-ay§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-49§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-49§ * _loc26_;
            _loc5_.§_-B0§();
            _loc6_.§_-B0§();
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
         var _loc20_:Number = _loc5_.§_-YH§;
         var _loc21_:Number = _loc6_.§_-YH§;
         var _loc22_:Number = _loc5_.§_-49§;
         var _loc23_:Number = _loc6_.§_-49§;
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
         this.§_-2q§.§_-JX§(this.K1);
         this.§_-2q§.§_-hU§(this.K2);
         this.§_-2q§.§_-hU§(this.K3);
         this.§_-2q§.§_-Ok§(§_-6V§,-_loc16_,-_loc17_);
         _loc10_ = §_-6V§.x;
         _loc11_ = §_-6V§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-YH§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-YH§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-49§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-YH§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-YH§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-49§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-B0§();
         _loc6_.§_-B0§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
