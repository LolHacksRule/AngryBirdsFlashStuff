package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Math;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-TV§:b2Vec2;
      
      private var §_-Y§:b2Vec2;
      
      public var §_-dm§:b2Mat22;
      
      public var §_-Ku§:Number;
      
      private var §_-77§:b2Vec2;
      
      private var §_-5Q§:Number;
      
      private var §_-wm§:Number;
      
      private var §_-fU§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-TV§ = new b2Vec2();
         this.§_-Y§ = new b2Vec2();
         this.§_-dm§ = new b2Mat22();
         this.§_-77§ = new b2Vec2();
         super(param1);
         this.§_-TV§.SetV(param1.§_-uE§);
         this.§_-Y§.SetV(param1.§_-L5§);
         this.§_-dm§.§_-pZ§();
         this.§_-Ku§ = 0;
         this.§_-77§.§_-pZ§();
         this.§_-5Q§ = 0;
         this.§_-wm§ = param1.§_-Nd§;
         this.§_-fU§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-t6.GetWorldPoint(this.§_-TV§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-7f.GetWorldPoint(this.§_-Y§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-77§.x,param1 * this.§_-77§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-5Q§;
      }
      
      public function §_-0V§(param1:Number) : void
      {
         this.§_-wm§ = param1;
      }
      
      public function §_-Kl§() : Number
      {
         return this.§_-wm§;
      }
      
      public function §_-1j§(param1:Number) : void
      {
         this.§_-fU§ = param1;
      }
      
      public function §_-6g§() : Number
      {
         return this.§_-fU§;
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
         _loc4_ = b2internal::_-t6;
         _loc5_ = b2internal::_-7f;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-TV§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-TV§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-Y§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-Y§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-YH§;
         var _loc11_:Number = _loc5_.§_-YH§;
         _loc12_ = _loc4_.§_-49§;
         _loc13_ = _loc5_.§_-49§;
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
         _loc14_.§_-Hd§(this.§_-dm§);
         this.§_-Ku§ = _loc12_ + _loc13_;
         if(this.§_-Ku§ > 0)
         {
            this.§_-Ku§ = 1 / this.§_-Ku§;
         }
         if(param1.§_-xV§)
         {
            this.§_-77§.x *= param1.§_-3W§;
            this.§_-77§.y *= param1.§_-3W§;
            this.§_-5Q§ *= param1.§_-3W§;
            _loc15_ = this.§_-77§;
            _loc4_.§_-Ce§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-Ce§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-5Q§);
            _loc5_.§_-Ce§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-Ce§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-5Q§);
         }
         else
         {
            this.§_-77§.§_-pZ§();
            this.§_-5Q§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-t6;
         var _loc5_:b2Body = b2internal::_-7f;
         var _loc6_:b2Vec2 = _loc4_.§_-Ce§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-Ce§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-YH§;
         var _loc11_:Number = _loc5_.§_-YH§;
         var _loc12_:Number = _loc4_.§_-49§;
         var _loc13_:Number = _loc5_.§_-49§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-TV§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-TV§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-Y§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-Y§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-Ku§ * _loc19_;
         var _loc21_:Number = this.§_-5Q§;
         _loc18_ = param1.§_-a9§ * this.§_-fU§;
         this.§_-5Q§ = b2Math.§_-k3§(this.§_-5Q§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-5Q§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-IM§(this.§_-dm§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-77§.Copy();
         this.§_-77§.§_-7H§(_loc24_);
         _loc18_ = param1.§_-a9§ * this.§_-wm§;
         if(this.§_-77§.§_-u4§() > _loc18_ * _loc18_)
         {
            this.§_-77§.Normalize();
            this.§_-77§.§_-Lp§(_loc18_);
         }
         _loc24_ = b2Math.§_-L6§(this.§_-77§,_loc25_);
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
