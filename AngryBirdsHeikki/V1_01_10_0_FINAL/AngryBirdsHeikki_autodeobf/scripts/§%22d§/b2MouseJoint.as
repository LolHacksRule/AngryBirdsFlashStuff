package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §=6§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §3!K§:b2Vec2;
      
      private var §!v§:b2Vec2;
      
      private var §12§:b2Vec2;
      
      private var §`!6§:b2Mat22;
      
      private var §@c§:b2Vec2;
      
      private var §-+§:Number;
      
      private var §26§:Number;
      
      private var §1b§:Number;
      
      private var §1!>§:Number;
      
      private var §-!'§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§=6§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§3!K§ = new b2Vec2();
         this.§!v§ = new b2Vec2();
         this.§12§ = new b2Vec2();
         this.§`!6§ = new b2Mat22();
         this.§@c§ = new b2Vec2();
         super(param1);
         this.§!v§.SetV(param1.target);
         _loc2_ = this.§!v§.x - b2internal::2!`.m_xf.position.x;
         var _loc3_:Number = this.§!v§.y - b2internal::2!`.m_xf.position.y;
         _loc4_ = b2internal::2!`.m_xf.R;
         this.§3!K§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§3!K§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§-+§ = param1.§ N§;
         this.§12§.§^!,§();
         this.§26§ = param1.§&!a§;
         this.§1b§ = param1.§0J§;
         this.§1!>§ = 0;
         this.§-!'§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§!v§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.§3!K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§12§.x,param1 * this.§12§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §0x§() : b2Vec2
      {
         return this.§!v§;
      }
      
      public function §#!c§(param1:b2Vec2) : void
      {
         if(b2internal::2!`.IsAwake() == false)
         {
            b2internal::2!`.SetAwake(true);
         }
         this.§!v§ = param1;
      }
      
      public function §2§() : Number
      {
         return this.§-+§;
      }
      
      public function §2!>§(param1:Number) : void
      {
         this.§-+§ = param1;
      }
      
      public function §[!a§() : Number
      {
         return this.§26§;
      }
      
      public function §+>§(param1:Number) : void
      {
         this.§26§ = param1;
      }
      
      public function §">§() : Number
      {
         return this.§1b§;
      }
      
      public function §3R§(param1:Number) : void
      {
         this.§1b§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::2!`;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§26§;
         var _loc5_:Number = 2 * _loc3_ * this.§1b§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§-!'§ = param1.§?u§ * (_loc5_ + param1.§?u§ * _loc6_);
         this.§-!'§ = this.§-!'§ != 0 ? Number(1 / this.§-!'§) : Number(0);
         this.§1!>§ = param1.§?u§ * _loc6_ * this.§-!'§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§3!K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§3!K§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§",§;
         _loc12_ = _loc2_.§-2§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§=6§.§&o§(this.K1);
         this.§=6§.§3k§(this.K2);
         this.§=6§.col1.x += this.§-!'§;
         this.§=6§.col2.y += this.§-!'§;
         this.§=6§.§>b§(this.§`!6§);
         this.§@c§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§!v§.x;
         this.§@c§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§!v§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§12§.x *= param1.§const§;
         this.§12§.y *= param1.§const§;
         _loc2_.§@S§.x += _loc11_ * this.§12§.x;
         _loc2_.§@S§.y += _loc11_ * this.§12§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§12§.y - _loc9_ * this.§12§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::2!`;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§3!K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§3!K§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§@S§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§@S§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§`!6§;
         _loc4_ = _loc8_ + this.§1!>§ * this.§@c§.x + this.§-!'§ * this.§12§.x;
         _loc5_ = _loc9_ + this.§1!>§ * this.§@c§.y + this.§-!'§ * this.§12§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§12§.x;
         var _loc13_:Number = this.§12§.y;
         this.§12§.x += _loc10_;
         this.§12§.y += _loc11_;
         var _loc14_:Number = param1.§?u§ * this.§-+§;
         if(this.§12§.§,H§() > _loc14_ * _loc14_)
         {
            this.§12§.§0O§(_loc14_ / this.§12§.§--§());
         }
         _loc10_ = this.§12§.x - _loc12_;
         _loc11_ = this.§12§.y - _loc13_;
         _loc2_.§@S§.x += _loc2_.§",§ * _loc10_;
         _loc2_.§@S§.y += _loc2_.§",§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§-2§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
