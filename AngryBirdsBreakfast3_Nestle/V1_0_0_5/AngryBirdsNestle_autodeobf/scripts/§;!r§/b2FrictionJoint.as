package §;!r§
{
   import §,v§.b2Body;
   import §,v§.b2TimeStep;
   import §-!A§.b2Mat22;
   import §-!A§.b2Math;
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §^!Q§:b2Vec2;
      
      private var §%!w§:b2Vec2;
      
      public var §'!"§:b2Mat22;
      
      public var §7E§:Number;
      
      private var §<7§:b2Vec2;
      
      private var §0!'§:Number;
      
      private var §3G§:Number;
      
      private var §1!d§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§^!Q§ = new b2Vec2();
         this.§%!w§ = new b2Vec2();
         this.§'!"§ = new b2Mat22();
         this.§<7§ = new b2Vec2();
         super(param1);
         this.§^!Q§.SetV(param1.§5S§);
         this.§%!w§.SetV(param1.§-!9§);
         this.§'!"§.§9N§();
         this.§7E§ = 0;
         this.§<7§.§9N§();
         this.§0!'§ = 0;
         this.§3G§ = param1.§'7§;
         this.§1!d§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-U.GetWorldPoint(this.§^!Q§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: !>.GetWorldPoint(this.§%!w§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§<7§.x,param1 * this.§<7§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0!'§;
      }
      
      public function §=E§(param1:Number) : void
      {
         this.§3G§ = param1;
      }
      
      public function §+!s§() : Number
      {
         return this.§3G§;
      }
      
      public function §2j§(param1:Number) : void
      {
         this.§1!d§ = param1;
      }
      
      public function §?!z§() : Number
      {
         return this.§1!d§;
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
         _loc4_ = b2internal::-U;
         _loc5_ = b2internal:: !>;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§^!Q§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§^!Q§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§%!w§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§%!w§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§3!o§;
         var _loc11_:Number = _loc5_.§3!o§;
         _loc12_ = _loc4_.§%!^§;
         _loc13_ = _loc5_.§%!^§;
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
         _loc14_.§8"$§(this.§'!"§);
         this.§7E§ = _loc12_ + _loc13_;
         if(this.§7E§ > 0)
         {
            this.§7E§ = 1 / this.§7E§;
         }
         if(param1.§-F§)
         {
            this.§<7§.x *= param1.§;!y§;
            this.§<7§.y *= param1.§;!y§;
            this.§0!'§ *= param1.§;!y§;
            _loc15_ = this.§<7§;
            _loc4_.§4!"§.x -= _loc10_ * _loc15_.x;
            _loc4_.§4!"§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§0!'§);
            _loc5_.§4!"§.x += _loc11_ * _loc15_.x;
            _loc5_.§4!"§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§0!'§);
         }
         else
         {
            this.§<7§.§9N§();
            this.§0!'§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::-U;
         var _loc5_:b2Body = b2internal:: !>;
         var _loc6_:b2Vec2 = _loc4_.§4!"§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§4!"§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§3!o§;
         var _loc11_:Number = _loc5_.§3!o§;
         var _loc12_:Number = _loc4_.§%!^§;
         var _loc13_:Number = _loc5_.§%!^§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§^!Q§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§^!Q§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§%!w§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§%!w§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§7E§ * _loc19_;
         var _loc21_:Number = this.§0!'§;
         _loc18_ = param1.§]>§ * this.§1!d§;
         this.§0!'§ = b2Math.§;p§(this.§0!'§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§0!'§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§+n§(this.§'!"§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§<7§.Copy();
         this.§<7§.§!"§(_loc24_);
         _loc18_ = param1.§]>§ * this.§3G§;
         if(this.§<7§.§`!x§() > _loc18_ * _loc18_)
         {
            this.§<7§.Normalize();
            this.§<7§.§?Y§(_loc18_);
         }
         _loc24_ = b2Math.§[I§(this.§<7§,_loc25_);
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
