package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §^!i§:b2Vec2;
      
      private var §?!5§:b2Vec2;
      
      public var §=_§:b2Mat22;
      
      public var §>5§:Number;
      
      private var §%M§:b2Vec2;
      
      private var §]a§:Number;
      
      private var §[!Y§:Number;
      
      private var §7!X§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§^!i§ = new b2Vec2();
         this.§?!5§ = new b2Vec2();
         this.§=_§ = new b2Mat22();
         this.§%M§ = new b2Vec2();
         super(param1);
         this.§^!i§.SetV(param1.§9!9§);
         this.§?!5§.SetV(param1.§^G§);
         this.§=_§.§%&§();
         this.§>5§ = 0;
         this.§%M§.§%&§();
         this.§]a§ = 0;
         this.§[!Y§ = param1.§4!G§;
         this.§7!X§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.§^!i§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.§?!5§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%M§.x,param1 * this.§%M§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§]a§;
      }
      
      public function §`n§(param1:Number) : void
      {
         this.§[!Y§ = param1;
      }
      
      public function § !#§() : Number
      {
         return this.§[!Y§;
      }
      
      public function §]7§(param1:Number) : void
      {
         this.§7!X§ = param1;
      }
      
      public function §23§() : Number
      {
         return this.§7!X§;
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
         _loc4_ = b2internal::^^;
         _loc5_ = b2internal::7!<;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§^!i§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§^!i§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§?!5§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§?!5§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§1!X§;
         var _loc11_:Number = _loc5_.§1!X§;
         _loc12_ = _loc4_.§^!B§;
         _loc13_ = _loc5_.§^!B§;
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
         _loc14_.§+!s§(this.§=_§);
         this.§>5§ = _loc12_ + _loc13_;
         if(this.§>5§ > 0)
         {
            this.§>5§ = 1 / this.§>5§;
         }
         if(param1.§9!G§)
         {
            this.§%M§.x *= param1.§&t§;
            this.§%M§.y *= param1.§&t§;
            this.§]a§ *= param1.§&t§;
            _loc15_ = this.§%M§;
            _loc4_.§9!§.x -= _loc10_ * _loc15_.x;
            _loc4_.§9!§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§]a§);
            _loc5_.§9!§.x += _loc11_ * _loc15_.x;
            _loc5_.§9!§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§]a§);
         }
         else
         {
            this.§%M§.§%&§();
            this.§]a§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::^^;
         var _loc5_:b2Body = b2internal::7!<;
         var _loc6_:b2Vec2 = _loc4_.§9!§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§9!§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§1!X§;
         var _loc11_:Number = _loc5_.§1!X§;
         var _loc12_:Number = _loc4_.§^!B§;
         var _loc13_:Number = _loc5_.§^!B§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§^!i§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§^!i§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§?!5§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§?!5§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§>5§ * _loc19_;
         var _loc21_:Number = this.§]a§;
         _loc18_ = param1.§6c§ * this.§7!X§;
         this.§]a§ = b2Math.§5L§(this.§]a§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§]a§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§"!+§(this.§=_§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§%M§.Copy();
         this.§%M§.§[!C§(_loc24_);
         _loc18_ = param1.§6c§ * this.§[!Y§;
         if(this.§%M§.§!!v§() > _loc18_ * _loc18_)
         {
            this.§%M§.Normalize();
            this.§%M§.§;a§(_loc18_);
         }
         _loc24_ = b2Math.§>G§(this.§%M§,_loc25_);
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
