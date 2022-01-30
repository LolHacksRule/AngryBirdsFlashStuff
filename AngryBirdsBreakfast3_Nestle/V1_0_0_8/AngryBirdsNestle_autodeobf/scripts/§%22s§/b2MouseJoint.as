package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2TimeStep;
   import §[K§.b2Mat22;
   import §[K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §!"§:b2Vec2;
      
      private var §6"1§:b2Vec2;
      
      private var §+f§:b2Vec2;
      
      private var §^-§:b2Mat22;
      
      private var §,S§:b2Vec2;
      
      private var §>"§:Number;
      
      private var §""2§:Number;
      
      private var §#"§:Number;
      
      private var §!!@§:Number;
      
      private var §?'§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§!"§ = new b2Vec2();
         this.§6"1§ = new b2Vec2();
         this.§+f§ = new b2Vec2();
         this.§^-§ = new b2Mat22();
         this.§,S§ = new b2Vec2();
         super(param1);
         this.§6"1§.SetV(param1.target);
         _loc2_ = this.§6"1§.x - b2internal::2z.m_xf.position.x;
         var _loc3_:Number = this.§6"1§.y - b2internal::2z.m_xf.position.y;
         _loc4_ = b2internal::2z.m_xf.R;
         this.§!"§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§!"§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§>"§ = param1.§+"!§;
         this.§+f§.§3S§();
         this.§""2§ = param1.§2!Z§;
         this.§#"§ = param1.§"!%§;
         this.§!!@§ = 0;
         this.§?'§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§6"1§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2z.GetWorldPoint(this.§!"§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+f§.x,param1 * this.§+f§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §?D§() : b2Vec2
      {
         return this.§6"1§;
      }
      
      public function §%!P§(param1:b2Vec2) : void
      {
         if(b2internal::2z.IsAwake() == false)
         {
            b2internal::2z.SetAwake(true);
         }
         this.§6"1§ = param1;
      }
      
      public function §]Y§() : Number
      {
         return this.§>"§;
      }
      
      public function §1!?§(param1:Number) : void
      {
         this.§>"§ = param1;
      }
      
      public function §8!M§() : Number
      {
         return this.§""2§;
      }
      
      public function §3G§(param1:Number) : void
      {
         this.§""2§ = param1;
      }
      
      public function §#!Z§() : Number
      {
         return this.§#"§;
      }
      
      public function §`!V§(param1:Number) : void
      {
         this.§#"§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::2z;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§""2§;
         var _loc5_:Number = 2 * _loc3_ * this.§#"§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§?'§ = param1.§>!W§ * (_loc5_ + param1.§>!W§ * _loc6_);
         this.§?'§ = this.§?'§ != 0 ? Number(1 / this.§?'§) : Number(0);
         this.§!!@§ = param1.§>!W§ * _loc6_ * this.§?'§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§!"§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§!"§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§]p§;
         _loc12_ = _loc2_.§;!$§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§1!]§(this.K1);
         this.K.§"!1§(this.K2);
         this.K.col1.x += this.§?'§;
         this.K.col2.y += this.§?'§;
         this.K.§!!c§(this.§^-§);
         this.§,S§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§6"1§.x;
         this.§,S§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§6"1§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§+f§.x *= param1.§1!+§;
         this.§+f§.y *= param1.§1!+§;
         _loc2_.§;B§.x += _loc11_ * this.§+f§.x;
         _loc2_.§;B§.y += _loc11_ * this.§+f§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§+f§.y - _loc9_ * this.§+f§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::2z;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§!"§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§!"§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§;B§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§;B§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§^-§;
         _loc4_ = _loc8_ + this.§!!@§ * this.§,S§.x + this.§?'§ * this.§+f§.x;
         _loc5_ = _loc9_ + this.§!!@§ * this.§,S§.y + this.§?'§ * this.§+f§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§+f§.x;
         var _loc13_:Number = this.§+f§.y;
         this.§+f§.x += _loc10_;
         this.§+f§.y += _loc11_;
         var _loc14_:Number = param1.§>!W§ * this.§>"§;
         if(this.§+f§.§0N§() > _loc14_ * _loc14_)
         {
            this.§+f§.§6w§(_loc14_ / this.§+f§.Length());
         }
         _loc10_ = this.§+f§.x - _loc12_;
         _loc11_ = this.§+f§.y - _loc13_;
         _loc2_.§;B§.x += _loc2_.§]p§ * _loc10_;
         _loc2_.§;B§.y += _loc2_.§]p§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§;!$§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
