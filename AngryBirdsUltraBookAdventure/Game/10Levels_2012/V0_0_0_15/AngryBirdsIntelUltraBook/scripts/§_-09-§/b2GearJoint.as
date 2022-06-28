package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
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
      
      private var §_-06Z§:b2Jacobian;
      
      private var §_-gl§:Number;
      
      private var §_-I1§:Number;
      
      private var §_-5W§:Number;
      
      private var §_-MK§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-06Z§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§_-1c§;
         var _loc3_:int = param1.joint2.§_-1c§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§_-00L§();
         §_-0FB§ = param1.joint1.§_-03D§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§_-yj§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§_-qk§();
         }
         this.m_ground2 = param1.joint2.§_-00L§();
         §_-c9§ = param1.joint2.§_-03D§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§_-yj§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§_-qk§();
         }
         this.§_-I1§ = param1.§_-0Bd§;
         this.§_-gl§ = _loc4_ + this.§_-I1§ * _loc5_;
         this.§_-MK§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-MK§ * this.§_-06Z§.§_-01W§.x,param1 * this.§_-MK§ * this.§_-06Z§.§_-01W§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_-c9.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_-c9.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_-c9.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§_-MK§ * this.§_-06Z§.§_-01W§.x;
         var _loc7_:Number = this.§_-MK§ * this.§_-06Z§.§_-01W§.y;
         return param1 * (this.§_-MK§ * this.§_-06Z§.§_-k3§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §_-0Bg§() : Number
      {
         return this.§_-I1§;
      }
      
      public function §_-MO§(param1:Number) : void
      {
         this.§_-I1§ = param1;
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
         _loc4_ = b2internal::_-0FB;
         var _loc5_:b2Body = b2internal::_-c9;
         var _loc14_:Number = 0;
         this.§_-06Z§.§_-el§();
         if(this.m_revolute1)
         {
            this.§_-06Z§.§_-O8§ = -1;
            _loc14_ += _loc4_.§_-Dz§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§_-0-i§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-06Z§.§_-SD§.Set(-_loc6_,-_loc7_);
            this.§_-06Z§.§_-O8§ = -_loc12_;
            _loc14_ += _loc4_.§_-03A§ + _loc4_.§_-Dz§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§_-06Z§.§_-k3§ = -this.§_-I1§;
            _loc14_ += this.§_-I1§ * this.§_-I1§ * _loc5_.§_-Dz§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§_-0-i§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-06Z§.§_-01W§.Set(-this.§_-I1§ * _loc6_,-this.§_-I1§ * _loc7_);
            this.§_-06Z§.§_-k3§ = -this.§_-I1§ * _loc12_;
            _loc14_ += this.§_-I1§ * this.§_-I1§ * (_loc5_.§_-03A§ + _loc5_.§_-Dz§ * _loc12_ * _loc12_);
         }
         this.§_-5W§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§_-0F7§)
         {
            _loc4_.§_-kZ§.x += _loc4_.§_-03A§ * this.§_-MK§ * this.§_-06Z§.§_-SD§.x;
            _loc4_.§_-kZ§.y += _loc4_.§_-03A§ * this.§_-MK§ * this.§_-06Z§.§_-SD§.y;
            _loc4_.m_angularVelocity += _loc4_.§_-Dz§ * this.§_-MK§ * this.§_-06Z§.§_-O8§;
            _loc5_.§_-kZ§.x += _loc5_.§_-03A§ * this.§_-MK§ * this.§_-06Z§.§_-01W§.x;
            _loc5_.§_-kZ§.y += _loc5_.§_-03A§ * this.§_-MK§ * this.§_-06Z§.§_-01W§.y;
            _loc5_.m_angularVelocity += _loc5_.§_-Dz§ * this.§_-MK§ * this.§_-06Z§.§_-k3§;
         }
         else
         {
            this.§_-MK§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         var _loc4_:Number = this.§_-06Z§.§_-KX§(_loc2_.§_-kZ§,_loc2_.m_angularVelocity,_loc3_.§_-kZ§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§_-5W§ * _loc4_;
         this.§_-MK§ += _loc5_;
         _loc2_.§_-kZ§.x += _loc2_.§_-03A§ * _loc5_ * this.§_-06Z§.§_-SD§.x;
         _loc2_.§_-kZ§.y += _loc2_.§_-03A§ * _loc5_ * this.§_-06Z§.§_-SD§.y;
         _loc2_.m_angularVelocity += _loc2_.§_-Dz§ * _loc5_ * this.§_-06Z§.§_-O8§;
         _loc3_.§_-kZ§.x += _loc3_.§_-03A§ * _loc5_ * this.§_-06Z§.§_-01W§.x;
         _loc3_.§_-kZ§.y += _loc3_.§_-03A§ * _loc5_ * this.§_-06Z§.§_-01W§.y;
         _loc3_.m_angularVelocity += _loc3_.§_-Dz§ * _loc5_ * this.§_-06Z§.§_-k3§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_-0FB;
         var _loc4_:b2Body = b2internal::_-c9;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§_-yj§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§_-qk§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§_-yj§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§_-qk§();
         }
         var _loc7_:Number = this.§_-gl§ - (_loc5_ + this.§_-I1§ * _loc6_);
         var _loc8_:Number = -this.§_-5W§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§_-03A§ * _loc8_ * this.§_-06Z§.§_-SD§.x;
         _loc3_.m_sweep.c.y += _loc3_.§_-03A§ * _loc8_ * this.§_-06Z§.§_-SD§.y;
         _loc3_.m_sweep.a += _loc3_.§_-Dz§ * _loc8_ * this.§_-06Z§.§_-O8§;
         _loc4_.m_sweep.c.x += _loc4_.§_-03A§ * _loc8_ * this.§_-06Z§.§_-01W§.x;
         _loc4_.m_sweep.c.y += _loc4_.§_-03A§ * _loc8_ * this.§_-06Z§.§_-01W§.y;
         _loc4_.m_sweep.a += _loc4_.§_-Dz§ * _loc8_ * this.§_-06Z§.§_-k3§;
         _loc3_.§_-da§();
         _loc4_.§_-da§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
