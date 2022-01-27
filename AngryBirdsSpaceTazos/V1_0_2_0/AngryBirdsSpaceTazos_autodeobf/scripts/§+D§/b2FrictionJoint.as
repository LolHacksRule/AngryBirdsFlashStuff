package §+D§
{
   import §#!X§.b2Body;
   import §#!X§.b2TimeStep;
   import §&!S§.b2Mat22;
   import §&!S§.b2Math;
   import §&!S§.b2Vec2;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §#"1§:b2Vec2;
      
      private var §>U§:b2Vec2;
      
      public var §1!v§:b2Mat22;
      
      public var §?h§:Number;
      
      private var §5I§:b2Vec2;
      
      private var §>"<§:Number;
      
      private var §#!`§:Number;
      
      private var §<!=§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§#"1§ = new b2Vec2();
         this.§>U§ = new b2Vec2();
         this.§1!v§ = new b2Mat22();
         this.§5I§ = new b2Vec2();
         super(param1);
         this.§#"1§.SetV(param1.§&9§);
         this.§>U§.SetV(param1.§^"<§);
         this.§1!v§.§ "2§();
         this.§?h§ = 0;
         this.§5I§.§ "2§();
         this.§>"<§ = 0;
         this.§#!`§ = param1.§2"2§;
         this.§<!=§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]X.GetWorldPoint(this.§#"1§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::9!W.GetWorldPoint(this.§>U§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5I§.x,param1 * this.§5I§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>"<§;
      }
      
      public function §4!W§(param1:Number) : void
      {
         this.§#!`§ = param1;
      }
      
      public function §8D§() : Number
      {
         return this.§#!`§;
      }
      
      public function §1!8§(param1:Number) : void
      {
         this.§<!=§ = param1;
      }
      
      public function §;r§() : Number
      {
         return this.§<!=§;
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
         _loc4_ = b2internal::]X;
         _loc5_ = b2internal::9!W;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§#"1§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§#"1§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§>U§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§>U§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§]!T§;
         var _loc11_:Number = _loc5_.§]!T§;
         _loc12_ = _loc4_.§@#§;
         _loc13_ = _loc5_.§@#§;
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
         _loc14_.§&"%§(this.§1!v§);
         this.§?h§ = _loc12_ + _loc13_;
         if(this.§?h§ > 0)
         {
            this.§?h§ = 1 / this.§?h§;
         }
         if(param1.§3!2§)
         {
            this.§5I§.x *= param1.§2!H§;
            this.§5I§.y *= param1.§2!H§;
            this.§>"<§ *= param1.§2!H§;
            _loc15_ = this.§5I§;
            _loc4_.§>w§.x -= _loc10_ * _loc15_.x;
            _loc4_.§>w§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§>"<§);
            _loc5_.§>w§.x += _loc11_ * _loc15_.x;
            _loc5_.§>w§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§>"<§);
         }
         else
         {
            this.§5I§.§ "2§();
            this.§>"<§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::]X;
         var _loc5_:b2Body = b2internal::9!W;
         var _loc6_:b2Vec2 = _loc4_.§>w§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§>w§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§]!T§;
         var _loc11_:Number = _loc5_.§]!T§;
         var _loc12_:Number = _loc4_.§@#§;
         var _loc13_:Number = _loc5_.§@#§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§#"1§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§#"1§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§>U§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§>U§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§?h§ * _loc19_;
         var _loc21_:Number = this.§>"<§;
         _loc18_ = param1.§`"%§ * this.§<!=§;
         this.§>"<§ = b2Math.§>G§(this.§>"<§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§>"<§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§%r§(this.§1!v§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§5I§.Copy();
         this.§5I§.§7-§(_loc24_);
         _loc18_ = param1.§`"%§ * this.§#!`§;
         if(this.§5I§.§=!Q§() > _loc18_ * _loc18_)
         {
            this.§5I§.Normalize();
            this.§5I§.§4z§(_loc18_);
         }
         _loc24_ = b2Math.§2"=§(this.§5I§,_loc25_);
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
