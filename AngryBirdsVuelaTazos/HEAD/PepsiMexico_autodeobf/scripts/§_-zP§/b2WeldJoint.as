package §_-zP§
{
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Mat33;
   import §_-bA§.b2Math;
   import §_-bA§.b2Vec2;
   import §_-bA§.b2Vec3;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §_-su§:b2Vec2;
      
      private var §_-s1§:b2Vec2;
      
      private var §_-I0§:Number;
      
      private var §_-TZ§:b2Vec3;
      
      private var §_-aR§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§_-su§ = new b2Vec2();
         this.§_-s1§ = new b2Vec2();
         this.§_-TZ§ = new b2Vec3();
         this.§_-aR§ = new b2Mat33();
         super(param1);
         this.§_-su§.SetV(param1.§_-Ys§);
         this.§_-s1§.SetV(param1.§_-8p§);
         this.§_-I0§ = param1.§_-51§;
         this.§_-TZ§.§_-qi§();
         this.§_-aR§ = new b2Mat33();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Vj.GetWorldPoint(this.§_-su§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qa.GetWorldPoint(this.§_-s1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TZ§.x,param1 * this.§_-TZ§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-TZ§.z;
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
         _loc4_ = b2internal::_-Vj;
         _loc5_ = b2internal::_-qa;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-su§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§_-su§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-s1§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§_-s1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-Wd§;
         _loc11_ = _loc5_.§_-Wd§;
         _loc12_ = _loc4_.§_-Ox§;
         _loc13_ = _loc5_.§_-Ox§;
         this.§_-aR§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-aR§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-aR§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-aR§.col1.y = this.§_-aR§.col2.x;
         this.§_-aR§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-aR§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-aR§.col1.z = this.§_-aR§.col3.x;
         this.§_-aR§.col2.z = this.§_-aR§.col3.y;
         this.§_-aR§.col3.z = _loc12_ + _loc13_;
         if(param1.§_-uU§)
         {
            this.§_-TZ§.x *= param1.§_-D§;
            this.§_-TZ§.y *= param1.§_-D§;
            this.§_-TZ§.z *= param1.§_-D§;
            _loc4_.§_-At§.x -= _loc10_ * this.§_-TZ§.x;
            _loc4_.§_-At§.y -= _loc10_ * this.§_-TZ§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§_-TZ§.y - _loc7_ * this.§_-TZ§.x + this.§_-TZ§.z);
            _loc5_.§_-At§.x += _loc11_ * this.§_-TZ§.x;
            _loc5_.§_-At§.y += _loc11_ * this.§_-TZ§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§_-TZ§.y - _loc9_ * this.§_-TZ§.x + this.§_-TZ§.z);
         }
         else
         {
            this.§_-TZ§.§_-qi§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-Vj;
         var _loc5_:b2Body = b2internal::_-qa;
         var _loc6_:b2Vec2 = _loc4_.§_-At§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-At§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-Wd§;
         var _loc11_:Number = _loc5_.§_-Wd§;
         var _loc12_:Number = _loc4_.§_-Ox§;
         var _loc13_:Number = _loc5_.§_-Ox§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-su§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-su§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-s1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-s1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§_-aR§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§_-TZ§.§_-B8§(_loc21_);
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
         var _loc4_:b2Body = b2internal::_-Vj;
         var _loc5_:b2Body = b2internal::_-qa;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§_-su§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-su§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§_-s1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-s1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§_-Wd§;
         var _loc11_:Number = _loc5_.§_-Wd§;
         var _loc12_:Number = _loc4_.§_-Ox§;
         var _loc13_:Number = _loc5_.§_-Ox§;
         var _loc14_:Number = _loc5_.m_sweep.§_-Zh§.x + _loc8_ - _loc4_.m_sweep.§_-Zh§.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.§_-Zh§.y + _loc9_ - _loc4_.m_sweep.§_-Zh§.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§_-I0§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§_-30§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§_-aR§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-aR§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-aR§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-aR§.col1.y = this.§_-aR§.col2.x;
         this.§_-aR§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-aR§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-aR§.col1.z = this.§_-aR§.col3.x;
         this.§_-aR§.col2.z = this.§_-aR§.col3.y;
         this.§_-aR§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§_-aR§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.§_-Zh§.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.§_-Zh§.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.§_-Zh§.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.§_-Zh§.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§_-I5§();
         _loc5_.§_-I5§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
