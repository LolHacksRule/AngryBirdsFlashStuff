package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
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
      
      private var §5!M§:b2Jacobian;
      
      private var §%E§:Number;
      
      private var §6!K§:Number;
      
      private var §,0§:Number;
      
      private var §,!2§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5!M§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§+!?§;
         var _loc3_:int = param1.joint2.§+!?§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§@!F§();
         §6!G§ = param1.joint1.§<!J§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§,b§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§<!0§();
         }
         this.m_ground2 = param1.joint2.§@!F§();
         §0!w§ = param1.joint2.§<!J§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§,b§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§<!0§();
         }
         this.§6!K§ = param1.§8B§;
         this.§%E§ = _loc4_ + this.§6!K§ * _loc5_;
         this.§,!2§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§,!2§ * this.§5!M§.§7!A§.x,param1 * this.§,!2§ * this.§5!M§.§7!A§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::0!w.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::0!w.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::0!w.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§,!2§ * this.§5!M§.§7!A§.x;
         var _loc7_:Number = this.§,!2§ * this.§5!M§.§7!A§.y;
         return param1 * (this.§,!2§ * this.§5!M§.§?!8§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §>!B§() : Number
      {
         return this.§6!K§;
      }
      
      public function §6!l§(param1:Number) : void
      {
         this.§6!K§ = param1;
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
         _loc4_ = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         var _loc14_:Number = 0;
         this.§5!M§.§`!5§();
         if(this.m_revolute1)
         {
            this.§5!M§.§<#§ = -1;
            _loc14_ += _loc4_.§;5§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§;!3§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§5!M§.§@"§.Set(-_loc6_,-_loc7_);
            this.§5!M§.§<#§ = -_loc12_;
            _loc14_ += _loc4_.§7n§ + _loc4_.§;5§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§5!M§.§?!8§ = -this.§6!K§;
            _loc14_ += this.§6!K§ * this.§6!K§ * _loc5_.§;5§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§;!3§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§5!M§.§7!A§.Set(-this.§6!K§ * _loc6_,-this.§6!K§ * _loc7_);
            this.§5!M§.§?!8§ = -this.§6!K§ * _loc12_;
            _loc14_ += this.§6!K§ * this.§6!K§ * (_loc5_.§7n§ + _loc5_.§;5§ * _loc12_ * _loc12_);
         }
         this.§,0§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§[8§)
         {
            _loc4_.§^O§.x += _loc4_.§7n§ * this.§,!2§ * this.§5!M§.§@"§.x;
            _loc4_.§^O§.y += _loc4_.§7n§ * this.§,!2§ * this.§5!M§.§@"§.y;
            _loc4_.m_angularVelocity += _loc4_.§;5§ * this.§,!2§ * this.§5!M§.§<#§;
            _loc5_.§^O§.x += _loc5_.§7n§ * this.§,!2§ * this.§5!M§.§7!A§.x;
            _loc5_.§^O§.y += _loc5_.§7n§ * this.§,!2§ * this.§5!M§.§7!A§.y;
            _loc5_.m_angularVelocity += _loc5_.§;5§ * this.§,!2§ * this.§5!M§.§?!8§;
         }
         else
         {
            this.§,!2§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::6!G;
         var _loc3_:b2Body = b2internal::0!w;
         var _loc4_:Number = this.§5!M§.§8!^§(_loc2_.§^O§,_loc2_.m_angularVelocity,_loc3_.§^O§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§,0§ * _loc4_;
         this.§,!2§ += _loc5_;
         _loc2_.§^O§.x += _loc2_.§7n§ * _loc5_ * this.§5!M§.§@"§.x;
         _loc2_.§^O§.y += _loc2_.§7n§ * _loc5_ * this.§5!M§.§@"§.y;
         _loc2_.m_angularVelocity += _loc2_.§;5§ * _loc5_ * this.§5!M§.§<#§;
         _loc3_.§^O§.x += _loc3_.§7n§ * _loc5_ * this.§5!M§.§7!A§.x;
         _loc3_.§^O§.y += _loc3_.§7n§ * _loc5_ * this.§5!M§.§7!A§.y;
         _loc3_.m_angularVelocity += _loc3_.§;5§ * _loc5_ * this.§5!M§.§?!8§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::6!G;
         var _loc4_:b2Body = b2internal::0!w;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§,b§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§<!0§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§,b§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§<!0§();
         }
         var _loc7_:Number = this.§%E§ - (_loc5_ + this.§6!K§ * _loc6_);
         var _loc8_:Number = -this.§,0§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§7n§ * _loc8_ * this.§5!M§.§@"§.x;
         _loc3_.m_sweep.c.y += _loc3_.§7n§ * _loc8_ * this.§5!M§.§@"§.y;
         _loc3_.m_sweep.a += _loc3_.§;5§ * _loc8_ * this.§5!M§.§<#§;
         _loc4_.m_sweep.c.x += _loc4_.§7n§ * _loc8_ * this.§5!M§.§7!A§.x;
         _loc4_.m_sweep.c.y += _loc4_.§7n§ * _loc8_ * this.§5!M§.§7!A§.y;
         _loc4_.m_sweep.a += _loc4_.§;5§ * _loc8_ * this.§5!M§.§?!8§;
         _loc3_.§0!y§();
         _loc4_.§0!y§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
