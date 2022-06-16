package § ! §
{
   import § "%§.b2Mat22;
   import § "%§.b2Math;
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §""+§:b2Vec2;
      
      private var §`"Y§:b2Vec2;
      
      public var §^!?§:b2Mat22;
      
      public var §"$3§:Number;
      
      private var § "Z§:b2Vec2;
      
      private var §8$8§:Number;
      
      private var § #X§:Number;
      
      private var §3A§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§""+§ = new b2Vec2();
         this.§`"Y§ = new b2Vec2();
         this.§^!?§ = new b2Mat22();
         this.§ "Z§ = new b2Vec2();
         super(param1);
         this.§""+§.SetV(param1.§#"z§);
         this.§`"Y§.SetV(param1.§>#C§);
         this.§^!?§.§#!t§();
         this.§"$3§ = 0;
         this.§ "Z§.§#!t§();
         this.§8$8§ = 0;
         this.§ #X§ = param1.§'!@§;
         this.§3A§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3!^.GetWorldPoint(this.§""+§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^U.GetWorldPoint(this.§`"Y§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§ "Z§.x,param1 * this.§ "Z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8$8§;
      }
      
      public function §%$+§(param1:Number) : void
      {
         this.§ #X§ = param1;
      }
      
      public function §?!H§() : Number
      {
         return this.§ #X§;
      }
      
      public function §5"U§(param1:Number) : void
      {
         this.§3A§ = param1;
      }
      
      public function §=!t§() : Number
      {
         return this.§3A§;
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
         _loc4_ = b2internal::3!^;
         _loc5_ = b2internal::^U;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§""+§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§""+§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§`"Y§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§`"Y§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§@P§;
         var _loc11_:Number = _loc5_.§@P§;
         _loc12_ = _loc4_.§ !q§;
         _loc13_ = _loc5_.§ !q§;
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
         _loc14_.§+"B§(this.§^!?§);
         this.§"$3§ = _loc12_ + _loc13_;
         if(this.§"$3§ > 0)
         {
            this.§"$3§ = 1 / this.§"$3§;
         }
         if(param1.§##q§)
         {
            this.§ "Z§.x *= param1.§4$B§;
            this.§ "Z§.y *= param1.§4$B§;
            this.§8$8§ *= param1.§4$B§;
            _loc15_ = this.§ "Z§;
            _loc4_.§4!I§.x -= _loc10_ * _loc15_.x;
            _loc4_.§4!I§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§8$8§);
            _loc5_.§4!I§.x += _loc11_ * _loc15_.x;
            _loc5_.§4!I§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§8$8§);
         }
         else
         {
            this.§ "Z§.§#!t§();
            this.§8$8§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::3!^;
         var _loc5_:b2Body = b2internal::^U;
         var _loc6_:b2Vec2 = _loc4_.§4!I§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§4!I§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§@P§;
         var _loc11_:Number = _loc5_.§@P§;
         var _loc12_:Number = _loc4_.§ !q§;
         var _loc13_:Number = _loc5_.§ !q§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§""+§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§""+§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§`"Y§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§`"Y§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§"$3§ * _loc19_;
         var _loc21_:Number = this.§8$8§;
         _loc18_ = param1.dt * this.§3A§;
         this.§8$8§ = b2Math.§0"k§(this.§8$8§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§8$8§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§4!p§(this.§^!?§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§ "Z§.Copy();
         this.§ "Z§.§<I§(_loc24_);
         _loc18_ = param1.dt * this.§ #X§;
         if(this.§ "Z§.§"#<§() > _loc18_ * _loc18_)
         {
            this.§ "Z§.Normalize();
            this.§ "Z§.§8!O§(_loc18_);
         }
         _loc24_ = b2Math.§ $$§(this.§ "Z§,_loc25_);
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
