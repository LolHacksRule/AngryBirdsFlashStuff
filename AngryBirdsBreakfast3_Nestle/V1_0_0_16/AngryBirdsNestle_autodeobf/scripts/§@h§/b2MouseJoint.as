package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §,e§:b2Vec2;
      
      private var §]g§:b2Vec2;
      
      private var §6!h§:b2Vec2;
      
      private var §'q§:b2Mat22;
      
      private var §!!,§:b2Vec2;
      
      private var §!]§:Number;
      
      private var §@@§:Number;
      
      private var §`!X§:Number;
      
      private var § "§:Number;
      
      private var §]!7§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§,e§ = new b2Vec2();
         this.§]g§ = new b2Vec2();
         this.§6!h§ = new b2Vec2();
         this.§'q§ = new b2Mat22();
         this.§!!,§ = new b2Vec2();
         super(param1);
         this.§]g§.SetV(param1.target);
         _loc2_ = this.§]g§.x - b2internal::[!n.m_xf.position.x;
         var _loc3_:Number = this.§]g§.y - b2internal::[!n.m_xf.position.y;
         _loc4_ = b2internal::[!n.m_xf.R;
         this.§,e§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§,e§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§!]§ = param1.§6g§;
         this.§6!h§.§>![§();
         this.§@@§ = param1.§<!f§;
         this.§`!X§ = param1.dampingRatio;
         this.§ "§ = 0;
         this.§]!7§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]g§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.§,e§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§6!h§.x,param1 * this.§6!h§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §^!'§() : b2Vec2
      {
         return this.§]g§;
      }
      
      public function §"+§(param1:b2Vec2) : void
      {
         if(b2internal::[!n.IsAwake() == false)
         {
            b2internal::[!n.SetAwake(true);
         }
         this.§]g§ = param1;
      }
      
      public function §,!B§() : Number
      {
         return this.§!]§;
      }
      
      public function §"j§(param1:Number) : void
      {
         this.§!]§ = param1;
      }
      
      public function §@!9§() : Number
      {
         return this.§@@§;
      }
      
      public function §`!d§(param1:Number) : void
      {
         this.§@@§ = param1;
      }
      
      public function §@!#§() : Number
      {
         return this.§`!X§;
      }
      
      public function §@!6§(param1:Number) : void
      {
         this.§`!X§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::[!n;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§@@§;
         var _loc5_:Number = 2 * _loc3_ * this.§`!X§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§]!7§ = param1.§"!n§ * (_loc5_ + param1.§"!n§ * _loc6_);
         this.§]!7§ = this.§]!7§ != 0 ? Number(1 / this.§]!7§) : Number(0);
         this.§ "§ = param1.§"!n§ * _loc6_ * this.§]!7§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§,e§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§,e§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§ c§;
         _loc12_ = _loc2_.§"k§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§8!y§(this.K1);
         this.K.§1E§(this.K2);
         this.K.col1.x += this.§]!7§;
         this.K.col2.y += this.§]!7§;
         this.K.§use§(this.§'q§);
         this.§!!,§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§]g§.x;
         this.§!!,§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§]g§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§6!h§.x *= param1.§`!s§;
         this.§6!h§.y *= param1.§`!s§;
         _loc2_.§;!A§.x += _loc11_ * this.§6!h§.x;
         _loc2_.§;!A§.y += _loc11_ * this.§6!h§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§6!h§.y - _loc9_ * this.§6!h§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::[!n;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§,e§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§,e§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§;!A§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§;!A§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§'q§;
         _loc4_ = _loc8_ + this.§ "§ * this.§!!,§.x + this.§]!7§ * this.§6!h§.x;
         _loc5_ = _loc9_ + this.§ "§ * this.§!!,§.y + this.§]!7§ * this.§6!h§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§6!h§.x;
         var _loc13_:Number = this.§6!h§.y;
         this.§6!h§.x += _loc10_;
         this.§6!h§.y += _loc11_;
         var _loc14_:Number = param1.§"!n§ * this.§!]§;
         if(this.§6!h§.§&l§() > _loc14_ * _loc14_)
         {
            this.§6!h§.§",§(_loc14_ / this.§6!h§.Length());
         }
         _loc10_ = this.§6!h§.x - _loc12_;
         _loc11_ = this.§6!h§.y - _loc13_;
         _loc2_.§;!A§.x += _loc2_.§ c§ * _loc10_;
         _loc2_.§;!A§.y += _loc2_.§ c§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§"k§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
