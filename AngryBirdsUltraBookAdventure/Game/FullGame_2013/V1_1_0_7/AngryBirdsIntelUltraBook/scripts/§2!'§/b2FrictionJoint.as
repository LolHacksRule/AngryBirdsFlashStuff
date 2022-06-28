package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §7!'§:b2Vec2;
      
      private var §+2§:b2Vec2;
      
      public var §4""§:b2Mat22;
      
      public var §3!i§:Number;
      
      private var §[?§:b2Vec2;
      
      private var §?!L§:Number;
      
      private var §>!z§:Number;
      
      private var §5!U§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§7!'§ = new b2Vec2();
         this.§+2§ = new b2Vec2();
         this.§4""§ = new b2Mat22();
         this.§[?§ = new b2Vec2();
         super(param1);
         this.§7!'§.SetV(param1.§'G§);
         this.§+2§.SetV(param1.§true§);
         this.§4""§.§+J§();
         this.§3!i§ = 0;
         this.§[?§.§+J§();
         this.§?!L§ = 0;
         this.§>!z§ = param1.§6""§;
         this.§5!U§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.§7!'§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.§+2§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[?§.x,param1 * this.§[?§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§?!L§;
      }
      
      public function §1!1§(param1:Number) : void
      {
         this.§>!z§ = param1;
      }
      
      public function §=!3§() : Number
      {
         return this.§>!z§;
      }
      
      public function §8J§(param1:Number) : void
      {
         this.§5!U§ = param1;
      }
      
      public function §7!7§() : Number
      {
         return this.§5!U§;
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
         _loc4_ = b2internal::&A;
         _loc5_ = b2internal::4!d;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§7!'§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§7!'§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§+2§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§+2§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§3!q§;
         var _loc11_:Number = _loc5_.§3!q§;
         _loc12_ = _loc4_.§2!1§;
         _loc13_ = _loc5_.§2!1§;
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
         _loc14_.§]i§(this.§4""§);
         this.§3!i§ = _loc12_ + _loc13_;
         if(this.§3!i§ > 0)
         {
            this.§3!i§ = 1 / this.§3!i§;
         }
         if(param1.§9!w§)
         {
            this.§[?§.x *= param1.§[!4§;
            this.§[?§.y *= param1.§[!4§;
            this.§?!L§ *= param1.§[!4§;
            _loc15_ = this.§[?§;
            _loc4_.§%!<§.x -= _loc10_ * _loc15_.x;
            _loc4_.§%!<§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§?!L§);
            _loc5_.§%!<§.x += _loc11_ * _loc15_.x;
            _loc5_.§%!<§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§?!L§);
         }
         else
         {
            this.§[?§.§+J§();
            this.§?!L§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         var _loc6_:b2Vec2 = _loc4_.§%!<§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§%!<§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§3!q§;
         var _loc11_:Number = _loc5_.§3!q§;
         var _loc12_:Number = _loc4_.§2!1§;
         var _loc13_:Number = _loc5_.§2!1§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§7!'§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§7!'§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§+2§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§+2§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§3!i§ * _loc19_;
         var _loc21_:Number = this.§?!L§;
         _loc18_ = param1.§?!C§ * this.§5!U§;
         this.§?!L§ = b2Math.§?!?§(this.§?!L§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§?!L§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§[!%§(this.§4""§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§[?§.Copy();
         this.§[?§.§2!3§(_loc24_);
         _loc18_ = param1.§?!C§ * this.§>!z§;
         if(this.§[?§.§%!]§() > _loc18_ * _loc18_)
         {
            this.§[?§.Normalize();
            this.§[?§.§9""§(_loc18_);
         }
         _loc24_ = b2Math.§%M§(this.§[?§,_loc25_);
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
