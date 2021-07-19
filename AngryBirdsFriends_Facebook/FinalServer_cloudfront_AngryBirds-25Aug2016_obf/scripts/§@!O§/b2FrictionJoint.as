package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Mat22;
   import §0m§.b2Math;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   import §=#n§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §9!r§:b2Vec2;
      
      private var §<2§:b2Vec2;
      
      public var §'#%§:b2Mat22;
      
      public var §0##§:Number;
      
      private var §^"e§:b2Vec2;
      
      private var §;!D§:Number;
      
      private var §,u§:Number;
      
      private var §0%§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§9!r§ = new b2Vec2();
         this.§<2§ = new b2Vec2();
         this.§'#%§ = new b2Mat22();
         this.§^"e§ = new b2Vec2();
         super(param1);
         this.§9!r§.SetV(param1.§@2§);
         this.§<2§.SetV(param1.§7#$§);
         this.§'#%§.§,[§();
         this.§0##§ = 0;
         this.§^"e§.§,[§();
         this.§;!D§ = 0;
         this.§,u§ = param1.§^#L§;
         this.§0%§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::;"Q.GetWorldPoint(this.§9!r§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%;.GetWorldPoint(this.§<2§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^"e§.x,param1 * this.§^"e§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;!D§;
      }
      
      public function §'"2§(param1:Number) : void
      {
         this.§,u§ = param1;
      }
      
      public function §+!C§() : Number
      {
         return this.§,u§;
      }
      
      public function §-"&§(param1:Number) : void
      {
         this.§0%§ = param1;
      }
      
      public function §,#-§() : Number
      {
         return this.§0%§;
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
         _loc4_ = b2internal::;"Q;
         _loc5_ = b2internal::%;;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§9!r§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§9!r§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§<2§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§<2§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§7"P§;
         var _loc11_:Number = _loc5_.§7"P§;
         _loc12_ = _loc4_.§3!F§;
         _loc13_ = _loc5_.§3!F§;
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
         _loc14_.§>$7§(this.§'#%§);
         this.§0##§ = _loc12_ + _loc13_;
         if(this.§0##§ > 0)
         {
            this.§0##§ = 1 / this.§0##§;
         }
         if(param1.§`A§)
         {
            this.§^"e§.x *= param1.§'"D§;
            this.§^"e§.y *= param1.§'"D§;
            this.§;!D§ *= param1.§'"D§;
            _loc15_ = this.§^"e§;
            _loc4_.§'"_§.x -= _loc10_ * _loc15_.x;
            _loc4_.§'"_§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§;!D§);
            _loc5_.§'"_§.x += _loc11_ * _loc15_.x;
            _loc5_.§'"_§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§;!D§);
         }
         else
         {
            this.§^"e§.§,[§();
            this.§;!D§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::;"Q;
         var _loc5_:b2Body = b2internal::%;;
         var _loc6_:b2Vec2 = _loc4_.§'"_§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§'"_§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§7"P§;
         var _loc11_:Number = _loc5_.§7"P§;
         var _loc12_:Number = _loc4_.§3!F§;
         var _loc13_:Number = _loc5_.§3!F§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§9!r§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§9!r§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§<2§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§<2§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§0##§ * _loc19_;
         var _loc21_:Number = this.§;!D§;
         _loc18_ = param1.dt * this.§0%§;
         this.§;!D§ = b2Math.§9#V§(this.§;!D§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§;!D§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§@6§(this.§'#%§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§^"e§.Copy();
         this.§^"e§.§!!§(_loc24_);
         _loc18_ = param1.dt * this.§,u§;
         if(this.§^"e§.§>#%§() > _loc18_ * _loc18_)
         {
            this.§^"e§.Normalize();
            this.§^"e§.§2#<§(_loc18_);
         }
         _loc24_ = b2Math.§>!6§(this.§^"e§,_loc25_);
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
