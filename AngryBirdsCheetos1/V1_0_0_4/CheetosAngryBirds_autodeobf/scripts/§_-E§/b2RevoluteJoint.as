package §_-E§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2TimeStep;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Mat22;
   import §_-Vn§.b2Mat33;
   import §_-Vn§.b2Math;
   import §_-Vn§.b2Vec2;
   import §_-Vn§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-vt§:b2Vec2 = new b2Vec2();
       
      
      private var §_-cH§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-hx§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-Ud§:b2Vec3;
      
      private var §_-O7§:Number;
      
      private var §_-5y§:b2Mat33;
      
      private var §_-jK§:Number;
      
      private var §_-UZ§:Boolean;
      
      private var §_-5c§:Number;
      
      private var §_-kY§:Number;
      
      private var §_-Gy§:Boolean;
      
      private var §_-Kq§:Number;
      
      private var §_-UK§:Number;
      
      private var §_-Ai§:Number;
      
      private var §_-x§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-cH§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-hx§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Ud§ = new b2Vec3();
         this.§_-5y§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-4N§);
         this.m_localAnchor2.SetV(param1.§_-nR§);
         this.§_-Kq§ = param1.§_-L7§;
         this.§_-Ud§.§return§();
         this.§_-O7§ = 0;
         this.§_-UK§ = param1.§_-xb§;
         this.§_-Ai§ = param1.§_-gT§;
         this.§_-5c§ = param1.§_-99§;
         this.§_-kY§ = param1.motorSpeed;
         this.§_-Gy§ = param1.§_-MB§;
         this.§_-UZ§ = param1.§_-77§;
         this.§_-x§ = b2internal::_-S8;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-oB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-52.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-Ud§.x,param1 * this.§_-Ud§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-Ud§.z;
      }
      
      public function §_-pt§() : Number
      {
         return b2internal::_-52.m_sweep.a - b2internal::_-oB.m_sweep.a - this.§_-Kq§;
      }
      
      public function §_-RD§() : Number
      {
         return b2internal::_-52.m_angularVelocity - b2internal::_-oB.m_angularVelocity;
      }
      
      public function §_-nr§() : Boolean
      {
         return this.§_-Gy§;
      }
      
      public function §_-000§(param1:Boolean) : void
      {
         this.§_-Gy§ = param1;
      }
      
      public function §_-hB§() : Number
      {
         return this.§_-UK§;
      }
      
      public function §_-ud§() : Number
      {
         return this.§_-Ai§;
      }
      
      public function §_-oj§(param1:Number, param2:Number) : void
      {
         this.§_-UK§ = param1;
         this.§_-Ai§ = param2;
      }
      
      public function §_-XE§() : Boolean
      {
         b2internal::_-oB.SetAwake(true);
         b2internal::_-52.SetAwake(true);
         return this.§_-UZ§;
      }
      
      public function §_-aw§(param1:Boolean) : void
      {
         this.§_-UZ§ = param1;
      }
      
      public function §_-F5§(param1:Number) : void
      {
         b2internal::_-oB.SetAwake(true);
         b2internal::_-52.SetAwake(true);
         this.§_-kY§ = param1;
      }
      
      public function §_-ad§() : Number
      {
         return this.§_-kY§;
      }
      
      public function §_-LJ§(param1:Number) : void
      {
         this.§_-5c§ = param1;
      }
      
      public function §_-3k§() : Number
      {
         return this.§_-5c§;
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
         _loc2_ = b2internal::_-oB;
         _loc3_ = b2internal::_-52;
         if(this.§_-UZ§ || this.§_-Gy§)
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
         var _loc10_:Number = _loc2_.§_-zL§;
         var _loc11_:Number = _loc3_.§_-zL§;
         var _loc12_:Number = _loc2_.§_-aJ§;
         var _loc13_:Number = _loc3_.§_-aJ§;
         this.§_-5y§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-5y§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-5y§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-5y§.col1.y = this.§_-5y§.col2.x;
         this.§_-5y§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-5y§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-5y§.col1.z = this.§_-5y§.col3.x;
         this.§_-5y§.col2.z = this.§_-5y§.col3.y;
         this.§_-5y§.col3.z = _loc12_ + _loc13_;
         this.§_-jK§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-UZ§ == false)
         {
            this.§_-O7§ = 0;
         }
         if(this.§_-Gy§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-Kq§;
            if(b2Math.§_-hI§(this.§_-Ai§ - this.§_-UK§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-x§ = b2internal::_-wp;
            }
            else if(_loc14_ <= this.§_-UK§)
            {
               if(this.§_-x§ != b2internal::_-t2)
               {
                  this.§_-Ud§.z = 0;
               }
               this.§_-x§ = b2internal::_-t2;
            }
            else if(_loc14_ >= this.§_-Ai§)
            {
               if(this.§_-x§ != b2internal::_-v7)
               {
                  this.§_-Ud§.z = 0;
               }
               this.§_-x§ = b2internal::_-v7;
            }
            else
            {
               this.§_-x§ = b2internal::_-S8;
               this.§_-Ud§.z = 0;
            }
         }
         else
         {
            this.§_-x§ = b2internal::_-S8;
         }
         if(param1.§_-eH§)
         {
            this.§_-Ud§.x *= param1.§_-na§;
            this.§_-Ud§.y *= param1.§_-na§;
            this.§_-O7§ *= param1.§_-na§;
            _loc15_ = this.§_-Ud§.x;
            _loc16_ = this.§_-Ud§.y;
            _loc2_.§_-Yd§.x -= _loc10_ * _loc15_;
            _loc2_.§_-Yd§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-O7§ + this.§_-Ud§.z);
            _loc3_.§_-Yd§.x += _loc11_ * _loc15_;
            _loc3_.§_-Yd§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-O7§ + this.§_-Ud§.z);
         }
         else
         {
            this.§_-Ud§.§return§();
            this.§_-O7§ = 0;
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
         var _loc2_:b2Body = b2internal::_-oB;
         var _loc3_:b2Body = b2internal::_-52;
         var _loc11_:b2Vec2 = _loc2_.§_-Yd§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-Yd§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-zL§;
         var _loc16_:Number = _loc3_.§_-zL§;
         var _loc17_:Number = _loc2_.§_-aJ§;
         var _loc18_:Number = _loc3_.§_-aJ§;
         if(this.§_-UZ§ && this.§_-x§ != b2internal::_-wp)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-kY§;
            _loc20_ = this.§_-jK§ * -_loc19_;
            _loc21_ = this.§_-O7§;
            _loc22_ = param1.§_-Km§ * this.§_-5c§;
            this.§_-O7§ = b2Math.§_-a4§(this.§_-O7§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-O7§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-Gy§ && this.§_-x§ != b2internal::_-S8)
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
            this.§_-5y§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-x§ == b2internal::_-wp)
            {
               this.§_-Ud§.§_-vL§(this.impulse3);
            }
            else if(this.§_-x§ == b2internal::_-t2)
            {
               if((_loc6_ = this.§_-Ud§.z + this.impulse3.z) < 0)
               {
                  this.§_-5y§.Solve22(this.§_-hx§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-hx§.x;
                  this.impulse3.y = this.§_-hx§.y;
                  this.impulse3.z = -this.§_-Ud§.z;
                  this.§_-Ud§.x += this.§_-hx§.x;
                  this.§_-Ud§.y += this.§_-hx§.y;
                  this.§_-Ud§.z = 0;
               }
            }
            else if(this.§_-x§ == b2internal::_-v7)
            {
               if((_loc6_ = this.§_-Ud§.z + this.impulse3.z) > 0)
               {
                  this.§_-5y§.Solve22(this.§_-hx§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-hx§.x;
                  this.impulse3.y = this.§_-hx§.y;
                  this.impulse3.z = -this.§_-Ud§.z;
                  this.§_-Ud§.x += this.§_-hx§.x;
                  this.§_-Ud§.y += this.§_-hx§.y;
                  this.§_-Ud§.z = 0;
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
            this.§_-5y§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-Ud§.x += this.impulse2.x;
            this.§_-Ud§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-Yd§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-Yd§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-oB;
         var _loc6_:b2Body = b2internal::_-52;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-Gy§ && this.§_-x§ != b2internal::_-S8)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-Kq§;
            _loc26_ = 0;
            if(this.§_-x§ == b2internal::_-wp)
            {
               _loc3_ = b2Math.§_-a4§(_loc25_ - this.§_-UK§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-jK§ * _loc3_;
               _loc7_ = b2Math.§_-hI§(_loc3_);
            }
            else if(this.§_-x§ == b2internal::_-t2)
            {
               _loc3_ = _loc25_ - this.§_-UK§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-a4§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-jK§ * _loc3_;
            }
            else if(this.§_-x§ == b2internal::_-v7)
            {
               _loc3_ = _loc25_ - this.§_-Ai§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-a4§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-jK§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-aJ§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-aJ§ * _loc26_;
            _loc5_.§_-X2§();
            _loc6_.§_-X2§();
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
         var _loc20_:Number = _loc5_.§_-zL§;
         var _loc21_:Number = _loc6_.§_-zL§;
         var _loc22_:Number = _loc5_.§_-aJ§;
         var _loc23_:Number = _loc6_.§_-aJ§;
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
         this.§_-cH§.§_-QN§(this.K1);
         this.§_-cH§.§_-Fj§(this.K2);
         this.§_-cH§.§_-Fj§(this.K3);
         this.§_-cH§.§_-O8§(§_-vt§,-_loc16_,-_loc17_);
         _loc10_ = §_-vt§.x;
         _loc11_ = §_-vt§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-zL§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-zL§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-aJ§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-zL§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-zL§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-aJ§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-X2§();
         _loc6_.§_-X2§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
