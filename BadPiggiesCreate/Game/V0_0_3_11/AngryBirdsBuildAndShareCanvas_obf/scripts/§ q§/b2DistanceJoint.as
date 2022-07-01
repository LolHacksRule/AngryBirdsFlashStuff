package § q§
{
   import §+L§.b2Mat22;
   import §+L§.b2Math;
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §7z§.b2TimeStep;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?!y§:b2Vec2;
      
      private var §7"9§:Number;
      
      private var §&!J§:Number;
      
      private var §7!W§:Number;
      
      private var §&!x§:Number;
      
      private var §#"4§:Number;
      
      private var §<"8§:Number;
      
      private var §<!9§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?!y§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§[!L§);
         this.m_localAnchor2.SetV(param1.§8!^§);
         this.§<!9§ = param1.length;
         this.§7"9§ = param1.§>!J§;
         this.§&!J§ = param1.§5!y§;
         this.§#"4§ = 0;
         this.§7!W§ = 0;
         this.§&!x§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: [.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-?.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§#"4§ * this.§?!y§.x,param1 * this.§#"4§ * this.§?!y§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §^o§() : Number
      {
         return this.§<!9§;
      }
      
      public function §<X§(param1:Number) : void
      {
         this.§<!9§ = param1;
      }
      
      public function §4e§() : Number
      {
         return this.§7"9§;
      }
      
      public function §="0§(param1:Number) : void
      {
         this.§7"9§ = param1;
      }
      
      public function §0!4§() : Number
      {
         return this.§&!J§;
      }
      
      public function §;f§(param1:Number) : void
      {
         this.§&!J§ = param1;
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
         _loc4_ = b2internal:: [;
         _loc5_ = b2internal::-?;
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
         this.§?!y§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§?!y§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§?!y§.x * this.§?!y§.x + this.§?!y§.y * this.§?!y§.y)) > b2Settings.b2_linearSlop)
         {
            this.§?!y§.§9"!§(1 / _loc10_);
         }
         else
         {
            this.§?!y§.§>!!§();
         }
         var _loc11_:Number = _loc6_ * this.§?!y§.y - _loc7_ * this.§?!y§.x;
         var _loc12_:Number = _loc8_ * this.§?!y§.y - _loc9_ * this.§?!y§.x;
         var _loc13_:Number = _loc4_.§4`§ + _loc4_.§^J§ * _loc11_ * _loc11_ + _loc5_.§4`§ + _loc5_.§^J§ * _loc12_ * _loc12_;
         this.§<"8§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§7"9§ > 0)
         {
            _loc14_ = _loc10_ - this.§<!9§;
            _loc15_ = 2 * Math.PI * this.§7"9§;
            _loc16_ = 2 * this.§<"8§ * this.§&!J§ * _loc15_;
            _loc17_ = this.§<"8§ * _loc15_ * _loc15_;
            this.§7!W§ = param1.§'!R§ * (_loc16_ + param1.§'!R§ * _loc17_);
            this.§7!W§ = this.§7!W§ != 0 ? Number(1 / this.§7!W§) : Number(0);
            this.§&!x§ = _loc14_ * param1.§'!R§ * _loc17_ * this.§7!W§;
            this.§<"8§ = _loc13_ + this.§7!W§;
            this.§<"8§ = this.§<"8§ != 0 ? Number(1 / this.§<"8§) : Number(0);
         }
         if(param1.§ !<§)
         {
            this.§#"4§ *= param1.§7"'§;
            _loc18_ = this.§#"4§ * this.§?!y§.x;
            _loc19_ = this.§#"4§ * this.§?!y§.y;
            _loc4_.§#"3§.x -= _loc4_.§4`§ * _loc18_;
            _loc4_.§#"3§.y -= _loc4_.§4`§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§^J§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§#"3§.x += _loc5_.§4`§ * _loc18_;
            _loc5_.§#"3§.y += _loc5_.§4`§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§^J§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§#"4§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal:: [;
         var _loc4_:b2Body = b2internal::-?;
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
         var _loc10_:Number = _loc3_.§#"3§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§#"3§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§#"3§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§#"3§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§?!y§.x * (_loc12_ - _loc10_) + this.§?!y§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§<"8§ * (_loc14_ + this.§&!x§ + this.§7!W§ * this.§#"4§);
         this.§#"4§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§?!y§.x;
         var _loc17_:Number = _loc15_ * this.§?!y§.y;
         _loc3_.§#"3§.x -= _loc3_.§4`§ * _loc16_;
         _loc3_.§#"3§.y -= _loc3_.§4`§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§^J§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§#"3§.x += _loc4_.§4`§ * _loc16_;
         _loc4_.§#"3§.y += _loc4_.§4`§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§^J§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§7"9§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal:: [;
         var _loc4_:b2Body = b2internal::-?;
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
         var _loc13_:Number = _loc12_ - this.§<!9§;
         _loc13_ = b2Math.§`V§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§<"8§ * _loc13_;
         this.§?!y§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§?!y§.x;
         var _loc16_:Number = _loc14_ * this.§?!y§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§4`§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§4`§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§^J§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§4`§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§4`§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§^J§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§-y§();
         _loc4_.§-y§();
         return b2Math.§;W§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
