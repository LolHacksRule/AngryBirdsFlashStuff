package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Mat22;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   import §9!K§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §=C§:b2Vec2;
      
      private var §?#§:b2Vec2;
      
      private var §^i§:b2Vec2;
      
      private var §7g§:b2Mat22;
      
      private var §>f§:b2Vec2;
      
      private var §=!§:Number;
      
      private var §8"7§:Number;
      
      private var §0!i§:Number;
      
      private var §!M§:Number;
      
      private var §[<§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§=C§ = new b2Vec2();
         this.§?#§ = new b2Vec2();
         this.§^i§ = new b2Vec2();
         this.§7g§ = new b2Mat22();
         this.§>f§ = new b2Vec2();
         super(param1);
         this.§?#§.SetV(param1.target);
         _loc2_ = this.§?#§.x - b2internal::,!Q.m_xf.position.x;
         var _loc3_:Number = this.§?#§.y - b2internal::,!Q.m_xf.position.y;
         _loc4_ = b2internal::,!Q.m_xf.R;
         this.§=C§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§=C§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§=!§ = param1.§0j§;
         this.§^i§.§58§();
         this.§8"7§ = param1.§2I§;
         this.§0!i§ = param1.dampingRatio;
         this.§!M§ = 0;
         this.§[<§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§?#§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!Q.GetWorldPoint(this.§=C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^i§.x,param1 * this.§^i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'!§() : b2Vec2
      {
         return this.§?#§;
      }
      
      public function §"!`§(param1:b2Vec2) : void
      {
         if(b2internal::,!Q.IsAwake() == false)
         {
            b2internal::,!Q.SetAwake(true);
         }
         this.§?#§ = param1;
      }
      
      public function §5!X§() : Number
      {
         return this.§=!§;
      }
      
      public function §;!%§(param1:Number) : void
      {
         this.§=!§ = param1;
      }
      
      public function §&v§() : Number
      {
         return this.§8"7§;
      }
      
      public function §1!x§(param1:Number) : void
      {
         this.§8"7§ = param1;
      }
      
      public function §2!Q§() : Number
      {
         return this.§0!i§;
      }
      
      public function §=r§(param1:Number) : void
      {
         this.§0!i§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::,!Q;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§8"7§;
         var _loc5_:Number = 2 * _loc3_ * this.§0!i§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§[<§ = param1.§;@§ * (_loc5_ + param1.§;@§ * _loc6_);
         this.§[<§ = this.§[<§ != 0 ? Number(1 / this.§[<§) : Number(0);
         this.§!M§ = param1.§;@§ * _loc6_ * this.§[<§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§=C§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§=C§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§var §;
         _loc12_ = _loc2_.§,"!§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§1!G§(this.K1);
         this.K.§;!d§(this.K2);
         this.K.col1.x += this.§[<§;
         this.K.col2.y += this.§[<§;
         this.K.§@"F§(this.§7g§);
         this.§>f§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§?#§.x;
         this.§>f§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§?#§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§^i§.x *= param1.§?!$§;
         this.§^i§.y *= param1.§?!$§;
         _loc2_.§9e§.x += _loc11_ * this.§^i§.x;
         _loc2_.§9e§.y += _loc11_ * this.§^i§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§^i§.y - _loc9_ * this.§^i§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::,!Q;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§=C§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=C§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§9e§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§9e§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§7g§;
         _loc4_ = _loc8_ + this.§!M§ * this.§>f§.x + this.§[<§ * this.§^i§.x;
         _loc5_ = _loc9_ + this.§!M§ * this.§>f§.y + this.§[<§ * this.§^i§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§^i§.x;
         var _loc13_:Number = this.§^i§.y;
         this.§^i§.x += _loc10_;
         this.§^i§.y += _loc11_;
         var _loc14_:Number = param1.§;@§ * this.§=!§;
         if(this.§^i§.§@""§() > _loc14_ * _loc14_)
         {
            this.§^i§.§#!;§(_loc14_ / this.§^i§.§4"3§());
         }
         _loc10_ = this.§^i§.x - _loc12_;
         _loc11_ = this.§^i§.y - _loc13_;
         _loc2_.§9e§.x += _loc2_.§var § * _loc10_;
         _loc2_.§9e§.y += _loc2_.§var § * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§,"!§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
