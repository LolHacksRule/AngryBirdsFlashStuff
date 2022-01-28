package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Mat33;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<!a§.b2Vec3;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §1!e§:b2Vec2;
      
      private var §3!p§:b2Vec2;
      
      private var §"e§:Number;
      
      private var §5!i§:b2Vec3;
      
      private var §?j§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§1!e§ = new b2Vec2();
         this.§3!p§ = new b2Vec2();
         this.§5!i§ = new b2Vec3();
         this.§?j§ = new b2Mat33();
         super(param1);
         this.§1!e§.SetV(param1.§3!&§);
         this.§3!p§.SetV(param1.§2!P§);
         this.§"e§ = param1.§ "2§;
         this.§5!i§.§?b§();
         this.§?j§ = new b2Mat33();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.§1!e§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.§3!p§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!i§.x,param1 * this.§5!i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§5!i§.z;
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
         _loc4_ = b2internal::+d;
         _loc5_ = b2internal::"!l;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§1!e§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§1!e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§3!p§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§3!p§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§@"!§;
         _loc11_ = _loc5_.§@"!§;
         _loc12_ = _loc4_.§=!N§;
         _loc13_ = _loc5_.§=!N§;
         this.§?j§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§?j§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§?j§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§?j§.col1.y = this.§?j§.col2.x;
         this.§?j§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§?j§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§?j§.col1.z = this.§?j§.col3.x;
         this.§?j§.col2.z = this.§?j§.col3.y;
         this.§?j§.col3.z = _loc12_ + _loc13_;
         if(param1.§@!D§)
         {
            this.§5!i§.x *= param1.§class§;
            this.§5!i§.y *= param1.§class§;
            this.§5!i§.z *= param1.§class§;
            _loc4_.§]!g§.x -= _loc10_ * this.§5!i§.x;
            _loc4_.§]!g§.y -= _loc10_ * this.§5!i§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§5!i§.y - _loc7_ * this.§5!i§.x + this.§5!i§.z);
            _loc5_.§]!g§.x += _loc11_ * this.§5!i§.x;
            _loc5_.§]!g§.y += _loc11_ * this.§5!i§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§5!i§.y - _loc9_ * this.§5!i§.x + this.§5!i§.z);
         }
         else
         {
            this.§5!i§.§?b§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         var _loc6_:b2Vec2 = _loc4_.§]!g§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§]!g§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§@"!§;
         var _loc11_:Number = _loc5_.§@"!§;
         var _loc12_:Number = _loc4_.§=!N§;
         var _loc13_:Number = _loc5_.§=!N§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§1!e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§1!e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§3!p§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§3!p§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§?j§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§5!i§.§<!n§(_loc21_);
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
         var _loc4_:b2Body = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§1!e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§1!e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§3!p§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§3!p§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§@"!§;
         var _loc11_:Number = _loc5_.§@"!§;
         var _loc12_:Number = _loc4_.§=!N§;
         var _loc13_:Number = _loc5_.§=!N§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§"e§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§1!`§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§?j§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§?j§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§?j§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§?j§.col1.y = this.§?j§.col2.x;
         this.§?j§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§?j§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§?j§.col1.z = this.§?j§.col3.x;
         this.§?j§.col2.z = this.§?j§.col3.y;
         this.§?j§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§?j§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§=&§();
         _loc5_.§=&§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
