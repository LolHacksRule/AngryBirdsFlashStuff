package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2TimeStep;
   import §?"'§.b2Mat22;
   import §?"'§.b2Math;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §6!z§:b2Vec2;
      
      private var §&1§:b2Vec2;
      
      public var § 0§:b2Mat22;
      
      public var §1&§:Number;
      
      private var §5+§:b2Vec2;
      
      private var §<E§:Number;
      
      private var §5!I§:Number;
      
      private var §'"8§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§6!z§ = new b2Vec2();
         this.§&1§ = new b2Vec2();
         this.§ 0§ = new b2Mat22();
         this.§5+§ = new b2Vec2();
         super(param1);
         this.§6!z§.SetV(param1.§'&§);
         this.§&1§.SetV(param1.§%"0§);
         this.§ 0§.§6!c§();
         this.§1&§ = 0;
         this.§5+§.§6!c§();
         this.§<E§ = 0;
         this.§5!I§ = param1.§^!Q§;
         this.§'"8§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3v.GetWorldPoint(this.§6!z§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;Q.GetWorldPoint(this.§&1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5+§.x,param1 * this.§5+§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§<E§;
      }
      
      public function §]+§(param1:Number) : void
      {
         this.§5!I§ = param1;
      }
      
      public function §]§() : Number
      {
         return this.§5!I§;
      }
      
      public function §4l§(param1:Number) : void
      {
         this.§'"8§ = param1;
      }
      
      public function §'v§() : Number
      {
         return this.§'"8§;
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
         _loc4_ = b2internal::3v;
         _loc5_ = b2internal::;Q;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§6!z§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§6!z§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§&1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§&1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§;!R§;
         var _loc11_:Number = _loc5_.§;!R§;
         _loc12_ = _loc4_.§1!k§;
         _loc13_ = _loc5_.§1!k§;
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
         _loc14_.§8!-§(this.§ 0§);
         this.§1&§ = _loc12_ + _loc13_;
         if(this.§1&§ > 0)
         {
            this.§1&§ = 1 / this.§1&§;
         }
         if(param1.§#=§)
         {
            this.§5+§.x *= param1.§6!'§;
            this.§5+§.y *= param1.§6!'§;
            this.§<E§ *= param1.§6!'§;
            _loc15_ = this.§5+§;
            _loc4_.§ Y§.x -= _loc10_ * _loc15_.x;
            _loc4_.§ Y§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§<E§);
            _loc5_.§ Y§.x += _loc11_ * _loc15_.x;
            _loc5_.§ Y§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§<E§);
         }
         else
         {
            this.§5+§.§6!c§();
            this.§<E§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::3v;
         var _loc5_:b2Body = b2internal::;Q;
         var _loc6_:b2Vec2 = _loc4_.§ Y§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§ Y§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§;!R§;
         var _loc11_:Number = _loc5_.§;!R§;
         var _loc12_:Number = _loc4_.§1!k§;
         var _loc13_:Number = _loc5_.§1!k§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§6!z§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§6!z§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§&1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§&1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§1&§ * _loc19_;
         var _loc21_:Number = this.§<E§;
         _loc18_ = param1.§>!`§ * this.§'"8§;
         this.§<E§ = b2Math.§8M§(this.§<E§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§<E§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§2&§(this.§ 0§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§5+§.Copy();
         this.§5+§.§package§(_loc24_);
         _loc18_ = param1.§>!`§ * this.§5!I§;
         if(this.§5+§.§!!+§() > _loc18_ * _loc18_)
         {
            this.§5+§.Normalize();
            this.§5+§.§'9§(_loc18_);
         }
         _loc24_ = b2Math.§?7§(this.§5+§,_loc25_);
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
