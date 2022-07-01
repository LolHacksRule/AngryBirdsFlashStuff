package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2TimeStep;
   import §[K§.b2Mat22;
   import §[K§.b2Math;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §=@§:b2Vec2;
      
      private var §84§:b2Vec2;
      
      public var §5t§:b2Mat22;
      
      public var §6!#§:Number;
      
      private var §[s§:b2Vec2;
      
      private var §5!m§:Number;
      
      private var §>"§:Number;
      
      private var §?!z§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§=@§ = new b2Vec2();
         this.§84§ = new b2Vec2();
         this.§5t§ = new b2Mat22();
         this.§[s§ = new b2Vec2();
         super(param1);
         this.§=@§.SetV(param1.§#J§);
         this.§84§.SetV(param1.§7!A§);
         this.§5t§.§3S§();
         this.§6!#§ = 0;
         this.§[s§.§3S§();
         this.§5!m§ = 0;
         this.§>"§ = param1.§+"!§;
         this.§?!z§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::;l.GetWorldPoint(this.§=@§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2z.GetWorldPoint(this.§84§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[s§.x,param1 * this.§[s§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§5!m§;
      }
      
      public function §1!?§(param1:Number) : void
      {
         this.§>"§ = param1;
      }
      
      public function §]Y§() : Number
      {
         return this.§>"§;
      }
      
      public function §8L§(param1:Number) : void
      {
         this.§?!z§ = param1;
      }
      
      public function §case §() : Number
      {
         return this.§?!z§;
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
         _loc4_ = b2internal::;l;
         _loc5_ = b2internal::2z;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§=@§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=@§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§84§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§84§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§]p§;
         var _loc11_:Number = _loc5_.§]p§;
         _loc12_ = _loc4_.§;!$§;
         _loc13_ = _loc5_.§;!$§;
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
         _loc14_.§!!c§(this.§5t§);
         this.§6!#§ = _loc12_ + _loc13_;
         if(this.§6!#§ > 0)
         {
            this.§6!#§ = 1 / this.§6!#§;
         }
         if(param1.§8"4§)
         {
            this.§[s§.x *= param1.§1!+§;
            this.§[s§.y *= param1.§1!+§;
            this.§5!m§ *= param1.§1!+§;
            _loc15_ = this.§[s§;
            _loc4_.§;B§.x -= _loc10_ * _loc15_.x;
            _loc4_.§;B§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§5!m§);
            _loc5_.§;B§.x += _loc11_ * _loc15_.x;
            _loc5_.§;B§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§5!m§);
         }
         else
         {
            this.§[s§.§3S§();
            this.§5!m§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::;l;
         var _loc5_:b2Body = b2internal::2z;
         var _loc6_:b2Vec2 = _loc4_.§;B§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§;B§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§]p§;
         var _loc11_:Number = _loc5_.§]p§;
         var _loc12_:Number = _loc4_.§;!$§;
         var _loc13_:Number = _loc5_.§;!$§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§=@§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§=@§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§84§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§84§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§6!#§ * _loc19_;
         var _loc21_:Number = this.§5!m§;
         _loc18_ = param1.§>!W§ * this.§?!z§;
         this.§5!m§ = b2Math.§1!s§(this.§5!m§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§5!m§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§1F§(this.§5t§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§[s§.Copy();
         this.§[s§.§6f§(_loc24_);
         _loc18_ = param1.§>!W§ * this.§>"§;
         if(this.§[s§.§0N§() > _loc18_ * _loc18_)
         {
            this.§[s§.Normalize();
            this.§[s§.§6w§(_loc18_);
         }
         _loc24_ = b2Math.§,@§(this.§[s§,_loc25_);
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
