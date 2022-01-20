package §!!M§
{
   import §+S§.b2Mat22;
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §8T§.b2TimeStep;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
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
      
      private var §"!b§:b2Jacobian;
      
      private var §6A§:Number;
      
      private var §0!=§:Number;
      
      private var §2D§:Number;
      
      private var §@!<§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§"!b§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§@k§;
         var _loc3_:int = param1.joint2.§@k§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§`%§();
         §0!?§ = param1.joint1.§7!O§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§=p§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§3!N§();
         }
         this.m_ground2 = param1.joint2.§`%§();
         §^!l§ = param1.joint2.§7!O§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§=p§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§3!N§();
         }
         this.§0!=§ = param1.§`!c§;
         this.§6A§ = _loc4_ + this.§0!=§ * _loc5_;
         this.§@!<§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0!?.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§@!<§ * this.§"!b§.§=]§.x,param1 * this.§@!<§ * this.§"!b§.§=]§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::^!l.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::^!l.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::^!l.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§@!<§ * this.§"!b§.§=]§.x;
         var _loc7_:Number = this.§@!<§ * this.§"!b§.§=]§.y;
         return param1 * (this.§@!<§ * this.§"!b§.§ D§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §2!X§() : Number
      {
         return this.§0!=§;
      }
      
      public function §^m§(param1:Number) : void
      {
         this.§0!=§ = param1;
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
         _loc4_ = b2internal::0!?;
         var _loc5_:b2Body = b2internal::^!l;
         var _loc14_:Number = 0;
         this.§"!b§.§%^§();
         if(this.m_revolute1)
         {
            this.§"!b§.§4B§ = -1;
            _loc14_ += _loc4_.§]q§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§[8§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§"!b§.include.Set(-_loc6_,-_loc7_);
            this.§"!b§.§4B§ = -_loc12_;
            _loc14_ += _loc4_.§;!m§ + _loc4_.§]q§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§"!b§.§ D§ = -this.§0!=§;
            _loc14_ += this.§0!=§ * this.§0!=§ * _loc5_.§]q§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§[8§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§"!b§.§=]§.Set(-this.§0!=§ * _loc6_,-this.§0!=§ * _loc7_);
            this.§"!b§.§ D§ = -this.§0!=§ * _loc12_;
            _loc14_ += this.§0!=§ * this.§0!=§ * (_loc5_.§;!m§ + _loc5_.§]q§ * _loc12_ * _loc12_);
         }
         this.§2D§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§7z§)
         {
            _loc4_.§switch§.x += _loc4_.§;!m§ * this.§@!<§ * this.§"!b§.include.x;
            _loc4_.§switch§.y += _loc4_.§;!m§ * this.§@!<§ * this.§"!b§.include.y;
            _loc4_.m_angularVelocity += _loc4_.§]q§ * this.§@!<§ * this.§"!b§.§4B§;
            _loc5_.§switch§.x += _loc5_.§;!m§ * this.§@!<§ * this.§"!b§.§=]§.x;
            _loc5_.§switch§.y += _loc5_.§;!m§ * this.§@!<§ * this.§"!b§.§=]§.y;
            _loc5_.m_angularVelocity += _loc5_.§]q§ * this.§@!<§ * this.§"!b§.§ D§;
         }
         else
         {
            this.§@!<§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::0!?;
         var _loc3_:b2Body = b2internal::^!l;
         var _loc4_:Number = this.§"!b§.§]`§(_loc2_.§switch§,_loc2_.m_angularVelocity,_loc3_.§switch§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§2D§ * _loc4_;
         this.§@!<§ += _loc5_;
         _loc2_.§switch§.x += _loc2_.§;!m§ * _loc5_ * this.§"!b§.include.x;
         _loc2_.§switch§.y += _loc2_.§;!m§ * _loc5_ * this.§"!b§.include.y;
         _loc2_.m_angularVelocity += _loc2_.§]q§ * _loc5_ * this.§"!b§.§4B§;
         _loc3_.§switch§.x += _loc3_.§;!m§ * _loc5_ * this.§"!b§.§=]§.x;
         _loc3_.§switch§.y += _loc3_.§;!m§ * _loc5_ * this.§"!b§.§=]§.y;
         _loc3_.m_angularVelocity += _loc3_.§]q§ * _loc5_ * this.§"!b§.§ D§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::0!?;
         var _loc4_:b2Body = b2internal::^!l;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§=p§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§3!N§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§=p§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§3!N§();
         }
         var _loc7_:Number = this.§6A§ - (_loc5_ + this.§0!=§ * _loc6_);
         var _loc8_:Number = -this.§2D§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§;!m§ * _loc8_ * this.§"!b§.include.x;
         _loc3_.m_sweep.c.y += _loc3_.§;!m§ * _loc8_ * this.§"!b§.include.y;
         _loc3_.m_sweep.a += _loc3_.§]q§ * _loc8_ * this.§"!b§.§4B§;
         _loc4_.m_sweep.c.x += _loc4_.§;!m§ * _loc8_ * this.§"!b§.§=]§.x;
         _loc4_.m_sweep.c.y += _loc4_.§;!m§ * _loc8_ * this.§"!b§.§=]§.y;
         _loc4_.m_sweep.a += _loc4_.§]q§ * _loc8_ * this.§"!b§.§ D§;
         _loc3_.§40§();
         _loc4_.§40§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
