package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §1@§:b2Vec2;
      
      private var §8!%§:b2Vec2;
      
      public var §1!]§:b2Mat22;
      
      public var §<m§:Number;
      
      private var §20§:b2Vec2;
      
      private var §4!K§:Number;
      
      private var §!6§:Number;
      
      private var §&!§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§1@§ = new b2Vec2();
         this.§8!%§ = new b2Vec2();
         this.§1!]§ = new b2Mat22();
         this.§20§ = new b2Vec2();
         super(param1);
         this.§1@§.SetV(param1.§;9§);
         this.§8!%§.SetV(param1.§-y§);
         this.§1!]§.§3a§();
         this.§<m§ = 0;
         this.§20§.§3a§();
         this.§4!K§ = 0;
         this.§!6§ = param1.§[!A§;
         this.§&!§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.§1@§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.§8!%§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§20§.x,param1 * this.§20§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§4!K§;
      }
      
      public function §^!!§(param1:Number) : void
      {
         this.§!6§ = param1;
      }
      
      public function §=!]§() : Number
      {
         return this.§!6§;
      }
      
      public function §-!&§(param1:Number) : void
      {
         this.§&!§ = param1;
      }
      
      public function §!f§() : Number
      {
         return this.§&!§;
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
         _loc4_ = b2internal::`p;
         _loc5_ = b2internal::%^;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§1@§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§1@§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§8!%§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§8!%§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§#!D§;
         var _loc11_:Number = _loc5_.§#!D§;
         _loc12_ = _loc4_.§?8§;
         _loc13_ = _loc5_.§?8§;
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
         _loc14_.§&R§(this.§1!]§);
         this.§<m§ = _loc12_ + _loc13_;
         if(this.§<m§ > 0)
         {
            this.§<m§ = 1 / this.§<m§;
         }
         if(param1.§5!N§)
         {
            this.§20§.x *= param1.§7!M§;
            this.§20§.y *= param1.§7!M§;
            this.§4!K§ *= param1.§7!M§;
            _loc15_ = this.§20§;
            _loc4_.§,?§.x -= _loc10_ * _loc15_.x;
            _loc4_.§,?§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§4!K§);
            _loc5_.§,?§.x += _loc11_ * _loc15_.x;
            _loc5_.§,?§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§4!K§);
         }
         else
         {
            this.§20§.§3a§();
            this.§4!K§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::`p;
         var _loc5_:b2Body = b2internal::%^;
         var _loc6_:b2Vec2 = _loc4_.§,?§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§,?§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§#!D§;
         var _loc11_:Number = _loc5_.§#!D§;
         var _loc12_:Number = _loc4_.§?8§;
         var _loc13_:Number = _loc5_.§?8§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§1@§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§1@§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§8!%§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§8!%§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§<m§ * _loc19_;
         var _loc21_:Number = this.§4!K§;
         _loc18_ = param1.§7!?§ * this.§&!§;
         this.§4!K§ = b2Math.§-!1§(this.§4!K§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§4!K§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§2!3§(this.§1!]§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§20§.Copy();
         this.§20§.§-i§(_loc24_);
         _loc18_ = param1.§7!?§ * this.§!6§;
         if(this.§20§.§27§() > _loc18_ * _loc18_)
         {
            this.§20§.Normalize();
            this.§20§.§@-§(_loc18_);
         }
         _loc24_ = b2Math.§4_§(this.§20§,_loc25_);
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
