package §+!0§
{
   import §-%§.b2Mat22;
   import §-%§.b2Math;
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §9"5§.b2TimeStep;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §5!f§:b2Vec2;
      
      private var §>!s§:Number;
      
      private var §=W§:Number;
      
      private var §;!0§:Number;
      
      private var §+!1§:Number;
      
      private var §[!a§:Number;
      
      private var §1i§:Number;
      
      private var §['§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5!f§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§1"&§);
         this.m_localAnchor2.SetV(param1.§-m§);
         this.§['§ = param1.length;
         this.§>!s§ = param1.§?X§;
         this.§=W§ = param1.§<!P§;
         this.§[!a§ = 0;
         this.§;!0§ = 0;
         this.§+!1§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9t.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::6=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!a§ * this.§5!f§.x,param1 * this.§[!a§ * this.§5!f§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'!O§() : Number
      {
         return this.§['§;
      }
      
      public function §?K§(param1:Number) : void
      {
         this.§['§ = param1;
      }
      
      public function §[!2§() : Number
      {
         return this.§>!s§;
      }
      
      public function §1!a§(param1:Number) : void
      {
         this.§>!s§ = param1;
      }
      
      public function §2!X§() : Number
      {
         return this.§=W§;
      }
      
      public function §9!-§(param1:Number) : void
      {
         this.§=W§ = param1;
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
         _loc4_ = b2internal::9t;
         _loc5_ = b2internal::6=;
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
         this.§5!f§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§5!f§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§5!f§.x * this.§5!f§.x + this.§5!f§.y * this.§5!f§.y)) > b2Settings.b2_linearSlop)
         {
            this.§5!f§.§<k§(1 / _loc10_);
         }
         else
         {
            this.§5!f§.§'p§();
         }
         var _loc11_:Number = _loc6_ * this.§5!f§.y - _loc7_ * this.§5!f§.x;
         var _loc12_:Number = _loc8_ * this.§5!f§.y - _loc9_ * this.§5!f§.x;
         var _loc13_:Number = _loc4_.§^!u§ + _loc4_.§;!A§ * _loc11_ * _loc11_ + _loc5_.§^!u§ + _loc5_.§;!A§ * _loc12_ * _loc12_;
         this.§1i§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§>!s§ > 0)
         {
            _loc14_ = _loc10_ - this.§['§;
            _loc15_ = 2 * Math.PI * this.§>!s§;
            _loc16_ = 2 * this.§1i§ * this.§=W§ * _loc15_;
            _loc17_ = this.§1i§ * _loc15_ * _loc15_;
            this.§;!0§ = param1.§ !&§ * (_loc16_ + param1.§ !&§ * _loc17_);
            this.§;!0§ = this.§;!0§ != 0 ? Number(1 / this.§;!0§) : Number(0);
            this.§+!1§ = _loc14_ * param1.§ !&§ * _loc17_ * this.§;!0§;
            this.§1i§ = _loc13_ + this.§;!0§;
            this.§1i§ = this.§1i§ != 0 ? Number(1 / this.§1i§) : Number(0);
         }
         if(param1.§3!`§)
         {
            this.§[!a§ *= param1.§%!k§;
            _loc18_ = this.§[!a§ * this.§5!f§.x;
            _loc19_ = this.§[!a§ * this.§5!f§.y;
            _loc4_.§]!1§.x -= _loc4_.§^!u§ * _loc18_;
            _loc4_.§]!1§.y -= _loc4_.§^!u§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§;!A§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§]!1§.x += _loc5_.§^!u§ * _loc18_;
            _loc5_.§]!1§.y += _loc5_.§^!u§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§;!A§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§[!a§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::9t;
         var _loc4_:b2Body = b2internal::6=;
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
         var _loc10_:Number = _loc3_.§]!1§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§]!1§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§]!1§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§]!1§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§5!f§.x * (_loc12_ - _loc10_) + this.§5!f§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§1i§ * (_loc14_ + this.§+!1§ + this.§;!0§ * this.§[!a§);
         this.§[!a§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§5!f§.x;
         var _loc17_:Number = _loc15_ * this.§5!f§.y;
         _loc3_.§]!1§.x -= _loc3_.§^!u§ * _loc16_;
         _loc3_.§]!1§.y -= _loc3_.§^!u§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§;!A§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§]!1§.x += _loc4_.§^!u§ * _loc16_;
         _loc4_.§]!1§.y += _loc4_.§^!u§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§;!A§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§>!s§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::9t;
         var _loc4_:b2Body = b2internal::6=;
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
         var _loc13_:Number = _loc12_ - this.§['§;
         _loc13_ = b2Math.§!P§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§1i§ * _loc13_;
         this.§5!f§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§5!f§.x;
         var _loc16_:Number = _loc14_ * this.§5!f§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§^!u§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§^!u§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§;!A§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§^!u§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§^!u§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§;!A§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§53§();
         _loc4_.§53§();
         return b2Math.§-Z§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
