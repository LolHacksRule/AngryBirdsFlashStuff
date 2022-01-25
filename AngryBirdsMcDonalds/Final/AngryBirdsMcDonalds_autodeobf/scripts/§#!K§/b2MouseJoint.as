package §#!K§
{
   import §-0§.b2Body;
   import §-0§.b2TimeStep;
   import §@g§.b2internal;
   import §^!%§.b2Mat22;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §"3§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §&K§:b2Vec2;
      
      private var §2%§:b2Vec2;
      
      private var §+!=§:b2Vec2;
      
      private var §-!b§:b2Mat22;
      
      private var §^6§:b2Vec2;
      
      private var §8!W§:Number;
      
      private var §,[§:Number;
      
      private var §6d§:Number;
      
      private var §@!i§:Number;
      
      private var §>!&§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§"3§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§&K§ = new b2Vec2();
         this.§2%§ = new b2Vec2();
         this.§+!=§ = new b2Vec2();
         this.§-!b§ = new b2Mat22();
         this.§^6§ = new b2Vec2();
         super(param1);
         this.§2%§.SetV(param1.target);
         _loc2_ = this.§2%§.x - b2internal::,!7.m_xf.position.x;
         var _loc3_:Number = this.§2%§.y - b2internal::,!7.m_xf.position.y;
         _loc4_ = b2internal::,!7.m_xf.R;
         this.§&K§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§&K§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§8!W§ = param1.§!?§;
         this.§+!=§.§4[§();
         this.§,[§ = param1.§^!H§;
         this.§6d§ = param1.§"! §;
         this.§@!i§ = 0;
         this.§>!&§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§2%§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!7.GetWorldPoint(this.§&K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+!=§.x,param1 * this.§+!=§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!!S§() : b2Vec2
      {
         return this.§2%§;
      }
      
      public function §&!G§(param1:b2Vec2) : void
      {
         if(b2internal::,!7.IsAwake() == false)
         {
            b2internal::,!7.SetAwake(true);
         }
         this.§2%§ = param1;
      }
      
      public function §8D§() : Number
      {
         return this.§8!W§;
      }
      
      public function §?!j§(param1:Number) : void
      {
         this.§8!W§ = param1;
      }
      
      public function §&?§() : Number
      {
         return this.§,[§;
      }
      
      public function §3,§(param1:Number) : void
      {
         this.§,[§ = param1;
      }
      
      public function §>!2§() : Number
      {
         return this.§6d§;
      }
      
      public function §3Q§(param1:Number) : void
      {
         this.§6d§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::,!7;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§,[§;
         var _loc5_:Number = 2 * _loc3_ * this.§6d§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§>!&§ = param1.§+u§ * (_loc5_ + param1.§+u§ * _loc6_);
         this.§>!&§ = this.§>!&§ != 0 ? Number(1 / this.§>!&§) : Number(0);
         this.§@!i§ = param1.§+u§ * _loc6_ * this.§>!&§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§&K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§&K§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§!=§;
         _loc12_ = _loc2_.§4!i§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§"3§.§;4§(this.K1);
         this.§"3§.§]_§(this.K2);
         this.§"3§.col1.x += this.§>!&§;
         this.§"3§.col2.y += this.§>!&§;
         this.§"3§.§3v§(this.§-!b§);
         this.§^6§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§2%§.x;
         this.§^6§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§2%§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§+!=§.x *= param1.§,!e§;
         this.§+!=§.y *= param1.§,!e§;
         _loc2_.§'!f§.x += _loc11_ * this.§+!=§.x;
         _loc2_.§'!f§.y += _loc11_ * this.§+!=§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§+!=§.y - _loc9_ * this.§+!=§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::,!7;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§&K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§&K§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§'!f§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§'!f§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§-!b§;
         _loc4_ = _loc8_ + this.§@!i§ * this.§^6§.x + this.§>!&§ * this.§+!=§.x;
         _loc5_ = _loc9_ + this.§@!i§ * this.§^6§.y + this.§>!&§ * this.§+!=§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§+!=§.x;
         var _loc13_:Number = this.§+!=§.y;
         this.§+!=§.x += _loc10_;
         this.§+!=§.y += _loc11_;
         var _loc14_:Number = param1.§+u§ * this.§8!W§;
         if(this.§+!=§.§'P§() > _loc14_ * _loc14_)
         {
            this.§+!=§.§`!-§(_loc14_ / this.§+!=§.§0D§());
         }
         _loc10_ = this.§+!=§.x - _loc12_;
         _loc11_ = this.§+!=§.y - _loc13_;
         _loc2_.§'!f§.x += _loc2_.§!=§ * _loc10_;
         _loc2_.§'!f§.y += _loc2_.§!=§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§4!i§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
