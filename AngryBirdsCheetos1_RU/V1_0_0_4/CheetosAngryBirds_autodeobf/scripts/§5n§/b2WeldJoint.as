package §5n§
{
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2TimeStep;
   import §5!K§.b2Mat22;
   import §5!K§.b2Mat33;
   import §5!K§.b2Math;
   import §5!K§.b2Vec2;
   import §5!K§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §5e§:b2Vec2;
      
      private var §case§:b2Vec2;
      
      private var §9!-§:Number;
      
      private var §8!2§:b2Vec3;
      
      private var §9!=§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§5e§ = new b2Vec2();
         this.§case§ = new b2Vec2();
         this.§8!2§ = new b2Vec3();
         this.§9!=§ = new b2Mat33();
         super(param1);
         this.§5e§.SetV(param1.§!!B§);
         this.§case§.SetV(param1.§<!_§);
         this.§9!-§ = param1.§2v§;
         this.§8!2§.§6d§();
         this.§9!=§ = new b2Mat33();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"8.GetWorldPoint(this.§5e§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!;.GetWorldPoint(this.§case§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!2§.x,param1 * this.§8!2§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!2§.z;
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
         _loc4_ = b2internal::"8;
         _loc5_ = b2internal::2!;;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§5e§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§5e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§case§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§case§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§"!§;
         _loc11_ = _loc5_.§"!§;
         _loc12_ = _loc4_.§9y§;
         _loc13_ = _loc5_.§9y§;
         this.§9!=§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§9!=§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§9!=§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§9!=§.col1.y = this.§9!=§.col2.x;
         this.§9!=§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§9!=§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§9!=§.col1.z = this.§9!=§.col3.x;
         this.§9!=§.col2.z = this.§9!=§.col3.y;
         this.§9!=§.col3.z = _loc12_ + _loc13_;
         if(param1.§[1§)
         {
            this.§8!2§.x *= param1.§8!J§;
            this.§8!2§.y *= param1.§8!J§;
            this.§8!2§.z *= param1.§8!J§;
            _loc4_.§;!#§.x -= _loc10_ * this.§8!2§.x;
            _loc4_.§;!#§.y -= _loc10_ * this.§8!2§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§8!2§.y - _loc7_ * this.§8!2§.x + this.§8!2§.z);
            _loc5_.§;!#§.x += _loc11_ * this.§8!2§.x;
            _loc5_.§;!#§.y += _loc11_ * this.§8!2§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§8!2§.y - _loc9_ * this.§8!2§.x + this.§8!2§.z);
         }
         else
         {
            this.§8!2§.§6d§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::"8;
         var _loc5_:b2Body = b2internal::2!;;
         var _loc6_:b2Vec2 = _loc4_.§;!#§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§;!#§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§"!§;
         var _loc11_:Number = _loc5_.§"!§;
         var _loc12_:Number = _loc4_.§9y§;
         var _loc13_:Number = _loc5_.§9y§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§5e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§5e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§case§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§case§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§9!=§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§8!2§.§0![§(_loc21_);
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
         var _loc4_:b2Body = b2internal::"8;
         var _loc5_:b2Body = b2internal::2!;;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§5e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§5e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§case§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§case§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§"!§;
         var _loc11_:Number = _loc5_.§"!§;
         var _loc12_:Number = _loc4_.§9y§;
         var _loc13_:Number = _loc5_.§9y§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§9!-§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§-x§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§9!=§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§9!=§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§9!=§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§9!=§.col1.y = this.§9!=§.col2.x;
         this.§9!=§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§9!=§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§9!=§.col1.z = this.§9!=§.col3.x;
         this.§9!=§.col2.z = this.§9!=§.col3.y;
         this.§9!=§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§9!=§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§8]§();
         _loc5_.§8]§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
