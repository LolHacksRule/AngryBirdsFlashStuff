package §4!J§
{
   import §6V§.b2Mat22;
   import §6V§.b2Math;
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §<!L§.b2TimeStep;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §-_§:b2Vec2;
      
      private var §9!d§:Number;
      
      private var §`a§:Number;
      
      private var § !f§:Number;
      
      private var §3!O§:Number;
      
      private var §5!M§:Number;
      
      private var §&!§:Number;
      
      private var §;!!§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§-_§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;8§);
         this.m_localAnchor2.SetV(param1.§;!c§);
         this.§;!!§ = param1.length;
         this.§9!d§ = param1.§-!c§;
         this.§`a§ = param1.§if §;
         this.§5!M§ = 0;
         this.§ !f§ = 0;
         this.§3!O§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!_.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&! .GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!M§ * this.§-_§.x,param1 * this.§5!M§ * this.§-_§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>7§() : Number
      {
         return this.§;!!§;
      }
      
      public function §7E§(param1:Number) : void
      {
         this.§;!!§ = param1;
      }
      
      public function §#!>§() : Number
      {
         return this.§9!d§;
      }
      
      public function §+1§(param1:Number) : void
      {
         this.§9!d§ = param1;
      }
      
      public function §#!R§() : Number
      {
         return this.§`a§;
      }
      
      public function §!!!§(param1:Number) : void
      {
         this.§`a§ = param1;
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
         _loc4_ = b2internal::9!_;
         _loc5_ = b2internal::&! ;
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
         this.§-_§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§-_§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§-_§.x * this.§-_§.x + this.§-_§.y * this.§-_§.y)) > b2Settings.b2_linearSlop)
         {
            this.§-_§.§`!e§(1 / _loc10_);
         }
         else
         {
            this.§-_§.§;@§();
         }
         var _loc11_:Number = _loc6_ * this.§-_§.y - _loc7_ * this.§-_§.x;
         var _loc12_:Number = _loc8_ * this.§-_§.y - _loc9_ * this.§-_§.x;
         var _loc13_:Number = _loc4_.§;z§ + _loc4_.§?C§ * _loc11_ * _loc11_ + _loc5_.§;z§ + _loc5_.§?C§ * _loc12_ * _loc12_;
         this.§&!§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§9!d§ > 0)
         {
            _loc14_ = _loc10_ - this.§;!!§;
            _loc15_ = 2 * Math.PI * this.§9!d§;
            _loc16_ = 2 * this.§&!§ * this.§`a§ * _loc15_;
            _loc17_ = this.§&!§ * _loc15_ * _loc15_;
            this.§ !f§ = param1.§?!§ * (_loc16_ + param1.§?!§ * _loc17_);
            this.§ !f§ = this.§ !f§ != 0 ? Number(1 / this.§ !f§) : Number(0);
            this.§3!O§ = _loc14_ * param1.§?!§ * _loc17_ * this.§ !f§;
            this.§&!§ = _loc13_ + this.§ !f§;
            this.§&!§ = this.§&!§ != 0 ? Number(1 / this.§&!§) : Number(0);
         }
         if(param1.§9w§)
         {
            this.§5!M§ *= param1.§7!<§;
            _loc18_ = this.§5!M§ * this.§-_§.x;
            _loc19_ = this.§5!M§ * this.§-_§.y;
            _loc4_.§1!K§.x -= _loc4_.§;z§ * _loc18_;
            _loc4_.§1!K§.y -= _loc4_.§;z§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§?C§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§1!K§.x += _loc5_.§;z§ * _loc18_;
            _loc5_.§1!K§.y += _loc5_.§;z§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§?C§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§5!M§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::9!_;
         var _loc4_:b2Body = b2internal::&! ;
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
         var _loc10_:Number = _loc3_.§1!K§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§1!K§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§1!K§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§1!K§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§-_§.x * (_loc12_ - _loc10_) + this.§-_§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§&!§ * (_loc14_ + this.§3!O§ + this.§ !f§ * this.§5!M§);
         this.§5!M§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§-_§.x;
         var _loc17_:Number = _loc15_ * this.§-_§.y;
         _loc3_.§1!K§.x -= _loc3_.§;z§ * _loc16_;
         _loc3_.§1!K§.y -= _loc3_.§;z§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§?C§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§1!K§.x += _loc4_.§;z§ * _loc16_;
         _loc4_.§1!K§.y += _loc4_.§;z§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§?C§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§9!d§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::9!_;
         var _loc4_:b2Body = b2internal::&! ;
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
         var _loc13_:Number = _loc12_ - this.§;!!§;
         _loc13_ = b2Math.§^7§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§&!§ * _loc13_;
         this.§-_§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§-_§.x;
         var _loc16_:Number = _loc14_ * this.§-_§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§;z§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§;z§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§?C§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§;z§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§;z§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§?C§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§>u§();
         _loc4_.§>u§();
         return b2Math.§]+§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
