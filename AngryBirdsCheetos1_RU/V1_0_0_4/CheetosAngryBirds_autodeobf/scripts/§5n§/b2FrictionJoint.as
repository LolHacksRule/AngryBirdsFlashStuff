package §5n§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2TimeStep;
   import §5!K§.b2Mat22;
   import §5!K§.b2Math;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §5e§:b2Vec2;
      
      private var §case§:b2Vec2;
      
      public var §&!-§:b2Mat22;
      
      public var §2! §:Number;
      
      private var §9!W§:b2Vec2;
      
      private var §9a§:Number;
      
      private var §]&§:Number;
      
      private var §=Y§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§5e§ = new b2Vec2();
         this.§case§ = new b2Vec2();
         this.§&!-§ = new b2Mat22();
         this.§9!W§ = new b2Vec2();
         super(param1);
         this.§5e§.SetV(param1.§!!B§);
         this.§case§.SetV(param1.§<!_§);
         this.§&!-§.§6d§();
         this.§2! § = 0;
         this.§9!W§.§6d§();
         this.§9a§ = 0;
         this.§]&§ = param1.§2!B§;
         this.§=Y§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"8.GetWorldPoint(this.§5e§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!;.GetWorldPoint(this.§case§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9!W§.x,param1 * this.§9!W§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9a§;
      }
      
      public function §+!=§(param1:Number) : void
      {
         this.§]&§ = param1;
      }
      
      public function §&D§() : Number
      {
         return this.§]&§;
      }
      
      public function §'!C§(param1:Number) : void
      {
         this.§=Y§ = param1;
      }
      
      public function §2!4§() : Number
      {
         return this.§=Y§;
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
         _loc4_ = b2internal::"8;
         _loc5_ = b2internal::2!;;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§5e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§5e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§case§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§case§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§"!§;
         var _loc11_:Number = _loc5_.§"!§;
         _loc12_ = _loc4_.§9y§;
         _loc13_ = _loc5_.§9y§;
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
         _loc14_.§?]§(this.§&!-§);
         this.§2! § = _loc12_ + _loc13_;
         if(this.§2! § > 0)
         {
            this.§2! § = 1 / this.§2! §;
         }
         if(param1.§[1§)
         {
            this.§9!W§.x *= param1.§8!J§;
            this.§9!W§.y *= param1.§8!J§;
            this.§9a§ *= param1.§8!J§;
            _loc15_ = this.§9!W§;
            _loc4_.§;!#§.x -= _loc10_ * _loc15_.x;
            _loc4_.§;!#§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§9a§);
            _loc5_.§;!#§.x += _loc11_ * _loc15_.x;
            _loc5_.§;!#§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§9a§);
         }
         else
         {
            this.§9!W§.§6d§();
            this.§9a§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::"8;
         var _loc5_:b2Body = b2internal::2!;;
         var _loc6_:b2Vec2 = _loc4_.§;!#§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§;!#§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§"!§;
         var _loc11_:Number = _loc5_.§"!§;
         var _loc12_:Number = _loc4_.§9y§;
         var _loc13_:Number = _loc5_.§9y§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§5e§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§5e§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§case§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§case§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§2! § * _loc19_;
         var _loc21_:Number = this.§9a§;
         _loc18_ = param1.§0O§ * this.§=Y§;
         this.§9a§ = b2Math.§=!,§(this.§9a§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§9a§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§8%§(this.§&!-§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§9!W§.Copy();
         this.§9!W§.§0![§(_loc24_);
         _loc18_ = param1.§0O§ * this.§]&§;
         if(this.§9!W§.§1c§() > _loc18_ * _loc18_)
         {
            this.§9!W§.Normalize();
            this.§9!W§.§3$§(_loc18_);
         }
         _loc24_ = b2Math.§@!^§(this.§9!W§,_loc25_);
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
