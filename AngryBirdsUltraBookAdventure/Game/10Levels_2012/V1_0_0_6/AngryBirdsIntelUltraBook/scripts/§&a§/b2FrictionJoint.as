package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §=!&§:b2Vec2;
      
      private var §6d§:b2Vec2;
      
      public var §2!`§:b2Mat22;
      
      public var §!!l§:Number;
      
      private var §^G§:b2Vec2;
      
      private var §<!d§:Number;
      
      private var §-!K§:Number;
      
      private var §9_§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§=!&§ = new b2Vec2();
         this.§6d§ = new b2Vec2();
         this.§2!`§ = new b2Mat22();
         this.§^G§ = new b2Vec2();
         super(param1);
         this.§=!&§.SetV(param1.§4!%§);
         this.§6d§.SetV(param1.§=!I§);
         this.§2!`§.§&!K§();
         this.§!!l§ = 0;
         this.§^G§.§&!K§();
         this.§<!d§ = 0;
         this.§-!K§ = param1.§2A§;
         this.§9_§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.§=!&§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.§6d§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^G§.x,param1 * this.§^G§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§<!d§;
      }
      
      public function §>T§(param1:Number) : void
      {
         this.§-!K§ = param1;
      }
      
      public function §9D§() : Number
      {
         return this.§-!K§;
      }
      
      public function §[G§(param1:Number) : void
      {
         this.§9_§ = param1;
      }
      
      public function §+!t§() : Number
      {
         return this.§9_§;
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
         _loc4_ = b2internal::>0;
         _loc5_ = b2internal::[=;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§=!&§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=!&§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§6d§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§6d§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§-7§;
         var _loc11_:Number = _loc5_.§-7§;
         _loc12_ = _loc4_.§,!o§;
         _loc13_ = _loc5_.§,!o§;
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
         _loc14_.§9!0§(this.§2!`§);
         this.§!!l§ = _loc12_ + _loc13_;
         if(this.§!!l§ > 0)
         {
            this.§!!l§ = 1 / this.§!!l§;
         }
         if(param1.§#!P§)
         {
            this.§^G§.x *= param1.§ !o§;
            this.§^G§.y *= param1.§ !o§;
            this.§<!d§ *= param1.§ !o§;
            _loc15_ = this.§^G§;
            _loc4_.§%!V§.x -= _loc10_ * _loc15_.x;
            _loc4_.§%!V§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§<!d§);
            _loc5_.§%!V§.x += _loc11_ * _loc15_.x;
            _loc5_.§%!V§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§<!d§);
         }
         else
         {
            this.§^G§.§&!K§();
            this.§<!d§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::>0;
         var _loc5_:b2Body = b2internal::[=;
         var _loc6_:b2Vec2 = _loc4_.§%!V§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§%!V§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§-7§;
         var _loc11_:Number = _loc5_.§-7§;
         var _loc12_:Number = _loc4_.§,!o§;
         var _loc13_:Number = _loc5_.§,!o§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§=!&§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§=!&§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§6d§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§6d§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§!!l§ * _loc19_;
         var _loc21_:Number = this.§<!d§;
         _loc18_ = param1.§&!'§ * this.§9_§;
         this.§<!d§ = b2Math.§]!M§(this.§<!d§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§<!d§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§&!Q§(this.§2!`§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§^G§.Copy();
         this.§^G§.§'!<§(_loc24_);
         _loc18_ = param1.§&!'§ * this.§-!K§;
         if(this.§^G§.§#-§() > _loc18_ * _loc18_)
         {
            this.§^G§.Normalize();
            this.§^G§.§%G§(_loc18_);
         }
         _loc24_ = b2Math.§9!<§(this.§^G§,_loc25_);
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
