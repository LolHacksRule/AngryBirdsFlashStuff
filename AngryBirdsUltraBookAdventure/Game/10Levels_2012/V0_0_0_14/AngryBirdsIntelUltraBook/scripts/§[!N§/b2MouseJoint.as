package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §@"§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §>!M§:b2Vec2;
      
      private var §4!!§:b2Vec2;
      
      private var §+!P§:b2Vec2;
      
      private var §#K§:b2Mat22;
      
      private var §9v§:b2Vec2;
      
      private var §[!Y§:Number;
      
      private var §<9§:Number;
      
      private var §=Z§:Number;
      
      private var §^!X§:Number;
      
      private var §&!i§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§@"§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§>!M§ = new b2Vec2();
         this.§4!!§ = new b2Vec2();
         this.§+!P§ = new b2Vec2();
         this.§#K§ = new b2Mat22();
         this.§9v§ = new b2Vec2();
         super(param1);
         this.§4!!§.SetV(param1.target);
         _loc2_ = this.§4!!§.x - b2internal::7!<.m_xf.position.x;
         var _loc3_:Number = this.§4!!§.y - b2internal::7!<.m_xf.position.y;
         _loc4_ = b2internal::7!<.m_xf.R;
         this.§>!M§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§>!M§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§[!Y§ = param1.§4!G§;
         this.§+!P§.§%&§();
         this.§<9§ = param1.§ $§;
         this.§=Z§ = param1.§7B§;
         this.§^!X§ = 0;
         this.§&!i§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§4!!§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.§>!M§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+!P§.x,param1 * this.§+!P§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §=;§() : b2Vec2
      {
         return this.§4!!§;
      }
      
      public function §!P§(param1:b2Vec2) : void
      {
         if(b2internal::7!<.IsAwake() == false)
         {
            b2internal::7!<.SetAwake(true);
         }
         this.§4!!§ = param1;
      }
      
      public function § !#§() : Number
      {
         return this.§[!Y§;
      }
      
      public function §`n§(param1:Number) : void
      {
         this.§[!Y§ = param1;
      }
      
      public function §8F§() : Number
      {
         return this.§<9§;
      }
      
      public function §]!#§(param1:Number) : void
      {
         this.§<9§ = param1;
      }
      
      public function §]J§() : Number
      {
         return this.§=Z§;
      }
      
      public function §7!w§(param1:Number) : void
      {
         this.§=Z§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::7!<;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§<9§;
         var _loc5_:Number = 2 * _loc3_ * this.§=Z§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§&!i§ = param1.§6c§ * (_loc5_ + param1.§6c§ * _loc6_);
         this.§&!i§ = this.§&!i§ != 0 ? Number(1 / this.§&!i§) : Number(0);
         this.§^!X§ = param1.§6c§ * _loc6_ * this.§&!i§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§>!M§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§>!M§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§1!X§;
         _loc12_ = _loc2_.§^!B§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§@"§.§2E§(this.K1);
         this.§@"§.§<O§(this.K2);
         this.§@"§.col1.x += this.§&!i§;
         this.§@"§.col2.y += this.§&!i§;
         this.§@"§.§+!s§(this.§#K§);
         this.§9v§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§4!!§.x;
         this.§9v§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§4!!§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§+!P§.x *= param1.§&t§;
         this.§+!P§.y *= param1.§&t§;
         _loc2_.§9!§.x += _loc11_ * this.§+!P§.x;
         _loc2_.§9!§.y += _loc11_ * this.§+!P§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§+!P§.y - _loc9_ * this.§+!P§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::7!<;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§>!M§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§>!M§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§9!§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§9!§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§#K§;
         _loc4_ = _loc8_ + this.§^!X§ * this.§9v§.x + this.§&!i§ * this.§+!P§.x;
         _loc5_ = _loc9_ + this.§^!X§ * this.§9v§.y + this.§&!i§ * this.§+!P§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§+!P§.x;
         var _loc13_:Number = this.§+!P§.y;
         this.§+!P§.x += _loc10_;
         this.§+!P§.y += _loc11_;
         var _loc14_:Number = param1.§6c§ * this.§[!Y§;
         if(this.§+!P§.§!!v§() > _loc14_ * _loc14_)
         {
            this.§+!P§.§;a§(_loc14_ / this.§+!P§.§-l§());
         }
         _loc10_ = this.§+!P§.x - _loc12_;
         _loc11_ = this.§+!P§.y - _loc13_;
         _loc2_.§9!§.x += _loc2_.§1!X§ * _loc10_;
         _loc2_.§9!§.y += _loc2_.§1!X§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§^!B§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
