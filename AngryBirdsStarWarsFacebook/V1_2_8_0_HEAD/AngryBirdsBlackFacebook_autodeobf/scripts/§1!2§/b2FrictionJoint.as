package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §9X§:b2Vec2;
      
      private var §4!1§:b2Vec2;
      
      public var §=I§:b2Mat22;
      
      public var §7"b§:Number;
      
      private var §!"w§:b2Vec2;
      
      private var §&#&§:Number;
      
      private var §'"B§:Number;
      
      private var §2J§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§9X§ = new b2Vec2();
         this.§4!1§ = new b2Vec2();
         this.§=I§ = new b2Mat22();
         this.§!"w§ = new b2Vec2();
         super(param1);
         this.§9X§.SetV(param1.§!"4§);
         this.§4!1§.SetV(param1.§#"B§);
         this.§=I§.§&"Q§();
         this.§7"b§ = 0;
         this.§!"w§.§&"Q§();
         this.§&#&§ = 0;
         this.§'"B§ = param1.§8!i§;
         this.§2J§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.§9X§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.§4!1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§!"w§.x,param1 * this.§!"w§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§&#&§;
      }
      
      public function §#E§(param1:Number) : void
      {
         this.§'"B§ = param1;
      }
      
      public function §1#2§() : Number
      {
         return this.§'"B§;
      }
      
      public function §^#N§(param1:Number) : void
      {
         this.§2J§ = param1;
      }
      
      public function §8"v§() : Number
      {
         return this.§2J§;
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
         _loc4_ = b2internal::2!g;
         _loc5_ = b2internal:: "z;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§9X§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§9X§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§4!1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§4!1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§3#>§;
         var _loc11_:Number = _loc5_.§3#>§;
         _loc12_ = _loc4_.§3"y§;
         _loc13_ = _loc5_.§3"y§;
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
         _loc14_.§^B§(this.§=I§);
         this.§7"b§ = _loc12_ + _loc13_;
         if(this.§7"b§ > 0)
         {
            this.§7"b§ = 1 / this.§7"b§;
         }
         if(param1.§-'§)
         {
            this.§!"w§.x *= param1.§8"]§;
            this.§!"w§.y *= param1.§8"]§;
            this.§&#&§ *= param1.§8"]§;
            _loc15_ = this.§!"w§;
            _loc4_.§ #`§.x -= _loc10_ * _loc15_.x;
            _loc4_.§ #`§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§&#&§);
            _loc5_.§ #`§.x += _loc11_ * _loc15_.x;
            _loc5_.§ #`§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§&#&§);
         }
         else
         {
            this.§!"w§.§&"Q§();
            this.§&#&§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::2!g;
         var _loc5_:b2Body = b2internal:: "z;
         var _loc6_:b2Vec2 = _loc4_.§ #`§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§ #`§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§3#>§;
         var _loc11_:Number = _loc5_.§3#>§;
         var _loc12_:Number = _loc4_.§3"y§;
         var _loc13_:Number = _loc5_.§3"y§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§9X§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§9X§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§4!1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§4!1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§7"b§ * _loc19_;
         var _loc21_:Number = this.§&#&§;
         _loc18_ = param1.§1!O§ * this.§2J§;
         this.§&#&§ = b2Math.§<"X§(this.§&#&§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§&#&§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§="L§(this.§=I§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§!"w§.Copy();
         this.§!"w§.§ true§(_loc24_);
         _loc18_ = param1.§1!O§ * this.§'"B§;
         if(this.§!"w§.§1"t§() > _loc18_ * _loc18_)
         {
            this.§!"w§.Normalize();
            this.§!"w§.§?1§(_loc18_);
         }
         _loc24_ = b2Math.§8!3§(this.§!"w§,_loc25_);
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
