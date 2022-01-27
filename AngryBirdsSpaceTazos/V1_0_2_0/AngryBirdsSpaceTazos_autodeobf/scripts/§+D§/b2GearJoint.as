package §+D§
{
   import §#!X§.b2Body;
   import §#!X§.b2TimeStep;
   import §&!S§.b2Mat22;
   import §&!S§.b2Vec2;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
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
      
      private var §,z§:b2Jacobian;
      
      private var §<!`§:Number;
      
      private var §'"?§:Number;
      
      private var §!!F§:Number;
      
      private var §!=§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,z§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§5!q§;
         var _loc3_:int = param1.joint2.§5!q§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§#'§();
         §]X§ = param1.joint1.§@+§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§1"1§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§[!=§();
         }
         this.m_ground2 = param1.joint2.§#'§();
         §9!W§ = param1.joint2.§@+§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§1"1§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§[!=§();
         }
         this.§'"?§ = param1.§1""§;
         this.§<!`§ = _loc4_ + this.§'"?§ * _loc5_;
         this.§!=§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::9!W.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§!=§ * this.§,z§.§19§.x,param1 * this.§!=§ * this.§,z§.§19§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::9!W.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::9!W.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::9!W.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§!=§ * this.§,z§.§19§.x;
         var _loc7_:Number = this.§!=§ * this.§,z§.§19§.y;
         return param1 * (this.§!=§ * this.§,z§.§<!+§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §&C§() : Number
      {
         return this.§'"?§;
      }
      
      public function §@!$§(param1:Number) : void
      {
         this.§'"?§ = param1;
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
         _loc4_ = b2internal::]X;
         var _loc5_:b2Body = b2internal::9!W;
         var _loc14_:Number = 0;
         this.§,z§.§ "2§();
         if(this.m_revolute1)
         {
            this.§,z§.§;!B§ = -1;
            _loc14_ += _loc4_.§@#§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§9C§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§,z§.§,,§.Set(-_loc6_,-_loc7_);
            this.§,z§.§;!B§ = -_loc12_;
            _loc14_ += _loc4_.§]!T§ + _loc4_.§@#§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§,z§.§<!+§ = -this.§'"?§;
            _loc14_ += this.§'"?§ * this.§'"?§ * _loc5_.§@#§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§9C§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§,z§.§19§.Set(-this.§'"?§ * _loc6_,-this.§'"?§ * _loc7_);
            this.§,z§.§<!+§ = -this.§'"?§ * _loc12_;
            _loc14_ += this.§'"?§ * this.§'"?§ * (_loc5_.§]!T§ + _loc5_.§@#§ * _loc12_ * _loc12_);
         }
         this.§!!F§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§3!2§)
         {
            _loc4_.§>w§.x += _loc4_.§]!T§ * this.§!=§ * this.§,z§.§,,§.x;
            _loc4_.§>w§.y += _loc4_.§]!T§ * this.§!=§ * this.§,z§.§,,§.y;
            _loc4_.m_angularVelocity += _loc4_.§@#§ * this.§!=§ * this.§,z§.§;!B§;
            _loc5_.§>w§.x += _loc5_.§]!T§ * this.§!=§ * this.§,z§.§19§.x;
            _loc5_.§>w§.y += _loc5_.§]!T§ * this.§!=§ * this.§,z§.§19§.y;
            _loc5_.m_angularVelocity += _loc5_.§@#§ * this.§!=§ * this.§,z§.§<!+§;
         }
         else
         {
            this.§!=§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::]X;
         var _loc3_:b2Body = b2internal::9!W;
         var _loc4_:Number = this.§,z§.§0k§(_loc2_.§>w§,_loc2_.m_angularVelocity,_loc3_.§>w§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§!!F§ * _loc4_;
         this.§!=§ += _loc5_;
         _loc2_.§>w§.x += _loc2_.§]!T§ * _loc5_ * this.§,z§.§,,§.x;
         _loc2_.§>w§.y += _loc2_.§]!T§ * _loc5_ * this.§,z§.§,,§.y;
         _loc2_.m_angularVelocity += _loc2_.§@#§ * _loc5_ * this.§,z§.§;!B§;
         _loc3_.§>w§.x += _loc3_.§]!T§ * _loc5_ * this.§,z§.§19§.x;
         _loc3_.§>w§.y += _loc3_.§]!T§ * _loc5_ * this.§,z§.§19§.y;
         _loc3_.m_angularVelocity += _loc3_.§@#§ * _loc5_ * this.§,z§.§<!+§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::]X;
         var _loc4_:b2Body = b2internal::9!W;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§1"1§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§[!=§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§1"1§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§[!=§();
         }
         var _loc7_:Number = this.§<!`§ - (_loc5_ + this.§'"?§ * _loc6_);
         var _loc8_:Number = -this.§!!F§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§]!T§ * _loc8_ * this.§,z§.§,,§.x;
         _loc3_.m_sweep.c.y += _loc3_.§]!T§ * _loc8_ * this.§,z§.§,,§.y;
         _loc3_.m_sweep.a += _loc3_.§@#§ * _loc8_ * this.§,z§.§;!B§;
         _loc4_.m_sweep.c.x += _loc4_.§]!T§ * _loc8_ * this.§,z§.§19§.x;
         _loc4_.m_sweep.c.y += _loc4_.§]!T§ * _loc8_ * this.§,z§.§19§.y;
         _loc4_.m_sweep.a += _loc4_.§@#§ * _loc8_ * this.§,z§.§<!+§;
         _loc3_.§;!E§();
         _loc4_.§;!E§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
