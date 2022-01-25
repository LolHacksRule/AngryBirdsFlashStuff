package §6$§
{
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2TimeStep;
   import §<!8§.b2Mat22;
   import §<!8§.b2Mat33;
   import §<!8§.b2Math;
   import §<!8§.b2Vec2;
   import §<!8§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §%-§:b2Vec2;
      
      private var §-_§:b2Vec2;
      
      private var override:Number;
      
      private var §7!P§:b2Vec3;
      
      private var § !4§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§%-§ = new b2Vec2();
         this.§-_§ = new b2Vec2();
         this.§7!P§ = new b2Vec3();
         this.§ !4§ = new b2Mat33();
         super(param1);
         this.§%-§.SetV(param1.§8!Z§);
         this.§-_§.SetV(param1.§]!P§);
         this.override = param1.§[1§;
         this.§7!P§.§`§();
         this.§ !4§ = new b2Mat33();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!I.GetWorldPoint(this.§%-§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!#.GetWorldPoint(this.§-_§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§7!P§.x,param1 * this.§7!P§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§7!P§.z;
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
         _loc4_ = b2internal::2!I;
         _loc5_ = b2internal::%!#;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§%-§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§%-§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§-_§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§-_§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§0,§;
         _loc11_ = _loc5_.§0,§;
         _loc12_ = _loc4_.§'!=§;
         _loc13_ = _loc5_.§'!=§;
         this.§ !4§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§ !4§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§ !4§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§ !4§.col1.y = this.§ !4§.col2.x;
         this.§ !4§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§ !4§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§ !4§.col1.z = this.§ !4§.col3.x;
         this.§ !4§.col2.z = this.§ !4§.col3.y;
         this.§ !4§.col3.z = _loc12_ + _loc13_;
         if(param1.§9!3§)
         {
            this.§7!P§.x *= param1.§8!W§;
            this.§7!P§.y *= param1.§8!W§;
            this.§7!P§.z *= param1.§8!W§;
            _loc4_.§3s§.x -= _loc10_ * this.§7!P§.x;
            _loc4_.§3s§.y -= _loc10_ * this.§7!P§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§7!P§.y - _loc7_ * this.§7!P§.x + this.§7!P§.z);
            _loc5_.§3s§.x += _loc11_ * this.§7!P§.x;
            _loc5_.§3s§.y += _loc11_ * this.§7!P§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§7!P§.y - _loc9_ * this.§7!P§.x + this.§7!P§.z);
         }
         else
         {
            this.§7!P§.§`§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::2!I;
         var _loc5_:b2Body = b2internal::%!#;
         var _loc6_:b2Vec2 = _loc4_.§3s§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§3s§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§0,§;
         var _loc11_:Number = _loc5_.§0,§;
         var _loc12_:Number = _loc4_.§'!=§;
         var _loc13_:Number = _loc5_.§'!=§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§%-§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§%-§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§-_§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§-_§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§ !4§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§7!P§.§<W§(_loc21_);
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
         var _loc4_:b2Body = b2internal::2!I;
         var _loc5_:b2Body = b2internal::%!#;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§%-§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§%-§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§-_§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§-_§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§0,§;
         var _loc11_:Number = _loc5_.§0,§;
         var _loc12_:Number = _loc4_.§'!=§;
         var _loc13_:Number = _loc5_.§'!=§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.override;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§?!4§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§ !4§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§ !4§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§ !4§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§ !4§.col1.y = this.§ !4§.col2.x;
         this.§ !4§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§ !4§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§ !4§.col1.z = this.§ !4§.col3.x;
         this.§ !4§.col2.z = this.§ !4§.col3.y;
         this.§ !4§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§ !4§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§4!O§();
         _loc5_.§4!O§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
