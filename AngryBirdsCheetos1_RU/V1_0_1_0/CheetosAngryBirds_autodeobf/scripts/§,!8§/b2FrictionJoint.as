package §,!8§
{
   import §&!B§.b2Mat22;
   import §&!B§.b2Math;
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §[x§.b2TimeStep;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §"!Y§:b2Vec2;
      
      private var §7!,§:b2Vec2;
      
      public var §%!,§:b2Mat22;
      
      public var §6R§:Number;
      
      private var §=!7§:b2Vec2;
      
      private var §4!Q§:Number;
      
      private var §9R§:Number;
      
      private var §9A§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§"!Y§ = new b2Vec2();
         this.§7!,§ = new b2Vec2();
         this.§%!,§ = new b2Mat22();
         this.§=!7§ = new b2Vec2();
         super(param1);
         this.§"!Y§.SetV(param1.§'s§);
         this.§7!,§.SetV(param1.§5%§);
         this.§%!,§.§,!3§();
         this.§6R§ = 0;
         this.§=!7§.§,!3§();
         this.§4!Q§ = 0;
         this.§9R§ = param1.§;R§;
         this.§9A§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::%!F.GetWorldPoint(this.§"!Y§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!S.GetWorldPoint(this.§7!,§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§=!7§.x,param1 * this.§=!7§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§4!Q§;
      }
      
      public function §^,§(param1:Number) : void
      {
         this.§9R§ = param1;
      }
      
      public function §-t§() : Number
      {
         return this.§9R§;
      }
      
      public function §39§(param1:Number) : void
      {
         this.§9A§ = param1;
      }
      
      public function §&T§() : Number
      {
         return this.§9A§;
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
         _loc4_ = b2internal::%!F;
         _loc5_ = b2internal::?!S;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§"!Y§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§"!Y§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§7!,§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§7!,§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§6I§;
         var _loc11_:Number = _loc5_.§6I§;
         _loc12_ = _loc4_.§2!L§;
         _loc13_ = _loc5_.§2!L§;
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
         _loc14_.§<5§(this.§%!,§);
         this.§6R§ = _loc12_ + _loc13_;
         if(this.§6R§ > 0)
         {
            this.§6R§ = 1 / this.§6R§;
         }
         if(param1.§3!-§)
         {
            this.§=!7§.x *= param1.§4!G§;
            this.§=!7§.y *= param1.§4!G§;
            this.§4!Q§ *= param1.§4!G§;
            _loc15_ = this.§=!7§;
            _loc4_.§%q§.x -= _loc10_ * _loc15_.x;
            _loc4_.§%q§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§4!Q§);
            _loc5_.§%q§.x += _loc11_ * _loc15_.x;
            _loc5_.§%q§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§4!Q§);
         }
         else
         {
            this.§=!7§.§,!3§();
            this.§4!Q§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::%!F;
         var _loc5_:b2Body = b2internal::?!S;
         var _loc6_:b2Vec2 = _loc4_.§%q§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§%q§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§6I§;
         var _loc11_:Number = _loc5_.§6I§;
         var _loc12_:Number = _loc4_.§2!L§;
         var _loc13_:Number = _loc5_.§2!L§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§"!Y§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§"!Y§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§7!,§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§7!,§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§6R§ * _loc19_;
         var _loc21_:Number = this.§4!Q§;
         _loc18_ = param1.§>!!§ * this.§9A§;
         this.§4!Q§ = b2Math.§,W§(this.§4!Q§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§4!Q§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§7U§(this.§%!,§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§=!7§.Copy();
         this.§=!7§.§!!X§(_loc24_);
         _loc18_ = param1.§>!!§ * this.§9R§;
         if(this.§=!7§.§0!K§() > _loc18_ * _loc18_)
         {
            this.§=!7§.Normalize();
            this.§=!7§.§7!G§(_loc18_);
         }
         _loc24_ = b2Math.§12§(this.§=!7§,_loc25_);
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
