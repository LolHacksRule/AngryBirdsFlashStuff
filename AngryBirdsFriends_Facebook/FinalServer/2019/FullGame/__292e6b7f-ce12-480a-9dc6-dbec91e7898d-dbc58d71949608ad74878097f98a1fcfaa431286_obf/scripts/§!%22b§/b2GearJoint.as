package §!"b§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2TimeStep;
   import §04§.b2Mat22;
   import §04§.b2Vec2;
   
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
      
      private var §]"F§:b2Jacobian;
      
      private var §5V§:Number;
      
      private var §3$@§:Number;
      
      private var §'g§:Number;
      
      private var §9b§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]"F§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§#!T§;
         var _loc3_:int = param1.joint2.§#!T§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§0I§();
         §6#6§ = param1.joint1.§2"y§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§9$"§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§3!I§();
         }
         this.m_ground2 = param1.joint2.§0I§();
         §]#j§ = param1.joint2.§2"y§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§9$"§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§3!I§();
         }
         this.§3$@§ = param1.§5#b§;
         this.§5V§ = _loc4_ + this.§3$@§ * _loc5_;
         this.§9b§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6#6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]#j.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9b§ * this.§]"F§.§9#E§.x,param1 * this.§9b§ * this.§]"F§.§9#E§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::]#j.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::]#j.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::]#j.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§9b§ * this.§]"F§.§9#E§.x;
         var _loc7_:Number = this.§9b§ * this.§]"F§.§9#E§.y;
         return param1 * (this.§9b§ * this.§]"F§.§ "K§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §!#=§() : Number
      {
         return this.§3$@§;
      }
      
      public function §'"R§(param1:Number) : void
      {
         this.§3$@§ = param1;
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
         _loc4_ = b2internal::6#6;
         var _loc5_:b2Body = b2internal::]#j;
         var _loc14_:Number = 0;
         this.§]"F§.§3-§();
         if(this.m_revolute1)
         {
            this.§]"F§.§7l§ = -1;
            _loc14_ += _loc4_.§2k§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§&"X§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§]"F§.§1#e§.Set(-_loc6_,-_loc7_);
            this.§]"F§.§7l§ = -_loc12_;
            _loc14_ += _loc4_.§<A§ + _loc4_.§2k§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§]"F§.§ "K§ = -this.§3$@§;
            _loc14_ += this.§3$@§ * this.§3$@§ * _loc5_.§2k§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§&"X§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§]"F§.§9#E§.Set(-this.§3$@§ * _loc6_,-this.§3$@§ * _loc7_);
            this.§]"F§.§ "K§ = -this.§3$@§ * _loc12_;
            _loc14_ += this.§3$@§ * this.§3$@§ * (_loc5_.§<A§ + _loc5_.§2k§ * _loc12_ * _loc12_);
         }
         this.§'g§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§^q§)
         {
            _loc4_.§^%§.x += _loc4_.§<A§ * this.§9b§ * this.§]"F§.§1#e§.x;
            _loc4_.§^%§.y += _loc4_.§<A§ * this.§9b§ * this.§]"F§.§1#e§.y;
            _loc4_.m_angularVelocity += _loc4_.§2k§ * this.§9b§ * this.§]"F§.§7l§;
            _loc5_.§^%§.x += _loc5_.§<A§ * this.§9b§ * this.§]"F§.§9#E§.x;
            _loc5_.§^%§.y += _loc5_.§<A§ * this.§9b§ * this.§]"F§.§9#E§.y;
            _loc5_.m_angularVelocity += _loc5_.§2k§ * this.§9b§ * this.§]"F§.§ "K§;
         }
         else
         {
            this.§9b§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::6#6;
         var _loc3_:b2Body = b2internal::]#j;
         var _loc4_:Number = this.§]"F§.§=L§(_loc2_.§^%§,_loc2_.m_angularVelocity,_loc3_.§^%§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§'g§ * _loc4_;
         this.§9b§ += _loc5_;
         _loc2_.§^%§.x += _loc2_.§<A§ * _loc5_ * this.§]"F§.§1#e§.x;
         _loc2_.§^%§.y += _loc2_.§<A§ * _loc5_ * this.§]"F§.§1#e§.y;
         _loc2_.m_angularVelocity += _loc2_.§2k§ * _loc5_ * this.§]"F§.§7l§;
         _loc3_.§^%§.x += _loc3_.§<A§ * _loc5_ * this.§]"F§.§9#E§.x;
         _loc3_.§^%§.y += _loc3_.§<A§ * _loc5_ * this.§]"F§.§9#E§.y;
         _loc3_.m_angularVelocity += _loc3_.§2k§ * _loc5_ * this.§]"F§.§ "K§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::6#6;
         var _loc4_:b2Body = b2internal::]#j;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§9$"§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§3!I§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§9$"§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§3!I§();
         }
         var _loc7_:Number = this.§5V§ - (_loc5_ + this.§3$@§ * _loc6_);
         var _loc8_:Number = -this.§'g§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§<A§ * _loc8_ * this.§]"F§.§1#e§.x;
         _loc3_.m_sweep.c.y += _loc3_.§<A§ * _loc8_ * this.§]"F§.§1#e§.y;
         _loc3_.m_sweep.a += _loc3_.§2k§ * _loc8_ * this.§]"F§.§7l§;
         _loc4_.m_sweep.c.x += _loc4_.§<A§ * _loc8_ * this.§]"F§.§9#E§.x;
         _loc4_.m_sweep.c.y += _loc4_.§<A§ * _loc8_ * this.§]"F§.§9#E§.y;
         _loc4_.m_sweep.a += _loc4_.§2k§ * _loc8_ * this.§]"F§.§ "K§;
         _loc3_.§&" §();
         _loc4_.§&" §();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
