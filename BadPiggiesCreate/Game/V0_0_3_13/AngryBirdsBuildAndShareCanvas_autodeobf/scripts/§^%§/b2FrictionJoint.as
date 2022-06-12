package §^%§
{
   import §1!z§.b2Mat22;
   import §1!z§.b2Math;
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §7!q§.b2TimeStep;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §%"&§:b2Vec2;
      
      private var §"x§:b2Vec2;
      
      public var §=^§:b2Mat22;
      
      public var §+!V§:Number;
      
      private var §5";§:b2Vec2;
      
      private var §;"%§:Number;
      
      private var §5"+§:Number;
      
      private var §[!'§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§%"&§ = new b2Vec2();
         this.§"x§ = new b2Vec2();
         this.§=^§ = new b2Mat22();
         this.§5";§ = new b2Vec2();
         super(param1);
         this.§%"&§.SetV(param1.§98§);
         this.§"x§.SetV(param1.§?m§);
         this.§=^§.§4e§();
         this.§+!V§ = 0;
         this.§5";§.§4e§();
         this.§;"%§ = 0;
         this.§5"+§ = param1.§5[§;
         this.§[!'§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!B.GetWorldPoint(this.§%"&§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;!=.GetWorldPoint(this.§"x§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5";§.x,param1 * this.§5";§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;"%§;
      }
      
      public function §]!D§(param1:Number) : void
      {
         this.§5"+§ = param1;
      }
      
      public function §-i§() : Number
      {
         return this.§5"+§;
      }
      
      public function §`h§(param1:Number) : void
      {
         this.§[!'§ = param1;
      }
      
      public function §7"<§() : Number
      {
         return this.§[!'§;
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
         _loc4_ = b2internal::9!B;
         _loc5_ = b2internal::;!=;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§%"&§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§%"&§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§"x§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§"x§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§"!O§;
         var _loc11_:Number = _loc5_.§"!O§;
         _loc12_ = _loc4_.§6""§;
         _loc13_ = _loc5_.§6""§;
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
         _loc14_.§9@§(this.§=^§);
         this.§+!V§ = _loc12_ + _loc13_;
         if(this.§+!V§ > 0)
         {
            this.§+!V§ = 1 / this.§+!V§;
         }
         if(param1.§1!$§)
         {
            this.§5";§.x *= param1.§`T§;
            this.§5";§.y *= param1.§`T§;
            this.§;"%§ *= param1.§`T§;
            _loc15_ = this.§5";§;
            _loc4_.§4X§.x -= _loc10_ * _loc15_.x;
            _loc4_.§4X§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§;"%§);
            _loc5_.§4X§.x += _loc11_ * _loc15_.x;
            _loc5_.§4X§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§;"%§);
         }
         else
         {
            this.§5";§.§4e§();
            this.§;"%§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::9!B;
         var _loc5_:b2Body = b2internal::;!=;
         var _loc6_:b2Vec2 = _loc4_.§4X§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§4X§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§"!O§;
         var _loc11_:Number = _loc5_.§"!O§;
         var _loc12_:Number = _loc4_.§6""§;
         var _loc13_:Number = _loc5_.§6""§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§%"&§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§%"&§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§"x§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§"x§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§+!V§ * _loc19_;
         var _loc21_:Number = this.§;"%§;
         _loc18_ = param1.§<e§ * this.§[!'§;
         this.§;"%§ = b2Math.§`"?§(this.§;"%§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§;"%§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§%!T§(this.§=^§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§5";§.Copy();
         this.§5";§.§4![§(_loc24_);
         _loc18_ = param1.§<e§ * this.§5"+§;
         if(this.§5";§.§@!1§() > _loc18_ * _loc18_)
         {
            this.§5";§.Normalize();
            this.§5";§.§'q§(_loc18_);
         }
         _loc24_ = b2Math.§8"<§(this.§5";§,_loc25_);
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
