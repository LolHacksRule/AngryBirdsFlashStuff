package §%t§
{
   import §&L§.b2Mat22;
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
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
      
      private var §"C§:b2Jacobian;
      
      private var §,!Z§:Number;
      
      private var §?"§:Number;
      
      private var §&v§:Number;
      
      private var §;!?§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§"C§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§32§;
         var _loc3_:int = param1.joint2.§32§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§7m§();
         §1!G§ = param1.joint1.§3B§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§7M§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§02§();
         }
         this.m_ground2 = param1.joint2.§7m§();
         §&!F§ = param1.joint2.§3B§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§7M§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§02§();
         }
         this.§?"§ = param1.§2![§;
         this.§,!Z§ = _loc4_ + this.§?"§ * _loc5_;
         this.§;!?§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §1!G§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §&!F§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;!?§ * this.§"C§.§!O§.x,param1 * this.§;!?§ * this.§"C§.§!O§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = §&!F§.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - §&!F§.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - §&!F§.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§;!?§ * this.§"C§.§!O§.x;
         var _loc7_:Number = this.§;!?§ * this.§"C§.§!O§.y;
         return param1 * (this.§;!?§ * this.§"C§.§'!e§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §1=§() : Number
      {
         return this.§?"§;
      }
      
      public function §`1§(param1:Number) : void
      {
         this.§?"§ = param1;
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
         _loc4_ = §1!G§;
         var _loc5_:b2Body = §&!F§;
         var _loc14_:Number = 0;
         this.§"C§.§5b§();
         if(this.m_revolute1)
         {
            this.§"C§.§]#§ = -1;
            _loc14_ += _loc4_.§&f§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§3a§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this.§"C§.§ !D§.Set(-_loc6_,-_loc7_);
            this.§"C§.§]#§ = -_loc12_;
            _loc14_ += _loc4_.§8[§ + _loc4_.§&f§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§"C§.§'!e§ = -this.§?"§;
            _loc14_ += this.§?"§ * this.§?"§ * _loc5_.§&f§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§3a§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this.§"C§.§!O§.Set(-this.§?"§ * _loc6_,-this.§?"§ * _loc7_);
            this.§"C§.§'!e§ = -this.§?"§ * _loc12_;
            _loc14_ += this.§?"§ * this.§?"§ * (_loc5_.§8[§ + _loc5_.§&f§ * _loc12_ * _loc12_);
         }
         this.§&v§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§5h§)
         {
            _loc4_.§45§.x += _loc4_.§8[§ * this.§;!?§ * this.§"C§.§ !D§.x;
            _loc4_.§45§.y += _loc4_.§8[§ * this.§;!?§ * this.§"C§.§ !D§.y;
            _loc4_.m_angularVelocity += _loc4_.§&f§ * this.§;!?§ * this.§"C§.§]#§;
            _loc5_.§45§.x += _loc5_.§8[§ * this.§;!?§ * this.§"C§.§!O§.x;
            _loc5_.§45§.y += _loc5_.§8[§ * this.§;!?§ * this.§"C§.§!O§.y;
            _loc5_.m_angularVelocity += _loc5_.§&f§ * this.§;!?§ * this.§"C§.§'!e§;
         }
         else
         {
            this.§;!?§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = §1!G§;
         var _loc3_:b2Body = §&!F§;
         var _loc4_:Number = this.§"C§.§3!$§(_loc2_.§45§,_loc2_.m_angularVelocity,_loc3_.§45§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§&v§ * _loc4_;
         this.§;!?§ += _loc5_;
         _loc2_.§45§.x += _loc2_.§8[§ * _loc5_ * this.§"C§.§ !D§.x;
         _loc2_.§45§.y += _loc2_.§8[§ * _loc5_ * this.§"C§.§ !D§.y;
         _loc2_.m_angularVelocity += _loc2_.§&f§ * _loc5_ * this.§"C§.§]#§;
         _loc3_.§45§.x += _loc3_.§8[§ * _loc5_ * this.§"C§.§!O§.x;
         _loc3_.§45§.y += _loc3_.§8[§ * _loc5_ * this.§"C§.§!O§.y;
         _loc3_.m_angularVelocity += _loc3_.§&f§ * _loc5_ * this.§"C§.§'!e§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = §1!G§;
         var _loc4_:b2Body = §&!F§;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§7M§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§02§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§7M§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§02§();
         }
         var _loc7_:Number = this.§,!Z§ - (_loc5_ + this.§?"§ * _loc6_);
         var _loc8_:Number = -this.§&v§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§8[§ * _loc8_ * this.§"C§.§ !D§.x;
         _loc3_.m_sweep.c.y += _loc3_.§8[§ * _loc8_ * this.§"C§.§ !D§.y;
         _loc3_.m_sweep.a += _loc3_.§&f§ * _loc8_ * this.§"C§.§]#§;
         _loc4_.m_sweep.c.x += _loc4_.§8[§ * _loc8_ * this.§"C§.§!O§.x;
         _loc4_.m_sweep.c.y += _loc4_.§8[§ * _loc8_ * this.§"C§.§!O§.y;
         _loc4_.m_sweep.a += _loc4_.§&f§ * _loc8_ * this.§"C§.§'!e§;
         _loc3_.§`!e§();
         _loc4_.§`!e§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
