package §,!8§
{
   import §&!B§.b2Mat22;
   import §&!B§.b2Math;
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §[x§.b2TimeStep;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?I§:b2Vec2;
      
      private var §`[§:Number;
      
      private var §&J§:Number;
      
      private var §!X§:Number;
      
      private var § #§:Number;
      
      private var §]4§:Number;
      
      private var §;^§:Number;
      
      private var §"h§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?I§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'s§);
         this.m_localAnchor2.SetV(param1.§5%§);
         this.§"h§ = param1.length;
         this.§`[§ = param1.§5![§;
         this.§&J§ = param1.§-?§;
         this.§]4§ = 0;
         this.§!X§ = 0;
         this.§ #§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::%!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!S.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]4§ * this.§?I§.x,param1 * this.§]4§ * this.§?I§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function § !1§() : Number
      {
         return this.§"h§;
      }
      
      public function §@!5§(param1:Number) : void
      {
         this.§"h§ = param1;
      }
      
      public function §@t§() : Number
      {
         return this.§`[§;
      }
      
      public function §@0§(param1:Number) : void
      {
         this.§`[§ = param1;
      }
      
      public function §]e§() : Number
      {
         return this.§&J§;
      }
      
      public function §finally§(param1:Number) : void
      {
         this.§&J§ = param1;
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
         _loc4_ = b2internal::%!F;
         _loc5_ = b2internal::?!S;
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
         this.§?I§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§?I§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§?I§.x * this.§?I§.x + this.§?I§.y * this.§?I§.y)) > b2Settings.b2_linearSlop)
         {
            this.§?I§.§7!G§(1 / _loc10_);
         }
         else
         {
            this.§?I§.§,!3§();
         }
         var _loc11_:Number = _loc6_ * this.§?I§.y - _loc7_ * this.§?I§.x;
         var _loc12_:Number = _loc8_ * this.§?I§.y - _loc9_ * this.§?I§.x;
         var _loc13_:Number = _loc4_.§6I§ + _loc4_.§2!L§ * _loc11_ * _loc11_ + _loc5_.§6I§ + _loc5_.§2!L§ * _loc12_ * _loc12_;
         this.§;^§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§`[§ > 0)
         {
            _loc14_ = _loc10_ - this.§"h§;
            _loc15_ = 2 * Math.PI * this.§`[§;
            _loc16_ = 2 * this.§;^§ * this.§&J§ * _loc15_;
            _loc17_ = this.§;^§ * _loc15_ * _loc15_;
            this.§!X§ = param1.§>!!§ * (_loc16_ + param1.§>!!§ * _loc17_);
            this.§!X§ = this.§!X§ != 0 ? Number(1 / this.§!X§) : Number(0);
            this.§ #§ = _loc14_ * param1.§>!!§ * _loc17_ * this.§!X§;
            this.§;^§ = _loc13_ + this.§!X§;
            this.§;^§ = this.§;^§ != 0 ? Number(1 / this.§;^§) : Number(0);
         }
         if(param1.§3!-§)
         {
            this.§]4§ *= param1.§4!G§;
            _loc18_ = this.§]4§ * this.§?I§.x;
            _loc19_ = this.§]4§ * this.§?I§.y;
            _loc4_.§%q§.x -= _loc4_.§6I§ * _loc18_;
            _loc4_.§%q§.y -= _loc4_.§6I§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§2!L§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§%q§.x += _loc5_.§6I§ * _loc18_;
            _loc5_.§%q§.y += _loc5_.§6I§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§2!L§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§]4§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::%!F;
         var _loc4_:b2Body = b2internal::?!S;
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
         var _loc10_:Number = _loc3_.§%q§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§%q§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§%q§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§%q§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§?I§.x * (_loc12_ - _loc10_) + this.§?I§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§;^§ * (_loc14_ + this.§ #§ + this.§!X§ * this.§]4§);
         this.§]4§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§?I§.x;
         var _loc17_:Number = _loc15_ * this.§?I§.y;
         _loc3_.§%q§.x -= _loc3_.§6I§ * _loc16_;
         _loc3_.§%q§.y -= _loc3_.§6I§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§2!L§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§%q§.x += _loc4_.§6I§ * _loc16_;
         _loc4_.§%q§.y += _loc4_.§6I§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§2!L§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§`[§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::%!F;
         var _loc4_:b2Body = b2internal::?!S;
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
         var _loc13_:Number = _loc12_ - this.§"h§;
         _loc13_ = b2Math.§,W§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§;^§ * _loc13_;
         this.§?I§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§?I§.x;
         var _loc16_:Number = _loc14_ * this.§?I§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§6I§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§6I§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§2!L§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§6I§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§6I§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§2!L§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§[B§();
         _loc4_.§[B§();
         return b2Math.§<!,§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
