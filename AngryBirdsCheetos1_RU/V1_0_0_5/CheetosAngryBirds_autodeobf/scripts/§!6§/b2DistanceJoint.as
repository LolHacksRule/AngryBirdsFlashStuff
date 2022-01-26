package §!6§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Mat22;
   import §+,§.b2Math;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   import §[W§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §+!3§:b2Vec2;
      
      private var §]!M§:Number;
      
      private var §,!-§:Number;
      
      private var §`!T§:Number;
      
      private var §"!G§:Number;
      
      private var §;!B§:Number;
      
      private var §]f§:Number;
      
      private var §,!=§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+!3§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§2f§);
         this.m_localAnchor2.SetV(param1.§@n§);
         this.§,!=§ = param1.length;
         this.§]!M§ = param1.§6!+§;
         this.§,!-§ = param1.§&!U§;
         this.§;!B§ = 0;
         this.§`!T§ = 0;
         this.§"!G§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;!B§ * this.§+!3§.x,param1 * this.§;!B§ * this.§+!3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §=z§() : Number
      {
         return this.§,!=§;
      }
      
      public function §7!§(param1:Number) : void
      {
         this.§,!=§ = param1;
      }
      
      public function §3!9§() : Number
      {
         return this.§]!M§;
      }
      
      public function §;S§(param1:Number) : void
      {
         this.§]!M§ = param1;
      }
      
      public function §;a§() : Number
      {
         return this.§,!-§;
      }
      
      public function §'N§(param1:Number) : void
      {
         this.§,!-§ = param1;
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
         _loc4_ = b2internal::#4;
         _loc5_ = b2internal::-!`;
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
         this.§+!3§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§+!3§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§+!3§.x * this.§+!3§.x + this.§+!3§.y * this.§+!3§.y)) > b2Settings.b2_linearSlop)
         {
            this.§+!3§.§!!T§(1 / _loc10_);
         }
         else
         {
            this.§+!3§.§&N§();
         }
         var _loc11_:Number = _loc6_ * this.§+!3§.y - _loc7_ * this.§+!3§.x;
         var _loc12_:Number = _loc8_ * this.§+!3§.y - _loc9_ * this.§+!3§.x;
         var _loc13_:Number = _loc4_.§^!^§ + _loc4_.§^U§ * _loc11_ * _loc11_ + _loc5_.§^!^§ + _loc5_.§^U§ * _loc12_ * _loc12_;
         this.§]f§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§]!M§ > 0)
         {
            _loc14_ = _loc10_ - this.§,!=§;
            _loc15_ = 2 * Math.PI * this.§]!M§;
            _loc16_ = 2 * this.§]f§ * this.§,!-§ * _loc15_;
            _loc17_ = this.§]f§ * _loc15_ * _loc15_;
            this.§`!T§ = param1.§=S§ * (_loc16_ + param1.§=S§ * _loc17_);
            this.§`!T§ = this.§`!T§ != 0 ? Number(1 / this.§`!T§) : Number(0);
            this.§"!G§ = _loc14_ * param1.§=S§ * _loc17_ * this.§`!T§;
            this.§]f§ = _loc13_ + this.§`!T§;
            this.§]f§ = this.§]f§ != 0 ? Number(1 / this.§]f§) : Number(0);
         }
         if(param1.§'K§)
         {
            this.§;!B§ *= param1.§0O§;
            _loc18_ = this.§;!B§ * this.§+!3§.x;
            _loc19_ = this.§;!B§ * this.§+!3§.y;
            _loc4_.§%!N§.x -= _loc4_.§^!^§ * _loc18_;
            _loc4_.§%!N§.y -= _loc4_.§^!^§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§^U§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§%!N§.x += _loc5_.§^!^§ * _loc18_;
            _loc5_.§%!N§.y += _loc5_.§^!^§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§^U§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§;!B§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::#4;
         var _loc4_:b2Body = b2internal::-!`;
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
         var _loc10_:Number = _loc3_.§%!N§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§%!N§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§%!N§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§%!N§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§+!3§.x * (_loc12_ - _loc10_) + this.§+!3§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§]f§ * (_loc14_ + this.§"!G§ + this.§`!T§ * this.§;!B§);
         this.§;!B§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§+!3§.x;
         var _loc17_:Number = _loc15_ * this.§+!3§.y;
         _loc3_.§%!N§.x -= _loc3_.§^!^§ * _loc16_;
         _loc3_.§%!N§.y -= _loc3_.§^!^§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§^U§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§%!N§.x += _loc4_.§^!^§ * _loc16_;
         _loc4_.§%!N§.y += _loc4_.§^!^§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§^U§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§]!M§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::#4;
         var _loc4_:b2Body = b2internal::-!`;
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
         var _loc13_:Number = _loc12_ - this.§,!=§;
         _loc13_ = b2Math.§ !`§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§]f§ * _loc13_;
         this.§+!3§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§+!3§.x;
         var _loc16_:Number = _loc14_ * this.§+!3§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§^!^§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§^!^§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§^U§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§^!^§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§^!^§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§^U§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§'!N§();
         _loc4_.§'!N§();
         return b2Math.§=1§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
