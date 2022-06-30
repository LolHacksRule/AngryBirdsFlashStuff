package §7!3§
{
   import §+d§.b2Body;
   import §+d§.b2TimeStep;
   import §6%§.b2internal;
   import §`!^§.b2Mat22;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §,x§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var § !@§:b2Vec2;
      
      private var §2!-§:b2Vec2;
      
      private var §[H§:b2Vec2;
      
      private var §3!@§:b2Mat22;
      
      private var §&9§:b2Vec2;
      
      private var §!%§:Number;
      
      private var §5!K§:Number;
      
      private var §>d§:Number;
      
      private var §=w§:Number;
      
      private var §`u§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§,x§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§ !@§ = new b2Vec2();
         this.§2!-§ = new b2Vec2();
         this.§[H§ = new b2Vec2();
         this.§3!@§ = new b2Mat22();
         this.§&9§ = new b2Vec2();
         super(param1);
         this.§2!-§.SetV(param1.target);
         _loc2_ = this.§2!-§.x - b2internal::>D.m_xf.position.x;
         var _loc3_:Number = this.§2!-§.y - b2internal::>D.m_xf.position.y;
         _loc4_ = b2internal::>D.m_xf.R;
         this.§ !@§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§ !@§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§!%§ = param1.§0!L§;
         this.§[H§.§8c§();
         this.§5!K§ = param1.§^!e§;
         this.§>d§ = param1.§4!G§;
         this.§=w§ = 0;
         this.§`u§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§2!-§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::>D.GetWorldPoint(this.§ !@§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[H§.x,param1 * this.§[H§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §<! §() : b2Vec2
      {
         return this.§2!-§;
      }
      
      public function §#!M§(param1:b2Vec2) : void
      {
         if(b2internal::>D.IsAwake() == false)
         {
            b2internal::>D.SetAwake(true);
         }
         this.§2!-§ = param1;
      }
      
      public function §;!1§() : Number
      {
         return this.§!%§;
      }
      
      public function §[! §(param1:Number) : void
      {
         this.§!%§ = param1;
      }
      
      public function §,t§() : Number
      {
         return this.§5!K§;
      }
      
      public function §,!G§(param1:Number) : void
      {
         this.§5!K§ = param1;
      }
      
      public function §+i§() : Number
      {
         return this.§>d§;
      }
      
      public function §2!&§(param1:Number) : void
      {
         this.§>d§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::>D;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§5!K§;
         var _loc5_:Number = 2 * _loc3_ * this.§>d§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§`u§ = param1.§,>§ * (_loc5_ + param1.§,>§ * _loc6_);
         this.§`u§ = this.§`u§ != 0 ? Number(1 / this.§`u§) : Number(0);
         this.§=w§ = param1.§,>§ * _loc6_ * this.§`u§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§ !@§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ !@§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§@h§;
         _loc12_ = _loc2_.§8t§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§,x§.§5u§(this.K1);
         this.§,x§.§?-§(this.K2);
         this.§,x§.col1.x += this.§`u§;
         this.§,x§.col2.y += this.§`u§;
         this.§,x§.§]!4§(this.§3!@§);
         this.§&9§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§2!-§.x;
         this.§&9§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§2!-§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§[H§.x *= param1.§"§;
         this.§[H§.y *= param1.§"§;
         _loc2_.§^!S§.x += _loc11_ * this.§[H§.x;
         _loc2_.§^!S§.y += _loc11_ * this.§[H§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§[H§.y - _loc9_ * this.§[H§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::>D;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§ !@§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ !@§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§^!S§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§^!S§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§3!@§;
         _loc4_ = _loc8_ + this.§=w§ * this.§&9§.x + this.§`u§ * this.§[H§.x;
         _loc5_ = _loc9_ + this.§=w§ * this.§&9§.y + this.§`u§ * this.§[H§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§[H§.x;
         var _loc13_:Number = this.§[H§.y;
         this.§[H§.x += _loc10_;
         this.§[H§.y += _loc11_;
         var _loc14_:Number = param1.§,>§ * this.§!%§;
         if(this.§[H§.§ P§() > _loc14_ * _loc14_)
         {
            this.§[H§.§6Q§(_loc14_ / this.§[H§.§=!G§());
         }
         _loc10_ = this.§[H§.x - _loc12_;
         _loc11_ = this.§[H§.y - _loc13_;
         _loc2_.§^!S§.x += _loc2_.§@h§ * _loc10_;
         _loc2_.§^!S§.y += _loc2_.§@h§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§8t§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
