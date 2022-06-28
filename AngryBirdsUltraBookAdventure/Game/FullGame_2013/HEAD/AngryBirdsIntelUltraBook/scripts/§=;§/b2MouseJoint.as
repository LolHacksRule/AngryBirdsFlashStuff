package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §'!§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §>!1§:b2Vec2;
      
      private var §2!N§:b2Vec2;
      
      private var §;D§:b2Vec2;
      
      private var §@U§:b2Mat22;
      
      private var §?,§:b2Vec2;
      
      private var §,&§:Number;
      
      private var §!!@§:Number;
      
      private var §-e§:Number;
      
      private var §0!@§:Number;
      
      private var §<!'§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§'!§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§>!1§ = new b2Vec2();
         this.§2!N§ = new b2Vec2();
         this.§;D§ = new b2Vec2();
         this.§@U§ = new b2Mat22();
         this.§?,§ = new b2Vec2();
         super(param1);
         this.§2!N§.SetV(param1.target);
         _loc2_ = this.§2!N§.x - §`x§.m_xf.position.x;
         var _loc3_:Number = this.§2!N§.y - §`x§.m_xf.position.y;
         _loc4_ = §`x§.m_xf.R;
         this.§>!1§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§>!1§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§,&§ = param1.§<!U§;
         this.§;D§.§@!;§();
         this.§!!@§ = param1.§5Q§;
         this.§-e§ = param1.§=$§;
         this.§0!@§ = 0;
         this.§<!'§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§2!N§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.§>!1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;D§.x,param1 * this.§;D§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §]!_§() : b2Vec2
      {
         return this.§2!N§;
      }
      
      public function §;!?§(param1:b2Vec2) : void
      {
         if(§`x§.IsAwake() == false)
         {
            §`x§.SetAwake(true);
         }
         this.§2!N§ = param1;
      }
      
      public function §1D§() : Number
      {
         return this.§,&§;
      }
      
      public function §>n§(param1:Number) : void
      {
         this.§,&§ = param1;
      }
      
      public function §<V§() : Number
      {
         return this.§!!@§;
      }
      
      public function §<7§(param1:Number) : void
      {
         this.§!!@§ = param1;
      }
      
      public function §7"§() : Number
      {
         return this.§-e§;
      }
      
      public function § C§(param1:Number) : void
      {
         this.§-e§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = §`x§;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§!!@§;
         var _loc5_:Number = 2 * _loc3_ * this.§-e§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§<!'§ = param1.§`M§ * (_loc5_ + param1.§`M§ * _loc6_);
         this.§<!'§ = this.§<!'§ != 0 ? Number(1 / this.§<!'§) : Number(0);
         this.§0!@§ = param1.§`M§ * _loc6_ * this.§<!'§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§>!1§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§>!1§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§=n§;
         _loc12_ = _loc2_.§1&§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§'!§.§<+§(this.K1);
         this.§'!§.§!!h§(this.K2);
         this.§'!§.col1.x += this.§<!'§;
         this.§'!§.col2.y += this.§<!'§;
         this.§'!§.§0!A§(this.§@U§);
         this.§?,§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§2!N§.x;
         this.§?,§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§2!N§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§;D§.x *= param1.§&s§;
         this.§;D§.y *= param1.§&s§;
         _loc2_.§4!h§.x += _loc11_ * this.§;D§.x;
         _loc2_.§4!h§.y += _loc11_ * this.§;D§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§;D§.y - _loc9_ * this.§;D§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = §`x§;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§>!1§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§>!1§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§4!h§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§4!h§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§@U§;
         _loc4_ = _loc8_ + this.§0!@§ * this.§?,§.x + this.§<!'§ * this.§;D§.x;
         _loc5_ = _loc9_ + this.§0!@§ * this.§?,§.y + this.§<!'§ * this.§;D§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§;D§.x;
         var _loc13_:Number = this.§;D§.y;
         this.§;D§.x += _loc10_;
         this.§;D§.y += _loc11_;
         var _loc14_:Number = param1.§`M§ * this.§,&§;
         if(this.§;D§.§3!M§() > _loc14_ * _loc14_)
         {
            this.§;D§.§2p§(_loc14_ / this.§;D§.§[!K§());
         }
         _loc10_ = this.§;D§.x - _loc12_;
         _loc11_ = this.§;D§.y - _loc13_;
         _loc2_.§4!h§.x += _loc2_.§=n§ * _loc10_;
         _loc2_.§4!h§.y += _loc2_.§=n§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§1&§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
