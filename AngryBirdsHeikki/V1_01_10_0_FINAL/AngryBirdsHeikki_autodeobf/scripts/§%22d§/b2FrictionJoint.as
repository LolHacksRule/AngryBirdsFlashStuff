package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §+!&§:b2Vec2;
      
      private var §^!'§:b2Vec2;
      
      public var §5!Q§:b2Mat22;
      
      public var §]!%§:Number;
      
      private var §!@§:b2Vec2;
      
      private var §9;§:Number;
      
      private var §-+§:Number;
      
      private var §6H§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§+!&§ = new b2Vec2();
         this.§^!'§ = new b2Vec2();
         this.§5!Q§ = new b2Mat22();
         this.§!@§ = new b2Vec2();
         super(param1);
         this.§+!&§.SetV(param1.§@b§);
         this.§^!'§.SetV(param1.§=i§);
         this.§5!Q§.§^!,§();
         this.§]!%§ = 0;
         this.§!@§.§^!,§();
         this.§9;§ = 0;
         this.§-+§ = param1.§ N§;
         this.§6H§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.§+!&§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.§^!'§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§!@§.x,param1 * this.§!@§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9;§;
      }
      
      public function §2!>§(param1:Number) : void
      {
         this.§-+§ = param1;
      }
      
      public function §2§() : Number
      {
         return this.§-+§;
      }
      
      public function §4N§(param1:Number) : void
      {
         this.§6H§ = param1;
      }
      
      public function §<%§() : Number
      {
         return this.§6H§;
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
         _loc4_ = b2internal::#A;
         _loc5_ = b2internal::2!`;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§+!&§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§+!&§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§^!'§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§^!'§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§",§;
         var _loc11_:Number = _loc5_.§",§;
         _loc12_ = _loc4_.§-2§;
         _loc13_ = _loc5_.§-2§;
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
         _loc14_.§>b§(this.§5!Q§);
         this.§]!%§ = _loc12_ + _loc13_;
         if(this.§]!%§ > 0)
         {
            this.§]!%§ = 1 / this.§]!%§;
         }
         if(param1.§?S§)
         {
            this.§!@§.x *= param1.§const§;
            this.§!@§.y *= param1.§const§;
            this.§9;§ *= param1.§const§;
            _loc15_ = this.§!@§;
            _loc4_.§@S§.x -= _loc10_ * _loc15_.x;
            _loc4_.§@S§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§9;§);
            _loc5_.§@S§.x += _loc11_ * _loc15_.x;
            _loc5_.§@S§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§9;§);
         }
         else
         {
            this.§!@§.§^!,§();
            this.§9;§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::#A;
         var _loc5_:b2Body = b2internal::2!`;
         var _loc6_:b2Vec2 = _loc4_.§@S§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§@S§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§",§;
         var _loc11_:Number = _loc5_.§",§;
         var _loc12_:Number = _loc4_.§-2§;
         var _loc13_:Number = _loc5_.§-2§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§+!&§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§+!&§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§^!'§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§^!'§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§]!%§ * _loc19_;
         var _loc21_:Number = this.§9;§;
         _loc18_ = param1.§?u§ * this.§6H§;
         this.§9;§ = b2Math.§>I§(this.§9;§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§9;§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§ !$§(this.§5!Q§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§!@§.Copy();
         this.§!@§.§ v§(_loc24_);
         _loc18_ = param1.§?u§ * this.§-+§;
         if(this.§!@§.§,H§() > _loc18_ * _loc18_)
         {
            this.§!@§.Normalize();
            this.§!@§.§0O§(_loc18_);
         }
         _loc24_ = b2Math.§8!Y§(this.§!@§,_loc25_);
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
