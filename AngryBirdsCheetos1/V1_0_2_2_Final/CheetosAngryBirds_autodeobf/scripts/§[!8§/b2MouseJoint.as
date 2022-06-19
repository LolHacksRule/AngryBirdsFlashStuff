package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §2#§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §!v§:b2Vec2;
      
      private var §>j§:b2Vec2;
      
      private var § !6§:b2Vec2;
      
      private var §3!7§:b2Mat22;
      
      private var §%![§:b2Vec2;
      
      private var §!6§:Number;
      
      private var §^!C§:Number;
      
      private var §-s§:Number;
      
      private var §<k§:Number;
      
      private var §6G§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§2#§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§!v§ = new b2Vec2();
         this.§>j§ = new b2Vec2();
         this.§ !6§ = new b2Vec2();
         this.§3!7§ = new b2Mat22();
         this.§%![§ = new b2Vec2();
         super(param1);
         this.§>j§.SetV(param1.target);
         _loc2_ = this.§>j§.x - b2internal::%^.m_xf.position.x;
         var _loc3_:Number = this.§>j§.y - b2internal::%^.m_xf.position.y;
         _loc4_ = b2internal::%^.m_xf.R;
         this.§!v§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§!v§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§!6§ = param1.§[!A§;
         this.§ !6§.§3a§();
         this.§^!C§ = param1.§!k§;
         this.§-s§ = param1.§-C§;
         this.§<k§ = 0;
         this.§6G§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§>j§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.§!v§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§ !6§.x,param1 * this.§ !6§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!w§() : b2Vec2
      {
         return this.§>j§;
      }
      
      public function §<7§(param1:b2Vec2) : void
      {
         if(b2internal::%^.IsAwake() == false)
         {
            b2internal::%^.SetAwake(true);
         }
         this.§>j§ = param1;
      }
      
      public function §=!]§() : Number
      {
         return this.§!6§;
      }
      
      public function §^!!§(param1:Number) : void
      {
         this.§!6§ = param1;
      }
      
      public function §]#§() : Number
      {
         return this.§^!C§;
      }
      
      public function §6W§(param1:Number) : void
      {
         this.§^!C§ = param1;
      }
      
      public function §0!4§() : Number
      {
         return this.§-s§;
      }
      
      public function §,!I§(param1:Number) : void
      {
         this.§-s§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::%^;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§^!C§;
         var _loc5_:Number = 2 * _loc3_ * this.§-s§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§6G§ = param1.§7!?§ * (_loc5_ + param1.§7!?§ * _loc6_);
         this.§6G§ = this.§6G§ != 0 ? Number(1 / this.§6G§) : Number(0);
         this.§<k§ = param1.§7!?§ * _loc6_ * this.§6G§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§!v§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§!v§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§#!D§;
         _loc12_ = _loc2_.§?8§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§2#§.§,K§(this.K1);
         this.§2#§.§!C§(this.K2);
         this.§2#§.col1.x += this.§6G§;
         this.§2#§.col2.y += this.§6G§;
         this.§2#§.§&R§(this.§3!7§);
         this.§%![§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§>j§.x;
         this.§%![§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§>j§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§ !6§.x *= param1.§7!M§;
         this.§ !6§.y *= param1.§7!M§;
         _loc2_.§,?§.x += _loc11_ * this.§ !6§.x;
         _loc2_.§,?§.y += _loc11_ * this.§ !6§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§ !6§.y - _loc9_ * this.§ !6§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::%^;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§!v§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§!v§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§,?§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§,?§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§3!7§;
         _loc4_ = _loc8_ + this.§<k§ * this.§%![§.x + this.§6G§ * this.§ !6§.x;
         _loc5_ = _loc9_ + this.§<k§ * this.§%![§.y + this.§6G§ * this.§ !6§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§ !6§.x;
         var _loc13_:Number = this.§ !6§.y;
         this.§ !6§.x += _loc10_;
         this.§ !6§.y += _loc11_;
         var _loc14_:Number = param1.§7!?§ * this.§!6§;
         if(this.§ !6§.§27§() > _loc14_ * _loc14_)
         {
            this.§ !6§.§@-§(_loc14_ / this.§ !6§.§!Y§());
         }
         _loc10_ = this.§ !6§.x - _loc12_;
         _loc11_ = this.§ !6§.y - _loc13_;
         _loc2_.§,?§.x += _loc2_.§#!D§ * _loc10_;
         _loc2_.§,?§.y += _loc2_.§#!D§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§?8§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
