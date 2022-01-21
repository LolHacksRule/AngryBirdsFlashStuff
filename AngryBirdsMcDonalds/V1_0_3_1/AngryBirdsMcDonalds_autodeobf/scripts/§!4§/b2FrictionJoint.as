package §!4§
{
   import §&x§.b2Body;
   import §&x§.b2TimeStep;
   import §0,§.b2Mat22;
   import §0,§.b2Math;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §;!+§:b2Vec2;
      
      private var §&!i§:b2Vec2;
      
      public var §[J§:b2Mat22;
      
      public var §3!!§:Number;
      
      private var §6<§:b2Vec2;
      
      private var § !U§:Number;
      
      private var §@!J§:Number;
      
      private var §#!c§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§;!+§ = new b2Vec2();
         this.§&!i§ = new b2Vec2();
         this.§[J§ = new b2Mat22();
         this.§6<§ = new b2Vec2();
         super(param1);
         this.§;!+§.SetV(param1.§3_§);
         this.§&!i§.SetV(param1.§-<§);
         this.§[J§.§ !b§();
         this.§3!!§ = 0;
         this.§6<§.§ !b§();
         this.§ !U§ = 0;
         this.§@!J§ = param1.§54§;
         this.§#!c§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::=s.GetWorldPoint(this.§;!+§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!.GetWorldPoint(this.§&!i§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§6<§.x,param1 * this.§6<§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ !U§;
      }
      
      public function §!W§(param1:Number) : void
      {
         this.§@!J§ = param1;
      }
      
      public function §-!;§() : Number
      {
         return this.§@!J§;
      }
      
      public function §;!U§(param1:Number) : void
      {
         this.§#!c§ = param1;
      }
      
      public function §!]§() : Number
      {
         return this.§#!c§;
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
         _loc4_ = b2internal::=s;
         _loc5_ = b2internal::"!;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§;!+§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§;!+§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§&!i§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§&!i§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§&l§;
         var _loc11_:Number = _loc5_.§&l§;
         _loc12_ = _loc4_.§]!Q§;
         _loc13_ = _loc5_.§]!Q§;
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
         _loc14_.§<u§(this.§[J§);
         this.§3!!§ = _loc12_ + _loc13_;
         if(this.§3!!§ > 0)
         {
            this.§3!!§ = 1 / this.§3!!§;
         }
         if(param1.§8!&§)
         {
            this.§6<§.x *= param1.§,!m§;
            this.§6<§.y *= param1.§,!m§;
            this.§ !U§ *= param1.§,!m§;
            _loc15_ = this.§6<§;
            _loc4_.§"M§.x -= _loc10_ * _loc15_.x;
            _loc4_.§"M§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§ !U§);
            _loc5_.§"M§.x += _loc11_ * _loc15_.x;
            _loc5_.§"M§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§ !U§);
         }
         else
         {
            this.§6<§.§ !b§();
            this.§ !U§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::=s;
         var _loc5_:b2Body = b2internal::"!;
         var _loc6_:b2Vec2 = _loc4_.§"M§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§"M§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§&l§;
         var _loc11_:Number = _loc5_.§&l§;
         var _loc12_:Number = _loc4_.§]!Q§;
         var _loc13_:Number = _loc5_.§]!Q§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§;!+§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§;!+§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§&!i§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§&!i§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§3!!§ * _loc19_;
         var _loc21_:Number = this.§ !U§;
         _loc18_ = param1.§"!?§ * this.§#!c§;
         this.§ !U§ = b2Math.§@!-§(this.§ !U§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§ !U§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§#F§(this.§[J§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§6<§.Copy();
         this.§6<§.§;3§(_loc24_);
         _loc18_ = param1.§"!?§ * this.§@!J§;
         if(this.§6<§.§2!j§() > _loc18_ * _loc18_)
         {
            this.§6<§.Normalize();
            this.§6<§.§5D§(_loc18_);
         }
         _loc24_ = b2Math.§+z§(this.§6<§,_loc25_);
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
