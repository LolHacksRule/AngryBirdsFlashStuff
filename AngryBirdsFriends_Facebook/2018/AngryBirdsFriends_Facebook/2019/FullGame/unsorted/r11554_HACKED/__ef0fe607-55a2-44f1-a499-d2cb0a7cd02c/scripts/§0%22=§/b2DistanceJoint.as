package §0"=§
{
   import §8#t§.b2Body;
   import §8#t§.b2TimeStep;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §`# §.b2Mat22;
   import §`# §.b2Math;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §=i§:b2Vec2;
      
      private var §1$ §:Number;
      
      private var §+"X§:Number;
      
      private var §+R§:Number;
      
      private var §^$$§:Number;
      
      private var §]"5§:Number;
      
      private var §7#B§:Number;
      
      private var §"o§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§=i§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ "2§);
         this.m_localAnchor2.SetV(param1.§8!U§);
         this.§"o§ = param1.length;
         this.§1$ § = param1.§;$4§;
         this.§+"X§ = param1.dampingRatio;
         this.§]"5§ = 0;
         this.§+R§ = 0;
         this.§^$$§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::?#E.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;$6.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]"5§ * this.§=i§.x,param1 * this.§]"5§ * this.§=i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §5"%§() : Number
      {
         return this.§"o§;
      }
      
      public function §0'§(param1:Number) : void
      {
         this.§"o§ = param1;
      }
      
      public function §-!_§() : Number
      {
         return this.§1$ §;
      }
      
      public function §7"1§(param1:Number) : void
      {
         this.§1$ § = param1;
      }
      
      public function §+"v§() : Number
      {
         return this.§+"X§;
      }
      
      public function §9!f§(param1:Number) : void
      {
         this.§+"X§ = param1;
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
         _loc4_ = b2internal::?#E;
         _loc5_ = b2internal::;$6;
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
         this.§=i§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§=i§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§=i§.x * this.§=i§.x + this.§=i§.y * this.§=i§.y)) > b2Settings.b2_linearSlop)
         {
            this.§=i§.§<#3§(1 / _loc10_);
         }
         else
         {
            this.§=i§.§5J§();
         }
         var _loc11_:Number = _loc6_ * this.§=i§.y - _loc7_ * this.§=i§.x;
         var _loc12_:Number = _loc8_ * this.§=i§.y - _loc9_ * this.§=i§.x;
         var _loc13_:Number = _loc4_.§&!s§ + _loc4_.§!$5§ * _loc11_ * _loc11_ + _loc5_.§&!s§ + _loc5_.§!$5§ * _loc12_ * _loc12_;
         this.§7#B§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§1$ § > 0)
         {
            _loc14_ = _loc10_ - this.§"o§;
            _loc15_ = 2 * Math.PI * this.§1$ §;
            _loc16_ = 2 * this.§7#B§ * this.§+"X§ * _loc15_;
            _loc17_ = this.§7#B§ * _loc15_ * _loc15_;
            this.§+R§ = param1.dt * (_loc16_ + param1.dt * _loc17_);
            this.§+R§ = this.§+R§ != 0 ? Number(1 / this.§+R§) : Number(0);
            this.§^$$§ = _loc14_ * param1.dt * _loc17_ * this.§+R§;
            this.§7#B§ = _loc13_ + this.§+R§;
            this.§7#B§ = this.§7#B§ != 0 ? Number(1 / this.§7#B§) : Number(0);
         }
         if(param1.§`#=§)
         {
            this.§]"5§ *= param1.§9]§;
            _loc18_ = this.§]"5§ * this.§=i§.x;
            _loc19_ = this.§]"5§ * this.§=i§.y;
            _loc4_.§8!z§.x -= _loc4_.§&!s§ * _loc18_;
            _loc4_.§8!z§.y -= _loc4_.§&!s§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§!$5§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§8!z§.x += _loc5_.§&!s§ * _loc18_;
            _loc5_.§8!z§.y += _loc5_.§&!s§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§!$5§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§]"5§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::?#E;
         var _loc4_:b2Body = b2internal::;$6;
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
         var _loc10_:Number = _loc3_.§8!z§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§8!z§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§8!z§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§8!z§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§=i§.x * (_loc12_ - _loc10_) + this.§=i§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§7#B§ * (_loc14_ + this.§^$$§ + this.§+R§ * this.§]"5§);
         this.§]"5§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§=i§.x;
         var _loc17_:Number = _loc15_ * this.§=i§.y;
         _loc3_.§8!z§.x -= _loc3_.§&!s§ * _loc16_;
         _loc3_.§8!z§.y -= _loc3_.§&!s§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§!$5§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§8!z§.x += _loc4_.§&!s§ * _loc16_;
         _loc4_.§8!z§.y += _loc4_.§&!s§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§!$5§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§1$ § > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::?#E;
         var _loc4_:b2Body = b2internal::;$6;
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
         var _loc13_:Number = _loc12_ - this.§"o§;
         _loc13_ = b2Math.§%!"§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§7#B§ * _loc13_;
         this.§=i§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§=i§.x;
         var _loc16_:Number = _loc14_ * this.§=i§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§&!s§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§&!s§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§!$5§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§&!s§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§&!s§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§!$5§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§8$0§();
         _loc4_.§8$0§();
         return b2Math.§6!8§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
