package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Mat22;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §-!$§:b2Jacobian;
      
      private var §>i§:Number;
      
      private var §[f§:Number;
      
      private var §;!3§:Number;
      
      private var §>!C§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§-!$§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§@!D§;
         var _loc3_:int = param1.joint2.§@!D§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§;!B§();
         §,^§ = param1.joint1.§ for§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§^T§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§>t§();
         }
         this.m_ground2 = param1.joint2.§;!B§();
         § X§ = param1.joint2.§ for§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§^T§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§>t§();
         }
         this.§[f§ = param1.§"b§;
         this.§>i§ = _loc4_ + this.§[f§ * _loc5_;
         this.§>!C§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §,^§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return § X§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>!C§ * this.§-!$§.§8!R§.x,param1 * this.§>!C§ * this.§-!$§.§8!R§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = § X§.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - § X§.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - § X§.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§>!C§ * this.§-!$§.§8!R§.x;
         var _loc7_:Number = this.§>!C§ * this.§-!$§.§8!R§.y;
         return param1 * (this.§>!C§ * this.§-!$§.§<!2§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §,!3§() : Number
      {
         return this.§[f§;
      }
      
      public function §>!1§(param1:Number) : void
      {
         this.§[f§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = §,^§;
         var _loc5_:b2Body = § X§;
         var _loc14_:Number = 0;
         this.§-!$§.§@l§();
         if(this.m_revolute1)
         {
            this.§-!$§.§9D§ = -1;
            _loc14_ += _loc4_.§[!F§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§!!D§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this.§-!$§.§;!e§.Set(-_loc6_,-_loc7_);
            this.§-!$§.§9D§ = -_loc12_;
            _loc14_ += _loc4_.§4s§ + _loc4_.§[!F§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§-!$§.§<!2§ = -this.§[f§;
            _loc14_ += this.§[f§ * this.§[f§ * _loc5_.§[!F§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§!!D§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this.§-!$§.§8!R§.Set(-this.§[f§ * _loc6_,-this.§[f§ * _loc7_);
            this.§-!$§.§<!2§ = -this.§[f§ * _loc12_;
            _loc14_ += this.§[f§ * this.§[f§ * (_loc5_.§4s§ + _loc5_.§[!F§ * _loc12_ * _loc12_);
         }
         this.§;!3§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§3!=§)
         {
            _loc4_.§69§.x += _loc4_.§4s§ * this.§>!C§ * this.§-!$§.§;!e§.x;
            _loc4_.§69§.y += _loc4_.§4s§ * this.§>!C§ * this.§-!$§.§;!e§.y;
            _loc4_.m_angularVelocity += _loc4_.§[!F§ * this.§>!C§ * this.§-!$§.§9D§;
            _loc5_.§69§.x += _loc5_.§4s§ * this.§>!C§ * this.§-!$§.§8!R§.x;
            _loc5_.§69§.y += _loc5_.§4s§ * this.§>!C§ * this.§-!$§.§8!R§.y;
            _loc5_.m_angularVelocity += _loc5_.§[!F§ * this.§>!C§ * this.§-!$§.§<!2§;
         }
         else
         {
            this.§>!C§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = §,^§;
         var _loc3_:b2Body = § X§;
         var _loc4_:Number = this.§-!$§.§;7§(_loc2_.§69§,_loc2_.m_angularVelocity,_loc3_.§69§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§;!3§ * _loc4_;
         this.§>!C§ += _loc5_;
         _loc2_.§69§.x += _loc2_.§4s§ * _loc5_ * this.§-!$§.§;!e§.x;
         _loc2_.§69§.y += _loc2_.§4s§ * _loc5_ * this.§-!$§.§;!e§.y;
         _loc2_.m_angularVelocity += _loc2_.§[!F§ * _loc5_ * this.§-!$§.§9D§;
         _loc3_.§69§.x += _loc3_.§4s§ * _loc5_ * this.§-!$§.§8!R§.x;
         _loc3_.§69§.y += _loc3_.§4s§ * _loc5_ * this.§-!$§.§8!R§.y;
         _loc3_.m_angularVelocity += _loc3_.§[!F§ * _loc5_ * this.§-!$§.§<!2§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = §,^§;
         var _loc4_:b2Body = § X§;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§^T§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§>t§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§^T§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§>t§();
         }
         var _loc7_:Number = this.§>i§ - (_loc5_ + this.§[f§ * _loc6_);
         var _loc8_:Number = -this.§;!3§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§4s§ * _loc8_ * this.§-!$§.§;!e§.x;
         _loc3_.m_sweep.c.y += _loc3_.§4s§ * _loc8_ * this.§-!$§.§;!e§.y;
         _loc3_.m_sweep.a += _loc3_.§[!F§ * _loc8_ * this.§-!$§.§9D§;
         _loc4_.m_sweep.c.x += _loc4_.§4s§ * _loc8_ * this.§-!$§.§8!R§.x;
         _loc4_.m_sweep.c.y += _loc4_.§4s§ * _loc8_ * this.§-!$§.§8!R§.y;
         _loc4_.m_sweep.a += _loc4_.§[!F§ * _loc8_ * this.§-!$§.§<!2§;
         _loc3_.§`! §();
         _loc4_.§`! §();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
