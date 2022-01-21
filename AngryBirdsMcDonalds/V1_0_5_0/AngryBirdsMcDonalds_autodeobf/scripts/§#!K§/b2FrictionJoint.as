package §#!K§
{
   import §-0§.b2Body;
   import §-0§.b2TimeStep;
   import §@g§.b2internal;
   import §^!%§.b2Mat22;
   import §^!%§.b2Math;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §5!h§:b2Vec2;
      
      private var § !e§:b2Vec2;
      
      public var §>-§:b2Mat22;
      
      public var §4#§:Number;
      
      private var §4Q§:b2Vec2;
      
      private var §,$§:Number;
      
      private var §8!W§:Number;
      
      private var §@!§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§5!h§ = new b2Vec2();
         this.§ !e§ = new b2Vec2();
         this.§>-§ = new b2Mat22();
         this.§4Q§ = new b2Vec2();
         super(param1);
         this.§5!h§.SetV(param1.§0'§);
         this.§ !e§.SetV(param1.§;!b§);
         this.§>-§.§4[§();
         this.§4#§ = 0;
         this.§4Q§.§4[§();
         this.§,$§ = 0;
         this.§8!W§ = param1.§!?§;
         this.§@!§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+!`.GetWorldPoint(this.§5!h§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!7.GetWorldPoint(this.§ !e§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§4Q§.x,param1 * this.§4Q§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§,$§;
      }
      
      public function §?!j§(param1:Number) : void
      {
         this.§8!W§ = param1;
      }
      
      public function §8D§() : Number
      {
         return this.§8!W§;
      }
      
      public function §;!d§(param1:Number) : void
      {
         this.§@!§ = param1;
      }
      
      public function §,![§() : Number
      {
         return this.§@!§;
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
         _loc4_ = b2internal::+!`;
         _loc5_ = b2internal::,!7;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§5!h§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§5!h§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§ !e§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ !e§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§!=§;
         var _loc11_:Number = _loc5_.§!=§;
         _loc12_ = _loc4_.§4!i§;
         _loc13_ = _loc5_.§4!i§;
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
         _loc14_.§3v§(this.§>-§);
         this.§4#§ = _loc12_ + _loc13_;
         if(this.§4#§ > 0)
         {
            this.§4#§ = 1 / this.§4#§;
         }
         if(param1.§'!#§)
         {
            this.§4Q§.x *= param1.§,!e§;
            this.§4Q§.y *= param1.§,!e§;
            this.§,$§ *= param1.§,!e§;
            _loc15_ = this.§4Q§;
            _loc4_.§'!f§.x -= _loc10_ * _loc15_.x;
            _loc4_.§'!f§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§,$§);
            _loc5_.§'!f§.x += _loc11_ * _loc15_.x;
            _loc5_.§'!f§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§,$§);
         }
         else
         {
            this.§4Q§.§4[§();
            this.§,$§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::+!`;
         var _loc5_:b2Body = b2internal::,!7;
         var _loc6_:b2Vec2 = _loc4_.§'!f§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§'!f§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§!=§;
         var _loc11_:Number = _loc5_.§!=§;
         var _loc12_:Number = _loc4_.§4!i§;
         var _loc13_:Number = _loc5_.§4!i§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§5!h§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§5!h§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§ !e§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§ !e§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§4#§ * _loc19_;
         var _loc21_:Number = this.§,$§;
         _loc18_ = param1.§+u§ * this.§@!§;
         this.§,$§ = b2Math.§]$§(this.§,$§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§,$§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§#!j§(this.§>-§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§4Q§.Copy();
         this.§4Q§.§0!§(_loc24_);
         _loc18_ = param1.§+u§ * this.§8!W§;
         if(this.§4Q§.§'P§() > _loc18_ * _loc18_)
         {
            this.§4Q§.Normalize();
            this.§4Q§.§`!-§(_loc18_);
         }
         _loc24_ = b2Math.§6!a§(this.§4Q§,_loc25_);
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
