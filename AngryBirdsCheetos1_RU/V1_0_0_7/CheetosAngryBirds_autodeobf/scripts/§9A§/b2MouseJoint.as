package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Mat22;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   import §?0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §3?§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §83§:b2Vec2;
      
      private var §>!,§:b2Vec2;
      
      private var §&S§:b2Vec2;
      
      private var §"n§:b2Mat22;
      
      private var §0!0§:b2Vec2;
      
      private var §!E§:Number;
      
      private var §'"§:Number;
      
      private var §]C§:Number;
      
      private var §[6§:Number;
      
      private var §!!L§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§3?§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§83§ = new b2Vec2();
         this.§>!,§ = new b2Vec2();
         this.§&S§ = new b2Vec2();
         this.§"n§ = new b2Mat22();
         this.§0!0§ = new b2Vec2();
         super(param1);
         this.§>!,§.SetV(param1.target);
         _loc2_ = this.§>!,§.x - b2internal::-f.m_xf.position.x;
         var _loc3_:Number = this.§>!,§.y - b2internal::-f.m_xf.position.y;
         _loc4_ = b2internal::-f.m_xf.R;
         this.§83§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§83§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§!E§ = param1.§%E§;
         this.§&S§.§<!5§();
         this.§'"§ = param1.§60§;
         this.§]C§ = param1.§>F§;
         this.§[6§ = 0;
         this.§!!L§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§>!,§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-f.GetWorldPoint(this.§83§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§&S§.x,param1 * this.§&S§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,"§() : b2Vec2
      {
         return this.§>!,§;
      }
      
      public function §5T§(param1:b2Vec2) : void
      {
         if(b2internal::-f.IsAwake() == false)
         {
            b2internal::-f.SetAwake(true);
         }
         this.§>!,§ = param1;
      }
      
      public function §&!N§() : Number
      {
         return this.§!E§;
      }
      
      public function §?!K§(param1:Number) : void
      {
         this.§!E§ = param1;
      }
      
      public function §<!H§() : Number
      {
         return this.§'"§;
      }
      
      public function §&!-§(param1:Number) : void
      {
         this.§'"§ = param1;
      }
      
      public function §4!3§() : Number
      {
         return this.§]C§;
      }
      
      public function §<<§(param1:Number) : void
      {
         this.§]C§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::-f;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§'"§;
         var _loc5_:Number = 2 * _loc3_ * this.§]C§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§!!L§ = param1.§+!I§ * (_loc5_ + param1.§+!I§ * _loc6_);
         this.§!!L§ = this.§!!L§ != 0 ? Number(1 / this.§!!L§) : Number(0);
         this.§[6§ = param1.§+!I§ * _loc6_ * this.§!!L§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§83§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§83§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§-q§;
         _loc12_ = _loc2_.§'a§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§3?§.§-z§(this.K1);
         this.§3?§.§7e§(this.K2);
         this.§3?§.col1.x += this.§!!L§;
         this.§3?§.col2.y += this.§!!L§;
         this.§3?§.§2!W§(this.§"n§);
         this.§0!0§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§>!,§.x;
         this.§0!0§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§>!,§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§&S§.x *= param1.§1a§;
         this.§&S§.y *= param1.§1a§;
         _loc2_.§2!G§.x += _loc11_ * this.§&S§.x;
         _loc2_.§2!G§.y += _loc11_ * this.§&S§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§&S§.y - _loc9_ * this.§&S§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::-f;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§83§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§83§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§2!G§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§2!G§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§"n§;
         _loc4_ = _loc8_ + this.§[6§ * this.§0!0§.x + this.§!!L§ * this.§&S§.x;
         _loc5_ = _loc9_ + this.§[6§ * this.§0!0§.y + this.§!!L§ * this.§&S§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§&S§.x;
         var _loc13_:Number = this.§&S§.y;
         this.§&S§.x += _loc10_;
         this.§&S§.y += _loc11_;
         var _loc14_:Number = param1.§+!I§ * this.§!E§;
         if(this.§&S§.§@!F§() > _loc14_ * _loc14_)
         {
            this.§&S§.§^B§(_loc14_ / this.§&S§.§=!J§());
         }
         _loc10_ = this.§&S§.x - _loc12_;
         _loc11_ = this.§&S§.y - _loc13_;
         _loc2_.§2!G§.x += _loc2_.§-q§ * _loc10_;
         _loc2_.§2!G§.y += _loc2_.§-q§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§'a§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
