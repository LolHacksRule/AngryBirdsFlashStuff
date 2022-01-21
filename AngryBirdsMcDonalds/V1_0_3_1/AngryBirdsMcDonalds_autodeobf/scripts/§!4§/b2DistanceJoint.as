package §!4§
{
   import §&x§.b2Body;
   import §&x§.b2TimeStep;
   import §0,§.b2Mat22;
   import §0,§.b2Math;
   import §0,§.b2Vec2;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §;!o§:b2Vec2;
      
      private var §5!H§:Number;
      
      private var §4B§:Number;
      
      private var §3]§:Number;
      
      private var §!!p§:Number;
      
      private var §8!§:Number;
      
      private var §+C§:Number;
      
      private var §;F§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§;!o§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§3_§);
         this.m_localAnchor2.SetV(param1.§-<§);
         this.§;F§ = param1.length;
         this.§5!H§ = param1.§+m§;
         this.§4B§ = param1.§3Q§;
         this.§8!§ = 0;
         this.§3]§ = 0;
         this.§!!p§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::=s.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!§ * this.§;!o§.x,param1 * this.§8!§ * this.§;!o§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §9k§() : Number
      {
         return this.§;F§;
      }
      
      public function §,!-§(param1:Number) : void
      {
         this.§;F§ = param1;
      }
      
      public function §!r§() : Number
      {
         return this.§5!H§;
      }
      
      public function §8K§(param1:Number) : void
      {
         this.§5!H§ = param1;
      }
      
      public function §&!d§() : Number
      {
         return this.§4B§;
      }
      
      public function §]^§(param1:Number) : void
      {
         this.§4B§ = param1;
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
         _loc4_ = b2internal::=s;
         _loc5_ = b2internal::"!;
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
         this.§;!o§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§;!o§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§;!o§.x * this.§;!o§.x + this.§;!o§.y * this.§;!o§.y)) > b2Settings.b2_linearSlop)
         {
            this.§;!o§.§5D§(1 / _loc10_);
         }
         else
         {
            this.§;!o§.§ !b§();
         }
         var _loc11_:Number = _loc6_ * this.§;!o§.y - _loc7_ * this.§;!o§.x;
         var _loc12_:Number = _loc8_ * this.§;!o§.y - _loc9_ * this.§;!o§.x;
         var _loc13_:Number = _loc4_.§&l§ + _loc4_.§]!Q§ * _loc11_ * _loc11_ + _loc5_.§&l§ + _loc5_.§]!Q§ * _loc12_ * _loc12_;
         this.§+C§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§5!H§ > 0)
         {
            _loc14_ = _loc10_ - this.§;F§;
            _loc15_ = 2 * Math.PI * this.§5!H§;
            _loc16_ = 2 * this.§+C§ * this.§4B§ * _loc15_;
            _loc17_ = this.§+C§ * _loc15_ * _loc15_;
            this.§3]§ = param1.§"!?§ * (_loc16_ + param1.§"!?§ * _loc17_);
            this.§3]§ = this.§3]§ != 0 ? Number(1 / this.§3]§) : Number(0);
            this.§!!p§ = _loc14_ * param1.§"!?§ * _loc17_ * this.§3]§;
            this.§+C§ = _loc13_ + this.§3]§;
            this.§+C§ = this.§+C§ != 0 ? Number(1 / this.§+C§) : Number(0);
         }
         if(param1.§8!&§)
         {
            this.§8!§ *= param1.§,!m§;
            _loc18_ = this.§8!§ * this.§;!o§.x;
            _loc19_ = this.§8!§ * this.§;!o§.y;
            _loc4_.§"M§.x -= _loc4_.§&l§ * _loc18_;
            _loc4_.§"M§.y -= _loc4_.§&l§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§]!Q§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§"M§.x += _loc5_.§&l§ * _loc18_;
            _loc5_.§"M§.y += _loc5_.§&l§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§]!Q§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§8!§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::=s;
         var _loc4_:b2Body = b2internal::"!;
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
         var _loc10_:Number = _loc3_.§"M§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§"M§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§"M§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§"M§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§;!o§.x * (_loc12_ - _loc10_) + this.§;!o§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§+C§ * (_loc14_ + this.§!!p§ + this.§3]§ * this.§8!§);
         this.§8!§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§;!o§.x;
         var _loc17_:Number = _loc15_ * this.§;!o§.y;
         _loc3_.§"M§.x -= _loc3_.§&l§ * _loc16_;
         _loc3_.§"M§.y -= _loc3_.§&l§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§]!Q§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§"M§.x += _loc4_.§&l§ * _loc16_;
         _loc4_.§"M§.y += _loc4_.§&l§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§]!Q§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§5!H§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::=s;
         var _loc4_:b2Body = b2internal::"!;
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
         var _loc13_:Number = _loc12_ - this.§;F§;
         _loc13_ = b2Math.§@!-§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§+C§ * _loc13_;
         this.§;!o§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§;!o§.x;
         var _loc16_:Number = _loc14_ * this.§;!o§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§&l§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§&l§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§]!Q§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§&l§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§&l§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§]!Q§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§4l§();
         _loc4_.§4l§();
         return b2Math.§`!9§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
