package §7C§
{
   import §&!+§.b2Mat22;
   import §&!+§.b2Math;
   import §&!+§.b2Vec2;
   import §4!&§.b2Body;
   import §4!&§.b2TimeStep;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §'!D§:b2Vec2;
      
      private var §^x§:b2Vec2;
      
      public var §9E§:b2Mat22;
      
      public var §?!"§:Number;
      
      private var §=i§:b2Vec2;
      
      private var §2=§:Number;
      
      private var § !a§:Number;
      
      private var §[5§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§'!D§ = new b2Vec2();
         this.§^x§ = new b2Vec2();
         this.§9E§ = new b2Mat22();
         this.§=i§ = new b2Vec2();
         super(param1);
         this.§'!D§.SetV(param1.§,!K§);
         this.§^x§.SetV(param1.§[!5§);
         this.§9E§.§8Q§();
         this.§?!"§ = 0;
         this.§=i§.§8Q§();
         this.§2=§ = 0;
         this.§ !a§ = param1.§=R§;
         this.§[5§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::@6.GetWorldPoint(this.§'!D§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[L.GetWorldPoint(this.§^x§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§=i§.x,param1 * this.§=i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§2=§;
      }
      
      public function §#!I§(param1:Number) : void
      {
         this.§ !a§ = param1;
      }
      
      public function § !M§() : Number
      {
         return this.§ !a§;
      }
      
      public function §6'§(param1:Number) : void
      {
         this.§[5§ = param1;
      }
      
      public function §=5§() : Number
      {
         return this.§[5§;
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
         _loc4_ = b2internal::@6;
         _loc5_ = b2internal::[L;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§'!D§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§'!D§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§^x§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§^x§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§=!P§;
         var _loc11_:Number = _loc5_.§=!P§;
         _loc12_ = _loc4_.§`!6§;
         _loc13_ = _loc5_.§`!6§;
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
         _loc14_.§<t§(this.§9E§);
         this.§?!"§ = _loc12_ + _loc13_;
         if(this.§?!"§ > 0)
         {
            this.§?!"§ = 1 / this.§?!"§;
         }
         if(param1.§3j§)
         {
            this.§=i§.x *= param1.§'7§;
            this.§=i§.y *= param1.§'7§;
            this.§2=§ *= param1.§'7§;
            _loc15_ = this.§=i§;
            _loc4_.§5+§.x -= _loc10_ * _loc15_.x;
            _loc4_.§5+§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§2=§);
            _loc5_.§5+§.x += _loc11_ * _loc15_.x;
            _loc5_.§5+§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§2=§);
         }
         else
         {
            this.§=i§.§8Q§();
            this.§2=§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::@6;
         var _loc5_:b2Body = b2internal::[L;
         var _loc6_:b2Vec2 = _loc4_.§5+§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§5+§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§=!P§;
         var _loc11_:Number = _loc5_.§=!P§;
         var _loc12_:Number = _loc4_.§`!6§;
         var _loc13_:Number = _loc5_.§`!6§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§'!D§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§'!D§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§^x§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§^x§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§?!"§ * _loc19_;
         var _loc21_:Number = this.§2=§;
         _loc18_ = param1.§2!2§ * this.§[5§;
         this.§2=§ = b2Math.§5!%§(this.§2=§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§2=§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§4k§(this.§9E§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§=i§.Copy();
         this.§=i§.§#H§(_loc24_);
         _loc18_ = param1.§2!2§ * this.§ !a§;
         if(this.§=i§.§,=§() > _loc18_ * _loc18_)
         {
            this.§=i§.Normalize();
            this.§=i§.§5!P§(_loc18_);
         }
         _loc24_ = b2Math.§+w§(this.§=i§,_loc25_);
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
