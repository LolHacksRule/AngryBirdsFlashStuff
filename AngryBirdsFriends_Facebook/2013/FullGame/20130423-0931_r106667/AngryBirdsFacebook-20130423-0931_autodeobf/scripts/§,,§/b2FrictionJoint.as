package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var § case§:b2Vec2;
      
      private var §;"7§:b2Vec2;
      
      public var §1V§:b2Mat22;
      
      public var §5Q§:Number;
      
      private var §+"<§:b2Vec2;
      
      private var §7!7§:Number;
      
      private var §[%§:Number;
      
      private var §&!>§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§ case§ = new b2Vec2();
         this.§;"7§ = new b2Vec2();
         this.§1V§ = new b2Mat22();
         this.§+"<§ = new b2Vec2();
         super(param1);
         this.§ case§.SetV(param1.§-!,§);
         this.§;"7§.SetV(param1.§["9§);
         this.§1V§.§%y§();
         this.§5Q§ = 0;
         this.§+"<§.§%y§();
         this.§7!7§ = 0;
         this.§[%§ = param1.§`"M§;
         this.§&!>§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.§ case§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.§;"7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+"<§.x,param1 * this.§+"<§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§7!7§;
      }
      
      public function §=!x§(param1:Number) : void
      {
         this.§[%§ = param1;
      }
      
      public function §#!"§() : Number
      {
         return this.§[%§;
      }
      
      public function §!g§(param1:Number) : void
      {
         this.§&!>§ = param1;
      }
      
      public function §1""§() : Number
      {
         return this.§&!>§;
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
         _loc4_ = b2internal::3"X;
         _loc5_ = b2internal::5!;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§ case§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ case§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§;"7§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§;"7§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§-@§;
         var _loc11_:Number = _loc5_.§-@§;
         _loc12_ = _loc4_.§,H§;
         _loc13_ = _loc5_.§,H§;
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
         _loc14_.§3r§(this.§1V§);
         this.§5Q§ = _loc12_ + _loc13_;
         if(this.§5Q§ > 0)
         {
            this.§5Q§ = 1 / this.§5Q§;
         }
         if(param1.§@I§)
         {
            this.§+"<§.x *= param1.§]'§;
            this.§+"<§.y *= param1.§]'§;
            this.§7!7§ *= param1.§]'§;
            _loc15_ = this.§+"<§;
            _loc4_.§"!_§.x -= _loc10_ * _loc15_.x;
            _loc4_.§"!_§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§7!7§);
            _loc5_.§"!_§.x += _loc11_ * _loc15_.x;
            _loc5_.§"!_§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§7!7§);
         }
         else
         {
            this.§+"<§.§%y§();
            this.§7!7§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::3"X;
         var _loc5_:b2Body = b2internal::5!;
         var _loc6_:b2Vec2 = _loc4_.§"!_§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§"!_§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§-@§;
         var _loc11_:Number = _loc5_.§-@§;
         var _loc12_:Number = _loc4_.§,H§;
         var _loc13_:Number = _loc5_.§,H§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§ case§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§ case§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§;"7§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§;"7§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§5Q§ * _loc19_;
         var _loc21_:Number = this.§7!7§;
         _loc18_ = param1.§;J§ * this.§&!>§;
         this.§7!7§ = b2Math.§1"T§(this.§7!7§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§7!7§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§5!w§(this.§1V§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§+"<§.Copy();
         this.§+"<§.§6"3§(_loc24_);
         _loc18_ = param1.§;J§ * this.§[%§;
         if(this.§+"<§.§03§() > _loc18_ * _loc18_)
         {
            this.§+"<§.Normalize();
            this.§+"<§.§!!L§(_loc18_);
         }
         _loc24_ = b2Math.§9N§(this.§+"<§,_loc25_);
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
