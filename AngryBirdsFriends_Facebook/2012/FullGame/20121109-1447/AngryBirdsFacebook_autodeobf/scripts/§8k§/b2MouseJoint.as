package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §+!n§:b2Vec2;
      
      private var §8!V§:b2Vec2;
      
      private var §0!y§:b2Vec2;
      
      private var §+J§:b2Mat22;
      
      private var §"9§:b2Vec2;
      
      private var §6!_§:Number;
      
      private var §7"E§:Number;
      
      private var §,c§:Number;
      
      private var §!c§:Number;
      
      private var §[E§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§+!n§ = new b2Vec2();
         this.§8!V§ = new b2Vec2();
         this.§0!y§ = new b2Vec2();
         this.§+J§ = new b2Mat22();
         this.§"9§ = new b2Vec2();
         super(param1);
         this.§8!V§.SetV(param1.target);
         _loc2_ = this.§8!V§.x - b2internal::4"0.m_xf.position.x;
         var _loc3_:Number = this.§8!V§.y - b2internal::4"0.m_xf.position.y;
         _loc4_ = b2internal::4"0.m_xf.R;
         this.§+!n§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§+!n§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§6!_§ = param1.§"#§;
         this.§0!y§.§;v§();
         this.§7"E§ = param1.§>"9§;
         this.§,c§ = param1.§""2§;
         this.§!c§ = 0;
         this.§[E§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§8!V§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.§+!n§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0!y§.x,param1 * this.§0!y§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'z§() : b2Vec2
      {
         return this.§8!V§;
      }
      
      public function §2y§(param1:b2Vec2) : void
      {
         if(b2internal::4"0.IsAwake() == false)
         {
            b2internal::4"0.SetAwake(true);
         }
         this.§8!V§ = param1;
      }
      
      public function §9"@§() : Number
      {
         return this.§6!_§;
      }
      
      public function §%#§(param1:Number) : void
      {
         this.§6!_§ = param1;
      }
      
      public function §[[§() : Number
      {
         return this.§7"E§;
      }
      
      public function §<!D§(param1:Number) : void
      {
         this.§7"E§ = param1;
      }
      
      public function §^",§() : Number
      {
         return this.§,c§;
      }
      
      public function §!^§(param1:Number) : void
      {
         this.§,c§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::4"0;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§7"E§;
         var _loc5_:Number = 2 * _loc3_ * this.§,c§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§[E§ = param1.§4"?§ * (_loc5_ + param1.§4"?§ * _loc6_);
         this.§[E§ = this.§[E§ != 0 ? Number(1 / this.§[E§) : Number(0);
         this.§!c§ = param1.§4"?§ * _loc6_ * this.§[E§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§+!n§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§+!n§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§["A§;
         _loc12_ = _loc2_.§"g§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§=!"§(this.K1);
         this.K.§4!h§(this.K2);
         this.K.col1.x += this.§[E§;
         this.K.col2.y += this.§[E§;
         this.K.§`"7§(this.§+J§);
         this.§"9§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§8!V§.x;
         this.§"9§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§8!V§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§0!y§.x *= param1.§ ,§;
         this.§0!y§.y *= param1.§ ,§;
         _loc2_.§="8§.x += _loc11_ * this.§0!y§.x;
         _loc2_.§="8§.y += _loc11_ * this.§0!y§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§0!y§.y - _loc9_ * this.§0!y§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::4"0;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§+!n§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§+!n§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§="8§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§="8§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§+J§;
         _loc4_ = _loc8_ + this.§!c§ * this.§"9§.x + this.§[E§ * this.§0!y§.x;
         _loc5_ = _loc9_ + this.§!c§ * this.§"9§.y + this.§[E§ * this.§0!y§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§0!y§.x;
         var _loc13_:Number = this.§0!y§.y;
         this.§0!y§.x += _loc10_;
         this.§0!y§.y += _loc11_;
         var _loc14_:Number = param1.§4"?§ * this.§6!_§;
         if(this.§0!y§.§`p§() > _loc14_ * _loc14_)
         {
            this.§0!y§.§8`§(_loc14_ / this.§0!y§.§ !O§());
         }
         _loc10_ = this.§0!y§.x - _loc12_;
         _loc11_ = this.§0!y§.y - _loc13_;
         _loc2_.§="8§.x += _loc2_.§["A§ * _loc10_;
         _loc2_.§="8§.y += _loc2_.§["A§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§"g§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
