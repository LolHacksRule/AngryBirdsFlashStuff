package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
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
      
      private var §9W§:b2Jacobian;
      
      private var § o§:Number;
      
      private var §4"E§:Number;
      
      private var §,!v§:Number;
      
      private var §2!_§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9W§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§<"@§;
         var _loc3_:int = param1.joint2.§<"@§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§["H§();
         §3"X§ = param1.joint1.§]!s§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§6""§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§-"<§();
         }
         this.m_ground2 = param1.joint2.§["H§();
         §5!§ = param1.joint2.§]!s§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§6""§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§-"<§();
         }
         this.§4"E§ = param1.§#9§;
         this.§ o§ = _loc4_ + this.§4"E§ * _loc5_;
         this.§2!_§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§2!_§ * this.§9W§.§7"M§.x,param1 * this.§2!_§ * this.§9W§.§7"M§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::5!.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::5!.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::5!.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§2!_§ * this.§9W§.§7"M§.x;
         var _loc7_:Number = this.§2!_§ * this.§9W§.§7"M§.y;
         return param1 * (this.§2!_§ * this.§9W§.§;!M§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §'!;§() : Number
      {
         return this.§4"E§;
      }
      
      public function §]!9§(param1:Number) : void
      {
         this.§4"E§ = param1;
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
         _loc4_ = b2internal::3"X;
         var _loc5_:b2Body = b2internal::5!;
         var _loc14_:Number = 0;
         this.§9W§.§%y§();
         if(this.m_revolute1)
         {
            this.§9W§.§,"N§ = -1;
            _loc14_ += _loc4_.§,H§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§2!L§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§9W§.§`5§.Set(-_loc6_,-_loc7_);
            this.§9W§.§,"N§ = -_loc12_;
            _loc14_ += _loc4_.§-@§ + _loc4_.§,H§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§9W§.§;!M§ = -this.§4"E§;
            _loc14_ += this.§4"E§ * this.§4"E§ * _loc5_.§,H§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§2!L§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§9W§.§7"M§.Set(-this.§4"E§ * _loc6_,-this.§4"E§ * _loc7_);
            this.§9W§.§;!M§ = -this.§4"E§ * _loc12_;
            _loc14_ += this.§4"E§ * this.§4"E§ * (_loc5_.§-@§ + _loc5_.§,H§ * _loc12_ * _loc12_);
         }
         this.§,!v§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§@I§)
         {
            _loc4_.§"!_§.x += _loc4_.§-@§ * this.§2!_§ * this.§9W§.§`5§.x;
            _loc4_.§"!_§.y += _loc4_.§-@§ * this.§2!_§ * this.§9W§.§`5§.y;
            _loc4_.m_angularVelocity += _loc4_.§,H§ * this.§2!_§ * this.§9W§.§,"N§;
            _loc5_.§"!_§.x += _loc5_.§-@§ * this.§2!_§ * this.§9W§.§7"M§.x;
            _loc5_.§"!_§.y += _loc5_.§-@§ * this.§2!_§ * this.§9W§.§7"M§.y;
            _loc5_.m_angularVelocity += _loc5_.§,H§ * this.§2!_§ * this.§9W§.§;!M§;
         }
         else
         {
            this.§2!_§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::3"X;
         var _loc3_:b2Body = b2internal::5!;
         var _loc4_:Number = this.§9W§.§5!m§(_loc2_.§"!_§,_loc2_.m_angularVelocity,_loc3_.§"!_§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§,!v§ * _loc4_;
         this.§2!_§ += _loc5_;
         _loc2_.§"!_§.x += _loc2_.§-@§ * _loc5_ * this.§9W§.§`5§.x;
         _loc2_.§"!_§.y += _loc2_.§-@§ * _loc5_ * this.§9W§.§`5§.y;
         _loc2_.m_angularVelocity += _loc2_.§,H§ * _loc5_ * this.§9W§.§,"N§;
         _loc3_.§"!_§.x += _loc3_.§-@§ * _loc5_ * this.§9W§.§7"M§.x;
         _loc3_.§"!_§.y += _loc3_.§-@§ * _loc5_ * this.§9W§.§7"M§.y;
         _loc3_.m_angularVelocity += _loc3_.§,H§ * _loc5_ * this.§9W§.§;!M§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::3"X;
         var _loc4_:b2Body = b2internal::5!;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§6""§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§-"<§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§6""§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§-"<§();
         }
         var _loc7_:Number = this.§ o§ - (_loc5_ + this.§4"E§ * _loc6_);
         var _loc8_:Number = -this.§,!v§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§-@§ * _loc8_ * this.§9W§.§`5§.x;
         _loc3_.m_sweep.c.y += _loc3_.§-@§ * _loc8_ * this.§9W§.§`5§.y;
         _loc3_.m_sweep.a += _loc3_.§,H§ * _loc8_ * this.§9W§.§,"N§;
         _loc4_.m_sweep.c.x += _loc4_.§-@§ * _loc8_ * this.§9W§.§7"M§.x;
         _loc4_.m_sweep.c.y += _loc4_.§-@§ * _loc8_ * this.§9W§.§7"M§.y;
         _loc4_.m_sweep.a += _loc4_.§,H§ * _loc8_ * this.§9W§.§;!M§;
         _loc3_.§+!q§();
         _loc4_.§+!q§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
