package §_-gy§
{
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2TimeStep;
   import §var§.b2Mat22;
   import §var§.b2Mat33;
   import §var§.b2Math;
   import §var§.b2Vec2;
   import §var§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-Hs§:b2Vec2 = new b2Vec2();
       
      
      private var §_-HX§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-mY§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §continue§:b2Vec3;
      
      private var §_-YX§:Number;
      
      private var §_-wV§:b2Mat33;
      
      private var §_-vQ§:Number;
      
      private var §_-Ti§:Boolean;
      
      private var §_-d1§:Number;
      
      private var §_-yt§:Number;
      
      private var §_-ig§:Boolean;
      
      private var §_-Te§:Number;
      
      private var §_-th§:Number;
      
      private var §_-Mt§:Number;
      
      private var §_-52§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-HX§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-mY§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§continue§ = new b2Vec3();
         this.§_-wV§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-3r§);
         this.m_localAnchor2.SetV(param1.§_-sR§);
         this.§_-Te§ = param1.§_-dt§;
         this.§continue§.§_-pR§();
         this.§_-YX§ = 0;
         this.§_-th§ = param1.§_-ct§;
         this.§_-Mt§ = param1.§_-UP§;
         this.§_-d1§ = param1.§_-1C§;
         this.§_-yt§ = param1.motorSpeed;
         this.§_-ig§ = param1.§_-yk§;
         this.§_-Ti§ = param1.§_-ff§;
         this.§_-52§ = b2internal::_-9a;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-do.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-Zw.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§continue§.x,param1 * this.§continue§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§continue§.z;
      }
      
      public function §_-ND§() : Number
      {
         return b2internal::_-Zw.m_sweep.a - b2internal::_-do.m_sweep.a - this.§_-Te§;
      }
      
      public function §_-LE§() : Number
      {
         return b2internal::_-Zw.m_angularVelocity - b2internal::_-do.m_angularVelocity;
      }
      
      public function §_-nu§() : Boolean
      {
         return this.§_-ig§;
      }
      
      public function §_-B7§(param1:Boolean) : void
      {
         this.§_-ig§ = param1;
      }
      
      public function §_-89§() : Number
      {
         return this.§_-th§;
      }
      
      public function §_-km§() : Number
      {
         return this.§_-Mt§;
      }
      
      public function §_-qX§(param1:Number, param2:Number) : void
      {
         this.§_-th§ = param1;
         this.§_-Mt§ = param2;
      }
      
      public function §_-os§() : Boolean
      {
         b2internal::_-do.SetAwake(true);
         b2internal::_-Zw.SetAwake(true);
         return this.§_-Ti§;
      }
      
      public function §_-5Z§(param1:Boolean) : void
      {
         this.§_-Ti§ = param1;
      }
      
      public function § true§(param1:Number) : void
      {
         b2internal::_-do.SetAwake(true);
         b2internal::_-Zw.SetAwake(true);
         this.§_-yt§ = param1;
      }
      
      public function §_-nR§() : Number
      {
         return this.§_-yt§;
      }
      
      public function §_-6z§(param1:Number) : void
      {
         this.§_-d1§ = param1;
      }
      
      public function §_-RR§() : Number
      {
         return this.§_-d1§;
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
         _loc2_ = b2internal::_-do;
         _loc3_ = b2internal::_-Zw;
         if(this.§_-Ti§ || this.§_-ig§)
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
         var _loc10_:Number = _loc2_.§_-Af§;
         var _loc11_:Number = _loc3_.§_-Af§;
         var _loc12_:Number = _loc2_.§_-Yq§;
         var _loc13_:Number = _loc3_.§_-Yq§;
         this.§_-wV§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-wV§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-wV§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-wV§.col1.y = this.§_-wV§.col2.x;
         this.§_-wV§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-wV§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-wV§.col1.z = this.§_-wV§.col3.x;
         this.§_-wV§.col2.z = this.§_-wV§.col3.y;
         this.§_-wV§.col3.z = _loc12_ + _loc13_;
         this.§_-vQ§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-Ti§ == false)
         {
            this.§_-YX§ = 0;
         }
         if(this.§_-ig§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-Te§;
            if(b2Math.§_-PB§(this.§_-Mt§ - this.§_-th§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-52§ = b2internal::_-Lt;
            }
            else if(_loc14_ <= this.§_-th§)
            {
               if(this.§_-52§ != b2internal::_-R7)
               {
                  this.§continue§.z = 0;
               }
               this.§_-52§ = b2internal::_-R7;
            }
            else if(_loc14_ >= this.§_-Mt§)
            {
               if(this.§_-52§ != b2internal::_-v4)
               {
                  this.§continue§.z = 0;
               }
               this.§_-52§ = b2internal::_-v4;
            }
            else
            {
               this.§_-52§ = b2internal::_-9a;
               this.§continue§.z = 0;
            }
         }
         else
         {
            this.§_-52§ = b2internal::_-9a;
         }
         if(param1.§_-bF§)
         {
            this.§continue§.x *= param1.§_-PA§;
            this.§continue§.y *= param1.§_-PA§;
            this.§_-YX§ *= param1.§_-PA§;
            _loc15_ = this.§continue§.x;
            _loc16_ = this.§continue§.y;
            _loc2_.§_-dS§.x -= _loc10_ * _loc15_;
            _loc2_.§_-dS§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-YX§ + this.§continue§.z);
            _loc3_.§_-dS§.x += _loc11_ * _loc15_;
            _loc3_.§_-dS§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-YX§ + this.§continue§.z);
         }
         else
         {
            this.§continue§.§_-pR§();
            this.§_-YX§ = 0;
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
         var _loc2_:b2Body = b2internal::_-do;
         var _loc3_:b2Body = b2internal::_-Zw;
         var _loc11_:b2Vec2 = _loc2_.§_-dS§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-dS§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-Af§;
         var _loc16_:Number = _loc3_.§_-Af§;
         var _loc17_:Number = _loc2_.§_-Yq§;
         var _loc18_:Number = _loc3_.§_-Yq§;
         if(this.§_-Ti§ && this.§_-52§ != b2internal::_-Lt)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-yt§;
            _loc20_ = this.§_-vQ§ * -_loc19_;
            _loc21_ = this.§_-YX§;
            _loc22_ = param1.§_-sn§ * this.§_-d1§;
            this.§_-YX§ = b2Math.§_-vw§(this.§_-YX§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-YX§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-ig§ && this.§_-52§ != b2internal::_-9a)
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
            this.§_-wV§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-52§ == b2internal::_-Lt)
            {
               this.§continue§.§default§(this.impulse3);
            }
            else if(this.§_-52§ == b2internal::_-R7)
            {
               if((_loc6_ = this.§continue§.z + this.impulse3.z) < 0)
               {
                  this.§_-wV§.Solve22(this.§_-mY§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-mY§.x;
                  this.impulse3.y = this.§_-mY§.y;
                  this.impulse3.z = -this.§continue§.z;
                  this.§continue§.x += this.§_-mY§.x;
                  this.§continue§.y += this.§_-mY§.y;
                  this.§continue§.z = 0;
               }
            }
            else if(this.§_-52§ == b2internal::_-v4)
            {
               if((_loc6_ = this.§continue§.z + this.impulse3.z) > 0)
               {
                  this.§_-wV§.Solve22(this.§_-mY§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-mY§.x;
                  this.impulse3.y = this.§_-mY§.y;
                  this.impulse3.z = -this.§continue§.z;
                  this.§continue§.x += this.§_-mY§.x;
                  this.§continue§.y += this.§_-mY§.y;
                  this.§continue§.z = 0;
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
            this.§_-wV§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§continue§.x += this.impulse2.x;
            this.§continue§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-dS§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-dS§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-do;
         var _loc6_:b2Body = b2internal::_-Zw;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-ig§ && this.§_-52§ != b2internal::_-9a)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-Te§;
            _loc26_ = 0;
            if(this.§_-52§ == b2internal::_-Lt)
            {
               _loc3_ = b2Math.§_-vw§(_loc25_ - this.§_-th§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-vQ§ * _loc3_;
               _loc7_ = b2Math.§_-PB§(_loc3_);
            }
            else if(this.§_-52§ == b2internal::_-R7)
            {
               _loc3_ = _loc25_ - this.§_-th§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-vw§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-vQ§ * _loc3_;
            }
            else if(this.§_-52§ == b2internal::_-v4)
            {
               _loc3_ = _loc25_ - this.§_-Mt§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-vw§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-vQ§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-Yq§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-Yq§ * _loc26_;
            _loc5_.§_-W0§();
            _loc6_.§_-W0§();
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
         var _loc20_:Number = _loc5_.§_-Af§;
         var _loc21_:Number = _loc6_.§_-Af§;
         var _loc22_:Number = _loc5_.§_-Yq§;
         var _loc23_:Number = _loc6_.§_-Yq§;
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
         this.§_-HX§.§_-rb§(this.K1);
         this.§_-HX§.§_-Ge§(this.K2);
         this.§_-HX§.§_-Ge§(this.K3);
         this.§_-HX§.§_-Zy§(§_-Hs§,-_loc16_,-_loc17_);
         _loc10_ = §_-Hs§.x;
         _loc11_ = §_-Hs§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-Af§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-Af§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-Yq§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-Af§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-Af§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-Yq§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-W0§();
         _loc6_.§_-W0§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
