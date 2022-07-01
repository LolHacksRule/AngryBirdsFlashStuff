package § q§
{
   import §+L§.b2Mat22;
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §7z§.b2TimeStep;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §8B§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §5!f§:b2Vec2;
      
      private var §#%§:b2Vec2;
      
      private var §#"4§:b2Vec2;
      
      private var §<"8§:b2Mat22;
      
      private var §![§:b2Vec2;
      
      private var §2'§:Number;
      
      private var §7"9§:Number;
      
      private var §&!J§:Number;
      
      private var §>"5§:Number;
      
      private var §7!W§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§8B§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§5!f§ = new b2Vec2();
         this.§#%§ = new b2Vec2();
         this.§#"4§ = new b2Vec2();
         this.§<"8§ = new b2Mat22();
         this.§![§ = new b2Vec2();
         super(param1);
         this.§#%§.SetV(param1.target);
         _loc2_ = this.§#%§.x - b2internal::-?.m_xf.position.x;
         var _loc3_:Number = this.§#%§.y - b2internal::-?.m_xf.position.y;
         _loc4_ = b2internal::-?.m_xf.R;
         this.§5!f§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§5!f§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§2'§ = param1.§2D§;
         this.§#"4§.§>!!§();
         this.§7"9§ = param1.§>!J§;
         this.§&!J§ = param1.§5!y§;
         this.§>"5§ = 0;
         this.§7!W§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§#%§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-?.GetWorldPoint(this.§5!f§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§#"4§.x,param1 * this.§#"4§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §[9§() : b2Vec2
      {
         return this.§#%§;
      }
      
      public function §><§(param1:b2Vec2) : void
      {
         if(b2internal::-?.IsAwake() == false)
         {
            b2internal::-?.SetAwake(true);
         }
         this.§#%§ = param1;
      }
      
      public function §[!w§() : Number
      {
         return this.§2'§;
      }
      
      public function §]e§(param1:Number) : void
      {
         this.§2'§ = param1;
      }
      
      public function §4e§() : Number
      {
         return this.§7"9§;
      }
      
      public function §="0§(param1:Number) : void
      {
         this.§7"9§ = param1;
      }
      
      public function §0!4§() : Number
      {
         return this.§&!J§;
      }
      
      public function §;f§(param1:Number) : void
      {
         this.§&!J§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::-?;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§7"9§;
         var _loc5_:Number = 2 * _loc3_ * this.§&!J§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§7!W§ = param1.§'!R§ * (_loc5_ + param1.§'!R§ * _loc6_);
         this.§7!W§ = this.§7!W§ != 0 ? Number(1 / this.§7!W§) : Number(0);
         this.§>"5§ = param1.§'!R§ * _loc6_ * this.§7!W§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§5!f§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§5!f§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§4`§;
         _loc12_ = _loc2_.§^J§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§8B§.§%?§(this.K1);
         this.§8B§.§-d§(this.K2);
         this.§8B§.col1.x += this.§7!W§;
         this.§8B§.col2.y += this.§7!W§;
         this.§8B§.§,!;§(this.§<"8§);
         this.§![§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§#%§.x;
         this.§![§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§#%§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§#"4§.x *= param1.§7"'§;
         this.§#"4§.y *= param1.§7"'§;
         _loc2_.§#"3§.x += _loc11_ * this.§#"4§.x;
         _loc2_.§#"3§.y += _loc11_ * this.§#"4§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§#"4§.y - _loc9_ * this.§#"4§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::-?;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§5!f§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§5!f§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§#"3§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§#"3§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§<"8§;
         _loc4_ = _loc8_ + this.§>"5§ * this.§![§.x + this.§7!W§ * this.§#"4§.x;
         _loc5_ = _loc9_ + this.§>"5§ * this.§![§.y + this.§7!W§ * this.§#"4§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§#"4§.x;
         var _loc13_:Number = this.§#"4§.y;
         this.§#"4§.x += _loc10_;
         this.§#"4§.y += _loc11_;
         var _loc14_:Number = param1.§'!R§ * this.§2'§;
         if(this.§#"4§.§7F§() > _loc14_ * _loc14_)
         {
            this.§#"4§.§9"!§(_loc14_ / this.§#"4§.§9!5§());
         }
         _loc10_ = this.§#"4§.x - _loc12_;
         _loc11_ = this.§#"4§.y - _loc13_;
         _loc2_.§#"3§.x += _loc2_.§4`§ * _loc10_;
         _loc2_.§#"3§.y += _loc2_.§4`§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§^J§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
