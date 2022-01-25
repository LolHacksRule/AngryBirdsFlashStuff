package §4!J§
{
   import §6V§.b2Mat22;
   import §6V§.b2Math;
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §<!L§.b2TimeStep;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §>j§:b2Vec2;
      
      private var §1F§:b2Vec2;
      
      public var § S§:b2Mat22;
      
      public var §1!Z§:Number;
      
      private var §package§:b2Vec2;
      
      private var §6!9§:Number;
      
      private var §]!3§:Number;
      
      private var §'!e§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§>j§ = new b2Vec2();
         this.§1F§ = new b2Vec2();
         this.§ S§ = new b2Mat22();
         this.§package§ = new b2Vec2();
         super(param1);
         this.§>j§.SetV(param1.§;8§);
         this.§1F§.SetV(param1.§;!c§);
         this.§ S§.§;@§();
         this.§1!Z§ = 0;
         this.§package§.§;@§();
         this.§6!9§ = 0;
         this.§]!3§ = param1.§0!I§;
         this.§'!e§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!_.GetWorldPoint(this.§>j§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&! .GetWorldPoint(this.§1F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§package§.x,param1 * this.§package§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§6!9§;
      }
      
      public function §[@§(param1:Number) : void
      {
         this.§]!3§ = param1;
      }
      
      public function §5T§() : Number
      {
         return this.§]!3§;
      }
      
      public function §4!!§(param1:Number) : void
      {
         this.§'!e§ = param1;
      }
      
      public function §@u§() : Number
      {
         return this.§'!e§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::9!_;
         _loc5_ = b2internal::&! ;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§>j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§>j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§1F§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§1F§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§;z§;
         var _loc11_:Number = _loc5_.§;z§;
         _loc12_ = _loc4_.§?C§;
         _loc13_ = _loc5_.§?C§;
         (_loc14_ = new b2Mat22()).col1.x = _loc10_ + _loc11_;
         _loc14_.col2.x = 0;
         _loc14_.col1.y = 0;
         _loc14_.col2.y = _loc10_ + _loc11_;
         _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
         _loc14_.col2.x += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col1.y += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col2.y += _loc12_ * _loc6_ * _loc6_;
         _loc14_.col1.x += _loc13_ * _loc9_ * _loc9_;
         _loc14_.col2.x += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col1.y += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col2.y += _loc13_ * _loc8_ * _loc8_;
         _loc14_.§&!6§(this.§ S§);
         this.§1!Z§ = _loc12_ + _loc13_;
         if(this.§1!Z§ > 0)
         {
            this.§1!Z§ = 1 / this.§1!Z§;
         }
         if(param1.§9w§)
         {
            this.§package§.x *= param1.§7!<§;
            this.§package§.y *= param1.§7!<§;
            this.§6!9§ *= param1.§7!<§;
            _loc15_ = this.§package§;
            _loc4_.§1!K§.x -= _loc10_ * _loc15_.x;
            _loc4_.§1!K§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§6!9§);
            _loc5_.§1!K§.x += _loc11_ * _loc15_.x;
            _loc5_.§1!K§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§6!9§);
         }
         else
         {
            this.§package§.§;@§();
            this.§6!9§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::9!_;
         var _loc5_:b2Body = b2internal::&! ;
         var _loc6_:b2Vec2 = _loc4_.§1!K§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§1!K§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§;z§;
         var _loc11_:Number = _loc5_.§;z§;
         var _loc12_:Number = _loc4_.§?C§;
         var _loc13_:Number = _loc5_.§?C§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§>j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§>j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§1F§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§1F§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§1!Z§ * _loc19_;
         var _loc21_:Number = this.§6!9§;
         _loc18_ = param1.§?!§ * this.§'!e§;
         this.§6!9§ = b2Math.§^7§(this.§6!9§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§6!9§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§#t§(this.§ S§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§package§.Copy();
         this.§package§.§!'§(_loc24_);
         _loc18_ = param1.§?!§ * this.§]!3§;
         if(this.§package§.§!J§() > _loc18_ * _loc18_)
         {
            this.§package§.Normalize();
            this.§package§.§`!e§(_loc18_);
         }
         _loc24_ = b2Math.§`"§(this.§package§,_loc25_);
         _loc6_.x -= _loc10_ * _loc24_.x;
         _loc6_.y -= _loc10_ * _loc24_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc24_.y - _loc15_ * _loc24_.x);
         _loc8_.x += _loc11_ * _loc24_.x;
         _loc8_.y += _loc11_ * _loc24_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc24_.y - _loc17_ * _loc24_.x);
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
