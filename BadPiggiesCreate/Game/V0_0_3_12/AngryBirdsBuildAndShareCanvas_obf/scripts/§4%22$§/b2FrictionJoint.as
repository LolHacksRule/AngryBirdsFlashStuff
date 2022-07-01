package §4"$§
{
   import §&!M§.b2Body;
   import §&!M§.b2TimeStep;
   import §3!t§.b2Mat22;
   import §3!t§.b2Math;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §8x§:b2Vec2;
      
      private var §;!>§:b2Vec2;
      
      public var §2!Q§:b2Mat22;
      
      public var §5!v§:Number;
      
      private var §,i§:b2Vec2;
      
      private var §!!i§:Number;
      
      private var §9"8§:Number;
      
      private var §#!E§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§8x§ = new b2Vec2();
         this.§;!>§ = new b2Vec2();
         this.§2!Q§ = new b2Mat22();
         this.§,i§ = new b2Vec2();
         super(param1);
         this.§8x§.SetV(param1.§ 3§);
         this.§;!>§.SetV(param1.§ '§);
         this.§2!Q§.§ 4§();
         this.§5!v§ = 0;
         this.§,i§.§ 4§();
         this.§!!i§ = 0;
         this.§9"8§ = param1.§ -§;
         this.§#!E§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"!U.GetWorldPoint(this.§8x§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!3.GetWorldPoint(this.§;!>§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§,i§.x,param1 * this.§,i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§!!i§;
      }
      
      public function §7k§(param1:Number) : void
      {
         this.§9"8§ = param1;
      }
      
      public function § %§() : Number
      {
         return this.§9"8§;
      }
      
      public function §6"6§(param1:Number) : void
      {
         this.§#!E§ = param1;
      }
      
      public function §^!f§() : Number
      {
         return this.§#!E§;
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
         _loc4_ = b2internal::"!U;
         _loc5_ = b2internal::!!3;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§8x§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§8x§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§;!>§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§;!>§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§+!O§;
         var _loc11_:Number = _loc5_.§+!O§;
         _loc12_ = _loc4_.§#f§;
         _loc13_ = _loc5_.§#f§;
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
         _loc14_.§-!D§(this.§2!Q§);
         this.§5!v§ = _loc12_ + _loc13_;
         if(this.§5!v§ > 0)
         {
            this.§5!v§ = 1 / this.§5!v§;
         }
         if(param1.§50§)
         {
            this.§,i§.x *= param1.§<!4§;
            this.§,i§.y *= param1.§<!4§;
            this.§!!i§ *= param1.§<!4§;
            _loc15_ = this.§,i§;
            _loc4_.§[!m§.x -= _loc10_ * _loc15_.x;
            _loc4_.§[!m§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§!!i§);
            _loc5_.§[!m§.x += _loc11_ * _loc15_.x;
            _loc5_.§[!m§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§!!i§);
         }
         else
         {
            this.§,i§.§ 4§();
            this.§!!i§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::"!U;
         var _loc5_:b2Body = b2internal::!!3;
         var _loc6_:b2Vec2 = _loc4_.§[!m§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§[!m§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§+!O§;
         var _loc11_:Number = _loc5_.§+!O§;
         var _loc12_:Number = _loc4_.§#f§;
         var _loc13_:Number = _loc5_.§#f§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§8x§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§8x§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§;!>§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§;!>§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§5!v§ * _loc19_;
         var _loc21_:Number = this.§!!i§;
         _loc18_ = param1.§!"7§ * this.§#!E§;
         this.§!!i§ = b2Math.§4"?§(this.§!!i§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§!!i§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§!!7§(this.§2!Q§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§,i§.Copy();
         this.§,i§.§9!6§(_loc24_);
         _loc18_ = param1.§!"7§ * this.§9"8§;
         if(this.§,i§.§["6§() > _loc18_ * _loc18_)
         {
            this.§,i§.Normalize();
            this.§,i§.§%!?§(_loc18_);
         }
         _loc24_ = b2Math.§'T§(this.§,i§,_loc25_);
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
