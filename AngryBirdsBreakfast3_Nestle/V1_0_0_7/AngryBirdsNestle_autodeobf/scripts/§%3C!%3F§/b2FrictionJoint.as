package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Mat22;
   import §-!2§.b2Math;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   import §0!j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §83§:b2Vec2;
      
      private var §18§:b2Vec2;
      
      public var §,S§:b2Mat22;
      
      public var §=!e§:Number;
      
      private var §=t§:b2Vec2;
      
      private var §=&§:Number;
      
      private var §#!T§:Number;
      
      private var §6!N§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§83§ = new b2Vec2();
         this.§18§ = new b2Vec2();
         this.§,S§ = new b2Mat22();
         this.§=t§ = new b2Vec2();
         super(param1);
         this.§83§.SetV(param1.§'!]§);
         this.§18§.SetV(param1.§@!p§);
         this.§,S§.§`5§();
         this.§=!e§ = 0;
         this.§=t§.§`5§();
         this.§=&§ = 0;
         this.§#!T§ = param1.§6p§;
         this.§6!N§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"n.GetWorldPoint(this.§83§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]!0.GetWorldPoint(this.§18§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§=t§.x,param1 * this.§=t§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§=&§;
      }
      
      public function §!!3§(param1:Number) : void
      {
         this.§#!T§ = param1;
      }
      
      public function §]T§() : Number
      {
         return this.§#!T§;
      }
      
      public function §3!_§(param1:Number) : void
      {
         this.§6!N§ = param1;
      }
      
      public function §&!g§() : Number
      {
         return this.§6!N§;
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
         _loc4_ = b2internal::"n;
         _loc5_ = b2internal::]!0;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§83§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§83§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§18§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§18§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§2![§;
         var _loc11_:Number = _loc5_.§2![§;
         _loc12_ = _loc4_.§2s§;
         _loc13_ = _loc5_.§2s§;
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
         _loc14_.§ n§(this.§,S§);
         this.§=!e§ = _loc12_ + _loc13_;
         if(this.§=!e§ > 0)
         {
            this.§=!e§ = 1 / this.§=!e§;
         }
         if(param1.§'!t§)
         {
            this.§=t§.x *= param1.§1!m§;
            this.§=t§.y *= param1.§1!m§;
            this.§=&§ *= param1.§1!m§;
            _loc15_ = this.§=t§;
            _loc4_.§3N§.x -= _loc10_ * _loc15_.x;
            _loc4_.§3N§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§=&§);
            _loc5_.§3N§.x += _loc11_ * _loc15_.x;
            _loc5_.§3N§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§=&§);
         }
         else
         {
            this.§=t§.§`5§();
            this.§=&§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::"n;
         var _loc5_:b2Body = b2internal::]!0;
         var _loc6_:b2Vec2 = _loc4_.§3N§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§3N§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§2![§;
         var _loc11_:Number = _loc5_.§2![§;
         var _loc12_:Number = _loc4_.§2s§;
         var _loc13_:Number = _loc5_.§2s§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§83§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§83§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§18§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§18§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§=!e§ * _loc19_;
         var _loc21_:Number = this.§=&§;
         _loc18_ = param1.§&c§ * this.§6!N§;
         this.§=&§ = b2Math.§+u§(this.§=&§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§=&§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§]!%§(this.§,S§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§=t§.Copy();
         this.§=t§.§3!j§(_loc24_);
         _loc18_ = param1.§&c§ * this.§#!T§;
         if(this.§=t§.§]!d§() > _loc18_ * _loc18_)
         {
            this.§=t§.Normalize();
            this.§=t§.§6!6§(_loc18_);
         }
         _loc24_ = b2Math.§"H§(this.§=t§,_loc25_);
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
