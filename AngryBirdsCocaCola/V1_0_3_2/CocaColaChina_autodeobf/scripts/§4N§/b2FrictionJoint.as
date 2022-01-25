package §4N§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §=!U§.b2TimeStep;
   import §implements§.b2Mat22;
   import §implements§.b2Math;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §0j§:b2Vec2;
      
      private var §%8§:b2Vec2;
      
      public var §4s§:b2Mat22;
      
      public var §!w§:Number;
      
      private var §-!P§:b2Vec2;
      
      private var §4!8§:Number;
      
      private var §1?§:Number;
      
      private var §'!5§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§0j§ = new b2Vec2();
         this.§%8§ = new b2Vec2();
         this.§4s§ = new b2Mat22();
         this.§-!P§ = new b2Vec2();
         super(param1);
         this.§0j§.SetV(param1.§7z§);
         this.§%8§.SetV(param1.§#t§);
         this.§4s§.§^!&§();
         this.§!w§ = 0;
         this.§-!P§.§^!&§();
         this.§4!8§ = 0;
         this.§1?§ = param1.§'!a§;
         this.§'!5§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^!N.GetWorldPoint(this.§0j§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::1A.GetWorldPoint(this.§%8§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§-!P§.x,param1 * this.§-!P§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§4!8§;
      }
      
      public function §&!#§(param1:Number) : void
      {
         this.§1?§ = param1;
      }
      
      public function §?!$§() : Number
      {
         return this.§1?§;
      }
      
      public function §9![§(param1:Number) : void
      {
         this.§'!5§ = param1;
      }
      
      public function §^a§() : Number
      {
         return this.§'!5§;
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
         _loc4_ = b2internal::^!N;
         _loc5_ = b2internal::1A;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§0j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§0j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§%8§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§%8§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§1!G§;
         var _loc11_:Number = _loc5_.§1!G§;
         _loc12_ = _loc4_.§+$§;
         _loc13_ = _loc5_.§+$§;
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
         _loc14_.§!!?§(this.§4s§);
         this.§!w§ = _loc12_ + _loc13_;
         if(this.§!w§ > 0)
         {
            this.§!w§ = 1 / this.§!w§;
         }
         if(param1.§5R§)
         {
            this.§-!P§.x *= param1.§5!Y§;
            this.§-!P§.y *= param1.§5!Y§;
            this.§4!8§ *= param1.§5!Y§;
            _loc15_ = this.§-!P§;
            _loc4_.§,!@§.x -= _loc10_ * _loc15_.x;
            _loc4_.§,!@§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§4!8§);
            _loc5_.§,!@§.x += _loc11_ * _loc15_.x;
            _loc5_.§,!@§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§4!8§);
         }
         else
         {
            this.§-!P§.§^!&§();
            this.§4!8§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::^!N;
         var _loc5_:b2Body = b2internal::1A;
         var _loc6_:b2Vec2 = _loc4_.§,!@§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§,!@§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§1!G§;
         var _loc11_:Number = _loc5_.§1!G§;
         var _loc12_:Number = _loc4_.§+$§;
         var _loc13_:Number = _loc5_.§+$§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§0j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§0j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§%8§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§%8§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§!w§ * _loc19_;
         var _loc21_:Number = this.§4!8§;
         _loc18_ = param1.§5V§ * this.§'!5§;
         this.§4!8§ = b2Math.§+I§(this.§4!8§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§4!8§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§`e§(this.§4s§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§-!P§.Copy();
         this.§-!P§.§=C§(_loc24_);
         _loc18_ = param1.§5V§ * this.§1?§;
         if(this.§-!P§.§"!b§() > _loc18_ * _loc18_)
         {
            this.§-!P§.Normalize();
            this.§-!P§.§]"§(_loc18_);
         }
         _loc24_ = b2Math.§^!J§(this.§-!P§,_loc25_);
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
