package §@!O§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §0m§.b2Mat22;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   import §=#n§.b2TimeStep;
   
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
      
      private var §^W§:b2Jacobian;
      
      private var §<"%§:Number;
      
      private var §!#W§:Number;
      
      private var §8!L§:Number;
      
      private var §?$$§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^W§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§6"&§;
         var _loc3_:int = param1.joint2.§6"&§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§+#0§();
         §;"Q§ = param1.joint1.§4#M§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§!#a§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§-",§();
         }
         this.m_ground2 = param1.joint2.§+#0§();
         §%;§ = param1.joint2.§4#M§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§!#a§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§-",§();
         }
         this.§!#W§ = param1.§!!S§;
         this.§<"%§ = _loc4_ + this.§!#W§ * _loc5_;
         this.§?$$§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::;"Q.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%;.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§?$$§ * this.§^W§.§5!5§.x,param1 * this.§?$$§ * this.§^W§.§5!5§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::%;.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::%;.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::%;.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§?$$§ * this.§^W§.§5!5§.x;
         var _loc7_:Number = this.§?$$§ * this.§^W§.§5!5§.y;
         return param1 * (this.§?$$§ * this.§^W§.§,$ § - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §6!F§() : Number
      {
         return this.§!#W§;
      }
      
      public function §1!p§(param1:Number) : void
      {
         this.§!#W§ = param1;
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
         _loc4_ = b2internal::;"Q;
         var _loc5_:b2Body = b2internal::%;;
         var _loc14_:Number = 0;
         this.§^W§.§,[§();
         if(this.m_revolute1)
         {
            this.§^W§.§-!%§ = -1;
            _loc14_ += _loc4_.§3!F§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§0#W§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§^W§.§2"Y§.Set(-_loc6_,-_loc7_);
            this.§^W§.§-!%§ = -_loc12_;
            _loc14_ += _loc4_.§7"P§ + _loc4_.§3!F§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§^W§.§,$ § = -this.§!#W§;
            _loc14_ += this.§!#W§ * this.§!#W§ * _loc5_.§3!F§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§0#W§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§^W§.§5!5§.Set(-this.§!#W§ * _loc6_,-this.§!#W§ * _loc7_);
            this.§^W§.§,$ § = -this.§!#W§ * _loc12_;
            _loc14_ += this.§!#W§ * this.§!#W§ * (_loc5_.§7"P§ + _loc5_.§3!F§ * _loc12_ * _loc12_);
         }
         this.§8!L§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§`A§)
         {
            _loc4_.§'"_§.x += _loc4_.§7"P§ * this.§?$$§ * this.§^W§.§2"Y§.x;
            _loc4_.§'"_§.y += _loc4_.§7"P§ * this.§?$$§ * this.§^W§.§2"Y§.y;
            _loc4_.m_angularVelocity += _loc4_.§3!F§ * this.§?$$§ * this.§^W§.§-!%§;
            _loc5_.§'"_§.x += _loc5_.§7"P§ * this.§?$$§ * this.§^W§.§5!5§.x;
            _loc5_.§'"_§.y += _loc5_.§7"P§ * this.§?$$§ * this.§^W§.§5!5§.y;
            _loc5_.m_angularVelocity += _loc5_.§3!F§ * this.§?$$§ * this.§^W§.§,$ §;
         }
         else
         {
            this.§?$$§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::;"Q;
         var _loc3_:b2Body = b2internal::%;;
         var _loc4_:Number = this.§^W§.§4#U§(_loc2_.§'"_§,_loc2_.m_angularVelocity,_loc3_.§'"_§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§8!L§ * _loc4_;
         this.§?$$§ += _loc5_;
         _loc2_.§'"_§.x += _loc2_.§7"P§ * _loc5_ * this.§^W§.§2"Y§.x;
         _loc2_.§'"_§.y += _loc2_.§7"P§ * _loc5_ * this.§^W§.§2"Y§.y;
         _loc2_.m_angularVelocity += _loc2_.§3!F§ * _loc5_ * this.§^W§.§-!%§;
         _loc3_.§'"_§.x += _loc3_.§7"P§ * _loc5_ * this.§^W§.§5!5§.x;
         _loc3_.§'"_§.y += _loc3_.§7"P§ * _loc5_ * this.§^W§.§5!5§.y;
         _loc3_.m_angularVelocity += _loc3_.§3!F§ * _loc5_ * this.§^W§.§,$ §;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::;"Q;
         var _loc4_:b2Body = b2internal::%;;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§!#a§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§-",§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§!#a§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§-",§();
         }
         var _loc7_:Number = this.§<"%§ - (_loc5_ + this.§!#W§ * _loc6_);
         var _loc8_:Number = -this.§8!L§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§7"P§ * _loc8_ * this.§^W§.§2"Y§.x;
         _loc3_.m_sweep.c.y += _loc3_.§7"P§ * _loc8_ * this.§^W§.§2"Y§.y;
         _loc3_.m_sweep.a += _loc3_.§3!F§ * _loc8_ * this.§^W§.§-!%§;
         _loc4_.m_sweep.c.x += _loc4_.§7"P§ * _loc8_ * this.§^W§.§5!5§.x;
         _loc4_.m_sweep.c.y += _loc4_.§7"P§ * _loc8_ * this.§^W§.§5!5§.y;
         _loc4_.m_sweep.a += _loc4_.§3!F§ * _loc8_ * this.§^W§.§,$ §;
         _loc3_.§#!i§();
         _loc4_.§#!i§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
