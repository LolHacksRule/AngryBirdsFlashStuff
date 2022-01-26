package §_-Rb§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Math;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-sR§:b2Vec2;
      
      private var §_-fJ§:b2Vec2;
      
      public var §_-tZ§:b2Mat22;
      
      public var §_-Qs§:Number;
      
      private var §_-fE§:b2Vec2;
      
      private var §_-7L§:Number;
      
      private var §_-U2§:Number;
      
      private var §_-5Q§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-sR§ = new b2Vec2();
         this.§_-fJ§ = new b2Vec2();
         this.§_-tZ§ = new b2Mat22();
         this.§_-fE§ = new b2Vec2();
         super(param1);
         this.§_-sR§.SetV(param1.§_-24§);
         this.§_-fJ§.SetV(param1.§_-2Z§);
         this.§_-tZ§.§_-Vw§();
         this.§_-Qs§ = 0;
         this.§_-fE§.§_-Vw§();
         this.§_-7L§ = 0;
         this.§_-U2§ = param1.§_-GC§;
         this.§_-5Q§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Rz.GetWorldPoint(this.§_-sR§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-GP.GetWorldPoint(this.§_-fJ§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-fE§.x,param1 * this.§_-fE§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-7L§;
      }
      
      public function §_-18§(param1:Number) : void
      {
         this.§_-U2§ = param1;
      }
      
      public function §else§() : Number
      {
         return this.§_-U2§;
      }
      
      public function §_-Dg§(param1:Number) : void
      {
         this.§_-5Q§ = param1;
      }
      
      public function §_-UY§() : Number
      {
         return this.§_-5Q§;
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
         _loc4_ = b2internal::_-Rz;
         _loc5_ = b2internal::_-GP;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-sR§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-sR§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-fJ§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-fJ§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-s§;
         var _loc11_:Number = _loc5_.§_-s§;
         _loc12_ = _loc4_.§_-TW§;
         _loc13_ = _loc5_.§_-TW§;
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
         _loc14_.§_-EY§(this.§_-tZ§);
         this.§_-Qs§ = _loc12_ + _loc13_;
         if(this.§_-Qs§ > 0)
         {
            this.§_-Qs§ = 1 / this.§_-Qs§;
         }
         if(param1.§_-Fx§)
         {
            this.§_-fE§.x *= param1.§_-4i§;
            this.§_-fE§.y *= param1.§_-4i§;
            this.§_-7L§ *= param1.§_-4i§;
            _loc15_ = this.§_-fE§;
            _loc4_.§_-Ng§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-Ng§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-7L§);
            _loc5_.§_-Ng§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-Ng§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-7L§);
         }
         else
         {
            this.§_-fE§.§_-Vw§();
            this.§_-7L§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-Rz;
         var _loc5_:b2Body = b2internal::_-GP;
         var _loc6_:b2Vec2 = _loc4_.§_-Ng§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-Ng§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-s§;
         var _loc11_:Number = _loc5_.§_-s§;
         var _loc12_:Number = _loc4_.§_-TW§;
         var _loc13_:Number = _loc5_.§_-TW§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-sR§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-sR§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-fJ§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-fJ§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-Qs§ * _loc19_;
         var _loc21_:Number = this.§_-7L§;
         _loc18_ = param1.§_-Vj§ * this.§_-5Q§;
         this.§_-7L§ = b2Math.§_-Kz§(this.§_-7L§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-7L§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-KM§(this.§_-tZ§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-fE§.Copy();
         this.§_-fE§.§_-Ec§(_loc24_);
         _loc18_ = param1.§_-Vj§ * this.§_-U2§;
         if(this.§_-fE§.§_-QN§() > _loc18_ * _loc18_)
         {
            this.§_-fE§.Normalize();
            this.§_-fE§.§_-v8§(_loc18_);
         }
         _loc24_ = b2Math.§_-Fu§(this.§_-fE§,_loc25_);
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
