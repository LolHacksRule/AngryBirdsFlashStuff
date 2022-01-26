package §_-bt§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Math;
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-5T§:b2Vec2;
      
      private var §_-kk§:b2Vec2;
      
      public var §_-rU§:b2Mat22;
      
      public var §_-fD§:Number;
      
      private var §_-o4§:b2Vec2;
      
      private var §_-vm§:Number;
      
      private var §_-Ig§:Number;
      
      private var §_-ut§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-5T§ = new b2Vec2();
         this.§_-kk§ = new b2Vec2();
         this.§_-rU§ = new b2Mat22();
         this.§_-o4§ = new b2Vec2();
         super(param1);
         this.§_-5T§.SetV(param1.§_-5O§);
         this.§_-kk§.SetV(param1.§_-q3§);
         this.§_-rU§.§_-IE§();
         this.§_-fD§ = 0;
         this.§_-o4§.§_-IE§();
         this.§_-vm§ = 0;
         this.§_-Ig§ = param1.§_-2w§;
         this.§_-ut§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-ba.GetWorldPoint(this.§_-5T§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-pK.GetWorldPoint(this.§_-kk§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-o4§.x,param1 * this.§_-o4§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-vm§;
      }
      
      public function §_-30§(param1:Number) : void
      {
         this.§_-Ig§ = param1;
      }
      
      public function §_-ic§() : Number
      {
         return this.§_-Ig§;
      }
      
      public function each(param1:Number) : void
      {
         this.§_-ut§ = param1;
      }
      
      public function §_-Ld§() : Number
      {
         return this.§_-ut§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::_-ba;
         _loc5_ = b2internal::_-pK;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-5T§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-5T§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-kk§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-kk§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-RG§;
         var _loc11_:Number = _loc5_.§_-RG§;
         _loc12_ = _loc4_.§_-n4§;
         _loc13_ = _loc5_.§_-n4§;
         (_loc14_ = new b2Mat22()).col1.x = _loc10_ + _loc11_;
         _loc14_.col2.x = 0;
         _loc14_.col1.y = 0;
         _loc14_.col2.y = _loc10_ + _loc11_;
         _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
         _loc14_.col2.x += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col1.y += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col2.y += _loc12_ * _loc6_ * _loc6_;
         _loc14_.col1.x += _loc13_ * _loc9_ * _loc9_;
         _loc14_.col2.x += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col1.y += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col2.y += _loc13_ * _loc8_ * _loc8_;
         _loc14_.§_-8g§(this.§_-rU§);
         this.§_-fD§ = _loc12_ + _loc13_;
         if(this.§_-fD§ > 0)
         {
            this.§_-fD§ = 1 / this.§_-fD§;
         }
         if(param1.§_-lv§)
         {
            this.§_-o4§.x *= param1.§_-4Y§;
            this.§_-o4§.y *= param1.§_-4Y§;
            this.§_-vm§ *= param1.§_-4Y§;
            _loc15_ = this.§_-o4§;
            _loc4_.§_-eW§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-eW§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-vm§);
            _loc5_.§_-eW§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-eW§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-vm§);
         }
         else
         {
            this.§_-o4§.§_-IE§();
            this.§_-vm§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-ba;
         var _loc5_:b2Body = b2internal::_-pK;
         var _loc6_:b2Vec2 = _loc4_.§_-eW§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-eW§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-RG§;
         var _loc11_:Number = _loc5_.§_-RG§;
         var _loc12_:Number = _loc4_.§_-n4§;
         var _loc13_:Number = _loc5_.§_-n4§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-5T§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-5T§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-kk§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-kk§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-fD§ * _loc19_;
         var _loc21_:Number = this.§_-vm§;
         _loc18_ = param1.§_-ib§ * this.§_-ut§;
         this.§_-vm§ = b2Math.§_-1P§(this.§_-vm§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-vm§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-UD§(this.§_-rU§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-o4§.Copy();
         this.§_-o4§.§_-YN§(_loc24_);
         _loc18_ = param1.§_-ib§ * this.§_-Ig§;
         if(this.§_-o4§.§_-xA§() > _loc18_ * _loc18_)
         {
            this.§_-o4§.Normalize();
            this.§_-o4§.§_-wB§(_loc18_);
         }
         _loc24_ = b2Math.§_-nM§(this.§_-o4§,_loc25_);
         _loc6_.x -= _loc10_ * _loc24_.x;
         _loc6_.y -= _loc10_ * _loc24_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc24_.y - _loc15_ * _loc24_.x);
         _loc8_.x += _loc11_ * _loc24_.x;
         _loc8_.y += _loc11_ * _loc24_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc24_.y - _loc17_ * _loc24_.x);
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
