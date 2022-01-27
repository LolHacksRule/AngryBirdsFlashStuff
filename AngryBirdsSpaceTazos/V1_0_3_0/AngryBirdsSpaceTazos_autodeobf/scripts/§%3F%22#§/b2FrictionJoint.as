package §?"#§
{
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §;`§.b2TimeStep;
   import §[!f§.b2Mat22;
   import §[!f§.b2Math;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §4M§:b2Vec2;
      
      private var §-X§:b2Vec2;
      
      public var §%;§:b2Mat22;
      
      public var §`"C§:Number;
      
      private var §<!i§:b2Vec2;
      
      private var §,!Y§:Number;
      
      private var §`""§:Number;
      
      private var §3t§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§4M§ = new b2Vec2();
         this.§-X§ = new b2Vec2();
         this.§%;§ = new b2Mat22();
         this.§<!i§ = new b2Vec2();
         super(param1);
         this.§4M§.SetV(param1.§5";§);
         this.§-X§.SetV(param1.§["%§);
         this.§%;§.§]#§();
         this.§`"C§ = 0;
         this.§<!i§.§]#§();
         this.§,!Y§ = 0;
         this.§`""§ = param1.§&"1§;
         this.§3t§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!M.GetWorldPoint(this.§4M§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8"?.GetWorldPoint(this.§-X§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§<!i§.x,param1 * this.§<!i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§,!Y§;
      }
      
      public function §3!&§(param1:Number) : void
      {
         this.§`""§ = param1;
      }
      
      public function §;!-§() : Number
      {
         return this.§`""§;
      }
      
      public function § "0§(param1:Number) : void
      {
         this.§3t§ = param1;
      }
      
      public function §^I§() : Number
      {
         return this.§3t§;
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
         _loc4_ = b2internal::8!M;
         _loc5_ = b2internal::8"?;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§4M§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§4M§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§-X§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§-X§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§9K§;
         var _loc11_:Number = _loc5_.§9K§;
         _loc12_ = _loc4_.§%"+§;
         _loc13_ = _loc5_.§%"+§;
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
         _loc14_.§&"6§(this.§%;§);
         this.§`"C§ = _loc12_ + _loc13_;
         if(this.§`"C§ > 0)
         {
            this.§`"C§ = 1 / this.§`"C§;
         }
         if(param1.§%Z§)
         {
            this.§<!i§.x *= param1.§0!`§;
            this.§<!i§.y *= param1.§0!`§;
            this.§,!Y§ *= param1.§0!`§;
            _loc15_ = this.§<!i§;
            _loc4_.§0!'§.x -= _loc10_ * _loc15_.x;
            _loc4_.§0!'§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§,!Y§);
            _loc5_.§0!'§.x += _loc11_ * _loc15_.x;
            _loc5_.§0!'§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§,!Y§);
         }
         else
         {
            this.§<!i§.§]#§();
            this.§,!Y§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::8!M;
         var _loc5_:b2Body = b2internal::8"?;
         var _loc6_:b2Vec2 = _loc4_.§0!'§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§0!'§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§9K§;
         var _loc11_:Number = _loc5_.§9K§;
         var _loc12_:Number = _loc4_.§%"+§;
         var _loc13_:Number = _loc5_.§%"+§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§4M§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§4M§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§-X§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§-X§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§`"C§ * _loc19_;
         var _loc21_:Number = this.§,!Y§;
         _loc18_ = param1.§;!!§ * this.§3t§;
         this.§,!Y§ = b2Math.§>!]§(this.§,!Y§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§,!Y§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§5%§(this.§%;§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§<!i§.Copy();
         this.§<!i§.§ ,§(_loc24_);
         _loc18_ = param1.§;!!§ * this.§`""§;
         if(this.§<!i§.§8!B§() > _loc18_ * _loc18_)
         {
            this.§<!i§.Normalize();
            this.§<!i§.§7!J§(_loc18_);
         }
         _loc24_ = b2Math.§0t§(this.§<!i§,_loc25_);
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
