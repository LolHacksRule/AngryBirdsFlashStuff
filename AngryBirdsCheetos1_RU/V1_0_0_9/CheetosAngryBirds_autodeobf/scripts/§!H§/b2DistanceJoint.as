package §!H§
{
   import §!!B§.b2Body;
   import §!!B§.b2TimeStep;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Mat22;
   import §;U§.b2Math;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §2`§:b2Vec2;
      
      private var §throw§:Number;
      
      private var §`F§:Number;
      
      private var §[v§:Number;
      
      private var §?!N§:Number;
      
      private var §9$§:Number;
      
      private var §^"§:Number;
      
      private var §7[§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§2`§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§7p§);
         this.m_localAnchor2.SetV(param1.§"!C§);
         this.§7[§ = param1.length;
         this.§throw§ = param1.§!;§;
         this.§`F§ = param1.§=h§;
         this.§9$§ = 0;
         this.§[v§ = 0;
         this.§?!N§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!!!.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9$§ * this.§2`§.x,param1 * this.§9$§ * this.§2`§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §0o§() : Number
      {
         return this.§7[§;
      }
      
      public function §^!9§(param1:Number) : void
      {
         this.§7[§ = param1;
      }
      
      public function §[J§() : Number
      {
         return this.§throw§;
      }
      
      public function §0Q§(param1:Number) : void
      {
         this.§throw§ = param1;
      }
      
      public function §4G§() : Number
      {
         return this.§`F§;
      }
      
      public function §2b§(param1:Number) : void
      {
         this.§`F§ = param1;
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
         _loc4_ = b2internal::!!!;
         _loc5_ = b2internal::%!;
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
         this.§2`§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§2`§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§2`§.x * this.§2`§.x + this.§2`§.y * this.§2`§.y)) > b2Settings.b2_linearSlop)
         {
            this.§2`§.§2!'§(1 / _loc10_);
         }
         else
         {
            this.§2`§.§4S§();
         }
         var _loc11_:Number = _loc6_ * this.§2`§.y - _loc7_ * this.§2`§.x;
         var _loc12_:Number = _loc8_ * this.§2`§.y - _loc9_ * this.§2`§.x;
         var _loc13_:Number = _loc4_.§?t§ + _loc4_.§<!V§ * _loc11_ * _loc11_ + _loc5_.§?t§ + _loc5_.§<!V§ * _loc12_ * _loc12_;
         this.§^"§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§throw§ > 0)
         {
            _loc14_ = _loc10_ - this.§7[§;
            _loc15_ = 2 * Math.PI * this.§throw§;
            _loc16_ = 2 * this.§^"§ * this.§`F§ * _loc15_;
            _loc17_ = this.§^"§ * _loc15_ * _loc15_;
            this.§[v§ = param1.§1-§ * (_loc16_ + param1.§1-§ * _loc17_);
            this.§[v§ = this.§[v§ != 0 ? Number(1 / this.§[v§) : Number(0);
            this.§?!N§ = _loc14_ * param1.§1-§ * _loc17_ * this.§[v§;
            this.§^"§ = _loc13_ + this.§[v§;
            this.§^"§ = this.§^"§ != 0 ? Number(1 / this.§^"§) : Number(0);
         }
         if(param1.§7!Z§)
         {
            this.§9$§ *= param1.§+k§;
            _loc18_ = this.§9$§ * this.§2`§.x;
            _loc19_ = this.§9$§ * this.§2`§.y;
            _loc4_.§7W§.x -= _loc4_.§?t§ * _loc18_;
            _loc4_.§7W§.y -= _loc4_.§?t§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§<!V§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§7W§.x += _loc5_.§?t§ * _loc18_;
            _loc5_.§7W§.y += _loc5_.§?t§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§<!V§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§9$§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::!!!;
         var _loc4_:b2Body = b2internal::%!;
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
         var _loc10_:Number = _loc3_.§7W§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§7W§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§7W§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§7W§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§2`§.x * (_loc12_ - _loc10_) + this.§2`§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§^"§ * (_loc14_ + this.§?!N§ + this.§[v§ * this.§9$§);
         this.§9$§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§2`§.x;
         var _loc17_:Number = _loc15_ * this.§2`§.y;
         _loc3_.§7W§.x -= _loc3_.§?t§ * _loc16_;
         _loc3_.§7W§.y -= _loc3_.§?t§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§<!V§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§7W§.x += _loc4_.§?t§ * _loc16_;
         _loc4_.§7W§.y += _loc4_.§?t§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§<!V§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§throw§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::!!!;
         var _loc4_:b2Body = b2internal::%!;
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
         var _loc13_:Number = _loc12_ - this.§7[§;
         _loc13_ = b2Math.§1!<§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§^"§ * _loc13_;
         this.§2`§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§2`§.x;
         var _loc16_:Number = _loc14_ * this.§2`§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§?t§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§?t§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§<!V§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§?t§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§?t§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§<!V§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§9!8§();
         _loc4_.§9!8§();
         return b2Math.§[!I§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
