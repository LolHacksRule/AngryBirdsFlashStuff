package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Mat33;
   import §9"§.b2Math;
   import §9"§.b2Vec2;
   import §9"§.b2Vec3;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var § get§:b2Vec2;
      
      private var §2>§:b2Vec2;
      
      private var §^!O§:Number;
      
      private var §8v§:b2Vec3;
      
      private var §#!&§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§ get§ = new b2Vec2();
         this.§2>§ = new b2Vec2();
         this.§8v§ = new b2Vec3();
         this.§#!&§ = new b2Mat33();
         super(param1);
         this.§ get§.SetV(param1.§4B§);
         this.§2>§.SetV(param1.§ !Q§);
         this.§^!O§ = param1.§72§;
         this.§8v§.§^!#§();
         this.§#!&§ = new b2Mat33();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.§ get§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.§2>§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8v§.x,param1 * this.§8v§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8v§.z;
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
         _loc4_ = b2internal::2!D;
         _loc5_ = b2internal::;B;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§ get§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§ get§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§2>§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§2>§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§]m§;
         _loc11_ = _loc5_.§]m§;
         _loc12_ = _loc4_.§?0§;
         _loc13_ = _loc5_.§?0§;
         this.§#!&§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§#!&§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§#!&§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§#!&§.col1.y = this.§#!&§.col2.x;
         this.§#!&§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§#!&§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§#!&§.col1.z = this.§#!&§.col3.x;
         this.§#!&§.col2.z = this.§#!&§.col3.y;
         this.§#!&§.col3.z = _loc12_ + _loc13_;
         if(param1.§%!+§)
         {
            this.§8v§.x *= param1.§#b§;
            this.§8v§.y *= param1.§#b§;
            this.§8v§.z *= param1.§#b§;
            _loc4_.§%=§.x -= _loc10_ * this.§8v§.x;
            _loc4_.§%=§.y -= _loc10_ * this.§8v§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§8v§.y - _loc7_ * this.§8v§.x + this.§8v§.z);
            _loc5_.§%=§.x += _loc11_ * this.§8v§.x;
            _loc5_.§%=§.y += _loc11_ * this.§8v§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§8v§.y - _loc9_ * this.§8v§.x + this.§8v§.z);
         }
         else
         {
            this.§8v§.§^!#§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::2!D;
         var _loc5_:b2Body = b2internal::;B;
         var _loc6_:b2Vec2 = _loc4_.§%=§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§%=§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§]m§;
         var _loc11_:Number = _loc5_.§]m§;
         var _loc12_:Number = _loc4_.§?0§;
         var _loc13_:Number = _loc5_.§?0§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§ get§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§ get§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§2>§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§2>§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§#!&§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§8v§.§`!§(_loc21_);
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
         var _loc4_:b2Body = b2internal::2!D;
         var _loc5_:b2Body = b2internal::;B;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§ get§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ get§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§2>§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§2>§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§]m§;
         var _loc11_:Number = _loc5_.§]m§;
         var _loc12_:Number = _loc4_.§?0§;
         var _loc13_:Number = _loc5_.§?0§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§^!O§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§>8§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§#!&§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§#!&§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§#!&§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§#!&§.col1.y = this.§#!&§.col2.x;
         this.§#!&§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§#!&§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§#!&§.col1.z = this.§#!&§.col3.x;
         this.§#!&§.col2.z = this.§#!&§.col3.y;
         this.§#!&§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§#!&§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§,M§();
         _loc5_.§,M§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
