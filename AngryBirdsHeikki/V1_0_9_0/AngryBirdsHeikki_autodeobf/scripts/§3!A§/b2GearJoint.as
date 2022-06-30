package §3!A§
{
   import § !_§.b2Mat22;
   import § !_§.b2Vec2;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   import §^!Z§.b2TimeStep;
   
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
      
      private var §&>§:b2Jacobian;
      
      private var §<!G§:Number;
      
      private var §!!S§:Number;
      
      private var §6H§:Number;
      
      private var §#I§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&>§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§3!a§;
         var _loc3_:int = param1.joint2.§3!a§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§=!e§();
         §,"§ = param1.joint1.§^5§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§+!0§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§#y§();
         }
         this.m_ground2 = param1.joint2.§=!e§();
         §,g§ = param1.joint2.§^5§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§+!0§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§#y§();
         }
         this.§!!S§ = param1.§1!K§;
         this.§<!G§ = _loc4_ + this.§!!S§ * _loc5_;
         this.§#I§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::,".GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,g.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§#I§ * this.§&>§.§';§.x,param1 * this.§#I§ * this.§&>§.§';§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::,g.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::,g.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::,g.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§#I§ * this.§&>§.§';§.x;
         var _loc7_:Number = this.§#I§ * this.§&>§.§';§.y;
         return param1 * (this.§#I§ * this.§&>§.§9!7§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §!v§() : Number
      {
         return this.§!!S§;
      }
      
      public function §49§(param1:Number) : void
      {
         this.§!!S§ = param1;
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
         _loc4_ = b2internal::,";
         var _loc5_:b2Body = b2internal::,g;
         var _loc14_:Number = 0;
         this.§&>§.§>!T§();
         if(this.m_revolute1)
         {
            this.§&>§.§;#§ = -1;
            _loc14_ += _loc4_.§-!f§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§<=§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§&>§.§4a§.Set(-_loc6_,-_loc7_);
            this.§&>§.§;#§ = -_loc12_;
            _loc14_ += _loc4_.§1!+§ + _loc4_.§-!f§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§&>§.§9!7§ = -this.§!!S§;
            _loc14_ += this.§!!S§ * this.§!!S§ * _loc5_.§-!f§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§<=§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§&>§.§';§.Set(-this.§!!S§ * _loc6_,-this.§!!S§ * _loc7_);
            this.§&>§.§9!7§ = -this.§!!S§ * _loc12_;
            _loc14_ += this.§!!S§ * this.§!!S§ * (_loc5_.§1!+§ + _loc5_.§-!f§ * _loc12_ * _loc12_);
         }
         this.§6H§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§9!N§)
         {
            _loc4_.§@!1§.x += _loc4_.§1!+§ * this.§#I§ * this.§&>§.§4a§.x;
            _loc4_.§@!1§.y += _loc4_.§1!+§ * this.§#I§ * this.§&>§.§4a§.y;
            _loc4_.m_angularVelocity += _loc4_.§-!f§ * this.§#I§ * this.§&>§.§;#§;
            _loc5_.§@!1§.x += _loc5_.§1!+§ * this.§#I§ * this.§&>§.§';§.x;
            _loc5_.§@!1§.y += _loc5_.§1!+§ * this.§#I§ * this.§&>§.§';§.y;
            _loc5_.m_angularVelocity += _loc5_.§-!f§ * this.§#I§ * this.§&>§.§9!7§;
         }
         else
         {
            this.§#I§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::,";
         var _loc3_:b2Body = b2internal::,g;
         var _loc4_:Number = this.§&>§.§#>§(_loc2_.§@!1§,_loc2_.m_angularVelocity,_loc3_.§@!1§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§6H§ * _loc4_;
         this.§#I§ += _loc5_;
         _loc2_.§@!1§.x += _loc2_.§1!+§ * _loc5_ * this.§&>§.§4a§.x;
         _loc2_.§@!1§.y += _loc2_.§1!+§ * _loc5_ * this.§&>§.§4a§.y;
         _loc2_.m_angularVelocity += _loc2_.§-!f§ * _loc5_ * this.§&>§.§;#§;
         _loc3_.§@!1§.x += _loc3_.§1!+§ * _loc5_ * this.§&>§.§';§.x;
         _loc3_.§@!1§.y += _loc3_.§1!+§ * _loc5_ * this.§&>§.§';§.y;
         _loc3_.m_angularVelocity += _loc3_.§-!f§ * _loc5_ * this.§&>§.§9!7§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::,";
         var _loc4_:b2Body = b2internal::,g;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§+!0§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§#y§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§+!0§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§#y§();
         }
         var _loc7_:Number = this.§<!G§ - (_loc5_ + this.§!!S§ * _loc6_);
         var _loc8_:Number = -this.§6H§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§1!+§ * _loc8_ * this.§&>§.§4a§.x;
         _loc3_.m_sweep.c.y += _loc3_.§1!+§ * _loc8_ * this.§&>§.§4a§.y;
         _loc3_.m_sweep.a += _loc3_.§-!f§ * _loc8_ * this.§&>§.§;#§;
         _loc4_.m_sweep.c.x += _loc4_.§1!+§ * _loc8_ * this.§&>§.§';§.x;
         _loc4_.m_sweep.c.y += _loc4_.§1!+§ * _loc8_ * this.§&>§.§';§.y;
         _loc4_.m_sweep.a += _loc4_.§-!f§ * _loc8_ * this.§&>§.§9!7§;
         _loc3_.§1&§();
         _loc4_.§1&§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
