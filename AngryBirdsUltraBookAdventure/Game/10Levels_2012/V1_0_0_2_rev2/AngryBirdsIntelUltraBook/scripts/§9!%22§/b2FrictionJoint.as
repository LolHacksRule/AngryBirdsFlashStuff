package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §4!'§:b2Vec2;
      
      private var §^6§:b2Vec2;
      
      public var §31§:b2Mat22;
      
      public var §3Y§:Number;
      
      private var §+!K§:b2Vec2;
      
      private var § Y§:Number;
      
      private var §;!?§:Number;
      
      private var §3§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§4!'§ = new b2Vec2();
         this.§^6§ = new b2Vec2();
         this.§31§ = new b2Mat22();
         this.§+!K§ = new b2Vec2();
         super(param1);
         this.§4!'§.SetV(param1.§<?§);
         this.§^6§.SetV(param1.§%!e§);
         this.§31§.§`!5§();
         this.§3Y§ = 0;
         this.§+!K§.§`!5§();
         this.§ Y§ = 0;
         this.§;!?§ = param1.§`z§;
         this.§3§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.§4!'§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.§^6§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+!K§.x,param1 * this.§+!K§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ Y§;
      }
      
      public function §+l§(param1:Number) : void
      {
         this.§;!?§ = param1;
      }
      
      public function §3!§() : Number
      {
         return this.§;!?§;
      }
      
      public function §6[§(param1:Number) : void
      {
         this.§3§ = param1;
      }
      
      public function §2$§() : Number
      {
         return this.§3§;
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
         _loc4_ = b2internal::6!G;
         _loc5_ = b2internal::0!w;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§4!'§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§4!'§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§^6§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§^6§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§7n§;
         var _loc11_:Number = _loc5_.§7n§;
         _loc12_ = _loc4_.§;5§;
         _loc13_ = _loc5_.§;5§;
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
         _loc14_.§,p§(this.§31§);
         this.§3Y§ = _loc12_ + _loc13_;
         if(this.§3Y§ > 0)
         {
            this.§3Y§ = 1 / this.§3Y§;
         }
         if(param1.§[8§)
         {
            this.§+!K§.x *= param1.§87§;
            this.§+!K§.y *= param1.§87§;
            this.§ Y§ *= param1.§87§;
            _loc15_ = this.§+!K§;
            _loc4_.§^O§.x -= _loc10_ * _loc15_.x;
            _loc4_.§^O§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§ Y§);
            _loc5_.§^O§.x += _loc11_ * _loc15_.x;
            _loc5_.§^O§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§ Y§);
         }
         else
         {
            this.§+!K§.§`!5§();
            this.§ Y§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         var _loc6_:b2Vec2 = _loc4_.§^O§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§^O§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§7n§;
         var _loc11_:Number = _loc5_.§7n§;
         var _loc12_:Number = _loc4_.§;5§;
         var _loc13_:Number = _loc5_.§;5§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§4!'§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§4!'§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§^6§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§^6§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§3Y§ * _loc19_;
         var _loc21_:Number = this.§ Y§;
         _loc18_ = param1.§^Z§ * this.§3§;
         this.§ Y§ = b2Math.§]#§(this.§ Y§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§ Y§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§'q§(this.§31§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§+!K§.Copy();
         this.§+!K§.§7x§(_loc24_);
         _loc18_ = param1.§^Z§ * this.§;!?§;
         if(this.§+!K§.§ !W§() > _loc18_ * _loc18_)
         {
            this.§+!K§.Normalize();
            this.§+!K§.§^$§(_loc18_);
         }
         _loc24_ = b2Math.§54§(this.§+!K§,_loc25_);
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
