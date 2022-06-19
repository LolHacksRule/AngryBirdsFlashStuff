package §_-E§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2TimeStep;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Mat22;
   import §_-Vn§.b2Math;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-pC§:b2Vec2;
      
      private var §_-KY§:b2Vec2;
      
      public var §_-5p§:b2Mat22;
      
      public var §_-34§:Number;
      
      private var §_-0s§:b2Vec2;
      
      private var §_-bd§:Number;
      
      private var §_-Ws§:Number;
      
      private var §_-ex§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-pC§ = new b2Vec2();
         this.§_-KY§ = new b2Vec2();
         this.§_-5p§ = new b2Mat22();
         this.§_-0s§ = new b2Vec2();
         super(param1);
         this.§_-pC§.SetV(param1.§_-4N§);
         this.§_-KY§.SetV(param1.§_-nR§);
         this.§_-5p§.§return§();
         this.§_-34§ = 0;
         this.§_-0s§.§return§();
         this.§_-bd§ = 0;
         this.§_-Ws§ = param1.§_-4V§;
         this.§_-ex§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-oB.GetWorldPoint(this.§_-pC§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-52.GetWorldPoint(this.§_-KY§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-0s§.x,param1 * this.§_-0s§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-bd§;
      }
      
      public function §_-WT§(param1:Number) : void
      {
         this.§_-Ws§ = param1;
      }
      
      public function §_-8J§() : Number
      {
         return this.§_-Ws§;
      }
      
      public function §_-Pz§(param1:Number) : void
      {
         this.§_-ex§ = param1;
      }
      
      public function §_-mg§() : Number
      {
         return this.§_-ex§;
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
         _loc4_ = b2internal::_-oB;
         _loc5_ = b2internal::_-52;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-pC§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-pC§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-KY§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-KY§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-zL§;
         var _loc11_:Number = _loc5_.§_-zL§;
         _loc12_ = _loc4_.§_-aJ§;
         _loc13_ = _loc5_.§_-aJ§;
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
         _loc14_.§throw§(this.§_-5p§);
         this.§_-34§ = _loc12_ + _loc13_;
         if(this.§_-34§ > 0)
         {
            this.§_-34§ = 1 / this.§_-34§;
         }
         if(param1.§_-eH§)
         {
            this.§_-0s§.x *= param1.§_-na§;
            this.§_-0s§.y *= param1.§_-na§;
            this.§_-bd§ *= param1.§_-na§;
            _loc15_ = this.§_-0s§;
            _loc4_.§_-Yd§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-Yd§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-bd§);
            _loc5_.§_-Yd§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-Yd§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-bd§);
         }
         else
         {
            this.§_-0s§.§return§();
            this.§_-bd§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-oB;
         var _loc5_:b2Body = b2internal::_-52;
         var _loc6_:b2Vec2 = _loc4_.§_-Yd§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-Yd§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-zL§;
         var _loc11_:Number = _loc5_.§_-zL§;
         var _loc12_:Number = _loc4_.§_-aJ§;
         var _loc13_:Number = _loc5_.§_-aJ§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-pC§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-pC§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-KY§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-KY§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-34§ * _loc19_;
         var _loc21_:Number = this.§_-bd§;
         _loc18_ = param1.§_-Km§ * this.§_-ex§;
         this.§_-bd§ = b2Math.§_-a4§(this.§_-bd§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-bd§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-E0§(this.§_-5p§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-0s§.Copy();
         this.§_-0s§.§_-vL§(_loc24_);
         _loc18_ = param1.§_-Km§ * this.§_-Ws§;
         if(this.§_-0s§.§_-Tv§() > _loc18_ * _loc18_)
         {
            this.§_-0s§.Normalize();
            this.§_-0s§.§_-Hx§(_loc18_);
         }
         _loc24_ = b2Math.§_-FN§(this.§_-0s§,_loc25_);
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
