package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
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
      
      private var §7!a§:b2Jacobian;
      
      private var §"!i§:Number;
      
      private var §do§:Number;
      
      private var §#K§:Number;
      
      private var §+!P§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§7!a§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§"!1§;
         var _loc3_:int = param1.joint2.§"!1§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§3!!§();
         §^^§ = param1.joint1.§^F§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§;w§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§!!Y§();
         }
         this.m_ground2 = param1.joint2.§3!!§();
         §7!<§ = param1.joint2.§^F§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§;w§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§!!Y§();
         }
         this.§do§ = param1.§32§;
         this.§"!i§ = _loc4_ + this.§do§ * _loc5_;
         this.§+!P§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+!P§ * this.§7!a§.§[!k§.x,param1 * this.§+!P§ * this.§7!a§.§[!k§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::7!<.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::7!<.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::7!<.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§+!P§ * this.§7!a§.§[!k§.x;
         var _loc7_:Number = this.§+!P§ * this.§7!a§.§[!k§.y;
         return param1 * (this.§+!P§ * this.§7!a§.§`e§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §?!T§() : Number
      {
         return this.§do§;
      }
      
      public function §2^§(param1:Number) : void
      {
         this.§do§ = param1;
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
         _loc4_ = b2internal::^^;
         var _loc5_:b2Body = b2internal::7!<;
         var _loc14_:Number = 0;
         this.§7!a§.§%&§();
         if(this.m_revolute1)
         {
            this.§7!a§.§6w§ = -1;
            _loc14_ += _loc4_.§^!B§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§+!A§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§7!a§.§+O§.Set(-_loc6_,-_loc7_);
            this.§7!a§.§6w§ = -_loc12_;
            _loc14_ += _loc4_.§1!X§ + _loc4_.§^!B§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§7!a§.§`e§ = -this.§do§;
            _loc14_ += this.§do§ * this.§do§ * _loc5_.§^!B§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§+!A§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§7!a§.§[!k§.Set(-this.§do§ * _loc6_,-this.§do§ * _loc7_);
            this.§7!a§.§`e§ = -this.§do§ * _loc12_;
            _loc14_ += this.§do§ * this.§do§ * (_loc5_.§1!X§ + _loc5_.§^!B§ * _loc12_ * _loc12_);
         }
         this.§#K§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§9!G§)
         {
            _loc4_.§9!§.x += _loc4_.§1!X§ * this.§+!P§ * this.§7!a§.§+O§.x;
            _loc4_.§9!§.y += _loc4_.§1!X§ * this.§+!P§ * this.§7!a§.§+O§.y;
            _loc4_.m_angularVelocity += _loc4_.§^!B§ * this.§+!P§ * this.§7!a§.§6w§;
            _loc5_.§9!§.x += _loc5_.§1!X§ * this.§+!P§ * this.§7!a§.§[!k§.x;
            _loc5_.§9!§.y += _loc5_.§1!X§ * this.§+!P§ * this.§7!a§.§[!k§.y;
            _loc5_.m_angularVelocity += _loc5_.§^!B§ * this.§+!P§ * this.§7!a§.§`e§;
         }
         else
         {
            this.§+!P§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         var _loc4_:Number = this.§7!a§.§,#§(_loc2_.§9!§,_loc2_.m_angularVelocity,_loc3_.§9!§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§#K§ * _loc4_;
         this.§+!P§ += _loc5_;
         _loc2_.§9!§.x += _loc2_.§1!X§ * _loc5_ * this.§7!a§.§+O§.x;
         _loc2_.§9!§.y += _loc2_.§1!X§ * _loc5_ * this.§7!a§.§+O§.y;
         _loc2_.m_angularVelocity += _loc2_.§^!B§ * _loc5_ * this.§7!a§.§6w§;
         _loc3_.§9!§.x += _loc3_.§1!X§ * _loc5_ * this.§7!a§.§[!k§.x;
         _loc3_.§9!§.y += _loc3_.§1!X§ * _loc5_ * this.§7!a§.§[!k§.y;
         _loc3_.m_angularVelocity += _loc3_.§^!B§ * _loc5_ * this.§7!a§.§`e§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::^^;
         var _loc4_:b2Body = b2internal::7!<;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§;w§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§!!Y§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§;w§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§!!Y§();
         }
         var _loc7_:Number = this.§"!i§ - (_loc5_ + this.§do§ * _loc6_);
         var _loc8_:Number = -this.§#K§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§1!X§ * _loc8_ * this.§7!a§.§+O§.x;
         _loc3_.m_sweep.c.y += _loc3_.§1!X§ * _loc8_ * this.§7!a§.§+O§.y;
         _loc3_.m_sweep.a += _loc3_.§^!B§ * _loc8_ * this.§7!a§.§6w§;
         _loc4_.m_sweep.c.x += _loc4_.§1!X§ * _loc8_ * this.§7!a§.§[!k§.x;
         _loc4_.m_sweep.c.y += _loc4_.§1!X§ * _loc8_ * this.§7!a§.§[!k§.y;
         _loc4_.m_sweep.a += _loc4_.§^!B§ * _loc8_ * this.§7!a§.§`e§;
         _loc3_.§ n§();
         _loc4_.§ n§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
