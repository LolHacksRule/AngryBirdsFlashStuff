package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §-!5§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §1E§:b2Vec2;
      
      private var §+L§:b2Vec2;
      
      private var §==§:b2Vec2;
      
      private var §>§:b2Mat22;
      
      private var §5§:b2Vec2;
      
      private var §"! §:Number;
      
      private var § A§:Number;
      
      private var §"&§:Number;
      
      private var §76§:Number;
      
      private var §]!F§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§-!5§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§1E§ = new b2Vec2();
         this.§+L§ = new b2Vec2();
         this.§==§ = new b2Vec2();
         this.§>§ = new b2Mat22();
         this.§5§ = new b2Vec2();
         super(param1);
         this.§+L§.SetV(param1.target);
         _loc2_ = this.§+L§.x - b2internal::3D.m_xf.position.x;
         var _loc3_:Number = this.§+L§.y - b2internal::3D.m_xf.position.y;
         _loc4_ = b2internal::3D.m_xf.R;
         this.§1E§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§1E§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§"! § = param1.§4d§;
         this.§==§.§7_§();
         this.§ A§ = param1.§7!=§;
         this.§"&§ = param1.§'m§;
         this.§76§ = 0;
         this.§]!F§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§+L§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.§1E§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§==§.x,param1 * this.§==§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%!+§() : b2Vec2
      {
         return this.§+L§;
      }
      
      public function §1,§(param1:b2Vec2) : void
      {
         if(b2internal::3D.IsAwake() == false)
         {
            b2internal::3D.SetAwake(true);
         }
         this.§+L§ = param1;
      }
      
      public function §#!T§() : Number
      {
         return this.§"! §;
      }
      
      public function §3K§(param1:Number) : void
      {
         this.§"! § = param1;
      }
      
      public function §?1§() : Number
      {
         return this.§ A§;
      }
      
      public function §`!=§(param1:Number) : void
      {
         this.§ A§ = param1;
      }
      
      public function §9o§() : Number
      {
         return this.§"&§;
      }
      
      public function §61§(param1:Number) : void
      {
         this.§"&§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::3D;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§ A§;
         var _loc5_:Number = 2 * _loc3_ * this.§"&§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§]!F§ = param1.§1_§ * (_loc5_ + param1.§1_§ * _loc6_);
         this.§]!F§ = this.§]!F§ != 0 ? Number(1 / this.§]!F§) : Number(0);
         this.§76§ = param1.§1_§ * _loc6_ * this.§]!F§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§1E§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§1E§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§+5§;
         _loc12_ = _loc2_.§%L§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§-!5§.§^!X§(this.K1);
         this.§-!5§.§8`§(this.K2);
         this.§-!5§.col1.x += this.§]!F§;
         this.§-!5§.col2.y += this.§]!F§;
         this.§-!5§.§<'§(this.§>§);
         this.§5§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§+L§.x;
         this.§5§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§+L§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§==§.x *= param1.§,K§;
         this.§==§.y *= param1.§,K§;
         _loc2_.§2!@§.x += _loc11_ * this.§==§.x;
         _loc2_.§2!@§.y += _loc11_ * this.§==§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§==§.y - _loc9_ * this.§==§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::3D;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§1E§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§1E§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§2!@§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§2!@§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§>§;
         _loc4_ = _loc8_ + this.§76§ * this.§5§.x + this.§]!F§ * this.§==§.x;
         _loc5_ = _loc9_ + this.§76§ * this.§5§.y + this.§]!F§ * this.§==§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§==§.x;
         var _loc13_:Number = this.§==§.y;
         this.§==§.x += _loc10_;
         this.§==§.y += _loc11_;
         var _loc14_:Number = param1.§1_§ * this.§"! §;
         if(this.§==§.§0]§() > _loc14_ * _loc14_)
         {
            this.§==§.§[!T§(_loc14_ / this.§==§.§2P§());
         }
         _loc10_ = this.§==§.x - _loc12_;
         _loc11_ = this.§==§.y - _loc13_;
         _loc2_.§2!@§.x += _loc2_.§+5§ * _loc10_;
         _loc2_.§2!@§.y += _loc2_.§+5§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§%L§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
