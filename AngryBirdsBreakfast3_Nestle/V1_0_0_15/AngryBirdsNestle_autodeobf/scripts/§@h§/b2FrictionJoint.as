package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §=!P§:b2Vec2;
      
      private var §;z§:b2Vec2;
      
      public var §2z§:b2Mat22;
      
      public var §`!"§:Number;
      
      private var §1!4§:b2Vec2;
      
      private var §,<§:Number;
      
      private var §!]§:Number;
      
      private var §3Y§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§=!P§ = new b2Vec2();
         this.§;z§ = new b2Vec2();
         this.§2z§ = new b2Mat22();
         this.§1!4§ = new b2Vec2();
         super(param1);
         this.§=!P§.SetV(param1.§8D§);
         this.§;z§.SetV(param1.§@"$§);
         this.§2z§.§>![§();
         this.§`!"§ = 0;
         this.§1!4§.§>![§();
         this.§,<§ = 0;
         this.§!]§ = param1.§6g§;
         this.§3Y§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.§=!P§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.§;z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§1!4§.x,param1 * this.§1!4§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§,<§;
      }
      
      public function §"j§(param1:Number) : void
      {
         this.§!]§ = param1;
      }
      
      public function §,!B§() : Number
      {
         return this.§!]§;
      }
      
      public function §!C§(param1:Number) : void
      {
         this.§3Y§ = param1;
      }
      
      public function §&"&§() : Number
      {
         return this.§3Y§;
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
         _loc4_ = b2internal::9!F;
         _loc5_ = b2internal::[!n;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§=!P§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=!P§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§;z§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§;z§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§ c§;
         var _loc11_:Number = _loc5_.§ c§;
         _loc12_ = _loc4_.§"k§;
         _loc13_ = _loc5_.§"k§;
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
         _loc14_.§use§(this.§2z§);
         this.§`!"§ = _loc12_ + _loc13_;
         if(this.§`!"§ > 0)
         {
            this.§`!"§ = 1 / this.§`!"§;
         }
         if(param1.§-"'§)
         {
            this.§1!4§.x *= param1.§`!s§;
            this.§1!4§.y *= param1.§`!s§;
            this.§,<§ *= param1.§`!s§;
            _loc15_ = this.§1!4§;
            _loc4_.§;!A§.x -= _loc10_ * _loc15_.x;
            _loc4_.§;!A§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§,<§);
            _loc5_.§;!A§.x += _loc11_ * _loc15_.x;
            _loc5_.§;!A§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§,<§);
         }
         else
         {
            this.§1!4§.§>![§();
            this.§,<§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::9!F;
         var _loc5_:b2Body = b2internal::[!n;
         var _loc6_:b2Vec2 = _loc4_.§;!A§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§;!A§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§ c§;
         var _loc11_:Number = _loc5_.§ c§;
         var _loc12_:Number = _loc4_.§"k§;
         var _loc13_:Number = _loc5_.§"k§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§=!P§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§=!P§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§;z§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§;z§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§`!"§ * _loc19_;
         var _loc21_:Number = this.§,<§;
         _loc18_ = param1.§"!n§ * this.§3Y§;
         this.§,<§ = b2Math.§ !X§(this.§,<§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§,<§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§-!u§(this.§2z§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§1!4§.Copy();
         this.§1!4§.§?4§(_loc24_);
         _loc18_ = param1.§"!n§ * this.§!]§;
         if(this.§1!4§.§&l§() > _loc18_ * _loc18_)
         {
            this.§1!4§.Normalize();
            this.§1!4§.§",§(_loc18_);
         }
         _loc24_ = b2Math.§1"5§(this.§1!4§,_loc25_);
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
