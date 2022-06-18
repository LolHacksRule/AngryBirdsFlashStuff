package §!H§
{
   import §!!B§.b2Body;
   import §!!B§.b2TimeStep;
   import §;0§.b2internal;
   import §;U§.b2Mat22;
   import §;U§.b2Math;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §0!_§:b2Vec2;
      
      private var §#F§:b2Vec2;
      
      public var §<!4§:b2Mat22;
      
      public var §7!M§:Number;
      
      private var §^v§:b2Vec2;
      
      private var §37§:Number;
      
      private var §6P§:Number;
      
      private var §1W§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§0!_§ = new b2Vec2();
         this.§#F§ = new b2Vec2();
         this.§<!4§ = new b2Mat22();
         this.§^v§ = new b2Vec2();
         super(param1);
         this.§0!_§.SetV(param1.§7p§);
         this.§#F§.SetV(param1.§"!C§);
         this.§<!4§.§4S§();
         this.§7!M§ = 0;
         this.§^v§.§4S§();
         this.§37§ = 0;
         this.§6P§ = param1.§%!J§;
         this.§1W§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!!!.GetWorldPoint(this.§0!_§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!.GetWorldPoint(this.§#F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^v§.x,param1 * this.§^v§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§37§;
      }
      
      public function §9B§(param1:Number) : void
      {
         this.§6P§ = param1;
      }
      
      public function § !E§() : Number
      {
         return this.§6P§;
      }
      
      public function §#!]§(param1:Number) : void
      {
         this.§1W§ = param1;
      }
      
      public function §=7§() : Number
      {
         return this.§1W§;
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
         _loc4_ = b2internal::!!!;
         _loc5_ = b2internal::%!;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§0!_§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§0!_§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§#F§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§#F§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§?t§;
         var _loc11_:Number = _loc5_.§?t§;
         _loc12_ = _loc4_.§<!V§;
         _loc13_ = _loc5_.§<!V§;
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
         _loc14_.§-N§(this.§<!4§);
         this.§7!M§ = _loc12_ + _loc13_;
         if(this.§7!M§ > 0)
         {
            this.§7!M§ = 1 / this.§7!M§;
         }
         if(param1.§7!Z§)
         {
            this.§^v§.x *= param1.§+k§;
            this.§^v§.y *= param1.§+k§;
            this.§37§ *= param1.§+k§;
            _loc15_ = this.§^v§;
            _loc4_.§7W§.x -= _loc10_ * _loc15_.x;
            _loc4_.§7W§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§37§);
            _loc5_.§7W§.x += _loc11_ * _loc15_.x;
            _loc5_.§7W§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§37§);
         }
         else
         {
            this.§^v§.§4S§();
            this.§37§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::!!!;
         var _loc5_:b2Body = b2internal::%!;
         var _loc6_:b2Vec2 = _loc4_.§7W§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§7W§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§?t§;
         var _loc11_:Number = _loc5_.§?t§;
         var _loc12_:Number = _loc4_.§<!V§;
         var _loc13_:Number = _loc5_.§<!V§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§0!_§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§0!_§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§#F§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§#F§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§7!M§ * _loc19_;
         var _loc21_:Number = this.§37§;
         _loc18_ = param1.§1-§ * this.§1W§;
         this.§37§ = b2Math.§1!<§(this.§37§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§37§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§5!§(this.§<!4§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§^v§.Copy();
         this.§^v§.§<!A§(_loc24_);
         _loc18_ = param1.§1-§ * this.§6P§;
         if(this.§^v§.§0!]§() > _loc18_ * _loc18_)
         {
            this.§^v§.Normalize();
            this.§^v§.§2!'§(_loc18_);
         }
         _loc24_ = b2Math.§4!'§(this.§^v§,_loc25_);
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
