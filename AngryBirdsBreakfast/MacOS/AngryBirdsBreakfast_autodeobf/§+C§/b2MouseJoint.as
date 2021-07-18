package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §""%§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §[!8§:b2Vec2;
      
      private var §%?§:b2Vec2;
      
      private var §0!F§:b2Vec2;
      
      private var §6!L§:b2Mat22;
      
      private var §#X§:b2Vec2;
      
      private var §5!+§:Number;
      
      private var §3-§:Number;
      
      private var §&9§:Number;
      
      private var §[!f§:Number;
      
      private var §,! §:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§""%§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§[!8§ = new b2Vec2();
         this.§%?§ = new b2Vec2();
         this.§0!F§ = new b2Vec2();
         this.§6!L§ = new b2Mat22();
         this.§#X§ = new b2Vec2();
         super(param1);
         this.§%?§.SetV(param1.target);
         _loc2_ = this.§%?§.x - b2internal::8!F.m_xf.position.x;
         var _loc3_:Number = this.§%?§.y - b2internal::8!F.m_xf.position.y;
         _loc4_ = b2internal::8!F.m_xf.R;
         this.§[!8§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§[!8§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§5!+§ = param1.§&l§;
         this.§0!F§.§5!H§();
         this.§3-§ = param1.§;l§;
         this.§&9§ = param1.§,8§;
         this.§[!f§ = 0;
         this.§,! § = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§%?§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.§[!8§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0!F§.x,param1 * this.§0!F§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'#§() : b2Vec2
      {
         return this.§%?§;
      }
      
      public function §!!;§(param1:b2Vec2) : void
      {
         if(b2internal::8!F.IsAwake() == false)
         {
            b2internal::8!F.SetAwake(true);
         }
         this.§%?§ = param1;
      }
      
      public function §?Q§() : Number
      {
         return this.§5!+§;
      }
      
      public function §&!4§(param1:Number) : void
      {
         this.§5!+§ = param1;
      }
      
      public function §-3§() : Number
      {
         return this.§3-§;
      }
      
      public function §1n§(param1:Number) : void
      {
         this.§3-§ = param1;
      }
      
      public function §3i§() : Number
      {
         return this.§&9§;
      }
      
      public function § R§(param1:Number) : void
      {
         this.§&9§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::8!F;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§3-§;
         var _loc5_:Number = 2 * _loc3_ * this.§&9§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§,! § = param1.§`!9§ * (_loc5_ + param1.§`!9§ * _loc6_);
         this.§,! § = this.§,! § != 0 ? Number(1 / this.§,! §) : Number(0);
         this.§[!f§ = param1.§`!9§ * _loc6_ * this.§,! §;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§[!8§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§[!8§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§4!&§;
         _loc12_ = _loc2_.§`!`§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§""%§.§17§(this.K1);
         this.§""%§.§"M§(this.K2);
         this.§""%§.col1.x += this.§,! §;
         this.§""%§.col2.y += this.§,! §;
         this.§""%§.§,&§(this.§6!L§);
         this.§#X§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§%?§.x;
         this.§#X§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§%?§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§0!F§.x *= param1.§-k§;
         this.§0!F§.y *= param1.§-k§;
         _loc2_.§?!^§.x += _loc11_ * this.§0!F§.x;
         _loc2_.§?!^§.y += _loc11_ * this.§0!F§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§0!F§.y - _loc9_ * this.§0!F§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::8!F;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§[!8§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§[!8§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§?!^§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§?!^§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§6!L§;
         _loc4_ = _loc8_ + this.§[!f§ * this.§#X§.x + this.§,! § * this.§0!F§.x;
         _loc5_ = _loc9_ + this.§[!f§ * this.§#X§.y + this.§,! § * this.§0!F§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§0!F§.x;
         var _loc13_:Number = this.§0!F§.y;
         this.§0!F§.x += _loc10_;
         this.§0!F§.y += _loc11_;
         var _loc14_:Number = param1.§`!9§ * this.§5!+§;
         if(this.§0!F§.§<T§() > _loc14_ * _loc14_)
         {
            this.§0!F§.§>[§(_loc14_ / this.§0!F§.Length());
         }
         _loc10_ = this.§0!F§.x - _loc12_;
         _loc11_ = this.§0!F§.y - _loc13_;
         _loc2_.§?!^§.x += _loc2_.§4!&§ * _loc10_;
         _loc2_.§?!^§.y += _loc2_.§4!&§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§`!`§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
