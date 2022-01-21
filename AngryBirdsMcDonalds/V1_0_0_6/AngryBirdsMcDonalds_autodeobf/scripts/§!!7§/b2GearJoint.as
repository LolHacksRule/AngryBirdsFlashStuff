package §!!7§
{
   import §7!5§.b2Body;
   import §7!5§.b2TimeStep;
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §@![§.b2Mat22;
   import §@![§.b2Vec2;
   
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
      
      private var §?!i§:b2Jacobian;
      
      private var §!Z§:Number;
      
      private var §'l§:Number;
      
      private var §0!+§:Number;
      
      private var §^!7§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?!i§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§3l§;
         var _loc3_:int = param1.joint2.§3l§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§3!E§();
         §-!j§ = param1.joint1.§;!-§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§=!X§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§ !e§();
         }
         this.m_ground2 = param1.joint2.§3!E§();
         §30§ = param1.joint2.§;!-§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§=!X§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§ !e§();
         }
         this.§'l§ = param1.§1<§;
         this.§!Z§ = _loc4_ + this.§'l§ * _loc5_;
         this.§^!7§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-!j.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::30.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^!7§ * this.§?!i§.§`j§.x,param1 * this.§^!7§ * this.§?!i§.§`j§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::30.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::30.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::30.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§^!7§ * this.§?!i§.§`j§.x;
         var _loc7_:Number = this.§^!7§ * this.§?!i§.§`j§.y;
         return param1 * (this.§^!7§ * this.§?!i§.§<,§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §^!d§() : Number
      {
         return this.§'l§;
      }
      
      public function §+#§(param1:Number) : void
      {
         this.§'l§ = param1;
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
         _loc4_ = b2internal::-!j;
         var _loc5_:b2Body = b2internal::30;
         var _loc14_:Number = 0;
         this.§?!i§.§%!&§();
         if(this.m_revolute1)
         {
            this.§?!i§.§<2§ = -1;
            _loc14_ += _loc4_.§#d§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§,k§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§?!i§.§]0§.Set(-_loc6_,-_loc7_);
            this.§?!i§.§<2§ = -_loc12_;
            _loc14_ += _loc4_.§0T§ + _loc4_.§#d§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§?!i§.§<,§ = -this.§'l§;
            _loc14_ += this.§'l§ * this.§'l§ * _loc5_.§#d§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§,k§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§?!i§.§`j§.Set(-this.§'l§ * _loc6_,-this.§'l§ * _loc7_);
            this.§?!i§.§<,§ = -this.§'l§ * _loc12_;
            _loc14_ += this.§'l§ * this.§'l§ * (_loc5_.§0T§ + _loc5_.§#d§ * _loc12_ * _loc12_);
         }
         this.§0!+§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§0!J§)
         {
            _loc4_.§?!%§.x += _loc4_.§0T§ * this.§^!7§ * this.§?!i§.§]0§.x;
            _loc4_.§?!%§.y += _loc4_.§0T§ * this.§^!7§ * this.§?!i§.§]0§.y;
            _loc4_.m_angularVelocity += _loc4_.§#d§ * this.§^!7§ * this.§?!i§.§<2§;
            _loc5_.§?!%§.x += _loc5_.§0T§ * this.§^!7§ * this.§?!i§.§`j§.x;
            _loc5_.§?!%§.y += _loc5_.§0T§ * this.§^!7§ * this.§?!i§.§`j§.y;
            _loc5_.m_angularVelocity += _loc5_.§#d§ * this.§^!7§ * this.§?!i§.§<,§;
         }
         else
         {
            this.§^!7§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::-!j;
         var _loc3_:b2Body = b2internal::30;
         var _loc4_:Number = this.§?!i§.§0!1§(_loc2_.§?!%§,_loc2_.m_angularVelocity,_loc3_.§?!%§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§0!+§ * _loc4_;
         this.§^!7§ += _loc5_;
         _loc2_.§?!%§.x += _loc2_.§0T§ * _loc5_ * this.§?!i§.§]0§.x;
         _loc2_.§?!%§.y += _loc2_.§0T§ * _loc5_ * this.§?!i§.§]0§.y;
         _loc2_.m_angularVelocity += _loc2_.§#d§ * _loc5_ * this.§?!i§.§<2§;
         _loc3_.§?!%§.x += _loc3_.§0T§ * _loc5_ * this.§?!i§.§`j§.x;
         _loc3_.§?!%§.y += _loc3_.§0T§ * _loc5_ * this.§?!i§.§`j§.y;
         _loc3_.m_angularVelocity += _loc3_.§#d§ * _loc5_ * this.§?!i§.§<,§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::-!j;
         var _loc4_:b2Body = b2internal::30;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§=!X§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§ !e§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§=!X§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§ !e§();
         }
         var _loc7_:Number = this.§!Z§ - (_loc5_ + this.§'l§ * _loc6_);
         var _loc8_:Number = -this.§0!+§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§0T§ * _loc8_ * this.§?!i§.§]0§.x;
         _loc3_.m_sweep.c.y += _loc3_.§0T§ * _loc8_ * this.§?!i§.§]0§.y;
         _loc3_.m_sweep.a += _loc3_.§#d§ * _loc8_ * this.§?!i§.§<2§;
         _loc4_.m_sweep.c.x += _loc4_.§0T§ * _loc8_ * this.§?!i§.§`j§.x;
         _loc4_.m_sweep.c.y += _loc4_.§0T§ * _loc8_ * this.§?!i§.§`j§.y;
         _loc4_.m_sweep.a += _loc4_.§#d§ * _loc8_ * this.§?!i§.§<,§;
         _loc3_.§5!%§();
         _loc4_.§5!%§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
