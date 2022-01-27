package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2TimeStep;
   import §=i§.b2Mat22;
   import §=i§.b2Math;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §%_§:b2Vec2;
      
      private var §8!B§:b2Vec2;
      
      public var §[q§:b2Mat22;
      
      public var §"u§:Number;
      
      private var §+!V§:b2Vec2;
      
      private var §`3§:Number;
      
      private var §?z§:Number;
      
      private var §@w§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§%_§ = new b2Vec2();
         this.§8!B§ = new b2Vec2();
         this.§[q§ = new b2Mat22();
         this.§+!V§ = new b2Vec2();
         super(param1);
         this.§%_§.SetV(param1.§ i§);
         this.§8!B§.SetV(param1.§<=§);
         this.§[q§.§0!=§();
         this.§"u§ = 0;
         this.§+!V§.§0!=§();
         this.§`3§ = 0;
         this.§?z§ = param1.§7"§;
         this.§@w§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+!N.GetWorldPoint(this.§%_§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@;.GetWorldPoint(this.§8!B§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+!V§.x,param1 * this.§+!V§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§`3§;
      }
      
      public function §=!Y§(param1:Number) : void
      {
         this.§?z§ = param1;
      }
      
      public function §'w§() : Number
      {
         return this.§?z§;
      }
      
      public function §`1§(param1:Number) : void
      {
         this.§@w§ = param1;
      }
      
      public function §]_§() : Number
      {
         return this.§@w§;
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
         _loc4_ = b2internal::+!N;
         _loc5_ = b2internal::@;;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§%_§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§%_§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§8!B§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§8!B§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§=!C§;
         var _loc11_:Number = _loc5_.§=!C§;
         _loc12_ = _loc4_.§!!§;
         _loc13_ = _loc5_.§!!§;
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
         _loc14_.§<!"§(this.§[q§);
         this.§"u§ = _loc12_ + _loc13_;
         if(this.§"u§ > 0)
         {
            this.§"u§ = 1 / this.§"u§;
         }
         if(param1.§%r§)
         {
            this.§+!V§.x *= param1.§^!Y§;
            this.§+!V§.y *= param1.§^!Y§;
            this.§`3§ *= param1.§^!Y§;
            _loc15_ = this.§+!V§;
            _loc4_.§]J§.x -= _loc10_ * _loc15_.x;
            _loc4_.§]J§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§`3§);
            _loc5_.§]J§.x += _loc11_ * _loc15_.x;
            _loc5_.§]J§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§`3§);
         }
         else
         {
            this.§+!V§.§0!=§();
            this.§`3§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::+!N;
         var _loc5_:b2Body = b2internal::@;;
         var _loc6_:b2Vec2 = _loc4_.§]J§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§]J§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§=!C§;
         var _loc11_:Number = _loc5_.§=!C§;
         var _loc12_:Number = _loc4_.§!!§;
         var _loc13_:Number = _loc5_.§!!§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§%_§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§%_§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§8!B§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§8!B§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§"u§ * _loc19_;
         var _loc21_:Number = this.§`3§;
         _loc18_ = param1.§5!8§ * this.§@w§;
         this.§`3§ = b2Math.§%!c§(this.§`3§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§`3§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§^!<§(this.§[q§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§+!V§.Copy();
         this.§+!V§.§%<§(_loc24_);
         _loc18_ = param1.§5!8§ * this.§?z§;
         if(this.§+!V§.§5!P§() > _loc18_ * _loc18_)
         {
            this.§+!V§.Normalize();
            this.§+!V§.§[![§(_loc18_);
         }
         _loc24_ = b2Math.§]G§(this.§+!V§,_loc25_);
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
