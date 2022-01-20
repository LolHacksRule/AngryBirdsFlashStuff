package §!!M§
{
   import §+S§.b2Mat22;
   import §+S§.b2Math;
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §8T§.b2TimeStep;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §,!'§:b2Vec2;
      
      private var §?P§:Number;
      
      private var §>p§:Number;
      
      private var §;y§:Number;
      
      private var §`R§:Number;
      
      private var §@!<§:Number;
      
      private var §2D§:Number;
      
      private var §1f§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,!'§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§5!E§);
         this.m_localAnchor2.SetV(param1.§21§);
         this.§1f§ = param1.length;
         this.§?P§ = param1.§"j§;
         this.§>p§ = param1.§%6§;
         this.§@!<§ = 0;
         this.§;y§ = 0;
         this.§`R§ = 0;
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
         return new b2Vec2(param1 * this.§@!<§ * this.§,!'§.x,param1 * this.§@!<§ * this.§,!'§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §2!-§() : Number
      {
         return this.§1f§;
      }
      
      public function §&!P§(param1:Number) : void
      {
         this.§1f§ = param1;
      }
      
      public function §'!g§() : Number
      {
         return this.§?P§;
      }
      
      public function §#j§(param1:Number) : void
      {
         this.§?P§ = param1;
      }
      
      public function §8!#§() : Number
      {
         return this.§>p§;
      }
      
      public function §^I§(param1:Number) : void
      {
         this.§>p§ = param1;
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
         _loc4_ = b2internal::0!?;
         _loc5_ = b2internal::^!l;
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
         this.§,!'§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§,!'§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§,!'§.x * this.§,!'§.x + this.§,!'§.y * this.§,!'§.y)) > b2Settings.b2_linearSlop)
         {
            this.§,!'§.§71§(1 / _loc10_);
         }
         else
         {
            this.§,!'§.§%^§();
         }
         var _loc11_:Number = _loc6_ * this.§,!'§.y - _loc7_ * this.§,!'§.x;
         var _loc12_:Number = _loc8_ * this.§,!'§.y - _loc9_ * this.§,!'§.x;
         var _loc13_:Number = _loc4_.§;!m§ + _loc4_.§]q§ * _loc11_ * _loc11_ + _loc5_.§;!m§ + _loc5_.§]q§ * _loc12_ * _loc12_;
         this.§2D§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§?P§ > 0)
         {
            _loc14_ = _loc10_ - this.§1f§;
            _loc15_ = 2 * Math.PI * this.§?P§;
            _loc16_ = 2 * this.§2D§ * this.§>p§ * _loc15_;
            _loc17_ = this.§2D§ * _loc15_ * _loc15_;
            this.§;y§ = param1.§9[§ * (_loc16_ + param1.§9[§ * _loc17_);
            this.§;y§ = this.§;y§ != 0 ? Number(1 / this.§;y§) : Number(0);
            this.§`R§ = _loc14_ * param1.§9[§ * _loc17_ * this.§;y§;
            this.§2D§ = _loc13_ + this.§;y§;
            this.§2D§ = this.§2D§ != 0 ? Number(1 / this.§2D§) : Number(0);
         }
         if(param1.§7z§)
         {
            this.§@!<§ *= param1.§4!a§;
            _loc18_ = this.§@!<§ * this.§,!'§.x;
            _loc19_ = this.§@!<§ * this.§,!'§.y;
            _loc4_.§switch§.x -= _loc4_.§;!m§ * _loc18_;
            _loc4_.§switch§.y -= _loc4_.§;!m§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§]q§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§switch§.x += _loc5_.§;!m§ * _loc18_;
            _loc5_.§switch§.y += _loc5_.§;!m§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§]q§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§@!<§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::0!?;
         var _loc4_:b2Body = b2internal::^!l;
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
         var _loc10_:Number = _loc3_.§switch§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§switch§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§switch§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§switch§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§,!'§.x * (_loc12_ - _loc10_) + this.§,!'§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§2D§ * (_loc14_ + this.§`R§ + this.§;y§ * this.§@!<§);
         this.§@!<§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§,!'§.x;
         var _loc17_:Number = _loc15_ * this.§,!'§.y;
         _loc3_.§switch§.x -= _loc3_.§;!m§ * _loc16_;
         _loc3_.§switch§.y -= _loc3_.§;!m§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§]q§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§switch§.x += _loc4_.§;!m§ * _loc16_;
         _loc4_.§switch§.y += _loc4_.§;!m§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§]q§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§?P§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::0!?;
         var _loc4_:b2Body = b2internal::^!l;
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
         var _loc13_:Number = _loc12_ - this.§1f§;
         _loc13_ = b2Math.§&!<§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§2D§ * _loc13_;
         this.§,!'§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§,!'§.x;
         var _loc16_:Number = _loc14_ * this.§,!'§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§;!m§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§;!m§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§]q§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§;!m§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§;!m§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§]q§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§40§();
         _loc4_.§40§();
         return b2Math.§3!0§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
