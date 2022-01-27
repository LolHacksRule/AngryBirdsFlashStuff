package §+D§
{
   import §#!X§.b2Body;
   import §#!X§.b2TimeStep;
   import §&!S§.b2Mat22;
   import §&!S§.b2Math;
   import §&!S§.b2Vec2;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §8z§:b2Vec2;
      
      private var §2e§:Number;
      
      private var §`'§:Number;
      
      private var §]<§:Number;
      
      private var § t§:Number;
      
      private var §!=§:Number;
      
      private var §!!F§:Number;
      
      private var §]@§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8z§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§&9§);
         this.m_localAnchor2.SetV(param1.§^"<§);
         this.§]@§ = param1.length;
         this.§2e§ = param1.§,!h§;
         this.§`'§ = param1.dampingRatio;
         this.§!=§ = 0;
         this.§]<§ = 0;
         this.§ t§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::9!W.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§!=§ * this.§8z§.x,param1 * this.§!=§ * this.§8z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §3!g§() : Number
      {
         return this.§]@§;
      }
      
      public function §9"C§(param1:Number) : void
      {
         this.§]@§ = param1;
      }
      
      public function §'1§() : Number
      {
         return this.§2e§;
      }
      
      public function §7B§(param1:Number) : void
      {
         this.§2e§ = param1;
      }
      
      public function §?s§() : Number
      {
         return this.§`'§;
      }
      
      public function §8M§(param1:Number) : void
      {
         this.§`'§ = param1;
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
         _loc4_ = b2internal::]X;
         _loc5_ = b2internal::9!W;
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
         this.§8z§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§8z§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§8z§.x * this.§8z§.x + this.§8z§.y * this.§8z§.y)) > b2Settings.b2_linearSlop)
         {
            this.§8z§.§4z§(1 / _loc10_);
         }
         else
         {
            this.§8z§.§ "2§();
         }
         var _loc11_:Number = _loc6_ * this.§8z§.y - _loc7_ * this.§8z§.x;
         var _loc12_:Number = _loc8_ * this.§8z§.y - _loc9_ * this.§8z§.x;
         var _loc13_:Number = _loc4_.§]!T§ + _loc4_.§@#§ * _loc11_ * _loc11_ + _loc5_.§]!T§ + _loc5_.§@#§ * _loc12_ * _loc12_;
         this.§!!F§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§2e§ > 0)
         {
            _loc14_ = _loc10_ - this.§]@§;
            _loc15_ = 2 * Math.PI * this.§2e§;
            _loc16_ = 2 * this.§!!F§ * this.§`'§ * _loc15_;
            _loc17_ = this.§!!F§ * _loc15_ * _loc15_;
            this.§]<§ = param1.§`"%§ * (_loc16_ + param1.§`"%§ * _loc17_);
            this.§]<§ = this.§]<§ != 0 ? Number(1 / this.§]<§) : Number(0);
            this.§ t§ = _loc14_ * param1.§`"%§ * _loc17_ * this.§]<§;
            this.§!!F§ = _loc13_ + this.§]<§;
            this.§!!F§ = this.§!!F§ != 0 ? Number(1 / this.§!!F§) : Number(0);
         }
         if(param1.§3!2§)
         {
            this.§!=§ *= param1.§2!H§;
            _loc18_ = this.§!=§ * this.§8z§.x;
            _loc19_ = this.§!=§ * this.§8z§.y;
            _loc4_.§>w§.x -= _loc4_.§]!T§ * _loc18_;
            _loc4_.§>w§.y -= _loc4_.§]!T§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§@#§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§>w§.x += _loc5_.§]!T§ * _loc18_;
            _loc5_.§>w§.y += _loc5_.§]!T§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§@#§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§!=§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::]X;
         var _loc4_:b2Body = b2internal::9!W;
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
         var _loc10_:Number = _loc3_.§>w§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§>w§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§>w§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§>w§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§8z§.x * (_loc12_ - _loc10_) + this.§8z§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§!!F§ * (_loc14_ + this.§ t§ + this.§]<§ * this.§!=§);
         this.§!=§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§8z§.x;
         var _loc17_:Number = _loc15_ * this.§8z§.y;
         _loc3_.§>w§.x -= _loc3_.§]!T§ * _loc16_;
         _loc3_.§>w§.y -= _loc3_.§]!T§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§@#§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§>w§.x += _loc4_.§]!T§ * _loc16_;
         _loc4_.§>w§.y += _loc4_.§]!T§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§@#§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§2e§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::]X;
         var _loc4_:b2Body = b2internal::9!W;
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
         var _loc13_:Number = _loc12_ - this.§]@§;
         _loc13_ = b2Math.§>G§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§!!F§ * _loc13_;
         this.§8z§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§8z§.x;
         var _loc16_:Number = _loc14_ * this.§8z§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§]!T§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§]!T§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§@#§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§]!T§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§]!T§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§@#§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§;!E§();
         _loc4_.§;!E§();
         return b2Math.§12§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
