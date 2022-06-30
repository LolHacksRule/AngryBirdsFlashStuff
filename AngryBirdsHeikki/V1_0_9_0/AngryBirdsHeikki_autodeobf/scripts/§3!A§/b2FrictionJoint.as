package §3!A§
{
   import § !_§.b2Mat22;
   import § !_§.b2Math;
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   import §^!Z§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §;!G§:b2Vec2;
      
      private var §7!V§:b2Vec2;
      
      public var §5!S§:b2Mat22;
      
      public var §?!b§:Number;
      
      private var §`§:b2Vec2;
      
      private var §0U§:Number;
      
      private var §8%§:Number;
      
      private var §]#§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§;!G§ = new b2Vec2();
         this.§7!V§ = new b2Vec2();
         this.§5!S§ = new b2Mat22();
         this.§`§ = new b2Vec2();
         super(param1);
         this.§;!G§.SetV(param1.§?&§);
         this.§7!V§.SetV(param1.§4t§);
         this.§5!S§.§>!T§();
         this.§?!b§ = 0;
         this.§`§.§>!T§();
         this.§0U§ = 0;
         this.§8%§ = param1.§=T§;
         this.§]#§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::,".GetWorldPoint(this.§;!G§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,g.GetWorldPoint(this.§7!V§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§`§.x,param1 * this.§`§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0U§;
      }
      
      public function §[c§(param1:Number) : void
      {
         this.§8%§ = param1;
      }
      
      public function §-U§() : Number
      {
         return this.§8%§;
      }
      
      public function §7[§(param1:Number) : void
      {
         this.§]#§ = param1;
      }
      
      public function § ! §() : Number
      {
         return this.§]#§;
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
         _loc4_ = b2internal::,";
         _loc5_ = b2internal::,g;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§;!G§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§;!G§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§7!V§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§7!V§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§1!+§;
         var _loc11_:Number = _loc5_.§1!+§;
         _loc12_ = _loc4_.§-!f§;
         _loc13_ = _loc5_.§-!f§;
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
         _loc14_.§=!>§(this.§5!S§);
         this.§?!b§ = _loc12_ + _loc13_;
         if(this.§?!b§ > 0)
         {
            this.§?!b§ = 1 / this.§?!b§;
         }
         if(param1.§9!N§)
         {
            this.§`§.x *= param1.§>x§;
            this.§`§.y *= param1.§>x§;
            this.§0U§ *= param1.§>x§;
            _loc15_ = this.§`§;
            _loc4_.§@!1§.x -= _loc10_ * _loc15_.x;
            _loc4_.§@!1§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§0U§);
            _loc5_.§@!1§.x += _loc11_ * _loc15_.x;
            _loc5_.§@!1§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§0U§);
         }
         else
         {
            this.§`§.§>!T§();
            this.§0U§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::,";
         var _loc5_:b2Body = b2internal::,g;
         var _loc6_:b2Vec2 = _loc4_.§@!1§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§@!1§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§1!+§;
         var _loc11_:Number = _loc5_.§1!+§;
         var _loc12_:Number = _loc4_.§-!f§;
         var _loc13_:Number = _loc5_.§-!f§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§;!G§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§;!G§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§7!V§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§7!V§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§?!b§ * _loc19_;
         var _loc21_:Number = this.§0U§;
         _loc18_ = param1.§]!"§ * this.§]#§;
         this.§0U§ = b2Math.§-F§(this.§0U§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§0U§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§"!a§(this.§5!S§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§`§.Copy();
         this.§`§.§'5§(_loc24_);
         _loc18_ = param1.§]!"§ * this.§8%§;
         if(this.§`§.§`8§() > _loc18_ * _loc18_)
         {
            this.§`§.Normalize();
            this.§`§.§"T§(_loc18_);
         }
         _loc24_ = b2Math.§=`§(this.§`§,_loc25_);
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
