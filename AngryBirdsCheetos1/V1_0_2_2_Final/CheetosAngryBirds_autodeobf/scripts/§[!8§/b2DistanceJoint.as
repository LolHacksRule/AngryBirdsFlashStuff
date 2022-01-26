package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §,;§:b2Vec2;
      
      private var §^!C§:Number;
      
      private var §-s§:Number;
      
      private var §6G§:Number;
      
      private var §4-§:Number;
      
      private var § !6§:Number;
      
      private var §3!7§:Number;
      
      private var §^H§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,;§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;9§);
         this.m_localAnchor2.SetV(param1.§-y§);
         this.§^H§ = param1.length;
         this.§^!C§ = param1.§!k§;
         this.§-s§ = param1.§-C§;
         this.§ !6§ = 0;
         this.§6G§ = 0;
         this.§4-§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§ !6§ * this.§,;§.x,param1 * this.§ !6§ * this.§,;§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §^s§() : Number
      {
         return this.§^H§;
      }
      
      public function §;u§(param1:Number) : void
      {
         this.§^H§ = param1;
      }
      
      public function §]#§() : Number
      {
         return this.§^!C§;
      }
      
      public function §6W§(param1:Number) : void
      {
         this.§^!C§ = param1;
      }
      
      public function §0!4§() : Number
      {
         return this.§-s§;
      }
      
      public function §,!I§(param1:Number) : void
      {
         this.§-s§ = param1;
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
         _loc4_ = b2internal::`p;
         _loc5_ = b2internal::%^;
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
         this.§,;§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§,;§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§,;§.x * this.§,;§.x + this.§,;§.y * this.§,;§.y)) > b2Settings.b2_linearSlop)
         {
            this.§,;§.§@-§(1 / _loc10_);
         }
         else
         {
            this.§,;§.§3a§();
         }
         var _loc11_:Number = _loc6_ * this.§,;§.y - _loc7_ * this.§,;§.x;
         var _loc12_:Number = _loc8_ * this.§,;§.y - _loc9_ * this.§,;§.x;
         var _loc13_:Number = _loc4_.§#!D§ + _loc4_.§?8§ * _loc11_ * _loc11_ + _loc5_.§#!D§ + _loc5_.§?8§ * _loc12_ * _loc12_;
         this.§3!7§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§^!C§ > 0)
         {
            _loc14_ = _loc10_ - this.§^H§;
            _loc15_ = 2 * Math.PI * this.§^!C§;
            _loc16_ = 2 * this.§3!7§ * this.§-s§ * _loc15_;
            _loc17_ = this.§3!7§ * _loc15_ * _loc15_;
            this.§6G§ = param1.§7!?§ * (_loc16_ + param1.§7!?§ * _loc17_);
            this.§6G§ = this.§6G§ != 0 ? Number(1 / this.§6G§) : Number(0);
            this.§4-§ = _loc14_ * param1.§7!?§ * _loc17_ * this.§6G§;
            this.§3!7§ = _loc13_ + this.§6G§;
            this.§3!7§ = this.§3!7§ != 0 ? Number(1 / this.§3!7§) : Number(0);
         }
         if(param1.§5!N§)
         {
            this.§ !6§ *= param1.§7!M§;
            _loc18_ = this.§ !6§ * this.§,;§.x;
            _loc19_ = this.§ !6§ * this.§,;§.y;
            _loc4_.§,?§.x -= _loc4_.§#!D§ * _loc18_;
            _loc4_.§,?§.y -= _loc4_.§#!D§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§?8§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§,?§.x += _loc5_.§#!D§ * _loc18_;
            _loc5_.§,?§.y += _loc5_.§#!D§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§?8§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§ !6§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::`p;
         var _loc4_:b2Body = b2internal::%^;
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
         var _loc10_:Number = _loc3_.§,?§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§,?§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§,?§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§,?§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§,;§.x * (_loc12_ - _loc10_) + this.§,;§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§3!7§ * (_loc14_ + this.§4-§ + this.§6G§ * this.§ !6§);
         this.§ !6§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§,;§.x;
         var _loc17_:Number = _loc15_ * this.§,;§.y;
         _loc3_.§,?§.x -= _loc3_.§#!D§ * _loc16_;
         _loc3_.§,?§.y -= _loc3_.§#!D§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§?8§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§,?§.x += _loc4_.§#!D§ * _loc16_;
         _loc4_.§,?§.y += _loc4_.§#!D§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§?8§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§^!C§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::`p;
         var _loc4_:b2Body = b2internal::%^;
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
         var _loc13_:Number = _loc12_ - this.§^H§;
         _loc13_ = b2Math.§-!1§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§3!7§ * _loc13_;
         this.§,;§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§,;§.x;
         var _loc16_:Number = _loc14_ * this.§,;§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§#!D§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§#!D§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§?8§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§#!D§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§#!D§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§?8§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§=!Y§();
         _loc4_.§=!Y§();
         return b2Math.§8M§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
