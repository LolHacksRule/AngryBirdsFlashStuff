package §3!U§
{
   import §%!9§.b2Mat22;
   import §%!9§.b2Math;
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §1!+§.b2TimeStep;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §8!s§:b2Vec2;
      
      private var §!",§:b2Vec2;
      
      public var §9!B§:b2Mat22;
      
      public var §!v§:Number;
      
      private var §%$>§:b2Vec2;
      
      private var §9J§:Number;
      
      private var §=!8§:Number;
      
      private var §<"v§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§8!s§ = new b2Vec2();
         this.§!",§ = new b2Vec2();
         this.§9!B§ = new b2Mat22();
         this.§%$>§ = new b2Vec2();
         super(param1);
         this.§8!s§.SetV(param1.§?#O§);
         this.§!",§.SetV(param1.§ b§);
         this.§9!B§.§2!9§();
         this.§!v§ = 0;
         this.§%$>§.§2!9§();
         this.§9J§ = 0;
         this.§=!8§ = param1.§;#L§;
         this.§<"v§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!"2.GetWorldPoint(this.§8!s§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?s.GetWorldPoint(this.§!",§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%$>§.x,param1 * this.§%$>§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9J§;
      }
      
      public function §%1§(param1:Number) : void
      {
         this.§=!8§ = param1;
      }
      
      public function §&Y§() : Number
      {
         return this.§=!8§;
      }
      
      public function §?#`§(param1:Number) : void
      {
         this.§<"v§ = param1;
      }
      
      public function §%#8§() : Number
      {
         return this.§<"v§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::!"2;
         _loc5_ = b2internal::?s;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§8!s§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§8!s§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§!",§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§!",§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§"#z§;
         var _loc11_:Number = _loc5_.§"#z§;
         _loc12_ = _loc4_.§["p§;
         _loc13_ = _loc5_.§["p§;
         (_loc14_ = new b2Mat22()).col1.x = _loc10_ + _loc11_;
         _loc14_.col2.x = 0;
         _loc14_.col1.y = 0;
         _loc14_.col2.y = _loc10_ + _loc11_;
         _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
         _loc14_.col2.x += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col1.y += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col2.y += _loc12_ * _loc6_ * _loc6_;
         _loc14_.col1.x += _loc13_ * _loc9_ * _loc9_;
         _loc14_.col2.x += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col1.y += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col2.y += _loc13_ * _loc8_ * _loc8_;
         _loc14_.§<g§(this.§9!B§);
         this.§!v§ = _loc12_ + _loc13_;
         if(this.§!v§ > 0)
         {
            this.§!v§ = 1 / this.§!v§;
         }
         if(param1.§,!D§)
         {
            this.§%$>§.x *= param1.§##y§;
            this.§%$>§.y *= param1.§##y§;
            this.§9J§ *= param1.§##y§;
            _loc15_ = this.§%$>§;
            _loc4_.§ ![§.x -= _loc10_ * _loc15_.x;
            _loc4_.§ ![§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§9J§);
            _loc5_.§ ![§.x += _loc11_ * _loc15_.x;
            _loc5_.§ ![§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§9J§);
         }
         else
         {
            this.§%$>§.§2!9§();
            this.§9J§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::!"2;
         var _loc5_:b2Body = b2internal::?s;
         var _loc6_:b2Vec2 = _loc4_.§ ![§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§ ![§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§"#z§;
         var _loc11_:Number = _loc5_.§"#z§;
         var _loc12_:Number = _loc4_.§["p§;
         var _loc13_:Number = _loc5_.§["p§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§8!s§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§8!s§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§!",§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§!",§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§!v§ * _loc19_;
         var _loc21_:Number = this.§9J§;
         _loc18_ = param1.dt * this.§<"v§;
         this.§9J§ = b2Math.§0"E§(this.§9J§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§9J§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§`$%§(this.§9!B§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§%$>§.Copy();
         this.§%$>§.§<+§(_loc24_);
         _loc18_ = param1.dt * this.§=!8§;
         if(this.§%$>§.§&$<§() > _loc18_ * _loc18_)
         {
            this.§%$>§.Normalize();
            this.§%$>§.§@o§(_loc18_);
         }
         _loc24_ = b2Math.§ "&§(this.§%$>§,_loc25_);
         _loc6_.x -= _loc10_ * _loc24_.x;
         _loc6_.y -= _loc10_ * _loc24_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc24_.y - _loc15_ * _loc24_.x);
         _loc8_.x += _loc11_ * _loc24_.x;
         _loc8_.y += _loc11_ * _loc24_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc24_.y - _loc17_ * _loc24_.x);
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
