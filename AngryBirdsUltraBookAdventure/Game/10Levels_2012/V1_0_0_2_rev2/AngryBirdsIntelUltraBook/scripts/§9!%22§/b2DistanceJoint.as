package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §'2§:b2Vec2;
      
      private var §7! §:Number;
      
      private var §`!H§:Number;
      
      private var §=R§:Number;
      
      private var §6!Z§:Number;
      
      private var §,!2§:Number;
      
      private var §,0§:Number;
      
      private var §?!D§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§'2§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§<?§);
         this.m_localAnchor2.SetV(param1.§%!e§);
         this.§?!D§ = param1.length;
         this.§7! § = param1.§ y§;
         this.§`!H§ = param1.§`!X§;
         this.§,!2§ = 0;
         this.§=R§ = 0;
         this.§6!Z§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§,!2§ * this.§'2§.x,param1 * this.§,!2§ * this.§'2§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!!T§() : Number
      {
         return this.§?!D§;
      }
      
      public function §[! §(param1:Number) : void
      {
         this.§?!D§ = param1;
      }
      
      public function §8!?§() : Number
      {
         return this.§7! §;
      }
      
      public function §3!s§(param1:Number) : void
      {
         this.§7! § = param1;
      }
      
      public function §-!8§() : Number
      {
         return this.§`!H§;
      }
      
      public function §1!T§(param1:Number) : void
      {
         this.§`!H§ = param1;
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
         _loc4_ = b2internal::6!G;
         _loc5_ = b2internal::0!w;
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
         this.§'2§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§'2§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§'2§.x * this.§'2§.x + this.§'2§.y * this.§'2§.y)) > b2Settings.b2_linearSlop)
         {
            this.§'2§.§^$§(1 / _loc10_);
         }
         else
         {
            this.§'2§.§`!5§();
         }
         var _loc11_:Number = _loc6_ * this.§'2§.y - _loc7_ * this.§'2§.x;
         var _loc12_:Number = _loc8_ * this.§'2§.y - _loc9_ * this.§'2§.x;
         var _loc13_:Number = _loc4_.§7n§ + _loc4_.§;5§ * _loc11_ * _loc11_ + _loc5_.§7n§ + _loc5_.§;5§ * _loc12_ * _loc12_;
         this.§,0§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§7! § > 0)
         {
            _loc14_ = _loc10_ - this.§?!D§;
            _loc15_ = 2 * Math.PI * this.§7! §;
            _loc16_ = 2 * this.§,0§ * this.§`!H§ * _loc15_;
            _loc17_ = this.§,0§ * _loc15_ * _loc15_;
            this.§=R§ = param1.§^Z§ * (_loc16_ + param1.§^Z§ * _loc17_);
            this.§=R§ = this.§=R§ != 0 ? Number(1 / this.§=R§) : Number(0);
            this.§6!Z§ = _loc14_ * param1.§^Z§ * _loc17_ * this.§=R§;
            this.§,0§ = _loc13_ + this.§=R§;
            this.§,0§ = this.§,0§ != 0 ? Number(1 / this.§,0§) : Number(0);
         }
         if(param1.§[8§)
         {
            this.§,!2§ *= param1.§87§;
            _loc18_ = this.§,!2§ * this.§'2§.x;
            _loc19_ = this.§,!2§ * this.§'2§.y;
            _loc4_.§^O§.x -= _loc4_.§7n§ * _loc18_;
            _loc4_.§^O§.y -= _loc4_.§7n§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§;5§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§^O§.x += _loc5_.§7n§ * _loc18_;
            _loc5_.§^O§.y += _loc5_.§7n§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§;5§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§,!2§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::6!G;
         var _loc4_:b2Body = b2internal::0!w;
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
         var _loc10_:Number = _loc3_.§^O§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§^O§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§^O§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§^O§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§'2§.x * (_loc12_ - _loc10_) + this.§'2§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§,0§ * (_loc14_ + this.§6!Z§ + this.§=R§ * this.§,!2§);
         this.§,!2§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§'2§.x;
         var _loc17_:Number = _loc15_ * this.§'2§.y;
         _loc3_.§^O§.x -= _loc3_.§7n§ * _loc16_;
         _loc3_.§^O§.y -= _loc3_.§7n§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§;5§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§^O§.x += _loc4_.§7n§ * _loc16_;
         _loc4_.§^O§.y += _loc4_.§7n§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§;5§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§7! § > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::6!G;
         var _loc4_:b2Body = b2internal::0!w;
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
         var _loc13_:Number = _loc12_ - this.§?!D§;
         _loc13_ = b2Math.§]#§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§,0§ * _loc13_;
         this.§'2§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§'2§.x;
         var _loc16_:Number = _loc14_ * this.§'2§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§7n§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§7n§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§;5§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§7n§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§7n§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§;5§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§0!y§();
         _loc4_.§0!y§();
         return b2Math.§-n§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
