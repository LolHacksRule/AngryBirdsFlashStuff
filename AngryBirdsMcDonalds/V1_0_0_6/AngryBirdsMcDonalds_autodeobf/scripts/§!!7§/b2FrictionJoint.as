package §!!7§
{
   import §7!5§.b2Body;
   import §7!5§.b2TimeStep;
   import §7!Y§.b2internal;
   import §@![§.b2Mat22;
   import §@![§.b2Math;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §#!A§:b2Vec2;
      
      private var §8F§:b2Vec2;
      
      public var §?!F§:b2Mat22;
      
      public var §3!]§:Number;
      
      private var §@!0§:b2Vec2;
      
      private var §!^§:Number;
      
      private var §+4§:Number;
      
      private var §9=§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§#!A§ = new b2Vec2();
         this.§8F§ = new b2Vec2();
         this.§?!F§ = new b2Mat22();
         this.§@!0§ = new b2Vec2();
         super(param1);
         this.§#!A§.SetV(param1.§'8§);
         this.§8F§.SetV(param1.§>!_§);
         this.§?!F§.§%!&§();
         this.§3!]§ = 0;
         this.§@!0§.§%!&§();
         this.§!^§ = 0;
         this.§+4§ = param1.§1!J§;
         this.§9=§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-!j.GetWorldPoint(this.§#!A§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::30.GetWorldPoint(this.§8F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§@!0§.x,param1 * this.§@!0§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§!^§;
      }
      
      public function §7^§(param1:Number) : void
      {
         this.§+4§ = param1;
      }
      
      public function §#!_§() : Number
      {
         return this.§+4§;
      }
      
      public function § !N§(param1:Number) : void
      {
         this.§9=§ = param1;
      }
      
      public function §%!W§() : Number
      {
         return this.§9=§;
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
         _loc4_ = b2internal::-!j;
         _loc5_ = b2internal::30;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§#!A§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§#!A§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§8F§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§8F§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§0T§;
         var _loc11_:Number = _loc5_.§0T§;
         _loc12_ = _loc4_.§#d§;
         _loc13_ = _loc5_.§#d§;
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
         _loc14_.§^!§(this.§?!F§);
         this.§3!]§ = _loc12_ + _loc13_;
         if(this.§3!]§ > 0)
         {
            this.§3!]§ = 1 / this.§3!]§;
         }
         if(param1.§0!J§)
         {
            this.§@!0§.x *= param1.§'!P§;
            this.§@!0§.y *= param1.§'!P§;
            this.§!^§ *= param1.§'!P§;
            _loc15_ = this.§@!0§;
            _loc4_.§?!%§.x -= _loc10_ * _loc15_.x;
            _loc4_.§?!%§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§!^§);
            _loc5_.§?!%§.x += _loc11_ * _loc15_.x;
            _loc5_.§?!%§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§!^§);
         }
         else
         {
            this.§@!0§.§%!&§();
            this.§!^§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::-!j;
         var _loc5_:b2Body = b2internal::30;
         var _loc6_:b2Vec2 = _loc4_.§?!%§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§?!%§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§0T§;
         var _loc11_:Number = _loc5_.§0T§;
         var _loc12_:Number = _loc4_.§#d§;
         var _loc13_:Number = _loc5_.§#d§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§#!A§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§#!A§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§8F§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§8F§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§3!]§ * _loc19_;
         var _loc21_:Number = this.§!^§;
         _loc18_ = param1.§4l§ * this.§9=§;
         this.§!^§ = b2Math.§1!P§(this.§!^§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§!^§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§&U§(this.§?!F§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§@!0§.Copy();
         this.§@!0§.§,g§(_loc24_);
         _loc18_ = param1.§4l§ * this.§+4§;
         if(this.§@!0§.§[n§() > _loc18_ * _loc18_)
         {
            this.§@!0§.Normalize();
            this.§@!0§.§<'§(_loc18_);
         }
         _loc24_ = b2Math.§'u§(this.§@!0§,_loc25_);
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
