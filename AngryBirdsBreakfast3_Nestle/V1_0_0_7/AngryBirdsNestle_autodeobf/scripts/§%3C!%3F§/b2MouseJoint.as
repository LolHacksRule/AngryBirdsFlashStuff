package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Mat22;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   import §0!j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §@K§:b2Vec2;
      
      private var §>D§:b2Vec2;
      
      private var §1E§:b2Vec2;
      
      private var §+s§:b2Mat22;
      
      private var §'u§:b2Vec2;
      
      private var §#!T§:Number;
      
      private var §0u§:Number;
      
      private var §%'§:Number;
      
      private var §&!^§:Number;
      
      private var §,$§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§@K§ = new b2Vec2();
         this.§>D§ = new b2Vec2();
         this.§1E§ = new b2Vec2();
         this.§+s§ = new b2Mat22();
         this.§'u§ = new b2Vec2();
         super(param1);
         this.§>D§.SetV(param1.target);
         _loc2_ = this.§>D§.x - b2internal::]!0.m_xf.position.x;
         var _loc3_:Number = this.§>D§.y - b2internal::]!0.m_xf.position.y;
         _loc4_ = b2internal::]!0.m_xf.R;
         this.§@K§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§@K§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§#!T§ = param1.§6p§;
         this.§1E§.§`5§();
         this.§0u§ = param1.§'P§;
         this.§%'§ = param1.§#0§;
         this.§&!^§ = 0;
         this.§,$§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§>D§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]!0.GetWorldPoint(this.§@K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§1E§.x,param1 * this.§1E§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §&"'§() : b2Vec2
      {
         return this.§>D§;
      }
      
      public function §-!C§(param1:b2Vec2) : void
      {
         if(b2internal::]!0.IsAwake() == false)
         {
            b2internal::]!0.SetAwake(true);
         }
         this.§>D§ = param1;
      }
      
      public function §]T§() : Number
      {
         return this.§#!T§;
      }
      
      public function §!!3§(param1:Number) : void
      {
         this.§#!T§ = param1;
      }
      
      public function §"!Y§() : Number
      {
         return this.§0u§;
      }
      
      public function §!@§(param1:Number) : void
      {
         this.§0u§ = param1;
      }
      
      public function §;e§() : Number
      {
         return this.§%'§;
      }
      
      public function §;!3§(param1:Number) : void
      {
         this.§%'§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::]!0;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§0u§;
         var _loc5_:Number = 2 * _loc3_ * this.§%'§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§,$§ = param1.§&c§ * (_loc5_ + param1.§&c§ * _loc6_);
         this.§,$§ = this.§,$§ != 0 ? Number(1 / this.§,$§) : Number(0);
         this.§&!^§ = param1.§&c§ * _loc6_ * this.§,$§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§@K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§@K§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§2![§;
         _loc12_ = _loc2_.§2s§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§3K§(this.K1);
         this.K.§[w§(this.K2);
         this.K.col1.x += this.§,$§;
         this.K.col2.y += this.§,$§;
         this.K.§ n§(this.§+s§);
         this.§'u§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§>D§.x;
         this.§'u§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§>D§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§1E§.x *= param1.§1!m§;
         this.§1E§.y *= param1.§1!m§;
         _loc2_.§3N§.x += _loc11_ * this.§1E§.x;
         _loc2_.§3N§.y += _loc11_ * this.§1E§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§1E§.y - _loc9_ * this.§1E§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::]!0;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§@K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§@K§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§3N§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§3N§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§+s§;
         _loc4_ = _loc8_ + this.§&!^§ * this.§'u§.x + this.§,$§ * this.§1E§.x;
         _loc5_ = _loc9_ + this.§&!^§ * this.§'u§.y + this.§,$§ * this.§1E§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§1E§.x;
         var _loc13_:Number = this.§1E§.y;
         this.§1E§.x += _loc10_;
         this.§1E§.y += _loc11_;
         var _loc14_:Number = param1.§&c§ * this.§#!T§;
         if(this.§1E§.§]!d§() > _loc14_ * _loc14_)
         {
            this.§1E§.§6!6§(_loc14_ / this.§1E§.Length());
         }
         _loc10_ = this.§1E§.x - _loc12_;
         _loc11_ = this.§1E§.y - _loc13_;
         _loc2_.§3N§.x += _loc2_.§2![§ * _loc10_;
         _loc2_.§3N§.y += _loc2_.§2![§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§2s§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
