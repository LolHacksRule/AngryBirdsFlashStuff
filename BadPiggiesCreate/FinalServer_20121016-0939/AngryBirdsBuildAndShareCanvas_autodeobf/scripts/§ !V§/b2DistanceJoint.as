package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?!l§:b2Vec2;
      
      private var §,!9§:Number;
      
      private var §?!H§:Number;
      
      private var §<l§:Number;
      
      private var §^!q§:Number;
      
      private var §?;§:Number;
      
      private var §@e§:Number;
      
      private var § [§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?!l§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!2§);
         this.m_localAnchor2.SetV(param1.§ !c§);
         this.§ [§ = param1.length;
         this.§,!9§ = param1.§2!5§;
         this.§?!H§ = param1.§9!J§;
         this.§?;§ = 0;
         this.§<l§ = 0;
         this.§^!q§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§?;§ * this.§?!l§.x,param1 * this.§?;§ * this.§?!l§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §]"3§() : Number
      {
         return this.§ [§;
      }
      
      public function §!C§(param1:Number) : void
      {
         this.§ [§ = param1;
      }
      
      public function §=Y§() : Number
      {
         return this.§,!9§;
      }
      
      public function §1"#§(param1:Number) : void
      {
         this.§,!9§ = param1;
      }
      
      public function §-t§() : Number
      {
         return this.§?!H§;
      }
      
      public function §;;§(param1:Number) : void
      {
         this.§?!H§ = param1;
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
         _loc4_ = b2internal::0"7;
         _loc5_ = b2internal:: `;
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
         this.§?!l§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§?!l§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§?!l§.x * this.§?!l§.x + this.§?!l§.y * this.§?!l§.y)) > b2Settings.b2_linearSlop)
         {
            this.§?!l§.§>!t§(1 / _loc10_);
         }
         else
         {
            this.§?!l§.§@!s§();
         }
         var _loc11_:Number = _loc6_ * this.§?!l§.y - _loc7_ * this.§?!l§.x;
         var _loc12_:Number = _loc8_ * this.§?!l§.y - _loc9_ * this.§?!l§.x;
         var _loc13_:Number = _loc4_.§;k§ + _loc4_.§6x§ * _loc11_ * _loc11_ + _loc5_.§;k§ + _loc5_.§6x§ * _loc12_ * _loc12_;
         this.§@e§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§,!9§ > 0)
         {
            _loc14_ = _loc10_ - this.§ [§;
            _loc15_ = 2 * Math.PI * this.§,!9§;
            _loc16_ = 2 * this.§@e§ * this.§?!H§ * _loc15_;
            _loc17_ = this.§@e§ * _loc15_ * _loc15_;
            this.§<l§ = param1.§+z§ * (_loc16_ + param1.§+z§ * _loc17_);
            this.§<l§ = this.§<l§ != 0 ? Number(1 / this.§<l§) : Number(0);
            this.§^!q§ = _loc14_ * param1.§+z§ * _loc17_ * this.§<l§;
            this.§@e§ = _loc13_ + this.§<l§;
            this.§@e§ = this.§@e§ != 0 ? Number(1 / this.§@e§) : Number(0);
         }
         if(param1.§1!w§)
         {
            this.§?;§ *= param1.§<3§;
            _loc18_ = this.§?;§ * this.§?!l§.x;
            _loc19_ = this.§?;§ * this.§?!l§.y;
            _loc4_.§,b§.x -= _loc4_.§;k§ * _loc18_;
            _loc4_.§,b§.y -= _loc4_.§;k§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§6x§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§,b§.x += _loc5_.§;k§ * _loc18_;
            _loc5_.§,b§.y += _loc5_.§;k§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§6x§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§?;§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::0"7;
         var _loc4_:b2Body = b2internal:: `;
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
         var _loc10_:Number = _loc3_.§,b§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§,b§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§,b§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§,b§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§?!l§.x * (_loc12_ - _loc10_) + this.§?!l§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§@e§ * (_loc14_ + this.§^!q§ + this.§<l§ * this.§?;§);
         this.§?;§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§?!l§.x;
         var _loc17_:Number = _loc15_ * this.§?!l§.y;
         _loc3_.§,b§.x -= _loc3_.§;k§ * _loc16_;
         _loc3_.§,b§.y -= _loc3_.§;k§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§6x§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§,b§.x += _loc4_.§;k§ * _loc16_;
         _loc4_.§,b§.y += _loc4_.§;k§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§6x§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§,!9§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::0"7;
         var _loc4_:b2Body = b2internal:: `;
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
         var _loc13_:Number = _loc12_ - this.§ [§;
         _loc13_ = b2Math.§&>§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§@e§ * _loc13_;
         this.§?!l§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§?!l§.x;
         var _loc16_:Number = _loc14_ * this.§?!l§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§;k§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§;k§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§6x§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§;k§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§;k§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§6x§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§#!k§();
         _loc4_.§#!k§();
         return b2Math.§`U§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
