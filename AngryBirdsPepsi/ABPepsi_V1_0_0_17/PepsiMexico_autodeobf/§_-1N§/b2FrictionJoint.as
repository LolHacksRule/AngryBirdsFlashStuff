package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-9u§:b2Vec2;
      
      private var §_-9C§:b2Vec2;
      
      public var §_-TP§:b2Mat22;
      
      public var §_-ac§:Number;
      
      private var §_-s0§:b2Vec2;
      
      private var §_-9P§:Number;
      
      private var §_-CU§:Number;
      
      private var §_-no§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-9u§ = new b2Vec2();
         this.§_-9C§ = new b2Vec2();
         this.§_-TP§ = new b2Mat22();
         this.§_-s0§ = new b2Vec2();
         super(param1);
         this.§_-9u§.SetV(param1.§_-Kz§);
         this.§_-9C§.SetV(param1.§_-Dq§);
         this.§_-TP§.§_-0a§();
         this.§_-ac§ = 0;
         this.§_-s0§.§_-0a§();
         this.§_-9P§ = 0;
         this.§_-CU§ = param1.§_-O9§;
         this.§_-no§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.§_-9u§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.§_-9C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-s0§.x,param1 * this.§_-s0§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-9P§;
      }
      
      public function §_-23§(param1:Number) : void
      {
         this.§_-CU§ = param1;
      }
      
      public function §_-8N§() : Number
      {
         return this.§_-CU§;
      }
      
      public function §_-yo§(param1:Number) : void
      {
         this.§_-no§ = param1;
      }
      
      public function §_-vZ§() : Number
      {
         return this.§_-no§;
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
         _loc4_ = b2internal::_-93;
         _loc5_ = b2internal::_-9K;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-9u§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-9u§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-9C§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-9C§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-eZ§;
         var _loc11_:Number = _loc5_.§_-eZ§;
         _loc12_ = _loc4_.§_-DZ§;
         _loc13_ = _loc5_.§_-DZ§;
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
         _loc14_.§_-uq§(this.§_-TP§);
         this.§_-ac§ = _loc12_ + _loc13_;
         if(this.§_-ac§ > 0)
         {
            this.§_-ac§ = 1 / this.§_-ac§;
         }
         if(param1.§_-o-§)
         {
            this.§_-s0§.x *= param1.§break§;
            this.§_-s0§.y *= param1.§break§;
            this.§_-9P§ *= param1.§break§;
            _loc15_ = this.§_-s0§;
            _loc4_.§_-ZZ§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-ZZ§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-9P§);
            _loc5_.§_-ZZ§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-ZZ§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-9P§);
         }
         else
         {
            this.§_-s0§.§_-0a§();
            this.§_-9P§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-93;
         var _loc5_:b2Body = b2internal::_-9K;
         var _loc6_:b2Vec2 = _loc4_.§_-ZZ§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-ZZ§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-eZ§;
         var _loc11_:Number = _loc5_.§_-eZ§;
         var _loc12_:Number = _loc4_.§_-DZ§;
         var _loc13_:Number = _loc5_.§_-DZ§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-9u§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-9u§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-9C§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-9C§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-ac§ * _loc19_;
         var _loc21_:Number = this.§_-9P§;
         _loc18_ = param1.§_-h8§ * this.§_-no§;
         this.§_-9P§ = b2Math.§_-Gj§(this.§_-9P§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-9P§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-FP§(this.§_-TP§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-s0§.Copy();
         this.§_-s0§.§_-Jv§(_loc24_);
         _loc18_ = param1.§_-h8§ * this.§_-CU§;
         if(this.§_-s0§.§_-Un§() > _loc18_ * _loc18_)
         {
            this.§_-s0§.Normalize();
            this.§_-s0§.§_-6z§(_loc18_);
         }
         _loc24_ = b2Math.§_-TD§(this.§_-s0§,_loc25_);
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
