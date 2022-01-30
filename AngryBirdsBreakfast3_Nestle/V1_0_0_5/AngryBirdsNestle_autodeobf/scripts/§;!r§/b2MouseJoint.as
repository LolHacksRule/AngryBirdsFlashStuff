package §;!r§
{
   import §,v§.b2Body;
   import §,v§.b2TimeStep;
   import §-!A§.b2Mat22;
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §,!"§:b2Vec2;
      
      private var §4m§:b2Vec2;
      
      private var §[!9§:b2Vec2;
      
      private var §-X§:b2Mat22;
      
      private var §;!S§:b2Vec2;
      
      private var §3G§:Number;
      
      private var §=!p§:Number;
      
      private var §8c§:Number;
      
      private var §#!e§:Number;
      
      private var §1!c§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§,!"§ = new b2Vec2();
         this.§4m§ = new b2Vec2();
         this.§[!9§ = new b2Vec2();
         this.§-X§ = new b2Mat22();
         this.§;!S§ = new b2Vec2();
         super(param1);
         this.§4m§.SetV(param1.target);
         _loc2_ = this.§4m§.x - b2internal:: !>.m_xf.position.x;
         var _loc3_:Number = this.§4m§.y - b2internal:: !>.m_xf.position.y;
         _loc4_ = b2internal:: !>.m_xf.R;
         this.§,!"§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§,!"§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§3G§ = param1.§'7§;
         this.§[!9§.§9N§();
         this.§=!p§ = param1.§?!O§;
         this.§8c§ = param1.§9@§;
         this.§#!e§ = 0;
         this.§1!c§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§4m§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: !>.GetWorldPoint(this.§,!"§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!9§.x,param1 * this.§[!9§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!!K§() : b2Vec2
      {
         return this.§4m§;
      }
      
      public function §0!h§(param1:b2Vec2) : void
      {
         if(b2internal:: !>.IsAwake() == false)
         {
            b2internal:: !>.SetAwake(true);
         }
         this.§4m§ = param1;
      }
      
      public function §+!s§() : Number
      {
         return this.§3G§;
      }
      
      public function §=E§(param1:Number) : void
      {
         this.§3G§ = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal:: !>;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§=!p§;
         var _loc5_:Number = 2 * _loc3_ * this.§8c§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§1!c§ = param1.§]>§ * (_loc5_ + param1.§]>§ * _loc6_);
         this.§1!c§ = this.§1!c§ != 0 ? Number(1 / this.§1!c§) : Number(0);
         this.§#!e§ = param1.§]>§ * _loc6_ * this.§1!c§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§,!"§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§,!"§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§3!o§;
         _loc12_ = _loc2_.§%!^§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§>"-§(this.K1);
         this.K.§2?§(this.K2);
         this.K.col1.x += this.§1!c§;
         this.K.col2.y += this.§1!c§;
         this.K.§8"$§(this.§-X§);
         this.§;!S§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§4m§.x;
         this.§;!S§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§4m§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§[!9§.x *= param1.§;!y§;
         this.§[!9§.y *= param1.§;!y§;
         _loc2_.§4!"§.x += _loc11_ * this.§[!9§.x;
         _loc2_.§4!"§.y += _loc11_ * this.§[!9§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§[!9§.y - _loc9_ * this.§[!9§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal:: !>;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§,!"§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§,!"§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§4!"§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§4!"§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§-X§;
         _loc4_ = _loc8_ + this.§#!e§ * this.§;!S§.x + this.§1!c§ * this.§[!9§.x;
         _loc5_ = _loc9_ + this.§#!e§ * this.§;!S§.y + this.§1!c§ * this.§[!9§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§[!9§.x;
         var _loc13_:Number = this.§[!9§.y;
         this.§[!9§.x += _loc10_;
         this.§[!9§.y += _loc11_;
         var _loc14_:Number = param1.§]>§ * this.§3G§;
         if(this.§[!9§.§`!x§() > _loc14_ * _loc14_)
         {
            this.§[!9§.§?Y§(_loc14_ / this.§[!9§.Length());
         }
         _loc10_ = this.§[!9§.x - _loc12_;
         _loc11_ = this.§[!9§.y - _loc13_;
         _loc2_.§4!"§.x += _loc2_.§3!o§ * _loc10_;
         _loc2_.§4!"§.y += _loc2_.§3!o§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§%!^§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
