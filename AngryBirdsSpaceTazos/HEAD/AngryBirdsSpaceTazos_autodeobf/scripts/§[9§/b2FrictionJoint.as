package §[9§
{
   import §'!a§.b2internal;
   import §6!n§.b2Mat22;
   import §6!n§.b2Math;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   import §9!K§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §!]§:b2Vec2;
      
      private var §+§:b2Vec2;
      
      public var §]E§:b2Mat22;
      
      public var §5E§:Number;
      
      private var §]"+§:b2Vec2;
      
      private var §7§:Number;
      
      private var §=!§:Number;
      
      private var §[1§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§!]§ = new b2Vec2();
         this.§+§ = new b2Vec2();
         this.§]E§ = new b2Mat22();
         this.§]"+§ = new b2Vec2();
         super(param1);
         this.§!]§.SetV(param1.§8U§);
         this.§+§.SetV(param1.§#i§);
         this.§]E§.§58§();
         this.§5E§ = 0;
         this.§]"+§.§58§();
         this.§7§ = 0;
         this.§=!§ = param1.§0j§;
         this.§[1§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[F.GetWorldPoint(this.§!]§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!Q.GetWorldPoint(this.§+§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]"+§.x,param1 * this.§]"+§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§7§;
      }
      
      public function §;!%§(param1:Number) : void
      {
         this.§=!§ = param1;
      }
      
      public function §5!X§() : Number
      {
         return this.§=!§;
      }
      
      public function §2",§(param1:Number) : void
      {
         this.§[1§ = param1;
      }
      
      public function §+w§() : Number
      {
         return this.§[1§;
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
         _loc4_ = b2internal::[F;
         _loc5_ = b2internal::,!Q;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§!]§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§!]§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§+§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§+§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§var §;
         var _loc11_:Number = _loc5_.§var §;
         _loc12_ = _loc4_.§,"!§;
         _loc13_ = _loc5_.§,"!§;
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
         _loc14_.§@"F§(this.§]E§);
         this.§5E§ = _loc12_ + _loc13_;
         if(this.§5E§ > 0)
         {
            this.§5E§ = 1 / this.§5E§;
         }
         if(param1.§'!t§)
         {
            this.§]"+§.x *= param1.§?!$§;
            this.§]"+§.y *= param1.§?!$§;
            this.§7§ *= param1.§?!$§;
            _loc15_ = this.§]"+§;
            _loc4_.§9e§.x -= _loc10_ * _loc15_.x;
            _loc4_.§9e§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§7§);
            _loc5_.§9e§.x += _loc11_ * _loc15_.x;
            _loc5_.§9e§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§7§);
         }
         else
         {
            this.§]"+§.§58§();
            this.§7§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::[F;
         var _loc5_:b2Body = b2internal::,!Q;
         var _loc6_:b2Vec2 = _loc4_.§9e§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§9e§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§var §;
         var _loc11_:Number = _loc5_.§var §;
         var _loc12_:Number = _loc4_.§,"!§;
         var _loc13_:Number = _loc5_.§,"!§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§!]§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§!]§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§+§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§+§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§5E§ * _loc19_;
         var _loc21_:Number = this.§7§;
         _loc18_ = param1.§;@§ * this.§[1§;
         this.§7§ = b2Math.§5!^§(this.§7§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§7§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§;!q§(this.§]E§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§]"+§.Copy();
         this.§]"+§.§=4§(_loc24_);
         _loc18_ = param1.§;@§ * this.§=!§;
         if(this.§]"+§.§@""§() > _loc18_ * _loc18_)
         {
            this.§]"+§.Normalize();
            this.§]"+§.§#!;§(_loc18_);
         }
         _loc24_ = b2Math.§%!q§(this.§]"+§,_loc25_);
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
