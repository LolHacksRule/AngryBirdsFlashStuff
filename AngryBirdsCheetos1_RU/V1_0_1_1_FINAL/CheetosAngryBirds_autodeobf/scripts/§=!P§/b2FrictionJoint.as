package §=!P§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2TimeStep;
   import §^q§.b2Mat22;
   import §^q§.b2Math;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §2g§:b2Vec2;
      
      private var §19§:b2Vec2;
      
      public var §?^§:b2Mat22;
      
      public var §2!'§:Number;
      
      private var §2,§:b2Vec2;
      
      private var §2;§:Number;
      
      private var §2!!§:Number;
      
      private var § M§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§2g§ = new b2Vec2();
         this.§19§ = new b2Vec2();
         this.§?^§ = new b2Mat22();
         this.§2,§ = new b2Vec2();
         super(param1);
         this.§2g§.SetV(param1.§;I§);
         this.§19§.SetV(param1.§-!&§);
         this.§?^§.§0q§();
         this.§2!'§ = 0;
         this.§2,§.§0q§();
         this.§2;§ = 0;
         this.§2!!§ = param1.§ else§;
         this.§ M§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&!?.GetWorldPoint(this.§2g§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!c.GetWorldPoint(this.§19§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§2,§.x,param1 * this.§2,§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§2;§;
      }
      
      public function §#>§(param1:Number) : void
      {
         this.§2!!§ = param1;
      }
      
      public function §;!'§() : Number
      {
         return this.§2!!§;
      }
      
      public function §;z§(param1:Number) : void
      {
         this.§ M§ = param1;
      }
      
      public function §@!P§() : Number
      {
         return this.§ M§;
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
         _loc4_ = b2internal::&!?;
         _loc5_ = b2internal::!!c;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§2g§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§2g§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§19§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§19§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§5Z§;
         var _loc11_:Number = _loc5_.§5Z§;
         _loc12_ = _loc4_.§[S§;
         _loc13_ = _loc5_.§[S§;
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
         _loc14_.§,X§(this.§?^§);
         this.§2!'§ = _loc12_ + _loc13_;
         if(this.§2!'§ > 0)
         {
            this.§2!'§ = 1 / this.§2!'§;
         }
         if(param1.§3!S§)
         {
            this.§2,§.x *= param1.§8B§;
            this.§2,§.y *= param1.§8B§;
            this.§2;§ *= param1.§8B§;
            _loc15_ = this.§2,§;
            _loc4_.§"!N§.x -= _loc10_ * _loc15_.x;
            _loc4_.§"!N§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§2;§);
            _loc5_.§"!N§.x += _loc11_ * _loc15_.x;
            _loc5_.§"!N§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§2;§);
         }
         else
         {
            this.§2,§.§0q§();
            this.§2;§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::&!?;
         var _loc5_:b2Body = b2internal::!!c;
         var _loc6_:b2Vec2 = _loc4_.§"!N§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§"!N§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§5Z§;
         var _loc11_:Number = _loc5_.§5Z§;
         var _loc12_:Number = _loc4_.§[S§;
         var _loc13_:Number = _loc5_.§[S§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§2g§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§2g§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§19§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§19§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§2!'§ * _loc19_;
         var _loc21_:Number = this.§2;§;
         _loc18_ = param1.§7!H§ * this.§ M§;
         this.§2;§ = b2Math.§in§(this.§2;§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§2;§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§!X§(this.§?^§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§2,§.Copy();
         this.§2,§.§9&§(_loc24_);
         _loc18_ = param1.§7!H§ * this.§2!!§;
         if(this.§2,§.§ X§() > _loc18_ * _loc18_)
         {
            this.§2,§.Normalize();
            this.§2,§.§=v§(_loc18_);
         }
         _loc24_ = b2Math.§#!F§(this.§2,§,_loc25_);
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
