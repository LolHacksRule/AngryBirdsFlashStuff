package §!!M§
{
   import §+S§.b2Mat22;
   import §+S§.b2Math;
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §8T§.b2TimeStep;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §7!W§:b2Vec2;
      
      private var §3!1§:b2Vec2;
      
      public var §;;§:b2Mat22;
      
      public var §5a§:Number;
      
      private var §[!#§:b2Vec2;
      
      private var §1!J§:Number;
      
      private var §0!f§:Number;
      
      private var §&!g§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§7!W§ = new b2Vec2();
         this.§3!1§ = new b2Vec2();
         this.§;;§ = new b2Mat22();
         this.§[!#§ = new b2Vec2();
         super(param1);
         this.§7!W§.SetV(param1.§5!E§);
         this.§3!1§.SetV(param1.§21§);
         this.§;;§.§%^§();
         this.§5a§ = 0;
         this.§[!#§.§%^§();
         this.§1!J§ = 0;
         this.§0!f§ = param1.§0!Y§;
         this.§&!g§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0!?.GetWorldPoint(this.§7!W§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^!l.GetWorldPoint(this.§3!1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!#§.x,param1 * this.§[!#§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§1!J§;
      }
      
      public function §%o§(param1:Number) : void
      {
         this.§0!f§ = param1;
      }
      
      public function §1!+§() : Number
      {
         return this.§0!f§;
      }
      
      public function §0e§(param1:Number) : void
      {
         this.§&!g§ = param1;
      }
      
      public function §;!C§() : Number
      {
         return this.§&!g§;
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
         _loc4_ = b2internal::0!?;
         _loc5_ = b2internal::^!l;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§7!W§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§7!W§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§3!1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§3!1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§;!m§;
         var _loc11_:Number = _loc5_.§;!m§;
         _loc12_ = _loc4_.§]q§;
         _loc13_ = _loc5_.§]q§;
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
         _loc14_.§^!^§(this.§;;§);
         this.§5a§ = _loc12_ + _loc13_;
         if(this.§5a§ > 0)
         {
            this.§5a§ = 1 / this.§5a§;
         }
         if(param1.§7z§)
         {
            this.§[!#§.x *= param1.§4!a§;
            this.§[!#§.y *= param1.§4!a§;
            this.§1!J§ *= param1.§4!a§;
            _loc15_ = this.§[!#§;
            _loc4_.§switch§.x -= _loc10_ * _loc15_.x;
            _loc4_.§switch§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§1!J§);
            _loc5_.§switch§.x += _loc11_ * _loc15_.x;
            _loc5_.§switch§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§1!J§);
         }
         else
         {
            this.§[!#§.§%^§();
            this.§1!J§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::0!?;
         var _loc5_:b2Body = b2internal::^!l;
         var _loc6_:b2Vec2 = _loc4_.§switch§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§switch§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§;!m§;
         var _loc11_:Number = _loc5_.§;!m§;
         var _loc12_:Number = _loc4_.§]q§;
         var _loc13_:Number = _loc5_.§]q§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§7!W§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§7!W§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§3!1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§3!1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§5a§ * _loc19_;
         var _loc21_:Number = this.§1!J§;
         _loc18_ = param1.§9[§ * this.§&!g§;
         this.§1!J§ = b2Math.§&!<§(this.§1!J§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§1!J§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§>H§(this.§;;§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§[!#§.Copy();
         this.§[!#§.§0o§(_loc24_);
         _loc18_ = param1.§9[§ * this.§0!f§;
         if(this.§[!#§.§4!>§() > _loc18_ * _loc18_)
         {
            this.§[!#§.Normalize();
            this.§[!#§.§71§(_loc18_);
         }
         _loc24_ = b2Math.§1!,§(this.§[!#§,_loc25_);
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
