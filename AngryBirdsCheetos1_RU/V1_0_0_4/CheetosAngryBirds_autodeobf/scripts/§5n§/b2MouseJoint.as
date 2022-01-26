package §5n§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2TimeStep;
   import §5!K§.b2Mat22;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §!!]§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §?z§:b2Vec2;
      
      private var §8X§:b2Vec2;
      
      private var §8!2§:b2Vec2;
      
      private var §9!=§:b2Mat22;
      
      private var § O§:b2Vec2;
      
      private var §]&§:Number;
      
      private var §#%§:Number;
      
      private var §9G§:Number;
      
      private var §#7§:Number;
      
      private var § I§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§!!]§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§?z§ = new b2Vec2();
         this.§8X§ = new b2Vec2();
         this.§8!2§ = new b2Vec2();
         this.§9!=§ = new b2Mat22();
         this.§ O§ = new b2Vec2();
         super(param1);
         this.§8X§.SetV(param1.target);
         _loc2_ = this.§8X§.x - b2internal::2!;.m_xf.position.x;
         var _loc3_:Number = this.§8X§.y - b2internal::2!;.m_xf.position.y;
         _loc4_ = b2internal::2!;.m_xf.R;
         this.§?z§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§?z§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§]&§ = param1.§2!B§;
         this.§8!2§.§6d§();
         this.§#%§ = param1.§+!§;
         this.§9G§ = param1.§1!J§;
         this.§#7§ = 0;
         this.§ I§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§8X§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!;.GetWorldPoint(this.§?z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!2§.x,param1 * this.§8!2§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §3N§() : b2Vec2
      {
         return this.§8X§;
      }
      
      public function §#Y§(param1:b2Vec2) : void
      {
         if(b2internal::2!;.IsAwake() == false)
         {
            b2internal::2!;.SetAwake(true);
         }
         this.§8X§ = param1;
      }
      
      public function §&D§() : Number
      {
         return this.§]&§;
      }
      
      public function §+!=§(param1:Number) : void
      {
         this.§]&§ = param1;
      }
      
      public function §&'§() : Number
      {
         return this.§#%§;
      }
      
      public function §4!W§(param1:Number) : void
      {
         this.§#%§ = param1;
      }
      
      public function §'!M§() : Number
      {
         return this.§9G§;
      }
      
      public function §<M§(param1:Number) : void
      {
         this.§9G§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::2!;;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§#%§;
         var _loc5_:Number = 2 * _loc3_ * this.§9G§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§ I§ = param1.§0O§ * (_loc5_ + param1.§0O§ * _loc6_);
         this.§ I§ = this.§ I§ != 0 ? Number(1 / this.§ I§) : Number(0);
         this.§#7§ = param1.§0O§ * _loc6_ * this.§ I§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§?z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§?z§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§"!§;
         _loc12_ = _loc2_.§9y§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§!!]§.§[r§(this.K1);
         this.§!!]§.§9!R§(this.K2);
         this.§!!]§.col1.x += this.§ I§;
         this.§!!]§.col2.y += this.§ I§;
         this.§!!]§.§?]§(this.§9!=§);
         this.§ O§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§8X§.x;
         this.§ O§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§8X§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§8!2§.x *= param1.§8!J§;
         this.§8!2§.y *= param1.§8!J§;
         _loc2_.§;!#§.x += _loc11_ * this.§8!2§.x;
         _loc2_.§;!#§.y += _loc11_ * this.§8!2§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§8!2§.y - _loc9_ * this.§8!2§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::2!;;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§?z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§?z§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§;!#§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§;!#§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§9!=§;
         _loc4_ = _loc8_ + this.§#7§ * this.§ O§.x + this.§ I§ * this.§8!2§.x;
         _loc5_ = _loc9_ + this.§#7§ * this.§ O§.y + this.§ I§ * this.§8!2§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§8!2§.x;
         var _loc13_:Number = this.§8!2§.y;
         this.§8!2§.x += _loc10_;
         this.§8!2§.y += _loc11_;
         var _loc14_:Number = param1.§0O§ * this.§]&§;
         if(this.§8!2§.§1c§() > _loc14_ * _loc14_)
         {
            this.§8!2§.§3$§(_loc14_ / this.§8!2§.§%C§());
         }
         _loc10_ = this.§8!2§.x - _loc12_;
         _loc11_ = this.§8!2§.y - _loc13_;
         _loc2_.§;!#§.x += _loc2_.§"!§ * _loc10_;
         _loc2_.§;!#§.y += _loc2_.§"!§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§9y§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
