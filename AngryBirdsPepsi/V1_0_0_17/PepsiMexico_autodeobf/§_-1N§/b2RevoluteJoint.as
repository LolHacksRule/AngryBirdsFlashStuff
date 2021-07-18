package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Mat33;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-Ja§.b2Vec3;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-5q§:b2Vec2 = new b2Vec2();
       
      
      private var §_-9s§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-1m§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-tN§:b2Vec3;
      
      private var §_-3k§:Number;
      
      private var §_-jI§:b2Mat33;
      
      private var §_-5w§:Number;
      
      private var §_-2a§:Boolean;
      
      private var §_-SW§:Number;
      
      private var §_-bm§:Number;
      
      private var §_-b9§:Boolean;
      
      private var §_-VS§:Number;
      
      private var §_-8G§:Number;
      
      private var §_-4e§:Number;
      
      private var §_-0L§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-9s§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-1m§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-tN§ = new b2Vec3();
         this.§_-jI§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Kz§);
         this.m_localAnchor2.SetV(param1.§_-Dq§);
         this.§_-VS§ = param1.§_-Lv§;
         this.§_-tN§.§_-0a§();
         this.§_-3k§ = 0;
         this.§_-8G§ = param1.§_-Mn§;
         this.§_-4e§ = param1.§_-VQ§;
         this.§_-SW§ = param1.§_-fo§;
         this.§_-bm§ = param1.motorSpeed;
         this.§_-b9§ = param1.§_-3J§;
         this.§_-2a§ = param1.§_-mY§;
         this.§_-0L§ = b2internal::_-vv;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-tN§.x,param1 * this.§_-tN§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-tN§.z;
      }
      
      public function §_-sv§() : Number
      {
         return b2internal::_-9K.m_sweep.a - b2internal::_-93.m_sweep.a - this.§_-VS§;
      }
      
      public function §_-A6§() : Number
      {
         return b2internal::_-9K.m_angularVelocity - b2internal::_-93.m_angularVelocity;
      }
      
      public function §_-qL§() : Boolean
      {
         return this.§_-b9§;
      }
      
      public function §_-M5§(param1:Boolean) : void
      {
         this.§_-b9§ = param1;
      }
      
      public function §_-3f§() : Number
      {
         return this.§_-8G§;
      }
      
      public function §_-LG§() : Number
      {
         return this.§_-4e§;
      }
      
      public function § get§(param1:Number, param2:Number) : void
      {
         this.§_-8G§ = param1;
         this.§_-4e§ = param2;
      }
      
      public function §_-ur§() : Boolean
      {
         b2internal::_-93.SetAwake(true);
         b2internal::_-9K.SetAwake(true);
         return this.§_-2a§;
      }
      
      public function §_-HV§(param1:Boolean) : void
      {
         this.§_-2a§ = param1;
      }
      
      public function §_-BM§(param1:Number) : void
      {
         b2internal::_-93.SetAwake(true);
         b2internal::_-9K.SetAwake(true);
         this.§_-bm§ = param1;
      }
      
      public function §_-wU§() : Number
      {
         return this.§_-bm§;
      }
      
      public function §_-lY§(param1:Number) : void
      {
         this.§_-SW§ = param1;
      }
      
      public function §_-Uh§() : Number
      {
         return this.§_-SW§;
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
         _loc2_ = b2internal::_-93;
         _loc3_ = b2internal::_-9K;
         if(this.§_-2a§ || this.§_-b9§)
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
         var _loc10_:Number = _loc2_.§_-eZ§;
         var _loc11_:Number = _loc3_.§_-eZ§;
         var _loc12_:Number = _loc2_.§_-DZ§;
         var _loc13_:Number = _loc3_.§_-DZ§;
         this.§_-jI§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-jI§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-jI§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-jI§.col1.y = this.§_-jI§.col2.x;
         this.§_-jI§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-jI§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-jI§.col1.z = this.§_-jI§.col3.x;
         this.§_-jI§.col2.z = this.§_-jI§.col3.y;
         this.§_-jI§.col3.z = _loc12_ + _loc13_;
         this.§_-5w§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-2a§ == false)
         {
            this.§_-3k§ = 0;
         }
         if(this.§_-b9§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-VS§;
            if(b2Math.§_-xY§(this.§_-4e§ - this.§_-8G§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-0L§ = b2internal::_-j9;
            }
            else if(_loc14_ <= this.§_-8G§)
            {
               if(this.§_-0L§ != b2internal::_-oP)
               {
                  this.§_-tN§.z = 0;
               }
               this.§_-0L§ = b2internal::_-oP;
            }
            else if(_loc14_ >= this.§_-4e§)
            {
               if(this.§_-0L§ != b2internal::_-Hv)
               {
                  this.§_-tN§.z = 0;
               }
               this.§_-0L§ = b2internal::_-Hv;
            }
            else
            {
               this.§_-0L§ = b2internal::_-vv;
               this.§_-tN§.z = 0;
            }
         }
         else
         {
            this.§_-0L§ = b2internal::_-vv;
         }
         if(param1.§_-o-§)
         {
            this.§_-tN§.x *= param1.§break§;
            this.§_-tN§.y *= param1.§break§;
            this.§_-3k§ *= param1.§break§;
            _loc15_ = this.§_-tN§.x;
            _loc16_ = this.§_-tN§.y;
            _loc2_.§_-ZZ§.x -= _loc10_ * _loc15_;
            _loc2_.§_-ZZ§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-3k§ + this.§_-tN§.z);
            _loc3_.§_-ZZ§.x += _loc11_ * _loc15_;
            _loc3_.§_-ZZ§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-3k§ + this.§_-tN§.z);
         }
         else
         {
            this.§_-tN§.§_-0a§();
            this.§_-3k§ = 0;
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
         var _loc2_:b2Body = b2internal::_-93;
         var _loc3_:b2Body = b2internal::_-9K;
         var _loc11_:b2Vec2 = _loc2_.§_-ZZ§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-ZZ§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-eZ§;
         var _loc16_:Number = _loc3_.§_-eZ§;
         var _loc17_:Number = _loc2_.§_-DZ§;
         var _loc18_:Number = _loc3_.§_-DZ§;
         if(this.§_-2a§ && this.§_-0L§ != b2internal::_-j9)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-bm§;
            _loc20_ = this.§_-5w§ * -_loc19_;
            _loc21_ = this.§_-3k§;
            _loc22_ = param1.§_-h8§ * this.§_-SW§;
            this.§_-3k§ = b2Math.§_-Gj§(this.§_-3k§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-3k§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-b9§ && this.§_-0L§ != b2internal::_-vv)
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
            this.§_-jI§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-0L§ == b2internal::_-j9)
            {
               this.§_-tN§.§_-Jv§(this.impulse3);
            }
            else if(this.§_-0L§ == b2internal::_-oP)
            {
               if((_loc6_ = this.§_-tN§.z + this.impulse3.z) < 0)
               {
                  this.§_-jI§.Solve22(this.§_-1m§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-1m§.x;
                  this.impulse3.y = this.§_-1m§.y;
                  this.impulse3.z = -this.§_-tN§.z;
                  this.§_-tN§.x += this.§_-1m§.x;
                  this.§_-tN§.y += this.§_-1m§.y;
                  this.§_-tN§.z = 0;
               }
            }
            else if(this.§_-0L§ == b2internal::_-Hv)
            {
               if((_loc6_ = this.§_-tN§.z + this.impulse3.z) > 0)
               {
                  this.§_-jI§.Solve22(this.§_-1m§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-1m§.x;
                  this.impulse3.y = this.§_-1m§.y;
                  this.impulse3.z = -this.§_-tN§.z;
                  this.§_-tN§.x += this.§_-1m§.x;
                  this.§_-tN§.y += this.§_-1m§.y;
                  this.§_-tN§.z = 0;
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
            this.§_-jI§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-tN§.x += this.impulse2.x;
            this.§_-tN§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-ZZ§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-ZZ§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-93;
         var _loc6_:b2Body = b2internal::_-9K;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-b9§ && this.§_-0L§ != b2internal::_-vv)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-VS§;
            _loc26_ = 0;
            if(this.§_-0L§ == b2internal::_-j9)
            {
               _loc3_ = b2Math.§_-Gj§(_loc25_ - this.§_-8G§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-5w§ * _loc3_;
               _loc7_ = b2Math.§_-xY§(_loc3_);
            }
            else if(this.§_-0L§ == b2internal::_-oP)
            {
               _loc3_ = _loc25_ - this.§_-8G§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-Gj§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-5w§ * _loc3_;
            }
            else if(this.§_-0L§ == b2internal::_-Hv)
            {
               _loc3_ = _loc25_ - this.§_-4e§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-Gj§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-5w§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-DZ§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-DZ§ * _loc26_;
            _loc5_.§_-Z9§();
            _loc6_.§_-Z9§();
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
         var _loc20_:Number = _loc5_.§_-eZ§;
         var _loc21_:Number = _loc6_.§_-eZ§;
         var _loc22_:Number = _loc5_.§_-DZ§;
         var _loc23_:Number = _loc6_.§_-DZ§;
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
         this.§_-9s§.§_-AH§(this.K1);
         this.§_-9s§.get(this.K2);
         this.§_-9s§.get(this.K3);
         this.§_-9s§.§_-B-§(§_-5q§,-_loc16_,-_loc17_);
         _loc10_ = §_-5q§.x;
         _loc11_ = §_-5q§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-eZ§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-eZ§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-DZ§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-eZ§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-eZ§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-DZ§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-Z9§();
         _loc6_.§_-Z9§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
