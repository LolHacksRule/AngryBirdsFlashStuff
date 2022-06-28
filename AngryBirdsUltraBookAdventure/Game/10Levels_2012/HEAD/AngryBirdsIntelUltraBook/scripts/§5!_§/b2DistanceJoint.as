package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Mat22;
   import §?!&§.b2Math;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?T§:b2Vec2;
      
      private var §[!a§:Number;
      
      private var §`!&§:Number;
      
      private var § 0§:Number;
      
      private var §7!P§:Number;
      
      private var §>!C§:Number;
      
      private var §;!3§:Number;
      
      private var §#!f§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?T§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'!<§);
         this.m_localAnchor2.SetV(param1.§1!0§);
         this.§#!f§ = param1.length;
         this.§[!a§ = param1.§!N§;
         this.§`!&§ = param1.§^c§;
         this.§>!C§ = 0;
         this.§ 0§ = 0;
         this.§7!P§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §,^§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return § X§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>!C§ * this.§?T§.x,param1 * this.§>!C§ * this.§?T§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%H§() : Number
      {
         return this.§#!f§;
      }
      
      public function §8!%§(param1:Number) : void
      {
         this.§#!f§ = param1;
      }
      
      public function §5d§() : Number
      {
         return this.§[!a§;
      }
      
      public function §4!"§(param1:Number) : void
      {
         this.§[!a§ = param1;
      }
      
      public function §1h§() : Number
      {
         return this.§`!&§;
      }
      
      public function §[`§(param1:Number) : void
      {
         this.§`!&§ = param1;
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
         _loc4_ = §,^§;
         _loc5_ = § X§;
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
         this.§?T§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§?T§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number = Math.sqrt(this.§?T§.x * this.§?T§.x + this.§?T§.y * this.§?T§.y);
         if(_loc10_ > b2Settings.b2_linearSlop)
         {
            this.§?T§.§49§(1 / _loc10_);
         }
         else
         {
            this.§?T§.§@l§();
         }
         var _loc11_:Number = _loc6_ * this.§?T§.y - _loc7_ * this.§?T§.x;
         var _loc12_:Number = _loc8_ * this.§?T§.y - _loc9_ * this.§?T§.x;
         var _loc13_:Number = _loc4_.§4s§ + _loc4_.§[!F§ * _loc11_ * _loc11_ + _loc5_.§4s§ + _loc5_.§[!F§ * _loc12_ * _loc12_;
         this.§;!3§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§[!a§ > 0)
         {
            _loc14_ = _loc10_ - this.§#!f§;
            _loc15_ = 2 * Math.PI * this.§[!a§;
            _loc16_ = 2 * this.§;!3§ * this.§`!&§ * _loc15_;
            _loc17_ = this.§;!3§ * _loc15_ * _loc15_;
            this.§ 0§ = param1.§?!>§ * (_loc16_ + param1.§?!>§ * _loc17_);
            this.§ 0§ = this.§ 0§ != 0 ? Number(1 / this.§ 0§) : Number(0);
            this.§7!P§ = _loc14_ * param1.§?!>§ * _loc17_ * this.§ 0§;
            this.§;!3§ = _loc13_ + this.§ 0§;
            this.§;!3§ = this.§;!3§ != 0 ? Number(1 / this.§;!3§) : Number(0);
         }
         if(param1.§3!=§)
         {
            this.§>!C§ *= param1.§&l§;
            _loc18_ = this.§>!C§ * this.§?T§.x;
            _loc19_ = this.§>!C§ * this.§?T§.y;
            _loc4_.§69§.x -= _loc4_.§4s§ * _loc18_;
            _loc4_.§69§.y -= _loc4_.§4s§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§[!F§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§69§.x += _loc5_.§4s§ * _loc18_;
            _loc5_.§69§.y += _loc5_.§4s§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§[!F§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§>!C§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = §,^§;
         var _loc4_:b2Body = § X§;
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
         var _loc10_:Number = _loc3_.§69§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§69§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§69§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§69§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§?T§.x * (_loc12_ - _loc10_) + this.§?T§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§;!3§ * (_loc14_ + this.§7!P§ + this.§ 0§ * this.§>!C§);
         this.§>!C§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§?T§.x;
         var _loc17_:Number = _loc15_ * this.§?T§.y;
         _loc3_.§69§.x -= _loc3_.§4s§ * _loc16_;
         _loc3_.§69§.y -= _loc3_.§4s§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§[!F§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§69§.x += _loc4_.§4s§ * _loc16_;
         _loc4_.§69§.y += _loc4_.§4s§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§[!F§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§[!a§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = §,^§;
         var _loc4_:b2Body = § X§;
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
         var _loc13_:Number = _loc12_ - this.§#!f§;
         _loc13_ = b2Math.§"J§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§;!3§ * _loc13_;
         this.§?T§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§?T§.x;
         var _loc16_:Number = _loc14_ * this.§?T§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§4s§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§4s§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§[!F§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§4s§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§4s§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§[!F§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§`! §();
         _loc4_.§`! §();
         return b2Math.§'!8§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
