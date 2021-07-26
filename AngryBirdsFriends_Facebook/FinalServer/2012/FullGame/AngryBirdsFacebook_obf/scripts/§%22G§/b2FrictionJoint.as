package §"G§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2TimeStep;
   import §7F§.b2Mat22;
   import §7F§.b2Math;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §?!1§:b2Vec2;
      
      private var §'3§:b2Vec2;
      
      public var §+!M§:b2Mat22;
      
      public var §]"+§:Number;
      
      private var §6!p§:b2Vec2;
      
      private var § !B§:Number;
      
      private var §#"-§:Number;
      
      private var §0!I§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§?!1§ = new b2Vec2();
         this.§'3§ = new b2Vec2();
         this.§+!M§ = new b2Mat22();
         this.§6!p§ = new b2Vec2();
         super(param1);
         this.§?!1§.SetV(param1.§!d§);
         this.§'3§.SetV(param1.§;!9§);
         this.§+!M§.§%"0§();
         this.§]"+§ = 0;
         this.§6!p§.§%"0§();
         this.§ !B§ = 0;
         this.§#"-§ = param1.§#9§;
         this.§0!I§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"6.GetWorldPoint(this.§?!1§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::<X.GetWorldPoint(this.§'3§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§6!p§.x,param1 * this.§6!p§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ !B§;
      }
      
      public function §#!N§(param1:Number) : void
      {
         this.§#"-§ = param1;
      }
      
      public function §?4§() : Number
      {
         return this.§#"-§;
      }
      
      public function §8i§(param1:Number) : void
      {
         this.§0!I§ = param1;
      }
      
      public function §7!;§() : Number
      {
         return this.§0!I§;
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
         _loc4_ = b2internal::3"6;
         _loc5_ = b2internal::<X;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§?!1§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§?!1§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§'3§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§'3§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§6!j§;
         var _loc11_:Number = _loc5_.§6!j§;
         _loc12_ = _loc4_.§6!$§;
         _loc13_ = _loc5_.§6!$§;
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
         _loc14_.§7!h§(this.§+!M§);
         this.§]"+§ = _loc12_ + _loc13_;
         if(this.§]"+§ > 0)
         {
            this.§]"+§ = 1 / this.§]"+§;
         }
         if(param1.§@"9§)
         {
            this.§6!p§.x *= param1.§0#§;
            this.§6!p§.y *= param1.§0#§;
            this.§ !B§ *= param1.§0#§;
            _loc15_ = this.§6!p§;
            _loc4_.§,!1§.x -= _loc10_ * _loc15_.x;
            _loc4_.§,!1§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§ !B§);
            _loc5_.§,!1§.x += _loc11_ * _loc15_.x;
            _loc5_.§,!1§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§ !B§);
         }
         else
         {
            this.§6!p§.§%"0§();
            this.§ !B§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::3"6;
         var _loc5_:b2Body = b2internal::<X;
         var _loc6_:b2Vec2 = _loc4_.§,!1§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§,!1§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§6!j§;
         var _loc11_:Number = _loc5_.§6!j§;
         var _loc12_:Number = _loc4_.§6!$§;
         var _loc13_:Number = _loc5_.§6!$§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§?!1§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§?!1§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§'3§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§'3§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§]"+§ * _loc19_;
         var _loc21_:Number = this.§ !B§;
         _loc18_ = param1.§&!K§ * this.§0!I§;
         this.§ !B§ = b2Math.§&+§(this.§ !B§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§ !B§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§2!8§(this.§+!M§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§6!p§.Copy();
         this.§6!p§.§?!;§(_loc24_);
         _loc18_ = param1.§&!K§ * this.§#"-§;
         if(this.§6!p§.§>C§() > _loc18_ * _loc18_)
         {
            this.§6!p§.Normalize();
            this.§6!p§.§ !>§(_loc18_);
         }
         _loc24_ = b2Math.§5x§(this.§6!p§,_loc25_);
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
