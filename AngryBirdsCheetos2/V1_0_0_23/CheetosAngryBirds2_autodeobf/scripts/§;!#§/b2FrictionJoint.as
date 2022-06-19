package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var § t§:b2Vec2;
      
      private var §9!5§:b2Vec2;
      
      public var §7!a§:b2Mat22;
      
      public var §?!I§:Number;
      
      private var §9!4§:b2Vec2;
      
      private var §+v§:Number;
      
      private var §"! §:Number;
      
      private var §`+§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§ t§ = new b2Vec2();
         this.§9!5§ = new b2Vec2();
         this.§7!a§ = new b2Mat22();
         this.§9!4§ = new b2Vec2();
         super(param1);
         this.§ t§.SetV(param1.§!!U§);
         this.§9!5§.SetV(param1.§"!'§);
         this.§7!a§.§7_§();
         this.§?!I§ = 0;
         this.§9!4§.§7_§();
         this.§+v§ = 0;
         this.§"! § = param1.§4d§;
         this.§`+§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.§ t§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.§9!5§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9!4§.x,param1 * this.§9!4§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+v§;
      }
      
      public function §3K§(param1:Number) : void
      {
         this.§"! § = param1;
      }
      
      public function §#!T§() : Number
      {
         return this.§"! §;
      }
      
      public function §"c§(param1:Number) : void
      {
         this.§`+§ = param1;
      }
      
      public function §!!6§() : Number
      {
         return this.§`+§;
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
         _loc4_ = b2internal::6z;
         _loc5_ = b2internal::3D;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§ t§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ t§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§9!5§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§9!5§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§+5§;
         var _loc11_:Number = _loc5_.§+5§;
         _loc12_ = _loc4_.§%L§;
         _loc13_ = _loc5_.§%L§;
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
         _loc14_.§<'§(this.§7!a§);
         this.§?!I§ = _loc12_ + _loc13_;
         if(this.§?!I§ > 0)
         {
            this.§?!I§ = 1 / this.§?!I§;
         }
         if(param1.§7!^§)
         {
            this.§9!4§.x *= param1.§,K§;
            this.§9!4§.y *= param1.§,K§;
            this.§+v§ *= param1.§,K§;
            _loc15_ = this.§9!4§;
            _loc4_.§2!@§.x -= _loc10_ * _loc15_.x;
            _loc4_.§2!@§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§+v§);
            _loc5_.§2!@§.x += _loc11_ * _loc15_.x;
            _loc5_.§2!@§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§+v§);
         }
         else
         {
            this.§9!4§.§7_§();
            this.§+v§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::6z;
         var _loc5_:b2Body = b2internal::3D;
         var _loc6_:b2Vec2 = _loc4_.§2!@§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§2!@§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§+5§;
         var _loc11_:Number = _loc5_.§+5§;
         var _loc12_:Number = _loc4_.§%L§;
         var _loc13_:Number = _loc5_.§%L§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§ t§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§ t§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§9!5§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§9!5§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§?!I§ * _loc19_;
         var _loc21_:Number = this.§+v§;
         _loc18_ = param1.§1_§ * this.§`+§;
         this.§+v§ = b2Math.§9!%§(this.§+v§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§+v§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§&W§(this.§7!a§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§9!4§.Copy();
         this.§9!4§.§!!,§(_loc24_);
         _loc18_ = param1.§1_§ * this.§"! §;
         if(this.§9!4§.§0]§() > _loc18_ * _loc18_)
         {
            this.§9!4§.Normalize();
            this.§9!4§.§[!T§(_loc18_);
         }
         _loc24_ = b2Math.§=_§(this.§9!4§,_loc25_);
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
