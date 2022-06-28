package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-06g§:b2Vec2;
      
      private var §_-uv§:b2Vec2;
      
      public var §_-6X§:b2Mat22;
      
      public var §_-RZ§:Number;
      
      private var §_-JQ§:b2Vec2;
      
      private var §_-qX§:Number;
      
      private var §_-RK§:Number;
      
      private var §_-Ur§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-06g§ = new b2Vec2();
         this.§_-uv§ = new b2Vec2();
         this.§_-6X§ = new b2Mat22();
         this.§_-JQ§ = new b2Vec2();
         super(param1);
         this.§_-06g§.SetV(param1.§_-F6§);
         this.§_-uv§.SetV(param1.§_-0Bf§);
         this.§_-6X§.§_-el§();
         this.§_-RZ§ = 0;
         this.§_-JQ§.§_-el§();
         this.§_-qX§ = 0;
         this.§_-RK§ = param1.§_-oX§;
         this.§_-Ur§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.§_-06g§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.§_-uv§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-JQ§.x,param1 * this.§_-JQ§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-qX§;
      }
      
      public function §_-EZ§(param1:Number) : void
      {
         this.§_-RK§ = param1;
      }
      
      public function §_-vZ§() : Number
      {
         return this.§_-RK§;
      }
      
      public function §_-Ul§(param1:Number) : void
      {
         this.§_-Ur§ = param1;
      }
      
      public function §_-6M§() : Number
      {
         return this.§_-Ur§;
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
         _loc4_ = b2internal::_-0FB;
         _loc5_ = b2internal::_-c9;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-06g§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-06g§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-uv§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-uv§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-03A§;
         var _loc11_:Number = _loc5_.§_-03A§;
         _loc12_ = _loc4_.§_-Dz§;
         _loc13_ = _loc5_.§_-Dz§;
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
         _loc14_.§_-84§(this.§_-6X§);
         this.§_-RZ§ = _loc12_ + _loc13_;
         if(this.§_-RZ§ > 0)
         {
            this.§_-RZ§ = 1 / this.§_-RZ§;
         }
         if(param1.§_-0F7§)
         {
            this.§_-JQ§.x *= param1.§_-b8§;
            this.§_-JQ§.y *= param1.§_-b8§;
            this.§_-qX§ *= param1.§_-b8§;
            _loc15_ = this.§_-JQ§;
            _loc4_.§_-kZ§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-kZ§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-qX§);
            _loc5_.§_-kZ§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-kZ§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-qX§);
         }
         else
         {
            this.§_-JQ§.§_-el§();
            this.§_-qX§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-0FB;
         var _loc5_:b2Body = b2internal::_-c9;
         var _loc6_:b2Vec2 = _loc4_.§_-kZ§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-kZ§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-03A§;
         var _loc11_:Number = _loc5_.§_-03A§;
         var _loc12_:Number = _loc4_.§_-Dz§;
         var _loc13_:Number = _loc5_.§_-Dz§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-06g§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-06g§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-uv§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-uv§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-RZ§ * _loc19_;
         var _loc21_:Number = this.§_-qX§;
         _loc18_ = param1.§_-pn§ * this.§_-Ur§;
         this.§_-qX§ = b2Math.§_-ZK§(this.§_-qX§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-qX§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-S4§(this.§_-6X§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-JQ§.Copy();
         this.§_-JQ§.§_-M6§(_loc24_);
         _loc18_ = param1.§_-pn§ * this.§_-RK§;
         if(this.§_-JQ§.§_-wN§() > _loc18_ * _loc18_)
         {
            this.§_-JQ§.Normalize();
            this.§_-JQ§.§_-mx§(_loc18_);
         }
         _loc24_ = b2Math.§_-DO§(this.§_-JQ§,_loc25_);
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
