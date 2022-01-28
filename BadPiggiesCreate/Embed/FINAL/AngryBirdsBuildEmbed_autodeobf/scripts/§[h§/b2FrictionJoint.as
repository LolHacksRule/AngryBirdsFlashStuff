package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §"h§:b2Vec2;
      
      private var §58§:b2Vec2;
      
      public var §8[§:b2Mat22;
      
      public var § !L§:Number;
      
      private var §[7§:b2Vec2;
      
      private var §>k§:Number;
      
      private var §%G§:Number;
      
      private var §`!a§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§"h§ = new b2Vec2();
         this.§58§ = new b2Vec2();
         this.§8[§ = new b2Mat22();
         this.§[7§ = new b2Vec2();
         super(param1);
         this.§"h§.SetV(param1.§;!1§);
         this.§58§.SetV(param1.§%?§);
         this.§8[§.§22§();
         this.§ !L§ = 0;
         this.§[7§.§22§();
         this.§>k§ = 0;
         this.§%G§ = param1.§%!$§;
         this.§`!a§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.§"h§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.§58§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[7§.x,param1 * this.§[7§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>k§;
      }
      
      public function §`!O§(param1:Number) : void
      {
         this.§%G§ = param1;
      }
      
      public function §;4§() : Number
      {
         return this.§%G§;
      }
      
      public function §^5§(param1:Number) : void
      {
         this.§`!a§ = param1;
      }
      
      public function §=%§() : Number
      {
         return this.§`!a§;
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
         _loc4_ = b2internal::2+;
         _loc5_ = b2internal::4P;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§"h§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§"h§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§58§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§58§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§7!?§;
         var _loc11_:Number = _loc5_.§7!?§;
         _loc12_ = _loc4_.§`d§;
         _loc13_ = _loc5_.§`d§;
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
         _loc14_.§?!U§(this.§8[§);
         this.§ !L§ = _loc12_ + _loc13_;
         if(this.§ !L§ > 0)
         {
            this.§ !L§ = 1 / this.§ !L§;
         }
         if(param1.§ !K§)
         {
            this.§[7§.x *= param1.§5!;§;
            this.§[7§.y *= param1.§5!;§;
            this.§>k§ *= param1.§5!;§;
            _loc15_ = this.§[7§;
            _loc4_.§<&§.x -= _loc10_ * _loc15_.x;
            _loc4_.§<&§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§>k§);
            _loc5_.§<&§.x += _loc11_ * _loc15_.x;
            _loc5_.§<&§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§>k§);
         }
         else
         {
            this.§[7§.§22§();
            this.§>k§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::2+;
         var _loc5_:b2Body = b2internal::4P;
         var _loc6_:b2Vec2 = _loc4_.§<&§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§<&§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§7!?§;
         var _loc11_:Number = _loc5_.§7!?§;
         var _loc12_:Number = _loc4_.§`d§;
         var _loc13_:Number = _loc5_.§`d§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§"h§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§"h§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§58§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§58§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§ !L§ * _loc19_;
         var _loc21_:Number = this.§>k§;
         _loc18_ = param1.§>N§ * this.§`!a§;
         this.§>k§ = b2Math.§%!j§(this.§>k§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§>k§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§`!"§(this.§8[§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§[7§.Copy();
         this.§[7§.§!a§(_loc24_);
         _loc18_ = param1.§>N§ * this.§%G§;
         if(this.§[7§.§9^§() > _loc18_ * _loc18_)
         {
            this.§[7§.Normalize();
            this.§[7§.§=!K§(_loc18_);
         }
         _loc24_ = b2Math.§<b§(this.§[7§,_loc25_);
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
