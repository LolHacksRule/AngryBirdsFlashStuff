package §"!4§
{
   import § y§.b2Body;
   import § y§.b2TimeStep;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §;h§.b2Mat22;
   import §;h§.b2Math;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?!&§:b2Vec2;
      
      private var §+7§:Number;
      
      private var §@b§:Number;
      
      private var §+!H§:Number;
      
      private var §%!2§:Number;
      
      private var §46§:Number;
      
      private var §?F§:Number;
      
      private var §"L§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?!&§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§9%§);
         this.m_localAnchor2.SetV(param1.§+!"§);
         this.§"L§ = param1.length;
         this.§+7§ = param1.§^!,§;
         this.§@b§ = param1.§1z§;
         this.§46§ = 0;
         this.§+!H§ = 0;
         this.§%!2§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!4.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§46§ * this.§?!&§.x,param1 * this.§46§ * this.§?!&§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §=t§() : Number
      {
         return this.§"L§;
      }
      
      public function §11§(param1:Number) : void
      {
         this.§"L§ = param1;
      }
      
      public function § !N§() : Number
      {
         return this.§+7§;
      }
      
      public function §0!A§(param1:Number) : void
      {
         this.§+7§ = param1;
      }
      
      public function §6s§() : Number
      {
         return this.§@b§;
      }
      
      public function §&+§(param1:Number) : void
      {
         this.§@b§ = param1;
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
         _loc4_ = b2internal::`1;
         _loc5_ = b2internal::[!4;
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
         this.§?!&§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§?!&§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§?!&§.x * this.§?!&§.x + this.§?!&§.y * this.§?!&§.y)) > b2Settings.b2_linearSlop)
         {
            this.§?!&§.§#M§(1 / _loc10_);
         }
         else
         {
            this.§?!&§.§9!V§();
         }
         var _loc11_:Number = _loc6_ * this.§?!&§.y - _loc7_ * this.§?!&§.x;
         var _loc12_:Number = _loc8_ * this.§?!&§.y - _loc9_ * this.§?!&§.x;
         var _loc13_:Number = _loc4_.§!S§ + _loc4_.§2`§ * _loc11_ * _loc11_ + _loc5_.§!S§ + _loc5_.§2`§ * _loc12_ * _loc12_;
         this.§?F§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§+7§ > 0)
         {
            _loc14_ = _loc10_ - this.§"L§;
            _loc15_ = 2 * Math.PI * this.§+7§;
            _loc16_ = 2 * this.§?F§ * this.§@b§ * _loc15_;
            _loc17_ = this.§?F§ * _loc15_ * _loc15_;
            this.§+!H§ = param1.§9!^§ * (_loc16_ + param1.§9!^§ * _loc17_);
            this.§+!H§ = this.§+!H§ != 0 ? Number(1 / this.§+!H§) : Number(0);
            this.§%!2§ = _loc14_ * param1.§9!^§ * _loc17_ * this.§+!H§;
            this.§?F§ = _loc13_ + this.§+!H§;
            this.§?F§ = this.§?F§ != 0 ? Number(1 / this.§?F§) : Number(0);
         }
         if(param1.§[!Z§)
         {
            this.§46§ *= param1.§56§;
            _loc18_ = this.§46§ * this.§?!&§.x;
            _loc19_ = this.§46§ * this.§?!&§.y;
            _loc4_.§+!W§.x -= _loc4_.§!S§ * _loc18_;
            _loc4_.§+!W§.y -= _loc4_.§!S§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§2`§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§+!W§.x += _loc5_.§!S§ * _loc18_;
            _loc5_.§+!W§.y += _loc5_.§!S§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§2`§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§46§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::`1;
         var _loc4_:b2Body = b2internal::[!4;
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
         var _loc10_:Number = _loc3_.§+!W§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§+!W§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§+!W§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§+!W§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§?!&§.x * (_loc12_ - _loc10_) + this.§?!&§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§?F§ * (_loc14_ + this.§%!2§ + this.§+!H§ * this.§46§);
         this.§46§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§?!&§.x;
         var _loc17_:Number = _loc15_ * this.§?!&§.y;
         _loc3_.§+!W§.x -= _loc3_.§!S§ * _loc16_;
         _loc3_.§+!W§.y -= _loc3_.§!S§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§2`§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§+!W§.x += _loc4_.§!S§ * _loc16_;
         _loc4_.§+!W§.y += _loc4_.§!S§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§2`§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§+7§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::`1;
         var _loc4_:b2Body = b2internal::[!4;
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
         var _loc13_:Number = _loc12_ - this.§"L§;
         _loc13_ = b2Math.§!!T§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§?F§ * _loc13_;
         this.§?!&§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§?!&§.x;
         var _loc16_:Number = _loc14_ * this.§?!&§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§!S§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§!S§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§2`§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§!S§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§!S§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§2`§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§-!d§();
         _loc4_.§-!d§();
         return b2Math.§7'§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
