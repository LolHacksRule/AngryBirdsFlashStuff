package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Mat33;
   import §_-dx§.b2Math;
   import §_-dx§.b2Vec2;
   import §_-dx§.b2Vec3;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §_-TV§:b2Vec2;
      
      private var §_-Y§:b2Vec2;
      
      private var §_-f9§:Number;
      
      private var §_-TC§:b2Vec3;
      
      private var §_-dz§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§_-TV§ = new b2Vec2();
         this.§_-Y§ = new b2Vec2();
         this.§_-TC§ = new b2Vec3();
         this.§_-dz§ = new b2Mat33();
         super(param1);
         this.§_-TV§.SetV(param1.§_-uE§);
         this.§_-Y§.SetV(param1.§_-L5§);
         this.§_-f9§ = param1.§_-Rk§;
         this.§_-TC§.§_-pZ§();
         this.§_-dz§ = new b2Mat33();
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
         return new b2Vec2(param1 * this.§_-TC§.x,param1 * this.§_-TC§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-TC§.z;
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
         _loc4_ = b2internal::_-t6;
         _loc5_ = b2internal::_-7f;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-TV§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§_-TV§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-Y§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§_-Y§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-YH§;
         _loc11_ = _loc5_.§_-YH§;
         _loc12_ = _loc4_.§_-49§;
         _loc13_ = _loc5_.§_-49§;
         this.§_-dz§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-dz§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-dz§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-dz§.col1.y = this.§_-dz§.col2.x;
         this.§_-dz§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-dz§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-dz§.col1.z = this.§_-dz§.col3.x;
         this.§_-dz§.col2.z = this.§_-dz§.col3.y;
         this.§_-dz§.col3.z = _loc12_ + _loc13_;
         if(param1.§_-xV§)
         {
            this.§_-TC§.x *= param1.§_-3W§;
            this.§_-TC§.y *= param1.§_-3W§;
            this.§_-TC§.z *= param1.§_-3W§;
            _loc4_.§_-Ce§.x -= _loc10_ * this.§_-TC§.x;
            _loc4_.§_-Ce§.y -= _loc10_ * this.§_-TC§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§_-TC§.y - _loc7_ * this.§_-TC§.x + this.§_-TC§.z);
            _loc5_.§_-Ce§.x += _loc11_ * this.§_-TC§.x;
            _loc5_.§_-Ce§.y += _loc11_ * this.§_-TC§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§_-TC§.y - _loc9_ * this.§_-TC§.x + this.§_-TC§.z);
         }
         else
         {
            this.§_-TC§.§_-pZ§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
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
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§_-dz§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§_-TC§.§_-7H§(_loc21_);
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
         var _loc4_:b2Body = b2internal::_-t6;
         var _loc5_:b2Body = b2internal::_-7f;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§_-TV§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-TV§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§_-Y§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-Y§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§_-YH§;
         var _loc11_:Number = _loc5_.§_-YH§;
         var _loc12_:Number = _loc4_.§_-49§;
         var _loc13_:Number = _loc5_.§_-49§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§_-f9§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§_-2l§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§_-dz§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-dz§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-dz§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-dz§.col1.y = this.§_-dz§.col2.x;
         this.§_-dz§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-dz§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-dz§.col1.z = this.§_-dz§.col3.x;
         this.§_-dz§.col2.z = this.§_-dz§.col3.y;
         this.§_-dz§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§_-dz§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§_-B0§();
         _loc5_.§_-B0§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
