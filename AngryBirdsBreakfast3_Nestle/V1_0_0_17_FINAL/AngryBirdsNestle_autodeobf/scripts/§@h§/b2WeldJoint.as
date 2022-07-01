package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Mat33;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   import §@!E§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §=!P§:b2Vec2;
      
      private var §;z§:b2Vec2;
      
      private var §<!S§:Number;
      
      private var §6!h§:b2Vec3;
      
      private var §'q§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         this.§=!P§ = new b2Vec2();
         this.§;z§ = new b2Vec2();
         this.§6!h§ = new b2Vec3();
         this.§'q§ = new b2Mat33();
         super(param1);
         this.§=!P§.SetV(param1.§8D§);
         this.§;z§.SetV(param1.§@"$§);
         this.§<!S§ = param1.§7!L§;
         this.§6!h§.§>![§();
         this.§'q§ = new b2Mat33();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.§=!P§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.§;z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§6!h§.x,param1 * this.§6!h§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§6!h§.z;
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
         _loc4_ = b2internal::9!F;
         _loc5_ = b2internal::[!n;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§=!P§.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.§=!P§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§;z§.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.§;z§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§ c§;
         _loc11_ = _loc5_.§ c§;
         _loc12_ = _loc4_.§"k§;
         _loc13_ = _loc5_.§"k§;
         this.§'q§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§'q§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§'q§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§'q§.col1.y = this.§'q§.col2.x;
         this.§'q§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§'q§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§'q§.col1.z = this.§'q§.col3.x;
         this.§'q§.col2.z = this.§'q§.col3.y;
         this.§'q§.col3.z = _loc12_ + _loc13_;
         if(param1.§-"'§)
         {
            this.§6!h§.x *= param1.§`!s§;
            this.§6!h§.y *= param1.§`!s§;
            this.§6!h§.z *= param1.§`!s§;
            _loc4_.§;!A§.x -= _loc10_ * this.§6!h§.x;
            _loc4_.§;!A§.y -= _loc10_ * this.§6!h§.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * this.§6!h§.y - _loc7_ * this.§6!h§.x + this.§6!h§.z);
            _loc5_.§;!A§.x += _loc11_ * this.§6!h§.x;
            _loc5_.§;!A§.y += _loc11_ * this.§6!h§.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * this.§6!h§.y - _loc9_ * this.§6!h§.x + this.§6!h§.z);
         }
         else
         {
            this.§6!h§.§>![§();
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::9!F;
         var _loc5_:b2Body = b2internal::[!n;
         var _loc6_:b2Vec2 = _loc4_.§;!A§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§;!A§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§ c§;
         var _loc11_:Number = _loc5_.§ c§;
         var _loc12_:Number = _loc4_.§"k§;
         var _loc13_:Number = _loc5_.§"k§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§=!P§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§=!P§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§;z§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§;z§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this.§'q§.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this.§6!h§.§?4§(_loc21_);
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
         var _loc4_:b2Body = b2internal::9!F;
         var _loc5_:b2Body = b2internal::[!n;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.§=!P§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=!P§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.§;z§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§;z§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_.§ c§;
         var _loc11_:Number = _loc5_.§ c§;
         var _loc12_:Number = _loc4_.§"k§;
         var _loc13_:Number = _loc5_.§"k§;
         var _loc14_:Number = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         var _loc15_:Number = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc16_:Number = _loc5_.m_sweep.a - _loc4_.m_sweep.a - this.§<!S§;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
         var _loc19_:Number = b2Math.§71§(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this.§'q§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§'q§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§'q§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§'q§.col1.y = this.§'q§.col2.x;
         this.§'q§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§'q§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§'q§.col1.z = this.§'q§.col3.x;
         this.§'q§.col2.z = this.§'q§.col3.y;
         this.§'q§.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this.§'q§.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_.m_sweep.c.x -= _loc10_ * _loc20_.x;
         _loc4_.m_sweep.c.y -= _loc10_ * _loc20_.y;
         _loc4_.m_sweep.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_.m_sweep.c.x += _loc11_ * _loc20_.x;
         _loc5_.m_sweep.c.y += _loc11_ * _loc20_.y;
         _loc5_.m_sweep.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_.§+!X§();
         _loc5_.§+!X§();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}
