package §8!k§
{
   import §-!G§.b2Mat22;
   import §-!G§.b2Math;
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   import §=9§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §^"7§:b2Vec2;
      
      private var § !r§:b2Vec2;
      
      public var §]q§:b2Mat22;
      
      public var §0j§:Number;
      
      private var §"z§:b2Vec2;
      
      private var §;!n§:Number;
      
      private var §0P§:Number;
      
      private var §5!>§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§^"7§ = new b2Vec2();
         this.§ !r§ = new b2Vec2();
         this.§]q§ = new b2Mat22();
         this.§"z§ = new b2Vec2();
         super(param1);
         this.§^"7§.SetV(param1.§"!O§);
         this.§ !r§.SetV(param1.§ W§);
         this.§]q§.§7!@§();
         this.§0j§ = 0;
         this.§"z§.§7!@§();
         this.§;!n§ = 0;
         this.§0P§ = param1.§@,§;
         this.§5!>§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#U.GetWorldPoint(this.§^"7§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&W.GetWorldPoint(this.§ !r§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§"z§.x,param1 * this.§"z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;!n§;
      }
      
      public function §8!N§(param1:Number) : void
      {
         this.§0P§ = param1;
      }
      
      public function §1§() : Number
      {
         return this.§0P§;
      }
      
      public function §=!e§(param1:Number) : void
      {
         this.§5!>§ = param1;
      }
      
      public function §`!>§() : Number
      {
         return this.§5!>§;
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
         _loc4_ = b2internal::#U;
         _loc5_ = b2internal::&W;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§^"7§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§^"7§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§ !r§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ !r§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§@"!§;
         var _loc11_:Number = _loc5_.§@"!§;
         _loc12_ = _loc4_.§!!o§;
         _loc13_ = _loc5_.§!!o§;
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
         _loc14_.§<!4§(this.§]q§);
         this.§0j§ = _loc12_ + _loc13_;
         if(this.§0j§ > 0)
         {
            this.§0j§ = 1 / this.§0j§;
         }
         if(param1.§2!z§)
         {
            this.§"z§.x *= param1.§>!i§;
            this.§"z§.y *= param1.§>!i§;
            this.§;!n§ *= param1.§>!i§;
            _loc15_ = this.§"z§;
            _loc4_.§?!@§.x -= _loc10_ * _loc15_.x;
            _loc4_.§?!@§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§;!n§);
            _loc5_.§?!@§.x += _loc11_ * _loc15_.x;
            _loc5_.§?!@§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§;!n§);
         }
         else
         {
            this.§"z§.§7!@§();
            this.§;!n§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::#U;
         var _loc5_:b2Body = b2internal::&W;
         var _loc6_:b2Vec2 = _loc4_.§?!@§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§?!@§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§@"!§;
         var _loc11_:Number = _loc5_.§@"!§;
         var _loc12_:Number = _loc4_.§!!o§;
         var _loc13_:Number = _loc5_.§!!o§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§^"7§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§^"7§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§ !r§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§ !r§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§0j§ * _loc19_;
         var _loc21_:Number = this.§;!n§;
         _loc18_ = param1.§@w§ * this.§5!>§;
         this.§;!n§ = b2Math.§<C§(this.§;!n§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§;!n§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§6B§(this.§]q§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§"z§.Copy();
         this.§"z§.§,!m§(_loc24_);
         _loc18_ = param1.§@w§ * this.§0P§;
         if(this.§"z§.§7" §() > _loc18_ * _loc18_)
         {
            this.§"z§.Normalize();
            this.§"z§.§'!V§(_loc18_);
         }
         _loc24_ = b2Math.§?[§(this.§"z§,_loc25_);
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
