package §2_§
{
   import §?!C§.b2Mat22;
   import §?!C§.b2Math;
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §7#z§:b2Vec2;
      
      private var §?;§:b2Vec2;
      
      public var §-#0§:b2Mat22;
      
      public var §<L§:Number;
      
      private var §1$A§:b2Vec2;
      
      private var §[$§:Number;
      
      private var §@!t§:Number;
      
      private var §!"^§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§7#z§ = new b2Vec2();
         this.§?;§ = new b2Vec2();
         this.§-#0§ = new b2Mat22();
         this.§1$A§ = new b2Vec2();
         super(param1);
         this.§7#z§.SetV(param1.§0$&§);
         this.§?;§.SetV(param1.§=#I§);
         this.§-#0§.§1c§();
         this.§<L§ = 0;
         this.§1$A§.§1c§();
         this.§[$§ = 0;
         this.§@!t§ = param1.§=!g§;
         this.§!"^§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!".GetWorldPoint(this.§7#z§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"$'.GetWorldPoint(this.§?;§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§1$A§.x,param1 * this.§1$A§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[$§;
      }
      
      public function §2"f§(param1:Number) : void
      {
         this.§@!t§ = param1;
      }
      
      public function §-#§() : Number
      {
         return this.§@!t§;
      }
      
      public function §3"O§(param1:Number) : void
      {
         this.§!"^§ = param1;
      }
      
      public function §,!,§() : Number
      {
         return this.§!"^§;
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
         _loc4_ = b2internal::]!";
         _loc5_ = b2internal::"$';
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§7#z§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§7#z§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§?;§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§?;§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§;#>§;
         var _loc11_:Number = _loc5_.§;#>§;
         _loc12_ = _loc4_.§!#k§;
         _loc13_ = _loc5_.§!#k§;
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
         _loc14_.§4I§(this.§-#0§);
         this.§<L§ = _loc12_ + _loc13_;
         if(this.§<L§ > 0)
         {
            this.§<L§ = 1 / this.§<L§;
         }
         if(param1.§,#g§)
         {
            this.§1$A§.x *= param1.§+!y§;
            this.§1$A§.y *= param1.§+!y§;
            this.§[$§ *= param1.§+!y§;
            _loc15_ = this.§1$A§;
            _loc4_.§!#p§.x -= _loc10_ * _loc15_.x;
            _loc4_.§!#p§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§[$§);
            _loc5_.§!#p§.x += _loc11_ * _loc15_.x;
            _loc5_.§!#p§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§[$§);
         }
         else
         {
            this.§1$A§.§1c§();
            this.§[$§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::]!";
         var _loc5_:b2Body = b2internal::"$';
         var _loc6_:b2Vec2 = _loc4_.§!#p§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§!#p§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§;#>§;
         var _loc11_:Number = _loc5_.§;#>§;
         var _loc12_:Number = _loc4_.§!#k§;
         var _loc13_:Number = _loc5_.§!#k§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§7#z§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§7#z§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§?;§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§?;§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§<L§ * _loc19_;
         var _loc21_:Number = this.§[$§;
         _loc18_ = param1.dt * this.§!"^§;
         this.§[$§ = b2Math.§<!f§(this.§[$§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§[$§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§4!i§(this.§-#0§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§1$A§.Copy();
         this.§1$A§.§ #H§(_loc24_);
         _loc18_ = param1.dt * this.§@!t§;
         if(this.§1$A§.§?#&§() > _loc18_ * _loc18_)
         {
            this.§1$A§.Normalize();
            this.§1$A§.§?$'§(_loc18_);
         }
         _loc24_ = b2Math.§7!5§(this.§1$A§,_loc25_);
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
