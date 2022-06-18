package §5v§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2TimeStep;
   import §6!R§.b2Mat22;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §'^§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var § @§:b2Vec2;
      
      private var §`!A§:b2Vec2;
      
      private var §]#N§:b2Vec2;
      
      private var §!#v§:b2Mat22;
      
      private var §]#D§:b2Vec2;
      
      private var §#!v§:Number;
      
      private var §+#F§:Number;
      
      private var §1m§:Number;
      
      private var §["B§:Number;
      
      private var §2!i§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§'^§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§ @§ = new b2Vec2();
         this.§`!A§ = new b2Vec2();
         this.§]#N§ = new b2Vec2();
         this.§!#v§ = new b2Mat22();
         this.§]#D§ = new b2Vec2();
         super(param1);
         this.§`!A§.SetV(param1.target);
         _loc2_ = this.§`!A§.x - b2internal:: #q.m_xf.position.x;
         var _loc3_:Number = this.§`!A§.y - b2internal:: #q.m_xf.position.y;
         _loc4_ = b2internal:: #q.m_xf.R;
         this.§ @§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§ @§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§#!v§ = param1.§?>§;
         this.§]#N§.§%"N§();
         this.§+#F§ = param1.§6"%§;
         this.§1m§ = param1.dampingRatio;
         this.§["B§ = 0;
         this.§2!i§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§`!A§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: #q.GetWorldPoint(this.§ @§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]#N§.x,param1 * this.§]#N§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §-">§() : b2Vec2
      {
         return this.§`!A§;
      }
      
      public function §4#Q§(param1:b2Vec2) : void
      {
         if(b2internal:: #q.IsAwake() == false)
         {
            b2internal:: #q.SetAwake(true);
         }
         this.§`!A§ = param1;
      }
      
      public function §>#u§() : Number
      {
         return this.§#!v§;
      }
      
      public function §4S§(param1:Number) : void
      {
         this.§#!v§ = param1;
      }
      
      public function §`#z§() : Number
      {
         return this.§+#F§;
      }
      
      public function §#",§(param1:Number) : void
      {
         this.§+#F§ = param1;
      }
      
      public function § "i§() : Number
      {
         return this.§1m§;
      }
      
      public function §4#+§(param1:Number) : void
      {
         this.§1m§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal:: #q;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§+#F§;
         var _loc5_:Number = 2 * _loc3_ * this.§1m§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§2!i§ = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.§2!i§ = this.§2!i§ != 0 ? Number(1 / this.§2!i§) : Number(0);
         this.§["B§ = param1.dt * _loc6_ * this.§2!i§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§ @§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ @§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§0#d§;
         _loc12_ = _loc2_.§!!!§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§'^§.§`!&§(this.K1);
         this.§'^§.§8#R§(this.K2);
         this.§'^§.col1.x += this.§2!i§;
         this.§'^§.col2.y += this.§2!i§;
         this.§'^§.§>s§(this.§!#v§);
         this.§]#D§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§`!A§.x;
         this.§]#D§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§`!A§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§]#N§.x *= param1.§1$5§;
         this.§]#N§.y *= param1.§1$5§;
         _loc2_.§=!c§.x += _loc11_ * this.§]#N§.x;
         _loc2_.§=!c§.y += _loc11_ * this.§]#N§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§]#N§.y - _loc9_ * this.§]#N§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal:: #q;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§ @§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ @§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§=!c§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§=!c§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§!#v§;
         _loc4_ = _loc8_ + this.§["B§ * this.§]#D§.x + this.§2!i§ * this.§]#N§.x;
         _loc5_ = _loc9_ + this.§["B§ * this.§]#D§.y + this.§2!i§ * this.§]#N§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§]#N§.x;
         var _loc13_:Number = this.§]#N§.y;
         this.§]#N§.x += _loc10_;
         this.§]#N§.y += _loc11_;
         var _loc14_:Number = param1.dt * this.§#!v§;
         if(this.§]#N§.§&A§() > _loc14_ * _loc14_)
         {
            this.§]#N§.§%!G§(_loc14_ / this.§]#N§.Length());
         }
         _loc10_ = this.§]#N§.x - _loc12_;
         _loc11_ = this.§]#N§.y - _loc13_;
         _loc2_.§=!c§.x += _loc2_.§0#d§ * _loc10_;
         _loc2_.§=!c§.y += _loc2_.§0#d§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§!!!§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
