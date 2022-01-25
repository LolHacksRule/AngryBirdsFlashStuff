package §4N§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §=!U§.b2TimeStep;
   import §implements§.b2Mat22;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §<!K§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var § W§:b2Vec2;
      
      private var §=!!§:b2Vec2;
      
      private var §%!3§:b2Vec2;
      
      private var §9^§:b2Mat22;
      
      private var §>!1§:b2Vec2;
      
      private var §1?§:Number;
      
      private var § !R§:Number;
      
      private var §%!M§:Number;
      
      private var §6!E§:Number;
      
      private var §7!]§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§<!K§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§ W§ = new b2Vec2();
         this.§=!!§ = new b2Vec2();
         this.§%!3§ = new b2Vec2();
         this.§9^§ = new b2Mat22();
         this.§>!1§ = new b2Vec2();
         super(param1);
         this.§=!!§.SetV(param1.target);
         _loc2_ = this.§=!!§.x - b2internal::1A.m_xf.position.x;
         var _loc3_:Number = this.§=!!§.y - b2internal::1A.m_xf.position.y;
         _loc4_ = b2internal::1A.m_xf.R;
         this.§ W§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§ W§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§1?§ = param1.§'!a§;
         this.§%!3§.§^!&§();
         this.§ !R§ = param1.§3!_§;
         this.§%!M§ = param1.§-f§;
         this.§6!E§ = 0;
         this.§7!]§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§=!!§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::1A.GetWorldPoint(this.§ W§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%!3§.x,param1 * this.§%!3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §3n§() : b2Vec2
      {
         return this.§=!!§;
      }
      
      public function §5=§(param1:b2Vec2) : void
      {
         if(b2internal::1A.IsAwake() == false)
         {
            b2internal::1A.SetAwake(true);
         }
         this.§=!!§ = param1;
      }
      
      public function §?!$§() : Number
      {
         return this.§1?§;
      }
      
      public function §&!#§(param1:Number) : void
      {
         this.§1?§ = param1;
      }
      
      public function §#!3§() : Number
      {
         return this.§ !R§;
      }
      
      public function §-_§(param1:Number) : void
      {
         this.§ !R§ = param1;
      }
      
      public function §4!#§() : Number
      {
         return this.§%!M§;
      }
      
      public function §7a§(param1:Number) : void
      {
         this.§%!M§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::1A;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§ !R§;
         var _loc5_:Number = 2 * _loc3_ * this.§%!M§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§7!]§ = param1.§5V§ * (_loc5_ + param1.§5V§ * _loc6_);
         this.§7!]§ = this.§7!]§ != 0 ? Number(1 / this.§7!]§) : Number(0);
         this.§6!E§ = param1.§5V§ * _loc6_ * this.§7!]§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§ W§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ W§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§1!G§;
         _loc12_ = _loc2_.§+$§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§<!K§.§9!B§(this.K1);
         this.§<!K§.§<Y§(this.K2);
         this.§<!K§.col1.x += this.§7!]§;
         this.§<!K§.col2.y += this.§7!]§;
         this.§<!K§.§!!?§(this.§9^§);
         this.§>!1§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§=!!§.x;
         this.§>!1§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§=!!§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§%!3§.x *= param1.§5!Y§;
         this.§%!3§.y *= param1.§5!Y§;
         _loc2_.§,!@§.x += _loc11_ * this.§%!3§.x;
         _loc2_.§,!@§.y += _loc11_ * this.§%!3§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§%!3§.y - _loc9_ * this.§%!3§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::1A;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§ W§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ W§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§,!@§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§,!@§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§9^§;
         _loc4_ = _loc8_ + this.§6!E§ * this.§>!1§.x + this.§7!]§ * this.§%!3§.x;
         _loc5_ = _loc9_ + this.§6!E§ * this.§>!1§.y + this.§7!]§ * this.§%!3§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§%!3§.x;
         var _loc13_:Number = this.§%!3§.y;
         this.§%!3§.x += _loc10_;
         this.§%!3§.y += _loc11_;
         var _loc14_:Number = param1.§5V§ * this.§1?§;
         if(this.§%!3§.§"!b§() > _loc14_ * _loc14_)
         {
            this.§%!3§.§]"§(_loc14_ / this.§%!3§.§5t§());
         }
         _loc10_ = this.§%!3§.x - _loc12_;
         _loc11_ = this.§%!3§.y - _loc13_;
         _loc2_.§,!@§.x += _loc2_.§1!G§ * _loc10_;
         _loc2_.§,!@§.y += _loc2_.§1!G§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§+$§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
