package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2TimeStep;
   import §=i§.b2Mat22;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §[]§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §<!!§:b2Vec2;
      
      private var §9>§:b2Vec2;
      
      private var §=!3§:b2Vec2;
      
      private var §!!9§:b2Mat22;
      
      private var §1!?§:b2Vec2;
      
      private var §?z§:Number;
      
      private var §=!^§:Number;
      
      private var §6!5§:Number;
      
      private var §@!A§:Number;
      
      private var §<A§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§[]§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§<!!§ = new b2Vec2();
         this.§9>§ = new b2Vec2();
         this.§=!3§ = new b2Vec2();
         this.§!!9§ = new b2Mat22();
         this.§1!?§ = new b2Vec2();
         super(param1);
         this.§9>§.SetV(param1.target);
         _loc2_ = this.§9>§.x - b2internal::@;.m_xf.position.x;
         var _loc3_:Number = this.§9>§.y - b2internal::@;.m_xf.position.y;
         _loc4_ = b2internal::@;.m_xf.R;
         this.§<!!§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§<!!§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§?z§ = param1.§7"§;
         this.§=!3§.§0!=§();
         this.§=!^§ = param1.§<!F§;
         this.§6!5§ = param1.§%z§;
         this.§@!A§ = 0;
         this.§<A§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§9>§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@;.GetWorldPoint(this.§<!!§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§=!3§.x,param1 * this.§=!3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,-§() : b2Vec2
      {
         return this.§9>§;
      }
      
      public function §^U§(param1:b2Vec2) : void
      {
         if(b2internal::@;.IsAwake() == false)
         {
            b2internal::@;.SetAwake(true);
         }
         this.§9>§ = param1;
      }
      
      public function §'w§() : Number
      {
         return this.§?z§;
      }
      
      public function §=!Y§(param1:Number) : void
      {
         this.§?z§ = param1;
      }
      
      public function §,8§() : Number
      {
         return this.§=!^§;
      }
      
      public function §<Q§(param1:Number) : void
      {
         this.§=!^§ = param1;
      }
      
      public function §-!§() : Number
      {
         return this.§6!5§;
      }
      
      public function §!B§(param1:Number) : void
      {
         this.§6!5§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::@;;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§=!^§;
         var _loc5_:Number = 2 * _loc3_ * this.§6!5§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§<A§ = param1.§5!8§ * (_loc5_ + param1.§5!8§ * _loc6_);
         this.§<A§ = this.§<A§ != 0 ? Number(1 / this.§<A§) : Number(0);
         this.§@!A§ = param1.§5!8§ * _loc6_ * this.§<A§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§<!!§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§<!!§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§=!C§;
         _loc12_ = _loc2_.§!!§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§[]§.§!3§(this.K1);
         this.§[]§.§9I§(this.K2);
         this.§[]§.col1.x += this.§<A§;
         this.§[]§.col2.y += this.§<A§;
         this.§[]§.§<!"§(this.§!!9§);
         this.§1!?§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§9>§.x;
         this.§1!?§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§9>§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§=!3§.x *= param1.§^!Y§;
         this.§=!3§.y *= param1.§^!Y§;
         _loc2_.§]J§.x += _loc11_ * this.§=!3§.x;
         _loc2_.§]J§.y += _loc11_ * this.§=!3§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§=!3§.y - _loc9_ * this.§=!3§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::@;;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§<!!§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§<!!§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§]J§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§]J§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§!!9§;
         _loc4_ = _loc8_ + this.§@!A§ * this.§1!?§.x + this.§<A§ * this.§=!3§.x;
         _loc5_ = _loc9_ + this.§@!A§ * this.§1!?§.y + this.§<A§ * this.§=!3§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§=!3§.x;
         var _loc13_:Number = this.§=!3§.y;
         this.§=!3§.x += _loc10_;
         this.§=!3§.y += _loc11_;
         var _loc14_:Number = param1.§5!8§ * this.§?z§;
         if(this.§=!3§.§5!P§() > _loc14_ * _loc14_)
         {
            this.§=!3§.§[![§(_loc14_ / this.§=!3§.§4§());
         }
         _loc10_ = this.§=!3§.x - _loc12_;
         _loc11_ = this.§=!3§.y - _loc13_;
         _loc2_.§]J§.x += _loc2_.§=!C§ * _loc10_;
         _loc2_.§]J§.y += _loc2_.§=!C§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§!!§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
