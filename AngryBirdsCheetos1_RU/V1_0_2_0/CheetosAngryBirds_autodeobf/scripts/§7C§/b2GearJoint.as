package §7C§
{
   import §&!+§.b2Mat22;
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §4!&§.b2TimeStep;
   import §8!%§.b2Settings;
   import §8!%§.b2internal;
   
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
      
      private var §+o§:b2Jacobian;
      
      private var §-!@§:Number;
      
      private var §-!!§:Number;
      
      private var §[`§:Number;
      
      private var §[!8§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+o§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§"!V§;
         var _loc3_:int = param1.joint2.§"!V§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§?+§();
         §@6§ = param1.joint1.§4K§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§#k§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§^!E§();
         }
         this.m_ground2 = param1.joint2.§?+§();
         §[L§ = param1.joint2.§4K§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§#k§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§^!E§();
         }
         this.§-!!§ = param1.§5!;§;
         this.§-!@§ = _loc4_ + this.§-!!§ * _loc5_;
         this.§[!8§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::@6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[L.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!8§ * this.§+o§.§7p§.x,param1 * this.§[!8§ * this.§+o§.§7p§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::[L.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::[L.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::[L.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§[!8§ * this.§+o§.§7p§.x;
         var _loc7_:Number = this.§[!8§ * this.§+o§.§7p§.y;
         return param1 * (this.§[!8§ * this.§+o§.§`! § - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §7!+§() : Number
      {
         return this.§-!!§;
      }
      
      public function §]8§(param1:Number) : void
      {
         this.§-!!§ = param1;
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
         _loc4_ = b2internal::@6;
         var _loc5_:b2Body = b2internal::[L;
         var _loc14_:Number = 0;
         this.§+o§.§8Q§();
         if(this.m_revolute1)
         {
            this.§+o§.§ !'§ = -1;
            _loc14_ += _loc4_.§`!6§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§4!G§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§+o§.§<#§.Set(-_loc6_,-_loc7_);
            this.§+o§.§ !'§ = -_loc12_;
            _loc14_ += _loc4_.§=!P§ + _loc4_.§`!6§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§+o§.§`! § = -this.§-!!§;
            _loc14_ += this.§-!!§ * this.§-!!§ * _loc5_.§`!6§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§4!G§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§+o§.§7p§.Set(-this.§-!!§ * _loc6_,-this.§-!!§ * _loc7_);
            this.§+o§.§`! § = -this.§-!!§ * _loc12_;
            _loc14_ += this.§-!!§ * this.§-!!§ * (_loc5_.§=!P§ + _loc5_.§`!6§ * _loc12_ * _loc12_);
         }
         this.§[`§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§3j§)
         {
            _loc4_.§5+§.x += _loc4_.§=!P§ * this.§[!8§ * this.§+o§.§<#§.x;
            _loc4_.§5+§.y += _loc4_.§=!P§ * this.§[!8§ * this.§+o§.§<#§.y;
            _loc4_.m_angularVelocity += _loc4_.§`!6§ * this.§[!8§ * this.§+o§.§ !'§;
            _loc5_.§5+§.x += _loc5_.§=!P§ * this.§[!8§ * this.§+o§.§7p§.x;
            _loc5_.§5+§.y += _loc5_.§=!P§ * this.§[!8§ * this.§+o§.§7p§.y;
            _loc5_.m_angularVelocity += _loc5_.§`!6§ * this.§[!8§ * this.§+o§.§`! §;
         }
         else
         {
            this.§[!8§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::@6;
         var _loc3_:b2Body = b2internal::[L;
         var _loc4_:Number = this.§+o§.§,!Z§(_loc2_.§5+§,_loc2_.m_angularVelocity,_loc3_.§5+§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§[`§ * _loc4_;
         this.§[!8§ += _loc5_;
         _loc2_.§5+§.x += _loc2_.§=!P§ * _loc5_ * this.§+o§.§<#§.x;
         _loc2_.§5+§.y += _loc2_.§=!P§ * _loc5_ * this.§+o§.§<#§.y;
         _loc2_.m_angularVelocity += _loc2_.§`!6§ * _loc5_ * this.§+o§.§ !'§;
         _loc3_.§5+§.x += _loc3_.§=!P§ * _loc5_ * this.§+o§.§7p§.x;
         _loc3_.§5+§.y += _loc3_.§=!P§ * _loc5_ * this.§+o§.§7p§.y;
         _loc3_.m_angularVelocity += _loc3_.§`!6§ * _loc5_ * this.§+o§.§`! §;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::@6;
         var _loc4_:b2Body = b2internal::[L;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§#k§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§^!E§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§#k§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§^!E§();
         }
         var _loc7_:Number = this.§-!@§ - (_loc5_ + this.§-!!§ * _loc6_);
         var _loc8_:Number = -this.§[`§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§=!P§ * _loc8_ * this.§+o§.§<#§.x;
         _loc3_.m_sweep.c.y += _loc3_.§=!P§ * _loc8_ * this.§+o§.§<#§.y;
         _loc3_.m_sweep.a += _loc3_.§`!6§ * _loc8_ * this.§+o§.§ !'§;
         _loc4_.m_sweep.c.x += _loc4_.§=!P§ * _loc8_ * this.§+o§.§7p§.x;
         _loc4_.m_sweep.c.y += _loc4_.§=!P§ * _loc8_ * this.§+o§.§7p§.y;
         _loc4_.m_sweep.a += _loc4_.§`!6§ * _loc8_ * this.§+o§.§`! §;
         _loc3_.§@d§();
         _loc4_.§@d§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
