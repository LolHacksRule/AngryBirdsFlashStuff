package §!H§
{
   import §!!B§.b2Body;
   import §!!B§.b2TimeStep;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Mat22;
   import §;U§.b2Vec2;
   
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
      
      private var §[p§:b2Jacobian;
      
      private var §!!Y§:Number;
      
      private var §;!1§:Number;
      
      private var §^"§:Number;
      
      private var §9$§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§[p§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§@!_§;
         var _loc3_:int = param1.joint2.§@!_§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§<"§();
         §!!!§ = param1.joint1.§ !M§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§>D§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§4#§();
         }
         this.m_ground2 = param1.joint2.§<"§();
         §%!§ = param1.joint2.§ !M§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§>D§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§4#§();
         }
         this.§;!1§ = param1.§!X§;
         this.§!!Y§ = _loc4_ + this.§;!1§ * _loc5_;
         this.§9$§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!!!.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9$§ * this.§[p§.§9!E§.x,param1 * this.§9$§ * this.§[p§.§9!E§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::%!.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::%!.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::%!.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§9$§ * this.§[p§.§9!E§.x;
         var _loc7_:Number = this.§9$§ * this.§[p§.§9!E§.y;
         return param1 * (this.§9$§ * this.§[p§.§1!@§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §#!A§() : Number
      {
         return this.§;!1§;
      }
      
      public function §6!]§(param1:Number) : void
      {
         this.§;!1§ = param1;
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
         _loc4_ = b2internal::!!!;
         var _loc5_:b2Body = b2internal::%!;
         var _loc14_:Number = 0;
         this.§[p§.§4S§();
         if(this.m_revolute1)
         {
            this.§[p§.§`U§ = -1;
            _loc14_ += _loc4_.§<!V§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§;%§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§[p§.§=!L§.Set(-_loc6_,-_loc7_);
            this.§[p§.§`U§ = -_loc12_;
            _loc14_ += _loc4_.§?t§ + _loc4_.§<!V§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§[p§.§1!@§ = -this.§;!1§;
            _loc14_ += this.§;!1§ * this.§;!1§ * _loc5_.§<!V§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§;%§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§[p§.§9!E§.Set(-this.§;!1§ * _loc6_,-this.§;!1§ * _loc7_);
            this.§[p§.§1!@§ = -this.§;!1§ * _loc12_;
            _loc14_ += this.§;!1§ * this.§;!1§ * (_loc5_.§?t§ + _loc5_.§<!V§ * _loc12_ * _loc12_);
         }
         this.§^"§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§7!Z§)
         {
            _loc4_.§7W§.x += _loc4_.§?t§ * this.§9$§ * this.§[p§.§=!L§.x;
            _loc4_.§7W§.y += _loc4_.§?t§ * this.§9$§ * this.§[p§.§=!L§.y;
            _loc4_.m_angularVelocity += _loc4_.§<!V§ * this.§9$§ * this.§[p§.§`U§;
            _loc5_.§7W§.x += _loc5_.§?t§ * this.§9$§ * this.§[p§.§9!E§.x;
            _loc5_.§7W§.y += _loc5_.§?t§ * this.§9$§ * this.§[p§.§9!E§.y;
            _loc5_.m_angularVelocity += _loc5_.§<!V§ * this.§9$§ * this.§[p§.§1!@§;
         }
         else
         {
            this.§9$§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::!!!;
         var _loc3_:b2Body = b2internal::%!;
         var _loc4_:Number = this.§[p§.§#s§(_loc2_.§7W§,_loc2_.m_angularVelocity,_loc3_.§7W§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§^"§ * _loc4_;
         this.§9$§ += _loc5_;
         _loc2_.§7W§.x += _loc2_.§?t§ * _loc5_ * this.§[p§.§=!L§.x;
         _loc2_.§7W§.y += _loc2_.§?t§ * _loc5_ * this.§[p§.§=!L§.y;
         _loc2_.m_angularVelocity += _loc2_.§<!V§ * _loc5_ * this.§[p§.§`U§;
         _loc3_.§7W§.x += _loc3_.§?t§ * _loc5_ * this.§[p§.§9!E§.x;
         _loc3_.§7W§.y += _loc3_.§?t§ * _loc5_ * this.§[p§.§9!E§.y;
         _loc3_.m_angularVelocity += _loc3_.§<!V§ * _loc5_ * this.§[p§.§1!@§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::!!!;
         var _loc4_:b2Body = b2internal::%!;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§>D§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§4#§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§>D§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§4#§();
         }
         var _loc7_:Number = this.§!!Y§ - (_loc5_ + this.§;!1§ * _loc6_);
         var _loc8_:Number = -this.§^"§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§?t§ * _loc8_ * this.§[p§.§=!L§.x;
         _loc3_.m_sweep.c.y += _loc3_.§?t§ * _loc8_ * this.§[p§.§=!L§.y;
         _loc3_.m_sweep.a += _loc3_.§<!V§ * _loc8_ * this.§[p§.§`U§;
         _loc4_.m_sweep.c.x += _loc4_.§?t§ * _loc8_ * this.§[p§.§9!E§.x;
         _loc4_.m_sweep.c.y += _loc4_.§?t§ * _loc8_ * this.§[p§.§9!E§.y;
         _loc4_.m_sweep.a += _loc4_.§<!V§ * _loc8_ * this.§[p§.§1!@§;
         _loc3_.§9!8§();
         _loc4_.§9!8§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
