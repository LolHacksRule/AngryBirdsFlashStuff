package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §1!e§:b2Vec2;
      
      private var §3!p§:b2Vec2;
      
      public var §`!n§:b2Mat22;
      
      public var §;"0§:Number;
      
      private var §>d§:b2Vec2;
      
      private var §>f§:Number;
      
      private var §0!=§:Number;
      
      private var §1s§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§1!e§ = new b2Vec2();
         this.§3!p§ = new b2Vec2();
         this.§`!n§ = new b2Mat22();
         this.§>d§ = new b2Vec2();
         super(param1);
         this.§1!e§.SetV(param1.§3!&§);
         this.§3!p§.SetV(param1.§2!P§);
         this.§`!n§.§?b§();
         this.§;"0§ = 0;
         this.§>d§.§?b§();
         this.§>f§ = 0;
         this.§0!=§ = param1.§&>§;
         this.§1s§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.§1!e§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.§3!p§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>d§.x,param1 * this.§>d§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>f§;
      }
      
      public function §?";§(param1:Number) : void
      {
         this.§0!=§ = param1;
      }
      
      public function §6T§() : Number
      {
         return this.§0!=§;
      }
      
      public function §-!c§(param1:Number) : void
      {
         this.§1s§ = param1;
      }
      
      public function §=!"§() : Number
      {
         return this.§1s§;
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
         _loc4_ = b2internal::+d;
         _loc5_ = b2internal::"!l;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§1!e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§1!e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§3!p§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§3!p§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§@"!§;
         var _loc11_:Number = _loc5_.§@"!§;
         _loc12_ = _loc4_.§=!N§;
         _loc13_ = _loc5_.§=!N§;
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
         _loc14_.§'P§(this.§`!n§);
         this.§;"0§ = _loc12_ + _loc13_;
         if(this.§;"0§ > 0)
         {
            this.§;"0§ = 1 / this.§;"0§;
         }
         if(param1.§@!D§)
         {
            this.§>d§.x *= param1.§class§;
            this.§>d§.y *= param1.§class§;
            this.§>f§ *= param1.§class§;
            _loc15_ = this.§>d§;
            _loc4_.§]!g§.x -= _loc10_ * _loc15_.x;
            _loc4_.§]!g§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§>f§);
            _loc5_.§]!g§.x += _loc11_ * _loc15_.x;
            _loc5_.§]!g§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§>f§);
         }
         else
         {
            this.§>d§.§?b§();
            this.§>f§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         var _loc6_:b2Vec2 = _loc4_.§]!g§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§]!g§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§@"!§;
         var _loc11_:Number = _loc5_.§@"!§;
         var _loc12_:Number = _loc4_.§=!N§;
         var _loc13_:Number = _loc5_.§=!N§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§1!e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§1!e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§3!p§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§3!p§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§;"0§ * _loc19_;
         var _loc21_:Number = this.§>f§;
         _loc18_ = param1.§@[§ * this.§1s§;
         this.§>f§ = b2Math.§5" §(this.§>f§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§>f§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§<!G§(this.§`!n§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§>d§.Copy();
         this.§>d§.§<!n§(_loc24_);
         _loc18_ = param1.§@[§ * this.§0!=§;
         if(this.§>d§.§`2§() > _loc18_ * _loc18_)
         {
            this.§>d§.Normalize();
            this.§>d§.§7H§(_loc18_);
         }
         _loc24_ = b2Math.§ !r§(this.§>d§,_loc25_);
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
