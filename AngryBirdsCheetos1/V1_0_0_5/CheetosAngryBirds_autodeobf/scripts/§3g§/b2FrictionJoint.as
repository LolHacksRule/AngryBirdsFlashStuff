package §3g§
{
   import §;]§.b2internal;
   import §=E§.b2Mat22;
   import §=E§.b2Math;
   import §=E§.b2Vec2;
   import §?!0§.b2Body;
   import §?!0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var § get§:b2Vec2;
      
      private var §2>§:b2Vec2;
      
      public var §`!F§:b2Mat22;
      
      public var §'4§:Number;
      
      private var §&K§:b2Vec2;
      
      private var §>!?§:Number;
      
      private var §9Z§:Number;
      
      private var §0!O§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§ get§ = new b2Vec2();
         this.§2>§ = new b2Vec2();
         this.§`!F§ = new b2Mat22();
         this.§&K§ = new b2Vec2();
         super(param1);
         this.§ get§.SetV(param1.§4B§);
         this.§2>§.SetV(param1.§ !Q§);
         this.§`!F§.§^!#§();
         this.§'4§ = 0;
         this.§&K§.§^!#§();
         this.§>!?§ = 0;
         this.§9Z§ = param1.§5!-§;
         this.§0!O§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.§ get§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.§2>§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§&K§.x,param1 * this.§&K§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>!?§;
      }
      
      public function §]4§(param1:Number) : void
      {
         this.§9Z§ = param1;
      }
      
      public function §!'§() : Number
      {
         return this.§9Z§;
      }
      
      public function §`F§(param1:Number) : void
      {
         this.§0!O§ = param1;
      }
      
      public function §5[§() : Number
      {
         return this.§0!O§;
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
         _loc4_ = b2internal::2!D;
         _loc5_ = b2internal::;B;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§ get§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ get§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§2>§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§2>§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§9g§;
         var _loc11_:Number = _loc5_.§9g§;
         _loc12_ = _loc4_.§8>§;
         _loc13_ = _loc5_.§8>§;
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
         _loc14_.§0d§(this.§`!F§);
         this.§'4§ = _loc12_ + _loc13_;
         if(this.§'4§ > 0)
         {
            this.§'4§ = 1 / this.§'4§;
         }
         if(param1.§<W§)
         {
            this.§&K§.x *= param1.§5!B§;
            this.§&K§.y *= param1.§5!B§;
            this.§>!?§ *= param1.§5!B§;
            _loc15_ = this.§&K§;
            _loc4_.§0+§.x -= _loc10_ * _loc15_.x;
            _loc4_.§0+§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§>!?§);
            _loc5_.§0+§.x += _loc11_ * _loc15_.x;
            _loc5_.§0+§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§>!?§);
         }
         else
         {
            this.§&K§.§^!#§();
            this.§>!?§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::2!D;
         var _loc5_:b2Body = b2internal::;B;
         var _loc6_:b2Vec2 = _loc4_.§0+§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§0+§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§9g§;
         var _loc11_:Number = _loc5_.§9g§;
         var _loc12_:Number = _loc4_.§8>§;
         var _loc13_:Number = _loc5_.§8>§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§ get§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§ get§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§2>§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§2>§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§'4§ * _loc19_;
         var _loc21_:Number = this.§>!?§;
         _loc18_ = param1.§7?§ * this.§0!O§;
         this.§>!?§ = b2Math.§2a§(this.§>!?§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§>!?§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§2c§(this.§`!F§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§&K§.Copy();
         this.§&K§.§[X§(_loc24_);
         _loc18_ = param1.§7?§ * this.§9Z§;
         if(this.§&K§.§8!%§() > _loc18_ * _loc18_)
         {
            this.§&K§.Normalize();
            this.§&K§.§5y§(_loc18_);
         }
         _loc24_ = b2Math.§`#§(this.§&K§,_loc25_);
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
