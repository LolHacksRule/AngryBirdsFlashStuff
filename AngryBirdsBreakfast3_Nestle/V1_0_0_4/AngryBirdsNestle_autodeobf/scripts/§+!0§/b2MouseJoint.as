package §+!0§
{
   import §-%§.b2Mat22;
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §9"5§.b2TimeStep;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §<%§:b2Vec2;
      
      private var §`3§:b2Vec2;
      
      private var §[!a§:b2Vec2;
      
      private var §1i§:b2Mat22;
      
      private var §@!E§:b2Vec2;
      
      private var §3!w§:Number;
      
      private var §>!s§:Number;
      
      private var §=W§:Number;
      
      private var §94§:Number;
      
      private var §;!0§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§<%§ = new b2Vec2();
         this.§`3§ = new b2Vec2();
         this.§[!a§ = new b2Vec2();
         this.§1i§ = new b2Mat22();
         this.§@!E§ = new b2Vec2();
         super(param1);
         this.§`3§.SetV(param1.target);
         _loc2_ = this.§`3§.x - b2internal::6=.m_xf.position.x;
         var _loc3_:Number = this.§`3§.y - b2internal::6=.m_xf.position.y;
         _loc4_ = b2internal::6=.m_xf.R;
         this.§<%§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§<%§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§3!w§ = param1.§?"5§;
         this.§[!a§.§'p§();
         this.§>!s§ = param1.§?X§;
         this.§=W§ = param1.§<!P§;
         this.§94§ = 0;
         this.§;!0§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§`3§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::6=.GetWorldPoint(this.§<%§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!a§.x,param1 * this.§[!a§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §3!N§() : b2Vec2
      {
         return this.§`3§;
      }
      
      public function §0!P§(param1:b2Vec2) : void
      {
         if(b2internal::6=.IsAwake() == false)
         {
            b2internal::6=.SetAwake(true);
         }
         this.§`3§ = param1;
      }
      
      public function §#!=§() : Number
      {
         return this.§3!w§;
      }
      
      public function §5G§(param1:Number) : void
      {
         this.§3!w§ = param1;
      }
      
      public function §[!2§() : Number
      {
         return this.§>!s§;
      }
      
      public function §1!a§(param1:Number) : void
      {
         this.§>!s§ = param1;
      }
      
      public function §2!X§() : Number
      {
         return this.§=W§;
      }
      
      public function §9!-§(param1:Number) : void
      {
         this.§=W§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::6=;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§>!s§;
         var _loc5_:Number = 2 * _loc3_ * this.§=W§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§;!0§ = param1.§ !&§ * (_loc5_ + param1.§ !&§ * _loc6_);
         this.§;!0§ = this.§;!0§ != 0 ? Number(1 / this.§;!0§) : Number(0);
         this.§94§ = param1.§ !&§ * _loc6_ * this.§;!0§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§<%§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§<%§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§^!u§;
         _loc12_ = _loc2_.§;!A§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§+M§(this.K1);
         this.K.§@m§(this.K2);
         this.K.col1.x += this.§;!0§;
         this.K.col2.y += this.§;!0§;
         this.K.§<!H§(this.§1i§);
         this.§@!E§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§`3§.x;
         this.§@!E§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§`3§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§[!a§.x *= param1.§%!k§;
         this.§[!a§.y *= param1.§%!k§;
         _loc2_.§]!1§.x += _loc11_ * this.§[!a§.x;
         _loc2_.§]!1§.y += _loc11_ * this.§[!a§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§[!a§.y - _loc9_ * this.§[!a§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::6=;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§<%§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§<%§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§]!1§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§]!1§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§1i§;
         _loc4_ = _loc8_ + this.§94§ * this.§@!E§.x + this.§;!0§ * this.§[!a§.x;
         _loc5_ = _loc9_ + this.§94§ * this.§@!E§.y + this.§;!0§ * this.§[!a§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§[!a§.x;
         var _loc13_:Number = this.§[!a§.y;
         this.§[!a§.x += _loc10_;
         this.§[!a§.y += _loc11_;
         var _loc14_:Number = param1.§ !&§ * this.§3!w§;
         if(this.§[!a§.§,m§() > _loc14_ * _loc14_)
         {
            this.§[!a§.§<k§(_loc14_ / this.§[!a§.Length());
         }
         _loc10_ = this.§[!a§.x - _loc12_;
         _loc11_ = this.§[!a§.y - _loc13_;
         _loc2_.§]!1§.x += _loc2_.§^!u§ * _loc10_;
         _loc2_.§]!1§.y += _loc2_.§^!u§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§;!A§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
