package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §!"#§:b2Vec2;
      
      private var §>!7§:b2Vec2;
      
      public var §18§:b2Mat22;
      
      public var §&_§:Number;
      
      private var §"w§:b2Vec2;
      
      private var §#"0§:Number;
      
      private var §@!c§:Number;
      
      private var §=!s§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§!"#§ = new b2Vec2();
         this.§>!7§ = new b2Vec2();
         this.§18§ = new b2Mat22();
         this.§"w§ = new b2Vec2();
         super(param1);
         this.§!"#§.SetV(param1.§!2§);
         this.§>!7§.SetV(param1.§ !c§);
         this.§18§.§@!s§();
         this.§&_§ = 0;
         this.§"w§.§@!s§();
         this.§#"0§ = 0;
         this.§@!c§ = param1.§0!`§;
         this.§=!s§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.§!"#§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.§>!7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§"w§.x,param1 * this.§"w§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§#"0§;
      }
      
      public function §+a§(param1:Number) : void
      {
         this.§@!c§ = param1;
      }
      
      public function §;"7§() : Number
      {
         return this.§@!c§;
      }
      
      public function §,!+§(param1:Number) : void
      {
         this.§=!s§ = param1;
      }
      
      public function §6!4§() : Number
      {
         return this.§=!s§;
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
         _loc4_ = b2internal::0"7;
         _loc5_ = b2internal:: `;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§!"#§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§!"#§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§>!7§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§>!7§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§;k§;
         var _loc11_:Number = _loc5_.§;k§;
         _loc12_ = _loc4_.§6x§;
         _loc13_ = _loc5_.§6x§;
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
         _loc14_.§7!Z§(this.§18§);
         this.§&_§ = _loc12_ + _loc13_;
         if(this.§&_§ > 0)
         {
            this.§&_§ = 1 / this.§&_§;
         }
         if(param1.§1!w§)
         {
            this.§"w§.x *= param1.§<3§;
            this.§"w§.y *= param1.§<3§;
            this.§#"0§ *= param1.§<3§;
            _loc15_ = this.§"w§;
            _loc4_.§,b§.x -= _loc10_ * _loc15_.x;
            _loc4_.§,b§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§#"0§);
            _loc5_.§,b§.x += _loc11_ * _loc15_.x;
            _loc5_.§,b§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§#"0§);
         }
         else
         {
            this.§"w§.§@!s§();
            this.§#"0§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::0"7;
         var _loc5_:b2Body = b2internal:: `;
         var _loc6_:b2Vec2 = _loc4_.§,b§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§,b§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§;k§;
         var _loc11_:Number = _loc5_.§;k§;
         var _loc12_:Number = _loc4_.§6x§;
         var _loc13_:Number = _loc5_.§6x§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§!"#§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§!"#§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§>!7§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§>!7§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§&_§ * _loc19_;
         var _loc21_:Number = this.§#"0§;
         _loc18_ = param1.§+z§ * this.§=!s§;
         this.§#"0§ = b2Math.§&>§(this.§#"0§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§#"0§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§0b§(this.§18§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§"w§.Copy();
         this.§"w§.§1v§(_loc24_);
         _loc18_ = param1.§+z§ * this.§@!c§;
         if(this.§"w§.§%"§() > _loc18_ * _loc18_)
         {
            this.§"w§.Normalize();
            this.§"w§.§>!t§(_loc18_);
         }
         _loc24_ = b2Math.§'!%§(this.§"w§,_loc25_);
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
