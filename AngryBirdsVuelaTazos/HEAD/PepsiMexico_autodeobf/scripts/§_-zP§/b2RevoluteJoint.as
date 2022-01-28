package §_-zP§
{
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Mat33;
   import §_-bA§.b2Math;
   import §_-bA§.b2Vec2;
   import §_-bA§.b2Vec3;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-Dl§:b2Vec2 = new b2Vec2();
       
      
      private var §_-Gb§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-O6§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-TZ§:b2Vec3;
      
      private var §_-ss§:Number;
      
      private var §_-aR§:b2Mat33;
      
      private var §_-Nr§:Number;
      
      private var §_-Td§:Boolean;
      
      private var §_-Uu§:Number;
      
      private var §_-qu§:Number;
      
      private var §_-KD§:Boolean;
      
      private var §_-I0§:Number;
      
      private var §_-bW§:Number;
      
      private var §_-X-§:Number;
      
      private var §_-l-§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-Gb§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-O6§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-TZ§ = new b2Vec3();
         this.§_-aR§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Ys§);
         this.m_localAnchor2.SetV(param1.§_-8p§);
         this.§_-I0§ = param1.§_-51§;
         this.§_-TZ§.§_-qi§();
         this.§_-ss§ = 0;
         this.§_-bW§ = param1.§_-nU§;
         this.§_-X-§ = param1.§_-4o§;
         this.§_-Uu§ = param1.§_-bd§;
         this.§_-qu§ = param1.motorSpeed;
         this.§_-KD§ = param1.§_-LR§;
         this.§_-Td§ = param1.§_-FI§;
         this.§_-l-§ = b2internal::_-bn;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Vj.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qa.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TZ§.x,param1 * this.§_-TZ§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-TZ§.z;
      }
      
      public function §_-80§() : Number
      {
         return b2internal::_-qa.m_sweep.a - b2internal::_-Vj.m_sweep.a - this.§_-I0§;
      }
      
      public function §_-dc§() : Number
      {
         return b2internal::_-qa.m_angularVelocity - b2internal::_-Vj.m_angularVelocity;
      }
      
      public function §_-oU§() : Boolean
      {
         return this.§_-KD§;
      }
      
      public function §_-f§(param1:Boolean) : void
      {
         this.§_-KD§ = param1;
      }
      
      public function §_-zj§() : Number
      {
         return this.§_-bW§;
      }
      
      public function §_-jd§() : Number
      {
         return this.§_-X-§;
      }
      
      public function §_-JY§(param1:Number, param2:Number) : void
      {
         this.§_-bW§ = param1;
         this.§_-X-§ = param2;
      }
      
      public function §_-7o§() : Boolean
      {
         b2internal::_-Vj.SetAwake(true);
         b2internal::_-qa.SetAwake(true);
         return this.§_-Td§;
      }
      
      public function §_-79§(param1:Boolean) : void
      {
         this.§_-Td§ = param1;
      }
      
      public function §_-24§(param1:Number) : void
      {
         b2internal::_-Vj.SetAwake(true);
         b2internal::_-qa.SetAwake(true);
         this.§_-qu§ = param1;
      }
      
      public function §_-4B§() : Number
      {
         return this.§_-qu§;
      }
      
      public function §_-Ng§(param1:Number) : void
      {
         this.§_-Uu§ = param1;
      }
      
      public function §_-lf§() : Number
      {
         return this.§_-Uu§;
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
         _loc2_ = b2internal::_-Vj;
         _loc3_ = b2internal::_-qa;
         if(this.§_-Td§ || this.§_-KD§)
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
         var _loc10_:Number = _loc2_.§_-Wd§;
         var _loc11_:Number = _loc3_.§_-Wd§;
         var _loc12_:Number = _loc2_.§_-Ox§;
         var _loc13_:Number = _loc3_.§_-Ox§;
         this.§_-aR§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-aR§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-aR§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-aR§.col1.y = this.§_-aR§.col2.x;
         this.§_-aR§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-aR§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-aR§.col1.z = this.§_-aR§.col3.x;
         this.§_-aR§.col2.z = this.§_-aR§.col3.y;
         this.§_-aR§.col3.z = _loc12_ + _loc13_;
         this.§_-Nr§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-Td§ == false)
         {
            this.§_-ss§ = 0;
         }
         if(this.§_-KD§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-I0§;
            if(b2Math.§_-30§(this.§_-X-§ - this.§_-bW§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-l-§ = b2internal::_-SD;
            }
            else if(_loc14_ <= this.§_-bW§)
            {
               if(this.§_-l-§ != b2internal::_-3O)
               {
                  this.§_-TZ§.z = 0;
               }
               this.§_-l-§ = b2internal::_-3O;
            }
            else if(_loc14_ >= this.§_-X-§)
            {
               if(this.§_-l-§ != b2internal::_-3x)
               {
                  this.§_-TZ§.z = 0;
               }
               this.§_-l-§ = b2internal::_-3x;
            }
            else
            {
               this.§_-l-§ = b2internal::_-bn;
               this.§_-TZ§.z = 0;
            }
         }
         else
         {
            this.§_-l-§ = b2internal::_-bn;
         }
         if(param1.§_-uU§)
         {
            this.§_-TZ§.x *= param1.§_-D§;
            this.§_-TZ§.y *= param1.§_-D§;
            this.§_-ss§ *= param1.§_-D§;
            _loc15_ = this.§_-TZ§.x;
            _loc16_ = this.§_-TZ§.y;
            _loc2_.§_-At§.x -= _loc10_ * _loc15_;
            _loc2_.§_-At§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-ss§ + this.§_-TZ§.z);
            _loc3_.§_-At§.x += _loc11_ * _loc15_;
            _loc3_.§_-At§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-ss§ + this.§_-TZ§.z);
         }
         else
         {
            this.§_-TZ§.§_-qi§();
            this.§_-ss§ = 0;
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
         var _loc2_:b2Body = b2internal::_-Vj;
         var _loc3_:b2Body = b2internal::_-qa;
         var _loc11_:b2Vec2 = _loc2_.§_-At§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-At§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-Wd§;
         var _loc16_:Number = _loc3_.§_-Wd§;
         var _loc17_:Number = _loc2_.§_-Ox§;
         var _loc18_:Number = _loc3_.§_-Ox§;
         if(this.§_-Td§ && this.§_-l-§ != b2internal::_-SD)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-qu§;
            _loc20_ = this.§_-Nr§ * -_loc19_;
            _loc21_ = this.§_-ss§;
            _loc22_ = param1.§_-Qf§ * this.§_-Uu§;
            this.§_-ss§ = b2Math.§_-rr§(this.§_-ss§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-ss§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-KD§ && this.§_-l-§ != b2internal::_-bn)
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
            this.§_-aR§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-l-§ == b2internal::_-SD)
            {
               this.§_-TZ§.§_-B8§(this.impulse3);
            }
            else if(this.§_-l-§ == b2internal::_-3O)
            {
               if((_loc6_ = this.§_-TZ§.z + this.impulse3.z) < 0)
               {
                  this.§_-aR§.Solve22(this.§_-O6§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-O6§.x;
                  this.impulse3.y = this.§_-O6§.y;
                  this.impulse3.z = -this.§_-TZ§.z;
                  this.§_-TZ§.x += this.§_-O6§.x;
                  this.§_-TZ§.y += this.§_-O6§.y;
                  this.§_-TZ§.z = 0;
               }
            }
            else if(this.§_-l-§ == b2internal::_-3x)
            {
               if((_loc6_ = this.§_-TZ§.z + this.impulse3.z) > 0)
               {
                  this.§_-aR§.Solve22(this.§_-O6§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-O6§.x;
                  this.impulse3.y = this.§_-O6§.y;
                  this.impulse3.z = -this.§_-TZ§.z;
                  this.§_-TZ§.x += this.§_-O6§.x;
                  this.§_-TZ§.y += this.§_-O6§.y;
                  this.§_-TZ§.z = 0;
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
            this.§_-aR§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-TZ§.x += this.impulse2.x;
            this.§_-TZ§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-At§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-At§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-Vj;
         var _loc6_:b2Body = b2internal::_-qa;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-KD§ && this.§_-l-§ != b2internal::_-bn)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-I0§;
            _loc26_ = 0;
            if(this.§_-l-§ == b2internal::_-SD)
            {
               _loc3_ = b2Math.§_-rr§(_loc25_ - this.§_-bW§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-Nr§ * _loc3_;
               _loc7_ = b2Math.§_-30§(_loc3_);
            }
            else if(this.§_-l-§ == b2internal::_-3O)
            {
               _loc3_ = _loc25_ - this.§_-bW§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-rr§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-Nr§ * _loc3_;
            }
            else if(this.§_-l-§ == b2internal::_-3x)
            {
               _loc3_ = _loc25_ - this.§_-X-§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-rr§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-Nr§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-Ox§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-Ox§ * _loc26_;
            _loc5_.§_-I5§();
            _loc6_.§_-I5§();
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
         var _loc16_:Number = _loc6_.m_sweep.§_-Zh§.x + _loc14_ - _loc5_.m_sweep.§_-Zh§.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.§_-Zh§.y + _loc15_ - _loc5_.m_sweep.§_-Zh§.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§_-Wd§;
         var _loc21_:Number = _loc6_.§_-Wd§;
         var _loc22_:Number = _loc5_.§_-Ox§;
         var _loc23_:Number = _loc6_.§_-Ox§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.§_-Zh§.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.§_-Zh§.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.§_-Zh§.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.§_-Zh§.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.§_-Zh§.x + _loc14_ - _loc5_.m_sweep.§_-Zh§.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.§_-Zh§.y + _loc15_ - _loc5_.m_sweep.§_-Zh§.y - _loc13_;
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
         this.§_-Gb§.§_-zL§(this.K1);
         this.§_-Gb§.§_-ae§(this.K2);
         this.§_-Gb§.§_-ae§(this.K3);
         this.§_-Gb§.§_-TD§(§_-Dl§,-_loc16_,-_loc17_);
         _loc10_ = §_-Dl§.x;
         _loc11_ = §_-Dl§.y;
         _loc5_.m_sweep.§_-Zh§.x -= _loc5_.§_-Wd§ * _loc10_;
         _loc5_.m_sweep.§_-Zh§.y -= _loc5_.§_-Wd§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-Ox§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.§_-Zh§.x += _loc6_.§_-Wd§ * _loc10_;
         _loc6_.m_sweep.§_-Zh§.y += _loc6_.§_-Wd§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-Ox§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-I5§();
         _loc6_.§_-I5§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
