package §;!r§
{
   import §,v§.b2Body;
   import §,v§.b2TimeStep;
   import §-!A§.b2Mat22;
   import §-!A§.b2Math;
   import §-!A§.b2Vec2;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §["+§:b2Vec2;
      
      private var §=!p§:Number;
      
      private var §8c§:Number;
      
      private var §1!c§:Number;
      
      private var §4"&§:Number;
      
      private var §[!9§:Number;
      
      private var §-X§:Number;
      
      private var §#'§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§["+§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§5S§);
         this.m_localAnchor2.SetV(param1.§-!9§);
         this.§#'§ = param1.length;
         this.§=!p§ = param1.§?!O§;
         this.§8c§ = param1.§9@§;
         this.§[!9§ = 0;
         this.§1!c§ = 0;
         this.§4"&§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: !>.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!9§ * this.§["+§.x,param1 * this.§[!9§ * this.§["+§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §?!L§() : Number
      {
         return this.§#'§;
      }
      
      public function §5!6§(param1:Number) : void
      {
         this.§#'§ = param1;
      }
      
      public function §=x§() : Number
      {
         return this.§=!p§;
      }
      
      public function §6!1§(param1:Number) : void
      {
         this.§=!p§ = param1;
      }
      
      public function §2!x§() : Number
      {
         return this.§8c§;
      }
      
      public function §8g§(param1:Number) : void
      {
         this.§8c§ = param1;
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
         _loc4_ = b2internal::-U;
         _loc5_ = b2internal:: !>;
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
         this.§["+§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§["+§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§["+§.x * this.§["+§.x + this.§["+§.y * this.§["+§.y)) > b2Settings.b2_linearSlop)
         {
            this.§["+§.§?Y§(1 / _loc10_);
         }
         else
         {
            this.§["+§.§9N§();
         }
         var _loc11_:Number = _loc6_ * this.§["+§.y - _loc7_ * this.§["+§.x;
         var _loc12_:Number = _loc8_ * this.§["+§.y - _loc9_ * this.§["+§.x;
         var _loc13_:Number = _loc4_.§3!o§ + _loc4_.§%!^§ * _loc11_ * _loc11_ + _loc5_.§3!o§ + _loc5_.§%!^§ * _loc12_ * _loc12_;
         this.§-X§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§=!p§ > 0)
         {
            _loc14_ = _loc10_ - this.§#'§;
            _loc15_ = 2 * Math.PI * this.§=!p§;
            _loc16_ = 2 * this.§-X§ * this.§8c§ * _loc15_;
            _loc17_ = this.§-X§ * _loc15_ * _loc15_;
            this.§1!c§ = param1.§]>§ * (_loc16_ + param1.§]>§ * _loc17_);
            this.§1!c§ = this.§1!c§ != 0 ? Number(1 / this.§1!c§) : Number(0);
            this.§4"&§ = _loc14_ * param1.§]>§ * _loc17_ * this.§1!c§;
            this.§-X§ = _loc13_ + this.§1!c§;
            this.§-X§ = this.§-X§ != 0 ? Number(1 / this.§-X§) : Number(0);
         }
         if(param1.§-F§)
         {
            this.§[!9§ *= param1.§;!y§;
            _loc18_ = this.§[!9§ * this.§["+§.x;
            _loc19_ = this.§[!9§ * this.§["+§.y;
            _loc4_.§4!"§.x -= _loc4_.§3!o§ * _loc18_;
            _loc4_.§4!"§.y -= _loc4_.§3!o§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§%!^§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§4!"§.x += _loc5_.§3!o§ * _loc18_;
            _loc5_.§4!"§.y += _loc5_.§3!o§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§%!^§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§[!9§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::-U;
         var _loc4_:b2Body = b2internal:: !>;
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
         var _loc10_:Number = _loc3_.§4!"§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§4!"§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§4!"§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§4!"§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§["+§.x * (_loc12_ - _loc10_) + this.§["+§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§-X§ * (_loc14_ + this.§4"&§ + this.§1!c§ * this.§[!9§);
         this.§[!9§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§["+§.x;
         var _loc17_:Number = _loc15_ * this.§["+§.y;
         _loc3_.§4!"§.x -= _loc3_.§3!o§ * _loc16_;
         _loc3_.§4!"§.y -= _loc3_.§3!o§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§%!^§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§4!"§.x += _loc4_.§3!o§ * _loc16_;
         _loc4_.§4!"§.y += _loc4_.§3!o§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§%!^§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§=!p§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::-U;
         var _loc4_:b2Body = b2internal:: !>;
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
         var _loc13_:Number = _loc12_ - this.§#'§;
         _loc13_ = b2Math.§;p§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§-X§ * _loc13_;
         this.§["+§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§["+§.x;
         var _loc16_:Number = _loc14_ * this.§["+§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§3!o§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§3!o§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§%!^§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§3!o§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§3!o§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§%!^§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§+!S§();
         _loc4_.§+!S§();
         return b2Math.§'!B§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
