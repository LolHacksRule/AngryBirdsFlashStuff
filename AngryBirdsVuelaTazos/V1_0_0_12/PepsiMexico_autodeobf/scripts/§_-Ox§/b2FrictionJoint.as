package §_-Ox§
{
   import §_-9z§.b2Mat22;
   import §_-9z§.b2Math;
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-EH§.b2TimeStep;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-Xi§:b2Vec2;
      
      private var §_-gT§:b2Vec2;
      
      public var §_-51§:b2Mat22;
      
      public var §_-sz§:Number;
      
      private var §_-bW§:b2Vec2;
      
      private var §_-6a§:Number;
      
      private var §_-OA§:Number;
      
      private var §_-9W§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-Xi§ = new b2Vec2();
         this.§_-gT§ = new b2Vec2();
         this.§_-51§ = new b2Mat22();
         this.§_-bW§ = new b2Vec2();
         super(param1);
         this.§_-Xi§.SetV(param1.§_-7E§);
         this.§_-gT§.SetV(param1.§_-ID§);
         this.§_-51§.§_-TJ§();
         this.§_-sz§ = 0;
         this.§_-bW§.§_-TJ§();
         this.§_-6a§ = 0;
         this.§_-OA§ = param1.§_-li§;
         this.§_-9W§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-e4.GetWorldPoint(this.§_-Xi§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qA.GetWorldPoint(this.§_-gT§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-bW§.x,param1 * this.§_-bW§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-6a§;
      }
      
      public function §_-98§(param1:Number) : void
      {
         this.§_-OA§ = param1;
      }
      
      public function §_-KF§() : Number
      {
         return this.§_-OA§;
      }
      
      public function §_-wN§(param1:Number) : void
      {
         this.§_-9W§ = param1;
      }
      
      public function §_-Ke§() : Number
      {
         return this.§_-9W§;
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
         _loc4_ = b2internal::_-e4;
         _loc5_ = b2internal::_-qA;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-Xi§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-Xi§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-gT§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-gT§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-dH§;
         var _loc11_:Number = _loc5_.§_-dH§;
         _loc12_ = _loc4_.§_-sp§;
         _loc13_ = _loc5_.§_-sp§;
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
         _loc14_.§_-Sy§(this.§_-51§);
         this.§_-sz§ = _loc12_ + _loc13_;
         if(this.§_-sz§ > 0)
         {
            this.§_-sz§ = 1 / this.§_-sz§;
         }
         if(param1.§_-lZ§)
         {
            this.§_-bW§.x *= param1.§_-Xs§;
            this.§_-bW§.y *= param1.§_-Xs§;
            this.§_-6a§ *= param1.§_-Xs§;
            _loc15_ = this.§_-bW§;
            _loc4_.§_-wk§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-wk§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-6a§);
            _loc5_.§_-wk§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-wk§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-6a§);
         }
         else
         {
            this.§_-bW§.§_-TJ§();
            this.§_-6a§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-e4;
         var _loc5_:b2Body = b2internal::_-qA;
         var _loc6_:b2Vec2 = _loc4_.§_-wk§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-wk§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-dH§;
         var _loc11_:Number = _loc5_.§_-dH§;
         var _loc12_:Number = _loc4_.§_-sp§;
         var _loc13_:Number = _loc5_.§_-sp§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-Xi§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-Xi§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-gT§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-gT§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-sz§ * _loc19_;
         var _loc21_:Number = this.§_-6a§;
         _loc18_ = param1.§_-pG§ * this.§_-9W§;
         this.§_-6a§ = b2Math.§_-5a§(this.§_-6a§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-6a§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-0q§(this.§_-51§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-bW§.Copy();
         this.§_-bW§.§_-3a§(_loc24_);
         _loc18_ = param1.§_-pG§ * this.§_-OA§;
         if(this.§_-bW§.§_-8y§() > _loc18_ * _loc18_)
         {
            this.§_-bW§.Normalize();
            this.§_-bW§.§_-5L§(_loc18_);
         }
         _loc24_ = b2Math.§_-9M§(this.§_-bW§,_loc25_);
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
