package §"!4§
{
   import § y§.b2Body;
   import § y§.b2TimeStep;
   import §54§.b2internal;
   import §;h§.b2Mat22;
   import §;h§.b2Math;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §6U§:b2Vec2;
      
      private var §,!§:b2Vec2;
      
      public var §=s§:b2Mat22;
      
      public var §5m§:Number;
      
      private var §0V§:b2Vec2;
      
      private var §7!D§:Number;
      
      private var §6!Y§:Number;
      
      private var §9=§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§6U§ = new b2Vec2();
         this.§,!§ = new b2Vec2();
         this.§=s§ = new b2Mat22();
         this.§0V§ = new b2Vec2();
         super(param1);
         this.§6U§.SetV(param1.§9%§);
         this.§,!§.SetV(param1.§+!"§);
         this.§=s§.§9!V§();
         this.§5m§ = 0;
         this.§0V§.§9!V§();
         this.§7!D§ = 0;
         this.§6!Y§ = param1.§4!d§;
         this.§9=§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`1.GetWorldPoint(this.§6U§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!4.GetWorldPoint(this.§,!§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0V§.x,param1 * this.§0V§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§7!D§;
      }
      
      public function §"!<§(param1:Number) : void
      {
         this.§6!Y§ = param1;
      }
      
      public function §%n§() : Number
      {
         return this.§6!Y§;
      }
      
      public function §&F§(param1:Number) : void
      {
         this.§9=§ = param1;
      }
      
      public function §^!?§() : Number
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
         _loc4_ = b2internal::`1;
         _loc5_ = b2internal::[!4;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§6U§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§6U§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§,!§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§,!§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§!S§;
         var _loc11_:Number = _loc5_.§!S§;
         _loc12_ = _loc4_.§2`§;
         _loc13_ = _loc5_.§2`§;
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
         _loc14_.§false§(this.§=s§);
         this.§5m§ = _loc12_ + _loc13_;
         if(this.§5m§ > 0)
         {
            this.§5m§ = 1 / this.§5m§;
         }
         if(param1.§[!Z§)
         {
            this.§0V§.x *= param1.§56§;
            this.§0V§.y *= param1.§56§;
            this.§7!D§ *= param1.§56§;
            _loc15_ = this.§0V§;
            _loc4_.§+!W§.x -= _loc10_ * _loc15_.x;
            _loc4_.§+!W§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§7!D§);
            _loc5_.§+!W§.x += _loc11_ * _loc15_.x;
            _loc5_.§+!W§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§7!D§);
         }
         else
         {
            this.§0V§.§9!V§();
            this.§7!D§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::`1;
         var _loc5_:b2Body = b2internal::[!4;
         var _loc6_:b2Vec2 = _loc4_.§+!W§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§+!W§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§!S§;
         var _loc11_:Number = _loc5_.§!S§;
         var _loc12_:Number = _loc4_.§2`§;
         var _loc13_:Number = _loc5_.§2`§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§6U§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§6U§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§,!§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§,!§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§5m§ * _loc19_;
         var _loc21_:Number = this.§7!D§;
         _loc18_ = param1.§9!^§ * this.§9=§;
         this.§7!D§ = b2Math.§!!T§(this.§7!D§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§7!D§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§0q§(this.§=s§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§0V§.Copy();
         this.§0V§.§8J§(_loc24_);
         _loc18_ = param1.§9!^§ * this.§6!Y§;
         if(this.§0V§.§&T§() > _loc18_ * _loc18_)
         {
            this.§0V§.Normalize();
            this.§0V§.§#M§(_loc18_);
         }
         _loc24_ = b2Math.§"!S§(this.§0V§,_loc25_);
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
