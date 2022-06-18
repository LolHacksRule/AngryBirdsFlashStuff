package §5v§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2TimeStep;
   import §6!R§.b2Mat22;
   import §6!R§.b2Math;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §1#K§:b2Vec2;
      
      private var §;!"§:b2Vec2;
      
      public var §0",§:b2Mat22;
      
      public var §;$@§:Number;
      
      private var §3$D§:b2Vec2;
      
      private var §3n§:Number;
      
      private var §#!v§:Number;
      
      private var §@!3§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§1#K§ = new b2Vec2();
         this.§;!"§ = new b2Vec2();
         this.§0",§ = new b2Mat22();
         this.§3$D§ = new b2Vec2();
         super(param1);
         this.§1#K§.SetV(param1.§"#b§);
         this.§;!"§.SetV(param1.§[#b§);
         this.§0",§.§%"N§();
         this.§;$@§ = 0;
         this.§3$D§.§%"N§();
         this.§3n§ = 0;
         this.§#!v§ = param1.§?>§;
         this.§@!3§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: ?.GetWorldPoint(this.§1#K§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: #q.GetWorldPoint(this.§;!"§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§3$D§.x,param1 * this.§3$D§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§3n§;
      }
      
      public function §4S§(param1:Number) : void
      {
         this.§#!v§ = param1;
      }
      
      public function §>#u§() : Number
      {
         return this.§#!v§;
      }
      
      public function §+"k§(param1:Number) : void
      {
         this.§@!3§ = param1;
      }
      
      public function §]^§() : Number
      {
         return this.§@!3§;
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
         _loc4_ = b2internal:: ?;
         _loc5_ = b2internal:: #q;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§1#K§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§1#K§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§;!"§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§;!"§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§0#d§;
         var _loc11_:Number = _loc5_.§0#d§;
         _loc12_ = _loc4_.§!!!§;
         _loc13_ = _loc5_.§!!!§;
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
         _loc14_.§>s§(this.§0",§);
         this.§;$@§ = _loc12_ + _loc13_;
         if(this.§;$@§ > 0)
         {
            this.§;$@§ = 1 / this.§;$@§;
         }
         if(param1.§+L§)
         {
            this.§3$D§.x *= param1.§1$5§;
            this.§3$D§.y *= param1.§1$5§;
            this.§3n§ *= param1.§1$5§;
            _loc15_ = this.§3$D§;
            _loc4_.§=!c§.x -= _loc10_ * _loc15_.x;
            _loc4_.§=!c§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§3n§);
            _loc5_.§=!c§.x += _loc11_ * _loc15_.x;
            _loc5_.§=!c§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§3n§);
         }
         else
         {
            this.§3$D§.§%"N§();
            this.§3n§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal:: ?;
         var _loc5_:b2Body = b2internal:: #q;
         var _loc6_:b2Vec2 = _loc4_.§=!c§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§=!c§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§0#d§;
         var _loc11_:Number = _loc5_.§0#d§;
         var _loc12_:Number = _loc4_.§!!!§;
         var _loc13_:Number = _loc5_.§!!!§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§1#K§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§1#K§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§;!"§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§;!"§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§;$@§ * _loc19_;
         var _loc21_:Number = this.§3n§;
         _loc18_ = param1.dt * this.§@!3§;
         this.§3n§ = b2Math.§-$"§(this.§3n§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§3n§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§;"V§(this.§0",§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§3$D§.Copy();
         this.§3$D§.§?$6§(_loc24_);
         _loc18_ = param1.dt * this.§#!v§;
         if(this.§3$D§.§&A§() > _loc18_ * _loc18_)
         {
            this.§3$D§.Normalize();
            this.§3$D§.§%!G§(_loc18_);
         }
         _loc24_ = b2Math.§5#w§(this.§3$D§,_loc25_);
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
