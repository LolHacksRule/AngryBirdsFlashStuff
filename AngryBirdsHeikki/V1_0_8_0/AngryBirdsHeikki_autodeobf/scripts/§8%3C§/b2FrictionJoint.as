package §8<§
{
   import §0!=§.b2Mat22;
   import §0!=§.b2Math;
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0!?§.b2TimeStep;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §>!%§:b2Vec2;
      
      private var §'!@§:b2Vec2;
      
      public var §@S§:b2Mat22;
      
      public var §3s§:Number;
      
      private var §4D§:b2Vec2;
      
      private var §<i§:Number;
      
      private var §"!V§:Number;
      
      private var §<!-§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§>!%§ = new b2Vec2();
         this.§'!@§ = new b2Vec2();
         this.§@S§ = new b2Mat22();
         this.§4D§ = new b2Vec2();
         super(param1);
         this.§>!%§.SetV(param1.§@!T§);
         this.§'!@§.SetV(param1.§,!;§);
         this.§@S§.§0'§();
         this.§3s§ = 0;
         this.§4D§.§0'§();
         this.§<i§ = 0;
         this.§"!V§ = param1.§07§;
         this.§<!-§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::?2.GetWorldPoint(this.§>!%§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!N.GetWorldPoint(this.§'!@§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§4D§.x,param1 * this.§4D§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§<i§;
      }
      
      public function §3!R§(param1:Number) : void
      {
         this.§"!V§ = param1;
      }
      
      public function §%d§() : Number
      {
         return this.§"!V§;
      }
      
      public function §;2§(param1:Number) : void
      {
         this.§<!-§ = param1;
      }
      
      public function §,!F§() : Number
      {
         return this.§<!-§;
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
         _loc4_ = b2internal::?2;
         _loc5_ = b2internal::!N;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§>!%§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§>!%§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§'!@§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§'!@§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§!q§;
         var _loc11_:Number = _loc5_.§!q§;
         _loc12_ = _loc4_.§&!Y§;
         _loc13_ = _loc5_.§&!Y§;
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
         _loc14_.§;+§(this.§@S§);
         this.§3s§ = _loc12_ + _loc13_;
         if(this.§3s§ > 0)
         {
            this.§3s§ = 1 / this.§3s§;
         }
         if(param1.§7U§)
         {
            this.§4D§.x *= param1.§1J§;
            this.§4D§.y *= param1.§1J§;
            this.§<i§ *= param1.§1J§;
            _loc15_ = this.§4D§;
            _loc4_.§#P§.x -= _loc10_ * _loc15_.x;
            _loc4_.§#P§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§<i§);
            _loc5_.§#P§.x += _loc11_ * _loc15_.x;
            _loc5_.§#P§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§<i§);
         }
         else
         {
            this.§4D§.§0'§();
            this.§<i§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::?2;
         var _loc5_:b2Body = b2internal::!N;
         var _loc6_:b2Vec2 = _loc4_.§#P§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§#P§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§!q§;
         var _loc11_:Number = _loc5_.§!q§;
         var _loc12_:Number = _loc4_.§&!Y§;
         var _loc13_:Number = _loc5_.§&!Y§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§>!%§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§>!%§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§'!@§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§'!@§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§3s§ * _loc19_;
         var _loc21_:Number = this.§<i§;
         _loc18_ = param1.§<G§ * this.§<!-§;
         this.§<i§ = b2Math.§%%§(this.§<i§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§<i§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§3D§(this.§@S§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§4D§.Copy();
         this.§4D§.§>!+§(_loc24_);
         _loc18_ = param1.§<G§ * this.§"!V§;
         if(this.§4D§.§&!T§() > _loc18_ * _loc18_)
         {
            this.§4D§.Normalize();
            this.§4D§.§>!W§(_loc18_);
         }
         _loc24_ = b2Math.§2V§(this.§4D§,_loc25_);
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
