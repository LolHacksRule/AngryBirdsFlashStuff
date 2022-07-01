package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2TimeStep;
   import §?"'§.b2Mat22;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §0!P§:b2Vec2;
      
      private var §&!&§:b2Vec2;
      
      private var §9!z§:b2Vec2;
      
      private var §<Q§:b2Mat22;
      
      private var §[@§:b2Vec2;
      
      private var §5!I§:Number;
      
      private var §@s§:Number;
      
      private var §0?§:Number;
      
      private var §5s§:Number;
      
      private var §'!S§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§0!P§ = new b2Vec2();
         this.§&!&§ = new b2Vec2();
         this.§9!z§ = new b2Vec2();
         this.§<Q§ = new b2Mat22();
         this.§[@§ = new b2Vec2();
         super(param1);
         this.§&!&§.SetV(param1.target);
         _loc2_ = this.§&!&§.x - b2internal::;Q.m_xf.position.x;
         var _loc3_:Number = this.§&!&§.y - b2internal::;Q.m_xf.position.y;
         _loc4_ = b2internal::;Q.m_xf.R;
         this.§0!P§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§0!P§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§5!I§ = param1.§^!Q§;
         this.§9!z§.§6!c§();
         this.§@s§ = param1.§;K§;
         this.§0?§ = param1.dampingRatio;
         this.§5s§ = 0;
         this.§'!S§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§&!&§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;Q.GetWorldPoint(this.§0!P§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9!z§.x,param1 * this.§9!z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §6!>§() : b2Vec2
      {
         return this.§&!&§;
      }
      
      public function §'=§(param1:b2Vec2) : void
      {
         if(b2internal::;Q.IsAwake() == false)
         {
            b2internal::;Q.SetAwake(true);
         }
         this.§&!&§ = param1;
      }
      
      public function §]§() : Number
      {
         return this.§5!I§;
      }
      
      public function §]+§(param1:Number) : void
      {
         this.§5!I§ = param1;
      }
      
      public function §[r§() : Number
      {
         return this.§@s§;
      }
      
      public function §9]§(param1:Number) : void
      {
         this.§@s§ = param1;
      }
      
      public function §!L§() : Number
      {
         return this.§0?§;
      }
      
      public function §3!D§(param1:Number) : void
      {
         this.§0?§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::;Q;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§@s§;
         var _loc5_:Number = 2 * _loc3_ * this.§0?§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§'!S§ = param1.§>!`§ * (_loc5_ + param1.§>!`§ * _loc6_);
         this.§'!S§ = this.§'!S§ != 0 ? Number(1 / this.§'!S§) : Number(0);
         this.§5s§ = param1.§>!`§ * _loc6_ * this.§'!S§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§0!P§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§0!P§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§;!R§;
         _loc12_ = _loc2_.§1!k§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§7!O§(this.K1);
         this.K.§@!O§(this.K2);
         this.K.col1.x += this.§'!S§;
         this.K.col2.y += this.§'!S§;
         this.K.§8!-§(this.§<Q§);
         this.§[@§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§&!&§.x;
         this.§[@§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§&!&§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§9!z§.x *= param1.§6!'§;
         this.§9!z§.y *= param1.§6!'§;
         _loc2_.§ Y§.x += _loc11_ * this.§9!z§.x;
         _loc2_.§ Y§.y += _loc11_ * this.§9!z§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§9!z§.y - _loc9_ * this.§9!z§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::;Q;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§0!P§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§0!P§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§ Y§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§ Y§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§<Q§;
         _loc4_ = _loc8_ + this.§5s§ * this.§[@§.x + this.§'!S§ * this.§9!z§.x;
         _loc5_ = _loc9_ + this.§5s§ * this.§[@§.y + this.§'!S§ * this.§9!z§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§9!z§.x;
         var _loc13_:Number = this.§9!z§.y;
         this.§9!z§.x += _loc10_;
         this.§9!z§.y += _loc11_;
         var _loc14_:Number = param1.§>!`§ * this.§5!I§;
         if(this.§9!z§.§!!+§() > _loc14_ * _loc14_)
         {
            this.§9!z§.§'9§(_loc14_ / this.§9!z§.Length());
         }
         _loc10_ = this.§9!z§.x - _loc12_;
         _loc11_ = this.§9!z§.y - _loc13_;
         _loc2_.§ Y§.x += _loc2_.§;!R§ * _loc10_;
         _loc2_.§ Y§.y += _loc2_.§;!R§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§1!k§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
