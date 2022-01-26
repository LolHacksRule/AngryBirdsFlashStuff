package §_-bt§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Mat33;
   import §_-4n§.b2Math;
   import §_-4n§.b2Vec2;
   import §_-4n§.b2Vec3;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §_-5T§:b2Vec2;
      
      private var §_-kk§:b2Vec2;
      
      private var §_-DL§:Number;
      
      private var §_-A0§:b2Vec3;
      
      private var §_-dp§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§_-5T§ = new b2Vec2();
         this.§_-kk§ = new b2Vec2();
         this.§_-A0§ = new b2Vec3();
         this.§_-dp§ = new b2Mat33();
         super(param1);
         this.§_-5T§.SetV(param1.§_-5O§);
         this.§_-kk§.SetV(param1.§_-q3§);
         this.§_-DL§ = param1.§_-Xr§;
         this.§_-A0§.§_-IE§();
         this.§_-dp§ = new b2Mat33();
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
         return new b2Vec2(param1 * this.§_-A0§.x,param1 * this.§_-A0§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-A0§.z;
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
         _loc4_ = b2internal::_-ba;
         _loc5_ = b2internal::_-pK;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-5T§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§_-5T§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-kk§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§_-kk§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-RG§;
         _loc11_ = _loc5_.§_-RG§;
         _loc12_ = _loc4_.§_-n4§;
         _loc13_ = _loc5_.§_-n4§;
         this.§_-dp§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-dp§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-dp§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-dp§.col1.y = this.§_-dp§.col2.x;
         this.§_-dp§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-dp§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-dp§.col1.z = this.§_-dp§.col3.x;
         this.§_-dp§.col2.z = this.§_-dp§.col3.y;
         this.§_-dp§.col3.z = _loc12_ + _loc13_;
         if(param1.§_-lv§)
         {
            this.§_-A0§.x *= param1.§_-4Y§;
            this.§_-A0§.y *= param1.§_-4Y§;
            this.§_-A0§.z *= param1.§_-4Y§;
            _loc4_.§_-eW§.x -= _loc10_ * this.§_-A0§.x;
            _loc4_.§_-eW§.y -= _loc10_ * this.§_-A0§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§_-A0§.y - _loc7_ * this.§_-A0§.x + this.§_-A0§.z);
            _loc5_.§_-eW§.x += _loc11_ * this.§_-A0§.x;
            _loc5_.§_-eW§.y += _loc11_ * this.§_-A0§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§_-A0§.y - _loc9_ * this.§_-A0§.x + this.§_-A0§.z);
         }
         else
         {
            this.§_-A0§.§_-IE§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
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
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§_-dp§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§_-A0§.§_-YN§(_loc21_);
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
         var _loc4_:b2Body = b2internal::_-ba;
         var _loc5_:b2Body = b2internal::_-pK;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§_-5T§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-5T§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§_-kk§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-kk§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§_-RG§;
         var _loc11_:Number = _loc5_.§_-RG§;
         var _loc12_:Number = _loc4_.§_-n4§;
         var _loc13_:Number = _loc5_.§_-n4§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§_-DL§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§_-R3§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§_-dp§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-dp§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-dp§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-dp§.col1.y = this.§_-dp§.col2.x;
         this.§_-dp§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-dp§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-dp§.col1.z = this.§_-dp§.col3.x;
         this.§_-dp§.col2.z = this.§_-dp§.col3.y;
         this.§_-dp§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§_-dp§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§_-Zz§();
         _loc5_.§_-Zz§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
