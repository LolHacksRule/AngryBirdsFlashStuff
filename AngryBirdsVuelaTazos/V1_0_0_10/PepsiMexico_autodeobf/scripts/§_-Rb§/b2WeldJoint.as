package §_-Rb§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Mat33;
   import §_-Zl§.b2Math;
   import §_-Zl§.b2Vec2;
   import §_-Zl§.b2Vec3;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §_-sR§:b2Vec2;
      
      private var §_-fJ§:b2Vec2;
      
      private var §_-t8§:Number;
      
      private var §_-ro§:b2Vec3;
      
      private var §_-qa§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§_-sR§ = new b2Vec2();
         this.§_-fJ§ = new b2Vec2();
         this.§_-ro§ = new b2Vec3();
         this.§_-qa§ = new b2Mat33();
         super(param1);
         this.§_-sR§.SetV(param1.§_-24§);
         this.§_-fJ§.SetV(param1.§_-2Z§);
         this.§_-t8§ = param1.§_-Hj§;
         this.§_-ro§.§_-Vw§();
         this.§_-qa§ = new b2Mat33();
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
         return new b2Vec2(param1 * this.§_-ro§.x,param1 * this.§_-ro§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-ro§.z;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc4_ = b2internal::_-Rz;
         _loc5_ = b2internal::_-GP;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-sR§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§_-sR§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-fJ§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§_-fJ§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-s§;
         _loc11_ = _loc5_.§_-s§;
         _loc12_ = _loc4_.§_-TW§;
         _loc13_ = _loc5_.§_-TW§;
         this.§_-qa§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-qa§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-qa§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-qa§.col1.y = this.§_-qa§.col2.x;
         this.§_-qa§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-qa§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-qa§.col1.z = this.§_-qa§.col3.x;
         this.§_-qa§.col2.z = this.§_-qa§.col3.y;
         this.§_-qa§.col3.z = _loc12_ + _loc13_;
         if(param1.§_-Fx§)
         {
            this.§_-ro§.x *= param1.§_-4i§;
            this.§_-ro§.y *= param1.§_-4i§;
            this.§_-ro§.z *= param1.§_-4i§;
            _loc4_.§_-Ng§.x -= _loc10_ * this.§_-ro§.x;
            _loc4_.§_-Ng§.y -= _loc10_ * this.§_-ro§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§_-ro§.y - _loc7_ * this.§_-ro§.x + this.§_-ro§.z);
            _loc5_.§_-Ng§.x += _loc11_ * this.§_-ro§.x;
            _loc5_.§_-Ng§.y += _loc11_ * this.§_-ro§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§_-ro§.y - _loc9_ * this.§_-ro§.x + this.§_-ro§.z);
         }
         else
         {
            this.§_-ro§.§_-Vw§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
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
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§_-qa§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§_-ro§.§_-Ec§(_loc21_);
         _loc6_.x -= _loc10_ * _loc21_.x;
         _loc6_.y -= _loc10_ * _loc21_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc21_.y - _loc15_ * _loc21_.x + _loc21_.z);
         _loc8_.x += _loc11_ * _loc21_.x;
         _loc8_.y += _loc11_ * _loc21_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc21_.y - _loc17_ * _loc21_.x + _loc21_.z);
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-Rz;
         var _loc5_:b2Body = b2internal::_-GP;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§_-sR§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-sR§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§_-fJ§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-fJ§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§_-s§;
         var _loc11_:Number = _loc5_.§_-s§;
         var _loc12_:Number = _loc4_.§_-TW§;
         var _loc13_:Number = _loc5_.§_-TW§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§_-t8§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§_-Os§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§_-qa§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-qa§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-qa§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-qa§.col1.y = this.§_-qa§.col2.x;
         this.§_-qa§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-qa§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-qa§.col1.z = this.§_-qa§.col3.x;
         this.§_-qa§.col2.z = this.§_-qa§.col3.y;
         this.§_-qa§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§_-qa§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§_-Ax§();
         _loc5_.§_-Ax§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
