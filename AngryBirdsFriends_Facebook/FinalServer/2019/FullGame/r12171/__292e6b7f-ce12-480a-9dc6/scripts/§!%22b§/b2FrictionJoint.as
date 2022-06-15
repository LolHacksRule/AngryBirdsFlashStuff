package §!"b§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2TimeStep;
   import §04§.b2Mat22;
   import §04§.b2Math;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §""a§:b2Vec2;
      
      private var §7!8§:b2Vec2;
      
      public var §""2§:b2Mat22;
      
      public var §@#2§:Number;
      
      private var §9!X§:b2Vec2;
      
      private var §`l§:Number;
      
      private var §&"f§:Number;
      
      private var §,!X§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§""a§ = new b2Vec2();
         this.§7!8§ = new b2Vec2();
         this.§""2§ = new b2Mat22();
         this.§9!X§ = new b2Vec2();
         super(param1);
         this.§""a§.SetV(param1.§,#D§);
         this.§7!8§.SetV(param1.§?#d§);
         this.§""2§.§3-§();
         this.§@#2§ = 0;
         this.§9!X§.§3-§();
         this.§`l§ = 0;
         this.§&"f§ = param1.§^"P§;
         this.§,!X§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6#6.GetWorldPoint(this.§""a§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]#j.GetWorldPoint(this.§7!8§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9!X§.x,param1 * this.§9!X§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§`l§;
      }
      
      public function §<!3§(param1:Number) : void
      {
         this.§&"f§ = param1;
      }
      
      public function §"U§() : Number
      {
         return this.§&"f§;
      }
      
      public function §>!0§(param1:Number) : void
      {
         this.§,!X§ = param1;
      }
      
      public function §2$#§() : Number
      {
         return this.§,!X§;
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
         _loc4_ = b2internal::6#6;
         _loc5_ = b2internal::]#j;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§""a§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§""a§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§7!8§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§7!8§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§<A§;
         var _loc11_:Number = _loc5_.§<A§;
         _loc12_ = _loc4_.§2k§;
         _loc13_ = _loc5_.§2k§;
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
         _loc14_.§3!V§(this.§""2§);
         this.§@#2§ = _loc12_ + _loc13_;
         if(this.§@#2§ > 0)
         {
            this.§@#2§ = 1 / this.§@#2§;
         }
         if(param1.§^q§)
         {
            this.§9!X§.x *= param1.§%!U§;
            this.§9!X§.y *= param1.§%!U§;
            this.§`l§ *= param1.§%!U§;
            _loc15_ = this.§9!X§;
            _loc4_.§^%§.x -= _loc10_ * _loc15_.x;
            _loc4_.§^%§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§`l§);
            _loc5_.§^%§.x += _loc11_ * _loc15_.x;
            _loc5_.§^%§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§`l§);
         }
         else
         {
            this.§9!X§.§3-§();
            this.§`l§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::6#6;
         var _loc5_:b2Body = b2internal::]#j;
         var _loc6_:b2Vec2 = _loc4_.§^%§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§^%§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§<A§;
         var _loc11_:Number = _loc5_.§<A§;
         var _loc12_:Number = _loc4_.§2k§;
         var _loc13_:Number = _loc5_.§2k§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§""a§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§""a§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§7!8§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§7!8§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§@#2§ * _loc19_;
         var _loc21_:Number = this.§`l§;
         _loc18_ = param1.dt * this.§,!X§;
         this.§`l§ = b2Math.§!!7§(this.§`l§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§`l§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§&!@§(this.§""2§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§9!X§.Copy();
         this.§9!X§.§0#3§(_loc24_);
         _loc18_ = param1.dt * this.§&"f§;
         if(this.§9!X§.§-#!§() > _loc18_ * _loc18_)
         {
            this.§9!X§.Normalize();
            this.§9!X§.§#"I§(_loc18_);
         }
         _loc24_ = b2Math.§7q§(this.§9!X§,_loc25_);
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
