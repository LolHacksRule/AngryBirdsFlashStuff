package §0"=§
{
   import §8#t§.b2Body;
   import §8#t§.b2TimeStep;
   import §[!3§.b2internal;
   import §`# §.b2Mat22;
   import §`# §.b2Math;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §%q§:b2Vec2;
      
      private var §?#_§:b2Vec2;
      
      public var §^#n§:b2Mat22;
      
      public var §0$7§:Number;
      
      private var §&!F§:b2Vec2;
      
      private var §@"^§:Number;
      
      private var §[$D§:Number;
      
      private var §0!v§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§%q§ = new b2Vec2();
         this.§?#_§ = new b2Vec2();
         this.§^#n§ = new b2Mat22();
         this.§&!F§ = new b2Vec2();
         super(param1);
         this.§%q§.SetV(param1.§ "2§);
         this.§?#_§.SetV(param1.§8!U§);
         this.§^#n§.§5J§();
         this.§0$7§ = 0;
         this.§&!F§.§5J§();
         this.§@"^§ = 0;
         this.§[$D§ = param1.§5$8§;
         this.§0!v§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::?#E.GetWorldPoint(this.§%q§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;$6.GetWorldPoint(this.§?#_§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§&!F§.x,param1 * this.§&!F§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§@"^§;
      }
      
      public function §8"f§(param1:Number) : void
      {
         this.§[$D§ = param1;
      }
      
      public function §>",§() : Number
      {
         return this.§[$D§;
      }
      
      public function §;#%§(param1:Number) : void
      {
         this.§0!v§ = param1;
      }
      
      public function §1"P§() : Number
      {
         return this.§0!v§;
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
         _loc4_ = b2internal::?#E;
         _loc5_ = b2internal::;$6;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§%q§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§%q§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§?#_§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§?#_§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§&!s§;
         var _loc11_:Number = _loc5_.§&!s§;
         _loc12_ = _loc4_.§!$5§;
         _loc13_ = _loc5_.§!$5§;
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
         _loc14_.§%!l§(this.§^#n§);
         this.§0$7§ = _loc12_ + _loc13_;
         if(this.§0$7§ > 0)
         {
            this.§0$7§ = 1 / this.§0$7§;
         }
         if(param1.§`#=§)
         {
            this.§&!F§.x *= param1.§9]§;
            this.§&!F§.y *= param1.§9]§;
            this.§@"^§ *= param1.§9]§;
            _loc15_ = this.§&!F§;
            _loc4_.§8!z§.x -= _loc10_ * _loc15_.x;
            _loc4_.§8!z§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§@"^§);
            _loc5_.§8!z§.x += _loc11_ * _loc15_.x;
            _loc5_.§8!z§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§@"^§);
         }
         else
         {
            this.§&!F§.§5J§();
            this.§@"^§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::?#E;
         var _loc5_:b2Body = b2internal::;$6;
         var _loc6_:b2Vec2 = _loc4_.§8!z§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§8!z§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§&!s§;
         var _loc11_:Number = _loc5_.§&!s§;
         var _loc12_:Number = _loc4_.§!$5§;
         var _loc13_:Number = _loc5_.§!$5§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§%q§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§%q§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§?#_§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§?#_§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§0$7§ * _loc19_;
         var _loc21_:Number = this.§@"^§;
         _loc18_ = param1.dt * this.§0!v§;
         this.§@"^§ = b2Math.§%!"§(this.§@"^§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§@"^§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§`!X§(this.§^#n§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§&!F§.Copy();
         this.§&!F§.§1!]§(_loc24_);
         _loc18_ = param1.dt * this.§[$D§;
         if(this.§&!F§.§&!X§() > _loc18_ * _loc18_)
         {
            this.§&!F§.Normalize();
            this.§&!F§.§<#3§(_loc18_);
         }
         _loc24_ = b2Math.§?"S§(this.§&!F§,_loc25_);
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
