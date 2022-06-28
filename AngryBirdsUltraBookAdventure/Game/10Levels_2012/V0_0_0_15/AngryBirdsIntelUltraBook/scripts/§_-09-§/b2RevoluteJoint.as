package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Mat33;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-Yp§.b2Vec3;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-0EI§:b2Vec2 = new b2Vec2();
       
      
      private var §_-2d§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-Ra§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-MK§:b2Vec3;
      
      private var §_-j§:Number;
      
      private var §_-5W§:b2Mat33;
      
      private var §_-04m§:Number;
      
      private var §_-sv§:Boolean;
      
      private var §_-oZ§:Number;
      
      private var §_-09I§:Number;
      
      private var §_-E5§:Boolean;
      
      private var §_-nt§:Number;
      
      private var §_-0B8§:Number;
      
      private var §_-05x§:Number;
      
      private var §_-Vb§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-2d§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-Ra§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-MK§ = new b2Vec3();
         this.§_-5W§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-F6§);
         this.m_localAnchor2.SetV(param1.§_-0Bf§);
         this.§_-nt§ = param1.§_-IW§;
         this.§_-MK§.§_-el§();
         this.§_-j§ = 0;
         this.§_-0B8§ = param1.§_-Ch§;
         this.§_-05x§ = param1.§_-KH§;
         this.§_-oZ§ = param1.§_-dv§;
         this.§_-09I§ = param1.motorSpeed;
         this.§_-E5§ = param1.§_-6W§;
         this.§_-sv§ = param1.§_-1g§;
         this.§_-Vb§ = b2internal::_-019;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-MK§.x,param1 * this.§_-MK§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-MK§.z;
      }
      
      public function §_-yj§() : Number
      {
         return b2internal::_-c9.m_sweep.a - b2internal::_-0FB.m_sweep.a - this.§_-nt§;
      }
      
      public function §_-bV§() : Number
      {
         return b2internal::_-c9.m_angularVelocity - b2internal::_-0FB.m_angularVelocity;
      }
      
      public function §_-sE§() : Boolean
      {
         return this.§_-E5§;
      }
      
      public function §_-6P§(param1:Boolean) : void
      {
         this.§_-E5§ = param1;
      }
      
      public function §_-IV§() : Number
      {
         return this.§_-0B8§;
      }
      
      public function §_-7W§() : Number
      {
         return this.§_-05x§;
      }
      
      public function §_-Hl§(param1:Number, param2:Number) : void
      {
         this.§_-0B8§ = param1;
         this.§_-05x§ = param2;
      }
      
      public function §_-FT§() : Boolean
      {
         b2internal::_-0FB.SetAwake(true);
         b2internal::_-c9.SetAwake(true);
         return this.§_-sv§;
      }
      
      public function §_-060§(param1:Boolean) : void
      {
         this.§_-sv§ = param1;
      }
      
      public function §_-02d§(param1:Number) : void
      {
         b2internal::_-0FB.SetAwake(true);
         b2internal::_-c9.SetAwake(true);
         this.§_-09I§ = param1;
      }
      
      public function §_-be§() : Number
      {
         return this.§_-09I§;
      }
      
      public function §_-jK§(param1:Number) : void
      {
         this.§_-oZ§ = param1;
      }
      
      public function §_-R9§() : Number
      {
         return this.§_-oZ§;
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
         _loc2_ = b2internal::_-0FB;
         _loc3_ = b2internal::_-c9;
         if(this.§_-sv§ || this.§_-E5§)
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
         var _loc10_:Number = _loc2_.§_-03A§;
         var _loc11_:Number = _loc3_.§_-03A§;
         var _loc12_:Number = _loc2_.§_-Dz§;
         var _loc13_:Number = _loc3_.§_-Dz§;
         this.§_-5W§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-5W§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-5W§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-5W§.col1.y = this.§_-5W§.col2.x;
         this.§_-5W§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-5W§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-5W§.col1.z = this.§_-5W§.col3.x;
         this.§_-5W§.col2.z = this.§_-5W§.col3.y;
         this.§_-5W§.col3.z = _loc12_ + _loc13_;
         this.§_-04m§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-sv§ == false)
         {
            this.§_-j§ = 0;
         }
         if(this.§_-E5§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-nt§;
            if(b2Math.§_-010§(this.§_-05x§ - this.§_-0B8§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-Vb§ = b2internal::_-z3;
            }
            else if(_loc14_ <= this.§_-0B8§)
            {
               if(this.§_-Vb§ != b2internal::_-D3)
               {
                  this.§_-MK§.z = 0;
               }
               this.§_-Vb§ = b2internal::_-D3;
            }
            else if(_loc14_ >= this.§_-05x§)
            {
               if(this.§_-Vb§ != b2internal::_-Z5)
               {
                  this.§_-MK§.z = 0;
               }
               this.§_-Vb§ = b2internal::_-Z5;
            }
            else
            {
               this.§_-Vb§ = b2internal::_-019;
               this.§_-MK§.z = 0;
            }
         }
         else
         {
            this.§_-Vb§ = b2internal::_-019;
         }
         if(param1.§_-0F7§)
         {
            this.§_-MK§.x *= param1.§_-b8§;
            this.§_-MK§.y *= param1.§_-b8§;
            this.§_-j§ *= param1.§_-b8§;
            _loc15_ = this.§_-MK§.x;
            _loc16_ = this.§_-MK§.y;
            _loc2_.§_-kZ§.x -= _loc10_ * _loc15_;
            _loc2_.§_-kZ§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-j§ + this.§_-MK§.z);
            _loc3_.§_-kZ§.x += _loc11_ * _loc15_;
            _loc3_.§_-kZ§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-j§ + this.§_-MK§.z);
         }
         else
         {
            this.§_-MK§.§_-el§();
            this.§_-j§ = 0;
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
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         var _loc11_:b2Vec2 = _loc2_.§_-kZ§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-kZ§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-03A§;
         var _loc16_:Number = _loc3_.§_-03A§;
         var _loc17_:Number = _loc2_.§_-Dz§;
         var _loc18_:Number = _loc3_.§_-Dz§;
         if(this.§_-sv§ && this.§_-Vb§ != b2internal::_-z3)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-09I§;
            _loc20_ = this.§_-04m§ * -_loc19_;
            _loc21_ = this.§_-j§;
            _loc22_ = param1.§_-pn§ * this.§_-oZ§;
            this.§_-j§ = b2Math.§_-ZK§(this.§_-j§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-j§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-E5§ && this.§_-Vb§ != b2internal::_-019)
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
            this.§_-5W§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-Vb§ == b2internal::_-z3)
            {
               this.§_-MK§.§_-M6§(this.impulse3);
            }
            else if(this.§_-Vb§ == b2internal::_-D3)
            {
               if((_loc6_ = this.§_-MK§.z + this.impulse3.z) < 0)
               {
                  this.§_-5W§.Solve22(this.§_-Ra§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-Ra§.x;
                  this.impulse3.y = this.§_-Ra§.y;
                  this.impulse3.z = -this.§_-MK§.z;
                  this.§_-MK§.x += this.§_-Ra§.x;
                  this.§_-MK§.y += this.§_-Ra§.y;
                  this.§_-MK§.z = 0;
               }
            }
            else if(this.§_-Vb§ == b2internal::_-Z5)
            {
               if((_loc6_ = this.§_-MK§.z + this.impulse3.z) > 0)
               {
                  this.§_-5W§.Solve22(this.§_-Ra§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-Ra§.x;
                  this.impulse3.y = this.§_-Ra§.y;
                  this.impulse3.z = -this.§_-MK§.z;
                  this.§_-MK§.x += this.§_-Ra§.x;
                  this.§_-MK§.y += this.§_-Ra§.y;
                  this.§_-MK§.z = 0;
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
            this.§_-5W§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-MK§.x += this.impulse2.x;
            this.§_-MK§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-kZ§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-kZ§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-0FB;
         var _loc6_:b2Body = b2internal::_-c9;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-E5§ && this.§_-Vb§ != b2internal::_-019)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-nt§;
            _loc26_ = 0;
            if(this.§_-Vb§ == b2internal::_-z3)
            {
               _loc3_ = b2Math.§_-ZK§(_loc25_ - this.§_-0B8§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-04m§ * _loc3_;
               _loc7_ = b2Math.§_-010§(_loc3_);
            }
            else if(this.§_-Vb§ == b2internal::_-D3)
            {
               _loc3_ = _loc25_ - this.§_-0B8§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-ZK§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-04m§ * _loc3_;
            }
            else if(this.§_-Vb§ == b2internal::_-Z5)
            {
               _loc3_ = _loc25_ - this.§_-05x§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-ZK§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-04m§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-Dz§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-Dz§ * _loc26_;
            _loc5_.§_-da§();
            _loc6_.§_-da§();
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
         var _loc20_:Number = _loc5_.§_-03A§;
         var _loc21_:Number = _loc6_.§_-03A§;
         var _loc22_:Number = _loc5_.§_-Dz§;
         var _loc23_:Number = _loc6_.§_-Dz§;
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
         this.§_-2d§.§_-tP§(this.K1);
         this.§_-2d§.§_-a3§(this.K2);
         this.§_-2d§.§_-a3§(this.K3);
         this.§_-2d§.§_-NQ§(§_-0EI§,-_loc16_,-_loc17_);
         _loc10_ = §_-0EI§.x;
         _loc11_ = §_-0EI§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-03A§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-03A§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-Dz§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-03A§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-03A§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-Dz§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-da§();
         _loc6_.§_-da§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
