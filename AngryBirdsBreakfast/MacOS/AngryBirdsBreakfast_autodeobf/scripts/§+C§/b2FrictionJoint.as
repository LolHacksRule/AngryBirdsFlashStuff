package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §7"+§:b2Vec2;
      
      private var §6" §:b2Vec2;
      
      public var §,!@§:b2Mat22;
      
      public var §?"!§:Number;
      
      private var §%I§:b2Vec2;
      
      private var §@f§:Number;
      
      private var §5!+§:Number;
      
      private var §3_§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§7"+§ = new b2Vec2();
         this.§6" § = new b2Vec2();
         this.§,!@§ = new b2Mat22();
         this.§%I§ = new b2Vec2();
         super(param1);
         this.§7"+§.SetV(param1.§0O§);
         this.§6" §.SetV(param1.§ @§);
         this.§,!@§.§5!H§();
         this.§?"!§ = 0;
         this.§%I§.§5!H§();
         this.§@f§ = 0;
         this.§5!+§ = param1.§&l§;
         this.§3_§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.§7"+§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.§6" §);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%I§.x,param1 * this.§%I§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§@f§;
      }
      
      public function §&!4§(param1:Number) : void
      {
         this.§5!+§ = param1;
      }
      
      public function §?Q§() : Number
      {
         return this.§5!+§;
      }
      
      public function §9i§(param1:Number) : void
      {
         this.§3_§ = param1;
      }
      
      public function §]Q§() : Number
      {
         return this.§3_§;
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
         _loc4_ = b2internal::[Z;
         _loc5_ = b2internal::8!F;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§7"+§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§7"+§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§6" §.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§6" §.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§4!&§;
         var _loc11_:Number = _loc5_.§4!&§;
         _loc12_ = _loc4_.§`!`§;
         _loc13_ = _loc5_.§`!`§;
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
         _loc14_.§,&§(this.§,!@§);
         this.§?"!§ = _loc12_ + _loc13_;
         if(this.§?"!§ > 0)
         {
            this.§?"!§ = 1 / this.§?"!§;
         }
         if(param1.§?j§)
         {
            this.§%I§.x *= param1.§-k§;
            this.§%I§.y *= param1.§-k§;
            this.§@f§ *= param1.§-k§;
            _loc15_ = this.§%I§;
            _loc4_.§?!^§.x -= _loc10_ * _loc15_.x;
            _loc4_.§?!^§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§@f§);
            _loc5_.§?!^§.x += _loc11_ * _loc15_.x;
            _loc5_.§?!^§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§@f§);
         }
         else
         {
            this.§%I§.§5!H§();
            this.§@f§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::[Z;
         var _loc5_:b2Body = b2internal::8!F;
         var _loc6_:b2Vec2 = _loc4_.§?!^§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§?!^§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§4!&§;
         var _loc11_:Number = _loc5_.§4!&§;
         var _loc12_:Number = _loc4_.§`!`§;
         var _loc13_:Number = _loc5_.§`!`§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§7"+§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§7"+§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§6" §.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§6" §.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§?"!§ * _loc19_;
         var _loc21_:Number = this.§@f§;
         _loc18_ = param1.§`!9§ * this.§3_§;
         this.§@f§ = b2Math.§&a§(this.§@f§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§@f§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§"]§(this.§,!@§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§%I§.Copy();
         this.§%I§.§-!r§(_loc24_);
         _loc18_ = param1.§`!9§ * this.§5!+§;
         if(this.§%I§.§<T§() > _loc18_ * _loc18_)
         {
            this.§%I§.Normalize();
            this.§%I§.§>[§(_loc18_);
         }
         _loc24_ = b2Math.§";§(this.§%I§,_loc25_);
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
