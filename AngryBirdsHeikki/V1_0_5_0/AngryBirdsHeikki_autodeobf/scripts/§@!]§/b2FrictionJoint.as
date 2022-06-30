package §@!]§
{
   import §,!3§.b2Mat22;
   import §,!3§.b2Math;
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   import §?!F§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §-O§:b2Vec2;
      
      private var §]=§:b2Vec2;
      
      public var §`!O§:b2Mat22;
      
      public var §<S§:Number;
      
      private var §>5§:b2Vec2;
      
      private var §?!X§:Number;
      
      private var §=!;§:Number;
      
      private var §7!^§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§-O§ = new b2Vec2();
         this.§]=§ = new b2Vec2();
         this.§`!O§ = new b2Mat22();
         this.§>5§ = new b2Vec2();
         super(param1);
         this.§-O§.SetV(param1.§&!0§);
         this.§]=§.SetV(param1.§,%§);
         this.§`!O§.§#!d§();
         this.§<S§ = 0;
         this.§>5§.§#!d§();
         this.§?!X§ = 0;
         this.§=!;§ = param1.§5$§;
         this.§7!^§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!O.GetWorldPoint(this.§-O§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!=.GetWorldPoint(this.§]=§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>5§.x,param1 * this.§>5§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§?!X§;
      }
      
      public function §#9§(param1:Number) : void
      {
         this.§=!;§ = param1;
      }
      
      public function §!!G§() : Number
      {
         return this.§=!;§;
      }
      
      public function §4D§(param1:Number) : void
      {
         this.§7!^§ = param1;
      }
      
      public function §-j§() : Number
      {
         return this.§7!^§;
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
         _loc4_ = b2internal::]!O;
         _loc5_ = b2internal::2!=;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§-O§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§-O§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§]=§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§]=§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§;!E§;
         var _loc11_:Number = _loc5_.§;!E§;
         _loc12_ = _loc4_.§8z§;
         _loc13_ = _loc5_.§8z§;
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
         _loc14_.§`1§(this.§`!O§);
         this.§<S§ = _loc12_ + _loc13_;
         if(this.§<S§ > 0)
         {
            this.§<S§ = 1 / this.§<S§;
         }
         if(param1.§3+§)
         {
            this.§>5§.x *= param1.§%"§;
            this.§>5§.y *= param1.§%"§;
            this.§?!X§ *= param1.§%"§;
            _loc15_ = this.§>5§;
            _loc4_.§#A§.x -= _loc10_ * _loc15_.x;
            _loc4_.§#A§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§?!X§);
            _loc5_.§#A§.x += _loc11_ * _loc15_.x;
            _loc5_.§#A§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§?!X§);
         }
         else
         {
            this.§>5§.§#!d§();
            this.§?!X§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::]!O;
         var _loc5_:b2Body = b2internal::2!=;
         var _loc6_:b2Vec2 = _loc4_.§#A§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§#A§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§;!E§;
         var _loc11_:Number = _loc5_.§;!E§;
         var _loc12_:Number = _loc4_.§8z§;
         var _loc13_:Number = _loc5_.§8z§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§-O§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§-O§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§]=§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§]=§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§<S§ * _loc19_;
         var _loc21_:Number = this.§?!X§;
         _loc18_ = param1.§3v§ * this.§7!^§;
         this.§?!X§ = b2Math.§8![§(this.§?!X§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§?!X§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§8]§(this.§`!O§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§>5§.Copy();
         this.§>5§.§03§(_loc24_);
         _loc18_ = param1.§3v§ * this.§=!;§;
         if(this.§>5§.§5§() > _loc18_ * _loc18_)
         {
            this.§>5§.Normalize();
            this.§>5§.§6!%§(_loc18_);
         }
         _loc24_ = b2Math.§#!G§(this.§>5§,_loc25_);
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
