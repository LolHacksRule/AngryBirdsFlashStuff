package §6$§
{
   import §&!L§.b2Mat22;
   import §&!L§.b2Math;
   import §&!L§.b2Vec2;
   import §3f§.b2Body;
   import §3f§.b2TimeStep;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §%-§:b2Vec2;
      
      private var §-_§:b2Vec2;
      
      public var §4f§:b2Mat22;
      
      public var §^!W§:Number;
      
      private var §[!C§:b2Vec2;
      
      private var §>]§:Number;
      
      private var §=!O§:Number;
      
      private var §4!0§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§%-§ = new b2Vec2();
         this.§-_§ = new b2Vec2();
         this.§4f§ = new b2Mat22();
         this.§[!C§ = new b2Vec2();
         super(param1);
         this.§%-§.SetV(param1.§8!Z§);
         this.§-_§.SetV(param1.§]!P§);
         this.§4f§.§`§();
         this.§^!W§ = 0;
         this.§[!C§.§`§();
         this.§>]§ = 0;
         this.§=!O§ = param1.§?M§;
         this.§4!0§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!I.GetWorldPoint(this.§%-§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!#.GetWorldPoint(this.§-_§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!C§.x,param1 * this.§[!C§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>]§;
      }
      
      public function §[!?§(param1:Number) : void
      {
         this.§=!O§ = param1;
      }
      
      public function §`!8§() : Number
      {
         return this.§=!O§;
      }
      
      public function §]r§(param1:Number) : void
      {
         this.§4!0§ = param1;
      }
      
      public function §&I§() : Number
      {
         return this.§4!0§;
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
         _loc4_ = b2internal::2!I;
         _loc5_ = b2internal::%!#;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§%-§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§%-§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§-_§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§-_§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§3!`§;
         var _loc11_:Number = _loc5_.§3!`§;
         _loc12_ = _loc4_.§=4§;
         _loc13_ = _loc5_.§=4§;
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
         _loc14_.§9#§(this.§4f§);
         this.§^!W§ = _loc12_ + _loc13_;
         if(this.§^!W§ > 0)
         {
            this.§^!W§ = 1 / this.§^!W§;
         }
         if(param1.§&!X§)
         {
            this.§[!C§.x *= param1.§@=§;
            this.§[!C§.y *= param1.§@=§;
            this.§>]§ *= param1.§@=§;
            _loc15_ = this.§[!C§;
            _loc4_.§9!Q§.x -= _loc10_ * _loc15_.x;
            _loc4_.§9!Q§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§>]§);
            _loc5_.§9!Q§.x += _loc11_ * _loc15_.x;
            _loc5_.§9!Q§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§>]§);
         }
         else
         {
            this.§[!C§.§`§();
            this.§>]§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::2!I;
         var _loc5_:b2Body = b2internal::%!#;
         var _loc6_:b2Vec2 = _loc4_.§9!Q§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§9!Q§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§3!`§;
         var _loc11_:Number = _loc5_.§3!`§;
         var _loc12_:Number = _loc4_.§=4§;
         var _loc13_:Number = _loc5_.§=4§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§%-§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§%-§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§-_§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§-_§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§^!W§ * _loc19_;
         var _loc21_:Number = this.§>]§;
         _loc18_ = param1.§"p§ * this.§4!0§;
         this.§>]§ = b2Math.§2m§(this.§>]§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§>]§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§%§(this.§4f§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§[!C§.Copy();
         this.§[!C§.§9Y§(_loc24_);
         _loc18_ = param1.§"p§ * this.§=!O§;
         if(this.§[!C§.§8L§() > _loc18_ * _loc18_)
         {
            this.§[!C§.Normalize();
            this.§[!C§.§?!4§(_loc18_);
         }
         _loc24_ = b2Math.§ <§(this.§[!C§,_loc25_);
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
