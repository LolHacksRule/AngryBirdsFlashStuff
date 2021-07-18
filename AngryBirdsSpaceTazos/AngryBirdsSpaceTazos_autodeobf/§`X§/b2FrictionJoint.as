package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §&!K§:b2Vec2;
      
      private var §%K§:b2Vec2;
      
      public var §>§:b2Mat22;
      
      public var §>!§:Number;
      
      private var §%Z§:b2Vec2;
      
      private var §+"3§:Number;
      
      private var §"!C§:Number;
      
      private var §?<§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§&!K§ = new b2Vec2();
         this.§%K§ = new b2Vec2();
         this.§>§ = new b2Mat22();
         this.§%Z§ = new b2Vec2();
         super(param1);
         this.§&!K§.SetV(param1.§!8§);
         this.§%K§.SetV(param1.§@W§);
         this.§>§.§@!d§();
         this.§>!§ = 0;
         this.§%Z§.§@!d§();
         this.§+"3§ = 0;
         this.§"!C§ = param1.§1^§;
         this.§?<§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.§&!K§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.§%K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%Z§.x,param1 * this.§%Z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+"3§;
      }
      
      public function §]!E§(param1:Number) : void
      {
         this.§"!C§ = param1;
      }
      
      public function §#J§() : Number
      {
         return this.§"!C§;
      }
      
      public function §,!W§(param1:Number) : void
      {
         this.§?<§ = param1;
      }
      
      public function § ![§() : Number
      {
         return this.§?<§;
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
         _loc4_ = b2internal::<!1;
         _loc5_ = b2internal::?H;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§&!K§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§&!K§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§%K§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§%K§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§6!W§;
         var _loc11_:Number = _loc5_.§6!W§;
         _loc12_ = _loc4_.§<!%§;
         _loc13_ = _loc5_.§<!%§;
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
         _loc14_.§-r§(this.§>§);
         this.§>!§ = _loc12_ + _loc13_;
         if(this.§>!§ > 0)
         {
            this.§>!§ = 1 / this.§>!§;
         }
         if(param1.§`m§)
         {
            this.§%Z§.x *= param1.§-I§;
            this.§%Z§.y *= param1.§-I§;
            this.§+"3§ *= param1.§-I§;
            _loc15_ = this.§%Z§;
            _loc4_.§?o§.x -= _loc10_ * _loc15_.x;
            _loc4_.§?o§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§+"3§);
            _loc5_.§?o§.x += _loc11_ * _loc15_.x;
            _loc5_.§?o§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§+"3§);
         }
         else
         {
            this.§%Z§.§@!d§();
            this.§+"3§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::<!1;
         var _loc5_:b2Body = b2internal::?H;
         var _loc6_:b2Vec2 = _loc4_.§?o§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§?o§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§6!W§;
         var _loc11_:Number = _loc5_.§6!W§;
         var _loc12_:Number = _loc4_.§<!%§;
         var _loc13_:Number = _loc5_.§<!%§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§&!K§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§&!K§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§%K§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§%K§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§>!§ * _loc19_;
         var _loc21_:Number = this.§+"3§;
         _loc18_ = param1.§2^§ * this.§?<§;
         this.§+"3§ = b2Math.§`J§(this.§+"3§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§+"3§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§,!s§(this.§>§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§%Z§.Copy();
         this.§%Z§.§]!H§(_loc24_);
         _loc18_ = param1.§2^§ * this.§"!C§;
         if(this.§%Z§.§"z§() > _loc18_ * _loc18_)
         {
            this.§%Z§.Normalize();
            this.§%Z§.§-!&§(_loc18_);
         }
         _loc24_ = b2Math.§,!`§(this.§%Z§,_loc25_);
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
