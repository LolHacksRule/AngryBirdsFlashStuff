package §;N§
{
   import §!R§.b2Mat22;
   import §!R§.b2Math;
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §1B§.b2TimeStep;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §%j§:b2Vec2;
      
      private var §5q§:b2Vec2;
      
      public var §5!=§:b2Mat22;
      
      public var §]K§:Number;
      
      private var §2!>§:b2Vec2;
      
      private var §?e§:Number;
      
      private var §6!1§:Number;
      
      private var §-!m§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§%j§ = new b2Vec2();
         this.§5q§ = new b2Vec2();
         this.§5!=§ = new b2Mat22();
         this.§2!>§ = new b2Vec2();
         super(param1);
         this.§%j§.SetV(param1.§4D§);
         this.§5q§.SetV(param1.§@@§);
         this.§5!=§.§"9§();
         this.§]K§ = 0;
         this.§2!>§.§"9§();
         this.§?e§ = 0;
         this.§6!1§ = param1.§@!_§;
         this.§-!m§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: each.GetWorldPoint(this.§%j§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8[.GetWorldPoint(this.§5q§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§2!>§.x,param1 * this.§2!>§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§?e§;
      }
      
      public function §25§(param1:Number) : void
      {
         this.§6!1§ = param1;
      }
      
      public function §,!-§() : Number
      {
         return this.§6!1§;
      }
      
      public function §0!'§(param1:Number) : void
      {
         this.§-!m§ = param1;
      }
      
      public function §9N§() : Number
      {
         return this.§-!m§;
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
         _loc4_ = b2internal:: each;
         _loc5_ = b2internal::8[;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§%j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§%j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§5q§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§5q§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§#@§;
         var _loc11_:Number = _loc5_.§#@§;
         _loc12_ = _loc4_.§<3§;
         _loc13_ = _loc5_.§<3§;
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
         _loc14_.§6T§(this.§5!=§);
         this.§]K§ = _loc12_ + _loc13_;
         if(this.§]K§ > 0)
         {
            this.§]K§ = 1 / this.§]K§;
         }
         if(param1.§=s§)
         {
            this.§2!>§.x *= param1.§;%§;
            this.§2!>§.y *= param1.§;%§;
            this.§?e§ *= param1.§;%§;
            _loc15_ = this.§2!>§;
            _loc4_.§5!m§.x -= _loc10_ * _loc15_.x;
            _loc4_.§5!m§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§?e§);
            _loc5_.§5!m§.x += _loc11_ * _loc15_.x;
            _loc5_.§5!m§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§?e§);
         }
         else
         {
            this.§2!>§.§"9§();
            this.§?e§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal:: each;
         var _loc5_:b2Body = b2internal::8[;
         var _loc6_:b2Vec2 = _loc4_.§5!m§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§5!m§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§#@§;
         var _loc11_:Number = _loc5_.§#@§;
         var _loc12_:Number = _loc4_.§<3§;
         var _loc13_:Number = _loc5_.§<3§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§%j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§%j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§5q§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§5q§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§]K§ * _loc19_;
         var _loc21_:Number = this.§?e§;
         _loc18_ = param1.§#"§ * this.§-!m§;
         this.§?e§ = b2Math.§%!i§(this.§?e§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§?e§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§"]§(this.§5!=§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§2!>§.Copy();
         this.§2!>§.§"W§(_loc24_);
         _loc18_ = param1.§#"§ * this.§6!1§;
         if(this.§2!>§.§+!!§() > _loc18_ * _loc18_)
         {
            this.§2!>§.Normalize();
            this.§2!>§.§!!L§(_loc18_);
         }
         _loc24_ = b2Math.§>+§(this.§2!>§,_loc25_);
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
