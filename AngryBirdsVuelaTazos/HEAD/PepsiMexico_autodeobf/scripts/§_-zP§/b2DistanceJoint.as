package §_-zP§
{
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Math;
   import §_-bA§.b2Vec2;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-Ee§:b2Vec2;
      
      private var §_-UZ§:Number;
      
      private var §_-Vz§:Number;
      
      private var §_-3d§:Number;
      
      private var §_-mq§:Number;
      
      private var §_-TZ§:Number;
      
      private var §_-aR§:Number;
      
      private var §_-om§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Ee§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Ys§);
         this.m_localAnchor2.SetV(param1.§_-8p§);
         this.§_-om§ = param1.length;
         this.§_-UZ§ = param1.§_-4J§;
         this.§_-Vz§ = param1.§_-ZH§;
         this.§_-TZ§ = 0;
         this.§_-3d§ = 0;
         this.§_-mq§ = 0;
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
         return new b2Vec2(param1 * this.§_-TZ§ * this.§_-Ee§.x,param1 * this.§_-TZ§ * this.§_-Ee§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-F4§() : Number
      {
         return this.§_-om§;
      }
      
      public function §_-Se§(param1:Number) : void
      {
         this.§_-om§ = param1;
      }
      
      public function §_-38§() : Number
      {
         return this.§_-UZ§;
      }
      
      public function §_-Z-§(param1:Number) : void
      {
         this.§_-UZ§ = param1;
      }
      
      public function §_-6W§() : Number
      {
         return this.§_-Vz§;
      }
      
      public function §_-wP§(param1:Number) : void
      {
         this.§_-Vz§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::_-Vj;
         _loc5_ = b2internal::_-qa;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         this.§_-Ee§.x = _loc5_.m_sweep.§_-Zh§.x + _loc8_ - _loc4_.m_sweep.§_-Zh§.x - _loc6_;
         this.§_-Ee§.y = _loc5_.m_sweep.§_-Zh§.y + _loc9_ - _loc4_.m_sweep.§_-Zh§.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-Ee§.x * this.§_-Ee§.x + this.§_-Ee§.y * this.§_-Ee§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-Ee§.§_-2O§(1 / _loc10_);
         }
         else
         {
            this.§_-Ee§.§_-qi§();
         }
         var _loc11_:Number = _loc6_ * this.§_-Ee§.y - _loc7_ * this.§_-Ee§.x;
         var _loc12_:Number = _loc8_ * this.§_-Ee§.y - _loc9_ * this.§_-Ee§.x;
         var _loc13_:Number = _loc4_.§_-Wd§ + _loc4_.§_-Ox§ * _loc11_ * _loc11_ + _loc5_.§_-Wd§ + _loc5_.§_-Ox§ * _loc12_ * _loc12_;
         this.§_-aR§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-UZ§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-om§;
            _loc15_ = 2 * Math.PI * this.§_-UZ§;
            _loc16_ = 2 * this.§_-aR§ * this.§_-Vz§ * _loc15_;
            _loc17_ = this.§_-aR§ * _loc15_ * _loc15_;
            this.§_-3d§ = param1.§_-Qf§ * (_loc16_ + param1.§_-Qf§ * _loc17_);
            this.§_-3d§ = this.§_-3d§ != 0 ? Number(1 / this.§_-3d§) : Number(0);
            this.§_-mq§ = _loc14_ * param1.§_-Qf§ * _loc17_ * this.§_-3d§;
            this.§_-aR§ = _loc13_ + this.§_-3d§;
            this.§_-aR§ = this.§_-aR§ != 0 ? Number(1 / this.§_-aR§) : Number(0);
         }
         if(param1.§_-uU§)
         {
            this.§_-TZ§ *= param1.§_-D§;
            _loc18_ = this.§_-TZ§ * this.§_-Ee§.x;
            _loc19_ = this.§_-TZ§ * this.§_-Ee§.y;
            _loc4_.§_-At§.x -= _loc4_.§_-Wd§ * _loc18_;
            _loc4_.§_-At§.y -= _loc4_.§_-Wd§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-Ox§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-At§.x += _loc5_.§_-Wd§ * _loc18_;
            _loc5_.§_-At§.y += _loc5_.§_-Wd§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-Ox§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-TZ§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-Vj;
         var _loc4_:b2Body = b2internal::_-qa;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc3_.§_-At§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-At§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-At§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-At§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-Ee§.x * (_loc12_ - _loc10_) + this.§_-Ee§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-aR§ * (_loc14_ + this.§_-mq§ + this.§_-3d§ * this.§_-TZ§);
         this.§_-TZ§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-Ee§.x;
         var _loc17_:Number = _loc15_ * this.§_-Ee§.y;
         _loc3_.§_-At§.x -= _loc3_.§_-Wd§ * _loc16_;
         _loc3_.§_-At§.y -= _loc3_.§_-Wd§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-Ox§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-At§.x += _loc4_.§_-Wd§ * _loc16_;
         _loc4_.§_-At§.y += _loc4_.§_-Wd§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-Ox§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-UZ§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-Vj;
         var _loc4_:b2Body = b2internal::_-qa;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc4_.m_sweep.§_-Zh§.x + _loc8_ - _loc3_.m_sweep.§_-Zh§.x - _loc5_;
         var _loc11_:Number = _loc4_.m_sweep.§_-Zh§.y + _loc9_ - _loc3_.m_sweep.§_-Zh§.y - _loc6_;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.§_-om§;
         _loc13_ = b2Math.§_-rr§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-aR§ * _loc13_;
         this.§_-Ee§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-Ee§.x;
         var _loc16_:Number = _loc14_ * this.§_-Ee§.y;
         _loc3_.m_sweep.§_-Zh§.x -= _loc3_.§_-Wd§ * _loc15_;
         _loc3_.m_sweep.§_-Zh§.y -= _loc3_.§_-Wd§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-Ox§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.§_-Zh§.x += _loc4_.§_-Wd§ * _loc15_;
         _loc4_.m_sweep.§_-Zh§.y += _loc4_.§_-Wd§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-Ox§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-I5§();
         _loc4_.§_-I5§();
         return b2Math.§_-30§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
