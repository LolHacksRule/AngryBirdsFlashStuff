package §+!0§
{
   import §-%§.b2Mat22;
   import §-%§.b2Math;
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §9"5§.b2TimeStep;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §!j§:b2Vec2;
      
      private var §'b§:b2Vec2;
      
      public var § H§:b2Mat22;
      
      public var §=I§:Number;
      
      private var §?!=§:b2Vec2;
      
      private var §!p§:Number;
      
      private var §3!w§:Number;
      
      private var §?!8§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§!j§ = new b2Vec2();
         this.§'b§ = new b2Vec2();
         this.§ H§ = new b2Mat22();
         this.§?!=§ = new b2Vec2();
         super(param1);
         this.§!j§.SetV(param1.§1"&§);
         this.§'b§.SetV(param1.§-m§);
         this.§ H§.§'p§();
         this.§=I§ = 0;
         this.§?!=§.§'p§();
         this.§!p§ = 0;
         this.§3!w§ = param1.§?"5§;
         this.§?!8§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9t.GetWorldPoint(this.§!j§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::6=.GetWorldPoint(this.§'b§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§?!=§.x,param1 * this.§?!=§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§!p§;
      }
      
      public function §5G§(param1:Number) : void
      {
         this.§3!w§ = param1;
      }
      
      public function §#!=§() : Number
      {
         return this.§3!w§;
      }
      
      public function §<$§(param1:Number) : void
      {
         this.§?!8§ = param1;
      }
      
      public function §0F§() : Number
      {
         return this.§?!8§;
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
         _loc4_ = b2internal::9t;
         _loc5_ = b2internal::6=;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§!j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§!j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§'b§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§'b§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§^!u§;
         var _loc11_:Number = _loc5_.§^!u§;
         _loc12_ = _loc4_.§;!A§;
         _loc13_ = _loc5_.§;!A§;
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
         _loc14_.§<!H§(this.§ H§);
         this.§=I§ = _loc12_ + _loc13_;
         if(this.§=I§ > 0)
         {
            this.§=I§ = 1 / this.§=I§;
         }
         if(param1.§3!`§)
         {
            this.§?!=§.x *= param1.§%!k§;
            this.§?!=§.y *= param1.§%!k§;
            this.§!p§ *= param1.§%!k§;
            _loc15_ = this.§?!=§;
            _loc4_.§]!1§.x -= _loc10_ * _loc15_.x;
            _loc4_.§]!1§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§!p§);
            _loc5_.§]!1§.x += _loc11_ * _loc15_.x;
            _loc5_.§]!1§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§!p§);
         }
         else
         {
            this.§?!=§.§'p§();
            this.§!p§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::9t;
         var _loc5_:b2Body = b2internal::6=;
         var _loc6_:b2Vec2 = _loc4_.§]!1§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§]!1§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§^!u§;
         var _loc11_:Number = _loc5_.§^!u§;
         var _loc12_:Number = _loc4_.§;!A§;
         var _loc13_:Number = _loc5_.§;!A§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§!j§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§!j§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§'b§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§'b§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§=I§ * _loc19_;
         var _loc21_:Number = this.§!p§;
         _loc18_ = param1.§ !&§ * this.§?!8§;
         this.§!p§ = b2Math.§!P§(this.§!p§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§!p§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§?U§(this.§ H§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§?!=§.Copy();
         this.§?!=§.§%!d§(_loc24_);
         _loc18_ = param1.§ !&§ * this.§3!w§;
         if(this.§?!=§.§,m§() > _loc18_ * _loc18_)
         {
            this.§?!=§.Normalize();
            this.§?!=§.§<k§(_loc18_);
         }
         _loc24_ = b2Math.§'c§(this.§?!=§,_loc25_);
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
