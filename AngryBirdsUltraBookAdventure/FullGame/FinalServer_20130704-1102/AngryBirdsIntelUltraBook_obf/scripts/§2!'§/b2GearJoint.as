package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
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
      
      private var § !Q§:b2Jacobian;
      
      private var §-#§:Number;
      
      private var §2z§:Number;
      
      private var §"X§:Number;
      
      private var §&""§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ !Q§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§3r§;
         var _loc3_:int = param1.joint2.§3r§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§&,§();
         §&A§ = param1.joint1.§<! §();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§5M§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§+t§();
         }
         this.m_ground2 = param1.joint2.§&,§();
         §4!d§ = param1.joint2.§<! §();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§5M§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§+t§();
         }
         this.§2z§ = param1.§?!s§;
         this.§-#§ = _loc4_ + this.§2z§ * _loc5_;
         this.§&""§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§&""§ * this.§ !Q§.§"S§.x,param1 * this.§&""§ * this.§ !Q§.§"S§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::4!d.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::4!d.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::4!d.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§&""§ * this.§ !Q§.§"S§.x;
         var _loc7_:Number = this.§&""§ * this.§ !Q§.§"S§.y;
         return param1 * (this.§&""§ * this.§ !Q§.§5!<§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §%!d§() : Number
      {
         return this.§2z§;
      }
      
      public function §0!<§(param1:Number) : void
      {
         this.§2z§ = param1;
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
         _loc4_ = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         var _loc14_:Number = 0;
         this.§ !Q§.§+J§();
         if(this.m_revolute1)
         {
            this.§ !Q§.§[!p§ = -1;
            _loc14_ += _loc4_.§2!1§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§>!C§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§ !Q§.§,!]§.Set(-_loc6_,-_loc7_);
            this.§ !Q§.§[!p§ = -_loc12_;
            _loc14_ += _loc4_.§3!q§ + _loc4_.§2!1§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§ !Q§.§5!<§ = -this.§2z§;
            _loc14_ += this.§2z§ * this.§2z§ * _loc5_.§2!1§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§>!C§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§ !Q§.§"S§.Set(-this.§2z§ * _loc6_,-this.§2z§ * _loc7_);
            this.§ !Q§.§5!<§ = -this.§2z§ * _loc12_;
            _loc14_ += this.§2z§ * this.§2z§ * (_loc5_.§3!q§ + _loc5_.§2!1§ * _loc12_ * _loc12_);
         }
         this.§"X§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§9!w§)
         {
            _loc4_.§%!<§.x += _loc4_.§3!q§ * this.§&""§ * this.§ !Q§.§,!]§.x;
            _loc4_.§%!<§.y += _loc4_.§3!q§ * this.§&""§ * this.§ !Q§.§,!]§.y;
            _loc4_.m_angularVelocity += _loc4_.§2!1§ * this.§&""§ * this.§ !Q§.§[!p§;
            _loc5_.§%!<§.x += _loc5_.§3!q§ * this.§&""§ * this.§ !Q§.§"S§.x;
            _loc5_.§%!<§.y += _loc5_.§3!q§ * this.§&""§ * this.§ !Q§.§"S§.y;
            _loc5_.m_angularVelocity += _loc5_.§2!1§ * this.§&""§ * this.§ !Q§.§5!<§;
         }
         else
         {
            this.§&""§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         var _loc4_:Number = this.§ !Q§.§]l§(_loc2_.§%!<§,_loc2_.m_angularVelocity,_loc3_.§%!<§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§"X§ * _loc4_;
         this.§&""§ += _loc5_;
         _loc2_.§%!<§.x += _loc2_.§3!q§ * _loc5_ * this.§ !Q§.§,!]§.x;
         _loc2_.§%!<§.y += _loc2_.§3!q§ * _loc5_ * this.§ !Q§.§,!]§.y;
         _loc2_.m_angularVelocity += _loc2_.§2!1§ * _loc5_ * this.§ !Q§.§[!p§;
         _loc3_.§%!<§.x += _loc3_.§3!q§ * _loc5_ * this.§ !Q§.§"S§.x;
         _loc3_.§%!<§.y += _loc3_.§3!q§ * _loc5_ * this.§ !Q§.§"S§.y;
         _loc3_.m_angularVelocity += _loc3_.§2!1§ * _loc5_ * this.§ !Q§.§5!<§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§5M§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§+t§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§5M§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§+t§();
         }
         var _loc7_:Number = this.§-#§ - (_loc5_ + this.§2z§ * _loc6_);
         var _loc8_:Number = -this.§"X§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§3!q§ * _loc8_ * this.§ !Q§.§,!]§.x;
         _loc3_.m_sweep.c.y += _loc3_.§3!q§ * _loc8_ * this.§ !Q§.§,!]§.y;
         _loc3_.m_sweep.a += _loc3_.§2!1§ * _loc8_ * this.§ !Q§.§[!p§;
         _loc4_.m_sweep.c.x += _loc4_.§3!q§ * _loc8_ * this.§ !Q§.§"S§.x;
         _loc4_.m_sweep.c.y += _loc4_.§3!q§ * _loc8_ * this.§ !Q§.§"S§.y;
         _loc4_.m_sweep.a += _loc4_.§2!1§ * _loc8_ * this.§ !Q§.§5!<§;
         _loc3_.§@!1§();
         _loc4_.§@!1§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
