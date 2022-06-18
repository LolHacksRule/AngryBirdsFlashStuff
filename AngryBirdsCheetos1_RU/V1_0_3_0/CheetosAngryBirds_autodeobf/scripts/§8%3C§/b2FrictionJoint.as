package §8<§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2TimeStep;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §+!W§:b2Vec2;
      
      private var §>!6§:b2Vec2;
      
      public var §1i§:b2Mat22;
      
      public var §-M§:Number;
      
      private var §@!9§:b2Vec2;
      
      private var §@! §:Number;
      
      private var § 0§:Number;
      
      private var §"f§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§+!W§ = new b2Vec2();
         this.§>!6§ = new b2Vec2();
         this.§1i§ = new b2Mat22();
         this.§@!9§ = new b2Vec2();
         super(param1);
         this.§+!W§.SetV(param1.§;!,§);
         this.§>!6§.SetV(param1.§const§);
         this.§1i§.§0&§();
         this.§-M§ = 0;
         this.§@!9§.§0&§();
         this.§@! § = 0;
         this.§ 0§ = param1.§%l§;
         this.§"f§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!!_.GetWorldPoint(this.§+!W§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;<.GetWorldPoint(this.§>!6§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§@!9§.x,param1 * this.§@!9§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§@! §;
      }
      
      public function §8M§(param1:Number) : void
      {
         this.§ 0§ = param1;
      }
      
      public function §4!]§() : Number
      {
         return this.§ 0§;
      }
      
      public function §6!G§(param1:Number) : void
      {
         this.§"f§ = param1;
      }
      
      public function §0#§() : Number
      {
         return this.§"f§;
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
         _loc4_ = b2internal::!!_;
         _loc5_ = b2internal::;<;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§+!W§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§+!W§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§>!6§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§>!6§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§1c§;
         var _loc11_:Number = _loc5_.§1c§;
         _loc12_ = _loc4_.§1!`§;
         _loc13_ = _loc5_.§1!`§;
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
         _loc14_.§-!D§(this.§1i§);
         this.§-M§ = _loc12_ + _loc13_;
         if(this.§-M§ > 0)
         {
            this.§-M§ = 1 / this.§-M§;
         }
         if(param1.§!4§)
         {
            this.§@!9§.x *= param1.§5!-§;
            this.§@!9§.y *= param1.§5!-§;
            this.§@! § *= param1.§5!-§;
            _loc15_ = this.§@!9§;
            _loc4_.§;!8§.x -= _loc10_ * _loc15_.x;
            _loc4_.§;!8§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§@! §);
            _loc5_.§;!8§.x += _loc11_ * _loc15_.x;
            _loc5_.§;!8§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§@! §);
         }
         else
         {
            this.§@!9§.§0&§();
            this.§@! § = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::!!_;
         var _loc5_:b2Body = b2internal::;<;
         var _loc6_:b2Vec2 = _loc4_.§;!8§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§;!8§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§1c§;
         var _loc11_:Number = _loc5_.§1c§;
         var _loc12_:Number = _loc4_.§1!`§;
         var _loc13_:Number = _loc5_.§1!`§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§+!W§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§+!W§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§>!6§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§>!6§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§-M§ * _loc19_;
         var _loc21_:Number = this.§@! §;
         _loc18_ = param1.§=&§ * this.§"f§;
         this.§@! § = b2Math.§'U§(this.§@! § + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§@! § - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§<§(this.§1i§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§@!9§.Copy();
         this.§@!9§.§<!`§(_loc24_);
         _loc18_ = param1.§=&§ * this.§ 0§;
         if(this.§@!9§.§2!<§() > _loc18_ * _loc18_)
         {
            this.§@!9§.Normalize();
            this.§@!9§.§=!3§(_loc18_);
         }
         _loc24_ = b2Math.§9!A§(this.§@!9§,_loc25_);
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
