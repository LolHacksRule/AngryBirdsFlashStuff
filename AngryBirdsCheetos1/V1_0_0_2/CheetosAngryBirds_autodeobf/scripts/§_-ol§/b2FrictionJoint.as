package §_-ol§
{
   import §_-43§.b2Body;
   import §_-43§.b2TimeStep;
   import §_-F2§.b2Mat22;
   import §_-F2§.b2Math;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-Ef§:b2Vec2;
      
      private var §_-Ud§:b2Vec2;
      
      public var §_-xn§:b2Mat22;
      
      public var §_-0-j§:Number;
      
      private var §_-0-2§:b2Vec2;
      
      private var §_-2s§:Number;
      
      private var §_-Aj§:Number;
      
      private var §_-Z3§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-Ef§ = new b2Vec2();
         this.§_-Ud§ = new b2Vec2();
         this.§_-xn§ = new b2Mat22();
         this.§_-0-2§ = new b2Vec2();
         super(param1);
         this.§_-Ef§.SetV(param1.§_-lj§);
         this.§_-Ud§.SetV(param1.§_-zW§);
         this.§_-xn§.§_-t5§();
         this.§_-0-j§ = 0;
         this.§_-0-2§.§_-t5§();
         this.§_-2s§ = 0;
         this.§_-Aj§ = param1.§_-5J§;
         this.§_-Z3§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Fj.GetWorldPoint(this.§_-Ef§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-eo.GetWorldPoint(this.§_-Ud§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-0-2§.x,param1 * this.§_-0-2§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-2s§;
      }
      
      public function §_-lO§(param1:Number) : void
      {
         this.§_-Aj§ = param1;
      }
      
      public function §_-h8§() : Number
      {
         return this.§_-Aj§;
      }
      
      public function §_-0-t§(param1:Number) : void
      {
         this.§_-Z3§ = param1;
      }
      
      public function §_-o§() : Number
      {
         return this.§_-Z3§;
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
         _loc4_ = b2internal::_-Fj;
         _loc5_ = b2internal::_-eo;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-Ef§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-Ef§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-Ud§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-Ud§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-N0§;
         var _loc11_:Number = _loc5_.§_-N0§;
         _loc12_ = _loc4_.§_-pA§;
         _loc13_ = _loc5_.§_-pA§;
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
         _loc14_.§_-B0§(this.§_-xn§);
         this.§_-0-j§ = _loc12_ + _loc13_;
         if(this.§_-0-j§ > 0)
         {
            this.§_-0-j§ = 1 / this.§_-0-j§;
         }
         if(param1.§_-fo§)
         {
            this.§_-0-2§.x *= param1.§_-cz§;
            this.§_-0-2§.y *= param1.§_-cz§;
            this.§_-2s§ *= param1.§_-cz§;
            _loc15_ = this.§_-0-2§;
            _loc4_.§_-We§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-We§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-2s§);
            _loc5_.§_-We§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-We§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-2s§);
         }
         else
         {
            this.§_-0-2§.§_-t5§();
            this.§_-2s§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-Fj;
         var _loc5_:b2Body = b2internal::_-eo;
         var _loc6_:b2Vec2 = _loc4_.§_-We§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-We§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-N0§;
         var _loc11_:Number = _loc5_.§_-N0§;
         var _loc12_:Number = _loc4_.§_-pA§;
         var _loc13_:Number = _loc5_.§_-pA§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-Ef§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-Ef§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-Ud§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-Ud§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-0-j§ * _loc19_;
         var _loc21_:Number = this.§_-2s§;
         _loc18_ = param1.§_-At§ * this.§_-Z3§;
         this.§_-2s§ = b2Math.§_-3V§(this.§_-2s§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-2s§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-WK§(this.§_-xn§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-0-2§.Copy();
         this.§_-0-2§.§_-5F§(_loc24_);
         _loc18_ = param1.§_-At§ * this.§_-Aj§;
         if(this.§_-0-2§.§_-V4§() > _loc18_ * _loc18_)
         {
            this.§_-0-2§.Normalize();
            this.§_-0-2§.§_-X-§(_loc18_);
         }
         _loc24_ = b2Math.§_-Pq§(this.§_-0-2§,_loc25_);
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
