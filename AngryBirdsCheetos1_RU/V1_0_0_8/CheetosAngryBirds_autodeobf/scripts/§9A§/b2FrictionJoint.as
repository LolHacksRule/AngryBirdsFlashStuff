package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Mat22;
   import §3q§.b2Math;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   import §?0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §+!B§:b2Vec2;
      
      private var §]!`§:b2Vec2;
      
      public var §+!1§:b2Mat22;
      
      public var §;M§:Number;
      
      private var §=q§:b2Vec2;
      
      private var § !S§:Number;
      
      private var §!E§:Number;
      
      private var §9`§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§+!B§ = new b2Vec2();
         this.§]!`§ = new b2Vec2();
         this.§+!1§ = new b2Mat22();
         this.§=q§ = new b2Vec2();
         super(param1);
         this.§+!B§.SetV(param1.§`!X§);
         this.§]!`§.SetV(param1.§+!,§);
         this.§+!1§.§<!5§();
         this.§;M§ = 0;
         this.§=q§.§<!5§();
         this.§ !S§ = 0;
         this.§!E§ = param1.§%E§;
         this.§9`§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::try.GetWorldPoint(this.§+!B§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-f.GetWorldPoint(this.§]!`§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§=q§.x,param1 * this.§=q§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ !S§;
      }
      
      public function §?!K§(param1:Number) : void
      {
         this.§!E§ = param1;
      }
      
      public function §&!N§() : Number
      {
         return this.§!E§;
      }
      
      public function §3T§(param1:Number) : void
      {
         this.§9`§ = param1;
      }
      
      public function §"I§() : Number
      {
         return this.§9`§;
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
         _loc4_ = b2internal::try;
         _loc5_ = b2internal::-f;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§+!B§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§+!B§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§]!`§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§]!`§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§-q§;
         var _loc11_:Number = _loc5_.§-q§;
         _loc12_ = _loc4_.§'a§;
         _loc13_ = _loc5_.§'a§;
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
         _loc14_.§2!W§(this.§+!1§);
         this.§;M§ = _loc12_ + _loc13_;
         if(this.§;M§ > 0)
         {
            this.§;M§ = 1 / this.§;M§;
         }
         if(param1.§4!D§)
         {
            this.§=q§.x *= param1.§1a§;
            this.§=q§.y *= param1.§1a§;
            this.§ !S§ *= param1.§1a§;
            _loc15_ = this.§=q§;
            _loc4_.§2!G§.x -= _loc10_ * _loc15_.x;
            _loc4_.§2!G§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§ !S§);
            _loc5_.§2!G§.x += _loc11_ * _loc15_.x;
            _loc5_.§2!G§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§ !S§);
         }
         else
         {
            this.§=q§.§<!5§();
            this.§ !S§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::try;
         var _loc5_:b2Body = b2internal::-f;
         var _loc6_:b2Vec2 = _loc4_.§2!G§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§2!G§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§-q§;
         var _loc11_:Number = _loc5_.§-q§;
         var _loc12_:Number = _loc4_.§'a§;
         var _loc13_:Number = _loc5_.§'a§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§+!B§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§+!B§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§]!`§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§]!`§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§;M§ * _loc19_;
         var _loc21_:Number = this.§ !S§;
         _loc18_ = param1.§+!I§ * this.§9`§;
         this.§ !S§ = b2Math.§;f§(this.§ !S§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§ !S§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§@!H§(this.§+!1§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§=q§.Copy();
         this.§=q§.§=O§(_loc24_);
         _loc18_ = param1.§+!I§ * this.§!E§;
         if(this.§=q§.§@!F§() > _loc18_ * _loc18_)
         {
            this.§=q§.Normalize();
            this.§=q§.§^B§(_loc18_);
         }
         _loc24_ = b2Math.§;!-§(this.§=q§,_loc25_);
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
