package §const§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cP§.b2Mat22;
   import §_-cP§.b2Mat33;
   import §_-cP§.b2Math;
   import §_-cP§.b2Vec2;
   import §_-cP§.b2Vec3;
   import §try§.b2Body;
   import §try§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-er§:b2Vec2 = new b2Vec2();
       
      
      private var §_-eQ§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-xX§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-gD§:b2Vec3;
      
      private var §_-4-§:Number;
      
      private var §_-p4§:b2Mat33;
      
      private var §_-WQ§:Number;
      
      private var §_-eb§:Boolean;
      
      private var §_-4d§:Number;
      
      private var §_-1L§:Number;
      
      private var §_-8L§:Boolean;
      
      private var §_-P4§:Number;
      
      private var §_-50§:Number;
      
      private var §_-bM§:Number;
      
      private var §_-ly§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-eQ§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-xX§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-gD§ = new b2Vec3();
         this.§_-p4§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Vd§);
         this.m_localAnchor2.SetV(param1.§_-j3§);
         this.§_-P4§ = param1.§_-hs§;
         this.§_-gD§.§_-WO§();
         this.§_-4-§ = 0;
         this.§_-50§ = param1.§ in§;
         this.§_-bM§ = param1.§_-uu§;
         this.§_-4d§ = param1.§_-dA§;
         this.§_-1L§ = param1.motorSpeed;
         this.§_-8L§ = param1.§_-XG§;
         this.§_-eb§ = param1.§_-uC§;
         this.§_-ly§ = b2internal::_-Qy;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Jb.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-RO.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-gD§.x,param1 * this.§_-gD§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-gD§.z;
      }
      
      public function §_-2a§() : Number
      {
         return b2internal::_-RO.m_sweep.a - b2internal::_-Jb.m_sweep.a - this.§_-P4§;
      }
      
      public function §_-iZ§() : Number
      {
         return b2internal::_-RO.m_angularVelocity - b2internal::_-Jb.m_angularVelocity;
      }
      
      public function §_-I2§() : Boolean
      {
         return this.§_-8L§;
      }
      
      public function §_-3b§(param1:Boolean) : void
      {
         this.§_-8L§ = param1;
      }
      
      public function §_-C7§() : Number
      {
         return this.§_-50§;
      }
      
      public function §_-nr§() : Number
      {
         return this.§_-bM§;
      }
      
      public function §_-Rq§(param1:Number, param2:Number) : void
      {
         this.§_-50§ = param1;
         this.§_-bM§ = param2;
      }
      
      public function §_-0-N§() : Boolean
      {
         b2internal::_-Jb.SetAwake(true);
         b2internal::_-RO.SetAwake(true);
         return this.§_-eb§;
      }
      
      public function §_-j5§(param1:Boolean) : void
      {
         this.§_-eb§ = param1;
      }
      
      public function §_-b7§(param1:Number) : void
      {
         b2internal::_-Jb.SetAwake(true);
         b2internal::_-RO.SetAwake(true);
         this.§_-1L§ = param1;
      }
      
      public function §_-oa§() : Number
      {
         return this.§_-1L§;
      }
      
      public function §_-Z§(param1:Number) : void
      {
         this.§_-4d§ = param1;
      }
      
      public function §_-IS§() : Number
      {
         return this.§_-4d§;
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
         _loc2_ = b2internal::_-Jb;
         _loc3_ = b2internal::_-RO;
         if(this.§_-eb§ || this.§_-8L§)
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
         var _loc10_:Number = _loc2_.§_-hk§;
         var _loc11_:Number = _loc3_.§_-hk§;
         var _loc12_:Number = _loc2_.§_-LF§;
         var _loc13_:Number = _loc3_.§_-LF§;
         this.§_-p4§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-p4§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-p4§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-p4§.col1.y = this.§_-p4§.col2.x;
         this.§_-p4§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-p4§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-p4§.col1.z = this.§_-p4§.col3.x;
         this.§_-p4§.col2.z = this.§_-p4§.col3.y;
         this.§_-p4§.col3.z = _loc12_ + _loc13_;
         this.§_-WQ§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-eb§ == false)
         {
            this.§_-4-§ = 0;
         }
         if(this.§_-8L§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-P4§;
            if(b2Math.§_-5C§(this.§_-bM§ - this.§_-50§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-ly§ = b2internal::get;
            }
            else if(_loc14_ <= this.§_-50§)
            {
               if(this.§_-ly§ != b2internal::_-yU)
               {
                  this.§_-gD§.z = 0;
               }
               this.§_-ly§ = b2internal::_-yU;
            }
            else if(_loc14_ >= this.§_-bM§)
            {
               if(this.§_-ly§ != b2internal::_-mY)
               {
                  this.§_-gD§.z = 0;
               }
               this.§_-ly§ = b2internal::_-mY;
            }
            else
            {
               this.§_-ly§ = b2internal::_-Qy;
               this.§_-gD§.z = 0;
            }
         }
         else
         {
            this.§_-ly§ = b2internal::_-Qy;
         }
         if(param1.§_-0X§)
         {
            this.§_-gD§.x *= param1.§_-Mu§;
            this.§_-gD§.y *= param1.§_-Mu§;
            this.§_-4-§ *= param1.§_-Mu§;
            _loc15_ = this.§_-gD§.x;
            _loc16_ = this.§_-gD§.y;
            _loc2_.§_-PK§.x -= _loc10_ * _loc15_;
            _loc2_.§_-PK§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-4-§ + this.§_-gD§.z);
            _loc3_.§_-PK§.x += _loc11_ * _loc15_;
            _loc3_.§_-PK§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-4-§ + this.§_-gD§.z);
         }
         else
         {
            this.§_-gD§.§_-WO§();
            this.§_-4-§ = 0;
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
         var _loc2_:b2Body = b2internal::_-Jb;
         var _loc3_:b2Body = b2internal::_-RO;
         var _loc11_:b2Vec2 = _loc2_.§_-PK§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-PK§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-hk§;
         var _loc16_:Number = _loc3_.§_-hk§;
         var _loc17_:Number = _loc2_.§_-LF§;
         var _loc18_:Number = _loc3_.§_-LF§;
         if(this.§_-eb§ && this.§_-ly§ != b2internal::get)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-1L§;
            _loc20_ = this.§_-WQ§ * -_loc19_;
            _loc21_ = this.§_-4-§;
            _loc22_ = param1.§_-ec§ * this.§_-4d§;
            this.§_-4-§ = b2Math.§_-9P§(this.§_-4-§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-4-§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-8L§ && this.§_-ly§ != b2internal::_-Qy)
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
            this.§_-p4§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-ly§ == b2internal::get)
            {
               this.§_-gD§.§_-db§(this.impulse3);
            }
            else if(this.§_-ly§ == b2internal::_-yU)
            {
               if((_loc6_ = this.§_-gD§.z + this.impulse3.z) < 0)
               {
                  this.§_-p4§.Solve22(this.§_-xX§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-xX§.x;
                  this.impulse3.y = this.§_-xX§.y;
                  this.impulse3.z = -this.§_-gD§.z;
                  this.§_-gD§.x += this.§_-xX§.x;
                  this.§_-gD§.y += this.§_-xX§.y;
                  this.§_-gD§.z = 0;
               }
            }
            else if(this.§_-ly§ == b2internal::_-mY)
            {
               if((_loc6_ = this.§_-gD§.z + this.impulse3.z) > 0)
               {
                  this.§_-p4§.Solve22(this.§_-xX§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-xX§.x;
                  this.impulse3.y = this.§_-xX§.y;
                  this.impulse3.z = -this.§_-gD§.z;
                  this.§_-gD§.x += this.§_-xX§.x;
                  this.§_-gD§.y += this.§_-xX§.y;
                  this.§_-gD§.z = 0;
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
            this.§_-p4§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-gD§.x += this.impulse2.x;
            this.§_-gD§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-PK§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-PK§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-Jb;
         var _loc6_:b2Body = b2internal::_-RO;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-8L§ && this.§_-ly§ != b2internal::_-Qy)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-P4§;
            _loc26_ = 0;
            if(this.§_-ly§ == b2internal::get)
            {
               _loc3_ = b2Math.§_-9P§(_loc25_ - this.§_-50§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-WQ§ * _loc3_;
               _loc7_ = b2Math.§_-5C§(_loc3_);
            }
            else if(this.§_-ly§ == b2internal::_-yU)
            {
               _loc3_ = _loc25_ - this.§_-50§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-9P§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-WQ§ * _loc3_;
            }
            else if(this.§_-ly§ == b2internal::_-mY)
            {
               _loc3_ = _loc25_ - this.§_-bM§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-9P§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-WQ§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-LF§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-LF§ * _loc26_;
            _loc5_.§_-fH§();
            _loc6_.§_-fH§();
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
         var _loc16_:Number = _loc6_.m_sweep.§_-xQ§.x + _loc14_ - _loc5_.m_sweep.§_-xQ§.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.§_-xQ§.y + _loc15_ - _loc5_.m_sweep.§_-xQ§.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§_-hk§;
         var _loc21_:Number = _loc6_.§_-hk§;
         var _loc22_:Number = _loc5_.§_-LF§;
         var _loc23_:Number = _loc6_.§_-LF§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.§_-xQ§.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.§_-xQ§.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.§_-xQ§.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.§_-xQ§.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.§_-xQ§.x + _loc14_ - _loc5_.m_sweep.§_-xQ§.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.§_-xQ§.y + _loc15_ - _loc5_.m_sweep.§_-xQ§.y - _loc13_;
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
         this.§_-eQ§.§_-TY§(this.K1);
         this.§_-eQ§.§_-h-§(this.K2);
         this.§_-eQ§.§_-h-§(this.K3);
         this.§_-eQ§.§_-xM§(§_-er§,-_loc16_,-_loc17_);
         _loc10_ = §_-er§.x;
         _loc11_ = §_-er§.y;
         _loc5_.m_sweep.§_-xQ§.x -= _loc5_.§_-hk§ * _loc10_;
         _loc5_.m_sweep.§_-xQ§.y -= _loc5_.§_-hk§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-LF§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.§_-xQ§.x += _loc6_.§_-hk§ * _loc10_;
         _loc6_.m_sweep.§_-xQ§.y += _loc6_.§_-hk§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-LF§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-fH§();
         _loc6_.§_-fH§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
