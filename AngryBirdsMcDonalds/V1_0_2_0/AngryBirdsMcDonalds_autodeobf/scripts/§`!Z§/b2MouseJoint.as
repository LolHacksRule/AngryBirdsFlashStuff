package §`!Z§
{
   import §"U§.b2Mat22;
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §3!g§.b2TimeStep;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §%! §:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §]F§:b2Vec2;
      
      private var §#E§:b2Vec2;
      
      private var §;!V§:b2Vec2;
      
      private var §9!M§:b2Mat22;
      
      private var §&!?§:b2Vec2;
      
      private var §,!J§:Number;
      
      private var § L§:Number;
      
      private var §1S§:Number;
      
      private var §"7§:Number;
      
      private var §`!F§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§%! § = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§]F§ = new b2Vec2();
         this.§#E§ = new b2Vec2();
         this.§;!V§ = new b2Vec2();
         this.§9!M§ = new b2Mat22();
         this.§&!?§ = new b2Vec2();
         super(param1);
         this.§#E§.SetV(param1.target);
         _loc2_ = this.§#E§.x - b2internal::'!?.m_xf.position.x;
         var _loc3_:Number = this.§#E§.y - b2internal::'!?.m_xf.position.y;
         _loc4_ = b2internal::'!?.m_xf.R;
         this.§]F§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§]F§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§,!J§ = param1.§@P§;
         this.§;!V§.§1!=§();
         this.§ L§ = param1.§2b§;
         this.§1S§ = param1.§5N§;
         this.§"7§ = 0;
         this.§`!F§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§#E§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::'!?.GetWorldPoint(this.§]F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;!V§.x,param1 * this.§;!V§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §?!g§() : b2Vec2
      {
         return this.§#E§;
      }
      
      public function §@!J§(param1:b2Vec2) : void
      {
         if(b2internal::'!?.IsAwake() == false)
         {
            b2internal::'!?.SetAwake(true);
         }
         this.§#E§ = param1;
      }
      
      public function §'c§() : Number
      {
         return this.§,!J§;
      }
      
      public function §8C§(param1:Number) : void
      {
         this.§,!J§ = param1;
      }
      
      public function §=G§() : Number
      {
         return this.§ L§;
      }
      
      public function §-5§(param1:Number) : void
      {
         this.§ L§ = param1;
      }
      
      public function §<!"§() : Number
      {
         return this.§1S§;
      }
      
      public function static(param1:Number) : void
      {
         this.§1S§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::'!?;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§ L§;
         var _loc5_:Number = 2 * _loc3_ * this.§1S§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§`!F§ = param1.§+n§ * (_loc5_ + param1.§+n§ * _loc6_);
         this.§`!F§ = this.§`!F§ != 0 ? Number(1 / this.§`!F§) : Number(0);
         this.§"7§ = param1.§+n§ * _loc6_ * this.§`!F§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§]F§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§]F§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§>w§;
         _loc12_ = _loc2_.§#R§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§%! §.§-!7§(this.K1);
         this.§%! §.§1B§(this.K2);
         this.§%! §.col1.x += this.§`!F§;
         this.§%! §.col2.y += this.§`!F§;
         this.§%! §.§=b§(this.§9!M§);
         this.§&!?§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§#E§.x;
         this.§&!?§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§#E§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§;!V§.x *= param1.§2!=§;
         this.§;!V§.y *= param1.§2!=§;
         _loc2_.§'R§.x += _loc11_ * this.§;!V§.x;
         _loc2_.§'R§.y += _loc11_ * this.§;!V§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§;!V§.y - _loc9_ * this.§;!V§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::'!?;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§]F§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§]F§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§'R§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§'R§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§9!M§;
         _loc4_ = _loc8_ + this.§"7§ * this.§&!?§.x + this.§`!F§ * this.§;!V§.x;
         _loc5_ = _loc9_ + this.§"7§ * this.§&!?§.y + this.§`!F§ * this.§;!V§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§;!V§.x;
         var _loc13_:Number = this.§;!V§.y;
         this.§;!V§.x += _loc10_;
         this.§;!V§.y += _loc11_;
         var _loc14_:Number = param1.§+n§ * this.§,!J§;
         if(this.§;!V§.§6!5§() > _loc14_ * _loc14_)
         {
            this.§;!V§.§7!E§(_loc14_ / this.§;!V§.§+W§());
         }
         _loc10_ = this.§;!V§.x - _loc12_;
         _loc11_ = this.§;!V§.y - _loc13_;
         _loc2_.§'R§.x += _loc2_.§>w§ * _loc10_;
         _loc2_.§'R§.y += _loc2_.§>w§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§#R§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
