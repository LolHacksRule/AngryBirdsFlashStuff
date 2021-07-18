package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §6!6§:b2Vec2;
      
      private var §26§:Number;
      
      private var §1b§:Number;
      
      private var §-!'§:Number;
      
      private var §1M§:Number;
      
      private var §12§:Number;
      
      private var §`!6§:Number;
      
      private var §,9§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§6!6§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§@b§);
         this.m_localAnchor2.SetV(param1.§=i§);
         this.§,9§ = param1.length;
         this.§26§ = param1.§&!a§;
         this.§1b§ = param1.§0J§;
         this.§12§ = 0;
         this.§-!'§ = 0;
         this.§1M§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§12§ * this.§6!6§.x,param1 * this.§12§ * this.§6!6§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §+x§() : Number
      {
         return this.§,9§;
      }
      
      public function §-!Z§(param1:Number) : void
      {
         this.§,9§ = param1;
      }
      
      public function §[!a§() : Number
      {
         return this.§26§;
      }
      
      public function §+>§(param1:Number) : void
      {
         this.§26§ = param1;
      }
      
      public function §">§() : Number
      {
         return this.§1b§;
      }
      
      public function §3R§(param1:Number) : void
      {
         this.§1b§ = param1;
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
         _loc4_ = b2internal::#A;
         _loc5_ = b2internal::2!`;
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
         this.§6!6§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§6!6§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§6!6§.x * this.§6!6§.x + this.§6!6§.y * this.§6!6§.y)) > b2Settings.b2_linearSlop)
         {
            this.§6!6§.§0O§(1 / _loc10_);
         }
         else
         {
            this.§6!6§.§^!,§();
         }
         var _loc11_:Number = _loc6_ * this.§6!6§.y - _loc7_ * this.§6!6§.x;
         var _loc12_:Number = _loc8_ * this.§6!6§.y - _loc9_ * this.§6!6§.x;
         var _loc13_:Number = _loc4_.§",§ + _loc4_.§-2§ * _loc11_ * _loc11_ + _loc5_.§",§ + _loc5_.§-2§ * _loc12_ * _loc12_;
         this.§`!6§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§26§ > 0)
         {
            _loc14_ = _loc10_ - this.§,9§;
            _loc15_ = 2 * Math.PI * this.§26§;
            _loc16_ = 2 * this.§`!6§ * this.§1b§ * _loc15_;
            _loc17_ = this.§`!6§ * _loc15_ * _loc15_;
            this.§-!'§ = param1.§?u§ * (_loc16_ + param1.§?u§ * _loc17_);
            this.§-!'§ = this.§-!'§ != 0 ? Number(1 / this.§-!'§) : Number(0);
            this.§1M§ = _loc14_ * param1.§?u§ * _loc17_ * this.§-!'§;
            this.§`!6§ = _loc13_ + this.§-!'§;
            this.§`!6§ = this.§`!6§ != 0 ? Number(1 / this.§`!6§) : Number(0);
         }
         if(param1.§?S§)
         {
            this.§12§ *= param1.§const§;
            _loc18_ = this.§12§ * this.§6!6§.x;
            _loc19_ = this.§12§ * this.§6!6§.y;
            _loc4_.§@S§.x -= _loc4_.§",§ * _loc18_;
            _loc4_.§@S§.y -= _loc4_.§",§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§-2§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§@S§.x += _loc5_.§",§ * _loc18_;
            _loc5_.§@S§.y += _loc5_.§",§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§-2§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§12§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::#A;
         var _loc4_:b2Body = b2internal::2!`;
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
         var _loc10_:Number = _loc3_.§@S§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§@S§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§@S§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§@S§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§6!6§.x * (_loc12_ - _loc10_) + this.§6!6§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§`!6§ * (_loc14_ + this.§1M§ + this.§-!'§ * this.§12§);
         this.§12§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§6!6§.x;
         var _loc17_:Number = _loc15_ * this.§6!6§.y;
         _loc3_.§@S§.x -= _loc3_.§",§ * _loc16_;
         _loc3_.§@S§.y -= _loc3_.§",§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§-2§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§@S§.x += _loc4_.§",§ * _loc16_;
         _loc4_.§@S§.y += _loc4_.§",§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§-2§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§26§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::#A;
         var _loc4_:b2Body = b2internal::2!`;
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
         var _loc13_:Number = _loc12_ - this.§,9§;
         _loc13_ = b2Math.§>I§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§`!6§ * _loc13_;
         this.§6!6§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§6!6§.x;
         var _loc16_:Number = _loc14_ * this.§6!6§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§",§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§",§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§-2§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§",§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§",§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§-2§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§-W§();
         _loc4_.§-W§();
         return b2Math.§!V§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
