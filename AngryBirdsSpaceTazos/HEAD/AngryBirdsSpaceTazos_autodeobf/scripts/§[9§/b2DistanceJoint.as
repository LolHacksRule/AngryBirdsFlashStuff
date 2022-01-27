package §[9§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §6!n§.b2Mat22;
   import §6!n§.b2Math;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   import §9!K§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §#7§:b2Vec2;
      
      private var §8"7§:Number;
      
      private var §0!i§:Number;
      
      private var §[<§:Number;
      
      private var §@!K§:Number;
      
      private var §^i§:Number;
      
      private var §7g§:Number;
      
      private var §-!]§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§#7§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8U§);
         this.m_localAnchor2.SetV(param1.§#i§);
         this.§-!]§ = param1.length;
         this.§8"7§ = param1.§2I§;
         this.§0!i§ = param1.dampingRatio;
         this.§^i§ = 0;
         this.§[<§ = 0;
         this.§@!K§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!Q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^i§ * this.§#7§.x,param1 * this.§^i§ * this.§#7§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §2"A§() : Number
      {
         return this.§-!]§;
      }
      
      public function §6!9§(param1:Number) : void
      {
         this.§-!]§ = param1;
      }
      
      public function §&v§() : Number
      {
         return this.§8"7§;
      }
      
      public function §1!x§(param1:Number) : void
      {
         this.§8"7§ = param1;
      }
      
      public function §2!Q§() : Number
      {
         return this.§0!i§;
      }
      
      public function §=r§(param1:Number) : void
      {
         this.§0!i§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::[F;
         _loc5_ = b2internal::,!Q;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         this.§#7§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§#7§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§#7§.x * this.§#7§.x + this.§#7§.y * this.§#7§.y)) > b2Settings.b2_linearSlop)
         {
            this.§#7§.§#!;§(1 / _loc10_);
         }
         else
         {
            this.§#7§.§58§();
         }
         var _loc11_:Number = _loc6_ * this.§#7§.y - _loc7_ * this.§#7§.x;
         var _loc12_:Number = _loc8_ * this.§#7§.y - _loc9_ * this.§#7§.x;
         var _loc13_:Number = _loc4_.§var § + _loc4_.§,"!§ * _loc11_ * _loc11_ + _loc5_.§var § + _loc5_.§,"!§ * _loc12_ * _loc12_;
         this.§7g§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§8"7§ > 0)
         {
            _loc14_ = _loc10_ - this.§-!]§;
            _loc15_ = 2 * Math.PI * this.§8"7§;
            _loc16_ = 2 * this.§7g§ * this.§0!i§ * _loc15_;
            _loc17_ = this.§7g§ * _loc15_ * _loc15_;
            this.§[<§ = param1.§;@§ * (_loc16_ + param1.§;@§ * _loc17_);
            this.§[<§ = this.§[<§ != 0 ? Number(1 / this.§[<§) : Number(0);
            this.§@!K§ = _loc14_ * param1.§;@§ * _loc17_ * this.§[<§;
            this.§7g§ = _loc13_ + this.§[<§;
            this.§7g§ = this.§7g§ != 0 ? Number(1 / this.§7g§) : Number(0);
         }
         if(param1.§'!t§)
         {
            this.§^i§ *= param1.§?!$§;
            _loc18_ = this.§^i§ * this.§#7§.x;
            _loc19_ = this.§^i§ * this.§#7§.y;
            _loc4_.§9e§.x -= _loc4_.§var § * _loc18_;
            _loc4_.§9e§.y -= _loc4_.§var § * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§,"!§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§9e§.x += _loc5_.§var § * _loc18_;
            _loc5_.§9e§.y += _loc5_.§var § * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§,"!§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§^i§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::[F;
         var _loc4_:b2Body = b2internal::,!Q;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc3_.§9e§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§9e§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§9e§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§9e§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§#7§.x * (_loc12_ - _loc10_) + this.§#7§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§7g§ * (_loc14_ + this.§@!K§ + this.§[<§ * this.§^i§);
         this.§^i§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§#7§.x;
         var _loc17_:Number = _loc15_ * this.§#7§.y;
         _loc3_.§9e§.x -= _loc3_.§var § * _loc16_;
         _loc3_.§9e§.y -= _loc3_.§var § * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§,"!§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§9e§.x += _loc4_.§var § * _loc16_;
         _loc4_.§9e§.y += _loc4_.§var § * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§,"!§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§8"7§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::[F;
         var _loc4_:b2Body = b2internal::,!Q;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc4_.m_sweep.c.x + _loc8_ - _loc3_.m_sweep.c.x - _loc5_;
         var _loc11_:Number = _loc4_.m_sweep.c.y + _loc9_ - _loc3_.m_sweep.c.y - _loc6_;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.§-!]§;
         _loc13_ = b2Math.§5!^§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§7g§ * _loc13_;
         this.§#7§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§#7§.x;
         var _loc16_:Number = _loc14_ * this.§#7§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§var § * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§var § * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§,"!§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§var § * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§var § * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§,"!§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§>!b§();
         _loc4_.§>!b§();
         return b2Math.§<W§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
