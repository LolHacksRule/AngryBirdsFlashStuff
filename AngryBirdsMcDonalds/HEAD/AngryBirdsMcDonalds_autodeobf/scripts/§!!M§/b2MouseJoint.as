package §!!M§
{
   import §+S§.b2Mat22;
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §8T§.b2TimeStep;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §90§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §@!5§:b2Vec2;
      
      private var §0!_§:b2Vec2;
      
      private var §@!<§:b2Vec2;
      
      private var §2D§:b2Mat22;
      
      private var §?!p§:b2Vec2;
      
      private var §0!f§:Number;
      
      private var §?P§:Number;
      
      private var §>p§:Number;
      
      private var §<g§:Number;
      
      private var §;y§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§90§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§@!5§ = new b2Vec2();
         this.§0!_§ = new b2Vec2();
         this.§@!<§ = new b2Vec2();
         this.§2D§ = new b2Mat22();
         this.§?!p§ = new b2Vec2();
         super(param1);
         this.§0!_§.SetV(param1.target);
         _loc2_ = this.§0!_§.x - b2internal::^!l.m_xf.position.x;
         var _loc3_:Number = this.§0!_§.y - b2internal::^!l.m_xf.position.y;
         _loc4_ = b2internal::^!l.m_xf.R;
         this.§@!5§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§@!5§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§0!f§ = param1.§0!Y§;
         this.§@!<§.§%^§();
         this.§?P§ = param1.§"j§;
         this.§>p§ = param1.§%6§;
         this.§<g§ = 0;
         this.§;y§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§0!_§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^!l.GetWorldPoint(this.§@!5§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§@!<§.x,param1 * this.§@!<§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §5!m§() : b2Vec2
      {
         return this.§0!_§;
      }
      
      public function §1g§(param1:b2Vec2) : void
      {
         if(b2internal::^!l.IsAwake() == false)
         {
            b2internal::^!l.SetAwake(true);
         }
         this.§0!_§ = param1;
      }
      
      public function §1!+§() : Number
      {
         return this.§0!f§;
      }
      
      public function §%o§(param1:Number) : void
      {
         this.§0!f§ = param1;
      }
      
      public function §'!g§() : Number
      {
         return this.§?P§;
      }
      
      public function §#j§(param1:Number) : void
      {
         this.§?P§ = param1;
      }
      
      public function §8!#§() : Number
      {
         return this.§>p§;
      }
      
      public function §^I§(param1:Number) : void
      {
         this.§>p§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::^!l;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§?P§;
         var _loc5_:Number = 2 * _loc3_ * this.§>p§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§;y§ = param1.§9[§ * (_loc5_ + param1.§9[§ * _loc6_);
         this.§;y§ = this.§;y§ != 0 ? Number(1 / this.§;y§) : Number(0);
         this.§<g§ = param1.§9[§ * _loc6_ * this.§;y§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§@!5§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§@!5§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§;!m§;
         _loc12_ = _loc2_.§]q§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§90§.§&e§(this.K1);
         this.§90§.§3!k§(this.K2);
         this.§90§.col1.x += this.§;y§;
         this.§90§.col2.y += this.§;y§;
         this.§90§.§^!^§(this.§2D§);
         this.§?!p§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§0!_§.x;
         this.§?!p§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§0!_§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§@!<§.x *= param1.§4!a§;
         this.§@!<§.y *= param1.§4!a§;
         _loc2_.§switch§.x += _loc11_ * this.§@!<§.x;
         _loc2_.§switch§.y += _loc11_ * this.§@!<§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§@!<§.y - _loc9_ * this.§@!<§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::^!l;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§@!5§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§@!5§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§switch§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§switch§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§2D§;
         _loc4_ = _loc8_ + this.§<g§ * this.§?!p§.x + this.§;y§ * this.§@!<§.x;
         _loc5_ = _loc9_ + this.§<g§ * this.§?!p§.y + this.§;y§ * this.§@!<§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§@!<§.x;
         var _loc13_:Number = this.§@!<§.y;
         this.§@!<§.x += _loc10_;
         this.§@!<§.y += _loc11_;
         var _loc14_:Number = param1.§9[§ * this.§0!f§;
         if(this.§@!<§.§4!>§() > _loc14_ * _loc14_)
         {
            this.§@!<§.§71§(_loc14_ / this.§@!<§.§case§());
         }
         _loc10_ = this.§@!<§.x - _loc12_;
         _loc11_ = this.§@!<§.y - _loc13_;
         _loc2_.§switch§.x += _loc2_.§;!m§ * _loc10_;
         _loc2_.§switch§.y += _loc2_.§;!m§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§]q§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
