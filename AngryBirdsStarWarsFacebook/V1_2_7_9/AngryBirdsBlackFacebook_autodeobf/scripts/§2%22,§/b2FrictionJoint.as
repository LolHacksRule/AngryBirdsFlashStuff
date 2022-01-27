package §2",§
{
   import §1x§.b2Body;
   import §1x§.b2TimeStep;
   import §9!s§.b2internal;
   import §^>§.b2Mat22;
   import §^>§.b2Math;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §9"B§:b2Vec2;
      
      private var §%!R§:b2Vec2;
      
      public var §+!R§:b2Mat22;
      
      public var §=!X§:Number;
      
      private var §8F§:b2Vec2;
      
      private var §#!9§:Number;
      
      private var §!"8§:Number;
      
      private var §=Q§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§9"B§ = new b2Vec2();
         this.§%!R§ = new b2Vec2();
         this.§+!R§ = new b2Mat22();
         this.§8F§ = new b2Vec2();
         super(param1);
         this.§9"B§.SetV(param1.§2"g§);
         this.§%!R§.SetV(param1.§#l§);
         this.§+!R§.§@e§();
         this.§=!X§ = 0;
         this.§8F§.§@e§();
         this.§#!9§ = 0;
         this.§!"8§ = param1.§0"l§;
         this.§=Q§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"n.GetWorldPoint(this.§9"B§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@!u.GetWorldPoint(this.§%!R§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8F§.x,param1 * this.§8F§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§#!9§;
      }
      
      public function §6"9§(param1:Number) : void
      {
         this.§!"8§ = param1;
      }
      
      public function §'!#§() : Number
      {
         return this.§!"8§;
      }
      
      public function §7"c§(param1:Number) : void
      {
         this.§=Q§ = param1;
      }
      
      public function §@c§() : Number
      {
         return this.§=Q§;
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
         _loc4_ = b2internal::0"n;
         _loc5_ = b2internal::@!u;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§9"B§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§9"B§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§%!R§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§%!R§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§@"P§;
         var _loc11_:Number = _loc5_.§@"P§;
         _loc12_ = _loc4_.§%#2§;
         _loc13_ = _loc5_.§%#2§;
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
         _loc14_.§8t§(this.§+!R§);
         this.§=!X§ = _loc12_ + _loc13_;
         if(this.§=!X§ > 0)
         {
            this.§=!X§ = 1 / this.§=!X§;
         }
         if(param1.§56§)
         {
            this.§8F§.x *= param1.§<J§;
            this.§8F§.y *= param1.§<J§;
            this.§#!9§ *= param1.§<J§;
            _loc15_ = this.§8F§;
            _loc4_.§5!r§.x -= _loc10_ * _loc15_.x;
            _loc4_.§5!r§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§#!9§);
            _loc5_.§5!r§.x += _loc11_ * _loc15_.x;
            _loc5_.§5!r§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§#!9§);
         }
         else
         {
            this.§8F§.§@e§();
            this.§#!9§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::0"n;
         var _loc5_:b2Body = b2internal::@!u;
         var _loc6_:b2Vec2 = _loc4_.§5!r§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§5!r§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§@"P§;
         var _loc11_:Number = _loc5_.§@"P§;
         var _loc12_:Number = _loc4_.§%#2§;
         var _loc13_:Number = _loc5_.§%#2§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§9"B§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§9"B§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§%!R§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§%!R§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§=!X§ * _loc19_;
         var _loc21_:Number = this.§#!9§;
         _loc18_ = param1.§&"%§ * this.§=Q§;
         this.§#!9§ = b2Math.§2"R§(this.§#!9§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§#!9§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§&"f§(this.§+!R§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§8F§.Copy();
         this.§8F§.§%#3§(_loc24_);
         _loc18_ = param1.§&"%§ * this.§!"8§;
         if(this.§8F§.§!N§() > _loc18_ * _loc18_)
         {
            this.§8F§.Normalize();
            this.§8F§.§ !I§(_loc18_);
         }
         _loc24_ = b2Math.§]Y§(this.§8F§,_loc25_);
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
