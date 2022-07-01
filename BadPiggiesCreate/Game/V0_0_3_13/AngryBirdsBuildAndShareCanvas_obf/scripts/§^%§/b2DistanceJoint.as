package §^%§
{
   import §1!z§.b2Mat22;
   import §1!z§.b2Math;
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §7!q§.b2TimeStep;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §7!J§:b2Vec2;
      
      private var §&!X§:Number;
      
      private var §,u§:Number;
      
      private var §7!2§:Number;
      
      private var §-!f§:Number;
      
      private var §^!@§:Number;
      
      private var §'!4§:Number;
      
      private var §=!Q§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§7!J§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§98§);
         this.m_localAnchor2.SetV(param1.§?m§);
         this.§=!Q§ = param1.length;
         this.§&!X§ = param1.§>&§;
         this.§,u§ = param1.§ o§;
         this.§^!@§ = 0;
         this.§7!2§ = 0;
         this.§-!f§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!B.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;!=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^!@§ * this.§7!J§.x,param1 * this.§^!@§ * this.§7!J§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §30§() : Number
      {
         return this.§=!Q§;
      }
      
      public function §5!#§(param1:Number) : void
      {
         this.§=!Q§ = param1;
      }
      
      public function §[H§() : Number
      {
         return this.§&!X§;
      }
      
      public function §@8§(param1:Number) : void
      {
         this.§&!X§ = param1;
      }
      
      public function §<!k§() : Number
      {
         return this.§,u§;
      }
      
      public function §?!g§(param1:Number) : void
      {
         this.§,u§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::9!B;
         _loc5_ = b2internal::;!=;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         this.§7!J§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§7!J§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§7!J§.x * this.§7!J§.x + this.§7!J§.y * this.§7!J§.y)) > b2Settings.b2_linearSlop)
         {
            this.§7!J§.§'q§(1 / _loc10_);
         }
         else
         {
            this.§7!J§.§4e§();
         }
         var _loc11_:Number = _loc6_ * this.§7!J§.y - _loc7_ * this.§7!J§.x;
         var _loc12_:Number = _loc8_ * this.§7!J§.y - _loc9_ * this.§7!J§.x;
         var _loc13_:Number = _loc4_.§"!O§ + _loc4_.§6""§ * _loc11_ * _loc11_ + _loc5_.§"!O§ + _loc5_.§6""§ * _loc12_ * _loc12_;
         this.§'!4§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§&!X§ > 0)
         {
            _loc14_ = _loc10_ - this.§=!Q§;
            _loc15_ = 2 * Math.PI * this.§&!X§;
            _loc16_ = 2 * this.§'!4§ * this.§,u§ * _loc15_;
            _loc17_ = this.§'!4§ * _loc15_ * _loc15_;
            this.§7!2§ = param1.§<e§ * (_loc16_ + param1.§<e§ * _loc17_);
            this.§7!2§ = this.§7!2§ != 0 ? Number(1 / this.§7!2§) : Number(0);
            this.§-!f§ = _loc14_ * param1.§<e§ * _loc17_ * this.§7!2§;
            this.§'!4§ = _loc13_ + this.§7!2§;
            this.§'!4§ = this.§'!4§ != 0 ? Number(1 / this.§'!4§) : Number(0);
         }
         if(param1.§1!$§)
         {
            this.§^!@§ *= param1.§`T§;
            _loc18_ = this.§^!@§ * this.§7!J§.x;
            _loc19_ = this.§^!@§ * this.§7!J§.y;
            _loc4_.§4X§.x -= _loc4_.§"!O§ * _loc18_;
            _loc4_.§4X§.y -= _loc4_.§"!O§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§6""§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§4X§.x += _loc5_.§"!O§ * _loc18_;
            _loc5_.§4X§.y += _loc5_.§"!O§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§6""§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§^!@§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::9!B;
         var _loc4_:b2Body = b2internal::;!=;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc3_.§4X§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§4X§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§4X§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§4X§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§7!J§.x * (_loc12_ - _loc10_) + this.§7!J§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§'!4§ * (_loc14_ + this.§-!f§ + this.§7!2§ * this.§^!@§);
         this.§^!@§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§7!J§.x;
         var _loc17_:Number = _loc15_ * this.§7!J§.y;
         _loc3_.§4X§.x -= _loc3_.§"!O§ * _loc16_;
         _loc3_.§4X§.y -= _loc3_.§"!O§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§6""§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§4X§.x += _loc4_.§"!O§ * _loc16_;
         _loc4_.§4X§.y += _loc4_.§"!O§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§6""§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§&!X§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::9!B;
         var _loc4_:b2Body = b2internal::;!=;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc4_.m_sweep.c.x + _loc8_ - _loc3_.m_sweep.c.x - _loc5_;
         var _loc11_:Number = _loc4_.m_sweep.c.y + _loc9_ - _loc3_.m_sweep.c.y - _loc6_;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.§=!Q§;
         _loc13_ = b2Math.§`"?§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§'!4§ * _loc13_;
         this.§7!J§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§7!J§.x;
         var _loc16_:Number = _loc14_ * this.§7!J§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§"!O§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§"!O§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§6""§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§"!O§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§"!O§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§6""§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§<!S§();
         _loc4_.§<!S§();
         return b2Math.§'!2§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
