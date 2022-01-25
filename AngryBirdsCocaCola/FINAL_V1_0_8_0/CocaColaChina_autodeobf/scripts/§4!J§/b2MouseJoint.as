package §4!J§
{
   import §6V§.b2Mat22;
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §<!L§.b2TimeStep;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §8!V§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §0-§:b2Vec2;
      
      private var §?<§:b2Vec2;
      
      private var §5!M§:b2Vec2;
      
      private var §&!§:b2Mat22;
      
      private var §!6§:b2Vec2;
      
      private var §]!3§:Number;
      
      private var §9!d§:Number;
      
      private var §`a§:Number;
      
      private var §-0§:Number;
      
      private var § !f§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§8!V§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§0-§ = new b2Vec2();
         this.§?<§ = new b2Vec2();
         this.§5!M§ = new b2Vec2();
         this.§&!§ = new b2Mat22();
         this.§!6§ = new b2Vec2();
         super(param1);
         this.§?<§.SetV(param1.target);
         _loc2_ = this.§?<§.x - b2internal::&! .m_xf.position.x;
         var _loc3_:Number = this.§?<§.y - b2internal::&! .m_xf.position.y;
         _loc4_ = b2internal::&! .m_xf.R;
         this.§0-§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§0-§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§]!3§ = param1.§0!I§;
         this.§5!M§.§;@§();
         this.§9!d§ = param1.§-!c§;
         this.§`a§ = param1.§if §;
         this.§-0§ = 0;
         this.§ !f§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§?<§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&! .GetWorldPoint(this.§0-§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!M§.x,param1 * this.§5!M§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §96§() : b2Vec2
      {
         return this.§?<§;
      }
      
      public function §"!>§(param1:b2Vec2) : void
      {
         if(b2internal::&! .IsAwake() == false)
         {
            b2internal::&! .SetAwake(true);
         }
         this.§?<§ = param1;
      }
      
      public function §5T§() : Number
      {
         return this.§]!3§;
      }
      
      public function §[@§(param1:Number) : void
      {
         this.§]!3§ = param1;
      }
      
      public function §#!>§() : Number
      {
         return this.§9!d§;
      }
      
      public function §+1§(param1:Number) : void
      {
         this.§9!d§ = param1;
      }
      
      public function §#!R§() : Number
      {
         return this.§`a§;
      }
      
      public function §!!!§(param1:Number) : void
      {
         this.§`a§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::&! ;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§9!d§;
         var _loc5_:Number = 2 * _loc3_ * this.§`a§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§ !f§ = param1.§?!§ * (_loc5_ + param1.§?!§ * _loc6_);
         this.§ !f§ = this.§ !f§ != 0 ? Number(1 / this.§ !f§) : Number(0);
         this.§-0§ = param1.§?!§ * _loc6_ * this.§ !f§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§0-§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§0-§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§;z§;
         _loc12_ = _loc2_.§?C§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§8!V§.§?!6§(this.K1);
         this.§8!V§.§2l§(this.K2);
         this.§8!V§.col1.x += this.§ !f§;
         this.§8!V§.col2.y += this.§ !f§;
         this.§8!V§.§&!6§(this.§&!§);
         this.§!6§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§?<§.x;
         this.§!6§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§?<§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§5!M§.x *= param1.§7!<§;
         this.§5!M§.y *= param1.§7!<§;
         _loc2_.§1!K§.x += _loc11_ * this.§5!M§.x;
         _loc2_.§1!K§.y += _loc11_ * this.§5!M§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§5!M§.y - _loc9_ * this.§5!M§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::&! ;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§0-§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§0-§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§1!K§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§1!K§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§&!§;
         _loc4_ = _loc8_ + this.§-0§ * this.§!6§.x + this.§ !f§ * this.§5!M§.x;
         _loc5_ = _loc9_ + this.§-0§ * this.§!6§.y + this.§ !f§ * this.§5!M§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§5!M§.x;
         var _loc13_:Number = this.§5!M§.y;
         this.§5!M§.x += _loc10_;
         this.§5!M§.y += _loc11_;
         var _loc14_:Number = param1.§?!§ * this.§]!3§;
         if(this.§5!M§.§!J§() > _loc14_ * _loc14_)
         {
            this.§5!M§.§`!e§(_loc14_ / this.§5!M§.§1s§());
         }
         _loc10_ = this.§5!M§.x - _loc12_;
         _loc11_ = this.§5!M§.y - _loc13_;
         _loc2_.§1!K§.x += _loc2_.§;z§ * _loc10_;
         _loc2_.§1!K§.y += _loc2_.§;z§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§?C§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
