package §=![§
{
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §7"A§.b2Mat22;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   import §>"_§.b2TimeStep;
   
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
      
      private var §4!F§:b2Jacobian;
      
      private var §0<§:Number;
      
      private var §^!6§:Number;
      
      private var §;,§:Number;
      
      private var §8!t§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§4!F§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§<"a§;
         var _loc3_:int = param1.joint2.§<"a§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§!Q§();
         § ,§ = param1.joint1.§>Y§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§'R§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§6R§();
         }
         this.m_ground2 = param1.joint2.§!Q§();
         §?!p§ = param1.joint2.§>Y§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§'R§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§6R§();
         }
         this.§^!6§ = param1.§@"R§;
         this.§0<§ = _loc4_ + this.§^!6§ * _loc5_;
         this.§8!t§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: ,.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!p.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!t§ * this.§4!F§.§1"r§.x,param1 * this.§8!t§ * this.§4!F§.§1"r§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::?!p.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::?!p.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::?!p.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§8!t§ * this.§4!F§.§1"r§.x;
         var _loc7_:Number = this.§8!t§ * this.§4!F§.§1"r§.y;
         return param1 * (this.§8!t§ * this.§4!F§.§%Z§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §+"w§() : Number
      {
         return this.§^!6§;
      }
      
      public function § j§(param1:Number) : void
      {
         this.§^!6§ = param1;
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
         _loc4_ = b2internal:: ,;
         var _loc5_:b2Body = b2internal::?!p;
         var _loc14_:Number = 0;
         this.§4!F§.§6![§();
         if(this.m_revolute1)
         {
            this.§4!F§.§`!&§ = -1;
            _loc14_ += _loc4_.§&#+§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§-"N§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§4!F§.§8!G§.Set(-_loc6_,-_loc7_);
            this.§4!F§.§`!&§ = -_loc12_;
            _loc14_ += _loc4_.§ !o§ + _loc4_.§&#+§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§4!F§.§%Z§ = -this.§^!6§;
            _loc14_ += this.§^!6§ * this.§^!6§ * _loc5_.§&#+§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§-"N§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§4!F§.§1"r§.Set(-this.§^!6§ * _loc6_,-this.§^!6§ * _loc7_);
            this.§4!F§.§%Z§ = -this.§^!6§ * _loc12_;
            _loc14_ += this.§^!6§ * this.§^!6§ * (_loc5_.§ !o§ + _loc5_.§&#+§ * _loc12_ * _loc12_);
         }
         this.§;,§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§?!'§)
         {
            _loc4_.§9"H§.x += _loc4_.§ !o§ * this.§8!t§ * this.§4!F§.§8!G§.x;
            _loc4_.§9"H§.y += _loc4_.§ !o§ * this.§8!t§ * this.§4!F§.§8!G§.y;
            _loc4_.m_angularVelocity += _loc4_.§&#+§ * this.§8!t§ * this.§4!F§.§`!&§;
            _loc5_.§9"H§.x += _loc5_.§ !o§ * this.§8!t§ * this.§4!F§.§1"r§.x;
            _loc5_.§9"H§.y += _loc5_.§ !o§ * this.§8!t§ * this.§4!F§.§1"r§.y;
            _loc5_.m_angularVelocity += _loc5_.§&#+§ * this.§8!t§ * this.§4!F§.§%Z§;
         }
         else
         {
            this.§8!t§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal:: ,;
         var _loc3_:b2Body = b2internal::?!p;
         var _loc4_:Number = this.§4!F§.§2#!§(_loc2_.§9"H§,_loc2_.m_angularVelocity,_loc3_.§9"H§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§;,§ * _loc4_;
         this.§8!t§ += _loc5_;
         _loc2_.§9"H§.x += _loc2_.§ !o§ * _loc5_ * this.§4!F§.§8!G§.x;
         _loc2_.§9"H§.y += _loc2_.§ !o§ * _loc5_ * this.§4!F§.§8!G§.y;
         _loc2_.m_angularVelocity += _loc2_.§&#+§ * _loc5_ * this.§4!F§.§`!&§;
         _loc3_.§9"H§.x += _loc3_.§ !o§ * _loc5_ * this.§4!F§.§1"r§.x;
         _loc3_.§9"H§.y += _loc3_.§ !o§ * _loc5_ * this.§4!F§.§1"r§.y;
         _loc3_.m_angularVelocity += _loc3_.§&#+§ * _loc5_ * this.§4!F§.§%Z§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal:: ,;
         var _loc4_:b2Body = b2internal::?!p;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§'R§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§6R§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§'R§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§6R§();
         }
         var _loc7_:Number = this.§0<§ - (_loc5_ + this.§^!6§ * _loc6_);
         var _loc8_:Number = -this.§;,§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§ !o§ * _loc8_ * this.§4!F§.§8!G§.x;
         _loc3_.m_sweep.c.y += _loc3_.§ !o§ * _loc8_ * this.§4!F§.§8!G§.y;
         _loc3_.m_sweep.a += _loc3_.§&#+§ * _loc8_ * this.§4!F§.§`!&§;
         _loc4_.m_sweep.c.x += _loc4_.§ !o§ * _loc8_ * this.§4!F§.§1"r§.x;
         _loc4_.m_sweep.c.y += _loc4_.§ !o§ * _loc8_ * this.§4!F§.§1"r§.y;
         _loc4_.m_sweep.a += _loc4_.§&#+§ * _loc8_ * this.§4!F§.§%Z§;
         _loc3_.§&"]§();
         _loc4_.§&"]§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
