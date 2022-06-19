package §_-ol§
{
   import §_-43§.b2Body;
   import §_-43§.b2TimeStep;
   import §_-F2§.b2Mat22;
   import §_-F2§.b2Mat33;
   import §_-F2§.b2Math;
   import §_-F2§.b2Vec2;
   import §_-F2§.b2Vec3;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §_-Ef§:b2Vec2;
      
      private var §_-Ud§:b2Vec2;
      
      private var §_-YL§:Number;
      
      private var §_-cR§:b2Vec3;
      
      private var §_-3i§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§_-Ef§ = new b2Vec2();
         this.§_-Ud§ = new b2Vec2();
         this.§_-cR§ = new b2Vec3();
         this.§_-3i§ = new b2Mat33();
         super(param1);
         this.§_-Ef§.SetV(param1.§_-lj§);
         this.§_-Ud§.SetV(param1.§_-zW§);
         this.§_-YL§ = param1.§_-oX§;
         this.§_-cR§.§_-t5§();
         this.§_-3i§ = new b2Mat33();
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
         return new b2Vec2(param1 * this.§_-cR§.x,param1 * this.§_-cR§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-cR§.z;
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
         _loc4_ = b2internal::_-Fj;
         _loc5_ = b2internal::_-eo;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-Ef§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§_-Ef§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-Ud§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§_-Ud§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-N0§;
         _loc11_ = _loc5_.§_-N0§;
         _loc12_ = _loc4_.§_-pA§;
         _loc13_ = _loc5_.§_-pA§;
         this.§_-3i§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-3i§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-3i§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-3i§.col1.y = this.§_-3i§.col2.x;
         this.§_-3i§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-3i§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-3i§.col1.z = this.§_-3i§.col3.x;
         this.§_-3i§.col2.z = this.§_-3i§.col3.y;
         this.§_-3i§.col3.z = _loc12_ + _loc13_;
         if(param1.§_-fo§)
         {
            this.§_-cR§.x *= param1.§_-cz§;
            this.§_-cR§.y *= param1.§_-cz§;
            this.§_-cR§.z *= param1.§_-cz§;
            _loc4_.§_-We§.x -= _loc10_ * this.§_-cR§.x;
            _loc4_.§_-We§.y -= _loc10_ * this.§_-cR§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§_-cR§.y - _loc7_ * this.§_-cR§.x + this.§_-cR§.z);
            _loc5_.§_-We§.x += _loc11_ * this.§_-cR§.x;
            _loc5_.§_-We§.y += _loc11_ * this.§_-cR§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§_-cR§.y - _loc9_ * this.§_-cR§.x + this.§_-cR§.z);
         }
         else
         {
            this.§_-cR§.§_-t5§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
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
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§_-3i§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§_-cR§.§_-5F§(_loc21_);
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
         var _loc4_:b2Body = b2internal::_-Fj;
         var _loc5_:b2Body = b2internal::_-eo;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§_-Ef§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-Ef§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§_-Ud§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-Ud§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§_-N0§;
         var _loc11_:Number = _loc5_.§_-N0§;
         var _loc12_:Number = _loc4_.§_-pA§;
         var _loc13_:Number = _loc5_.§_-pA§;
         var _loc14_:Number = _loc5_.m_sweep.§_-FO§.x + _loc8_ - _loc4_.m_sweep.§_-FO§.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.§_-FO§.y + _loc9_ - _loc4_.m_sweep.§_-FO§.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§_-YL§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§_-qe§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§_-3i§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-3i§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-3i§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-3i§.col1.y = this.§_-3i§.col2.x;
         this.§_-3i§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-3i§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-3i§.col1.z = this.§_-3i§.col3.x;
         this.§_-3i§.col2.z = this.§_-3i§.col3.y;
         this.§_-3i§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§_-3i§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.§_-FO§.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.§_-FO§.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.§_-FO§.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.§_-FO§.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§_-76§();
         _loc5_.§_-76§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
