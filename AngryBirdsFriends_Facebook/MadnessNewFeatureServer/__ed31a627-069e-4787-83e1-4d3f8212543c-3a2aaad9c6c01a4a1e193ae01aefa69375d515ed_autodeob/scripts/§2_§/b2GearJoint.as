package §2_§
{
   import §?!C§.b2Mat22;
   import §?!C§.b2Vec2;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2TimeStep;
   
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
      
      private var §]"&§:b2Jacobian;
      
      private var §3#x§:Number;
      
      private var §6"u§:Number;
      
      private var §<#F§:Number;
      
      private var § w§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]"&§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§5"F§;
         var _loc3_:int = param1.joint2.§5"F§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§"#2§();
         §]!"§ = param1.joint1.§1"z§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§;"p§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§"#@§();
         }
         this.m_ground2 = param1.joint2.§"#2§();
         §"$'§ = param1.joint2.§1"z§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§;"p§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§"#@§();
         }
         this.§6"u§ = param1.§7"$§;
         this.§3#x§ = _loc4_ + this.§6"u§ * _loc5_;
         this.§ w§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!".GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"$'.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§ w§ * this.§]"&§.§5"T§.x,param1 * this.§ w§ * this.§]"&§.§5"T§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::"$'.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::"$'.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::"$'.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§ w§ * this.§]"&§.§5"T§.x;
         var _loc7_:Number = this.§ w§ * this.§]"&§.§5"T§.y;
         return param1 * (this.§ w§ * this.§]"&§.§3"t§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §3"n§() : Number
      {
         return this.§6"u§;
      }
      
      public function §+"t§(param1:Number) : void
      {
         this.§6"u§ = param1;
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
         _loc4_ = b2internal::]!";
         var _loc5_:b2Body = b2internal::"$';
         var _loc14_:Number = 0;
         this.§]"&§.§1c§();
         if(this.m_revolute1)
         {
            this.§]"&§.§<=§ = -1;
            _loc14_ += _loc4_.§!#k§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§85§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§]"&§.§3!2§.Set(-_loc6_,-_loc7_);
            this.§]"&§.§<=§ = -_loc12_;
            _loc14_ += _loc4_.§;#>§ + _loc4_.§!#k§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§]"&§.§3"t§ = -this.§6"u§;
            _loc14_ += this.§6"u§ * this.§6"u§ * _loc5_.§!#k§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§85§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§]"&§.§5"T§.Set(-this.§6"u§ * _loc6_,-this.§6"u§ * _loc7_);
            this.§]"&§.§3"t§ = -this.§6"u§ * _loc12_;
            _loc14_ += this.§6"u§ * this.§6"u§ * (_loc5_.§;#>§ + _loc5_.§!#k§ * _loc12_ * _loc12_);
         }
         this.§<#F§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§,#g§)
         {
            _loc4_.§!#p§.x += _loc4_.§;#>§ * this.§ w§ * this.§]"&§.§3!2§.x;
            _loc4_.§!#p§.y += _loc4_.§;#>§ * this.§ w§ * this.§]"&§.§3!2§.y;
            _loc4_.m_angularVelocity += _loc4_.§!#k§ * this.§ w§ * this.§]"&§.§<=§;
            _loc5_.§!#p§.x += _loc5_.§;#>§ * this.§ w§ * this.§]"&§.§5"T§.x;
            _loc5_.§!#p§.y += _loc5_.§;#>§ * this.§ w§ * this.§]"&§.§5"T§.y;
            _loc5_.m_angularVelocity += _loc5_.§!#k§ * this.§ w§ * this.§]"&§.§3"t§;
         }
         else
         {
            this.§ w§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::]!";
         var _loc3_:b2Body = b2internal::"$';
         var _loc4_:Number = this.§]"&§.§8!+§(_loc2_.§!#p§,_loc2_.m_angularVelocity,_loc3_.§!#p§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§<#F§ * _loc4_;
         this.§ w§ += _loc5_;
         _loc2_.§!#p§.x += _loc2_.§;#>§ * _loc5_ * this.§]"&§.§3!2§.x;
         _loc2_.§!#p§.y += _loc2_.§;#>§ * _loc5_ * this.§]"&§.§3!2§.y;
         _loc2_.m_angularVelocity += _loc2_.§!#k§ * _loc5_ * this.§]"&§.§<=§;
         _loc3_.§!#p§.x += _loc3_.§;#>§ * _loc5_ * this.§]"&§.§5"T§.x;
         _loc3_.§!#p§.y += _loc3_.§;#>§ * _loc5_ * this.§]"&§.§5"T§.y;
         _loc3_.m_angularVelocity += _loc3_.§!#k§ * _loc5_ * this.§]"&§.§3"t§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::]!";
         var _loc4_:b2Body = b2internal::"$';
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§;"p§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§"#@§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§;"p§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§"#@§();
         }
         var _loc7_:Number = this.§3#x§ - (_loc5_ + this.§6"u§ * _loc6_);
         var _loc8_:Number = -this.§<#F§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§;#>§ * _loc8_ * this.§]"&§.§3!2§.x;
         _loc3_.m_sweep.c.y += _loc3_.§;#>§ * _loc8_ * this.§]"&§.§3!2§.y;
         _loc3_.m_sweep.a += _loc3_.§!#k§ * _loc8_ * this.§]"&§.§<=§;
         _loc4_.m_sweep.c.x += _loc4_.§;#>§ * _loc8_ * this.§]"&§.§5"T§.x;
         _loc4_.m_sweep.c.y += _loc4_.§;#>§ * _loc8_ * this.§]"&§.§5"T§.y;
         _loc4_.m_sweep.a += _loc4_.§!#k§ * _loc8_ * this.§]"&§.§3"t§;
         _loc3_.§[X§();
         _loc4_.§[X§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
