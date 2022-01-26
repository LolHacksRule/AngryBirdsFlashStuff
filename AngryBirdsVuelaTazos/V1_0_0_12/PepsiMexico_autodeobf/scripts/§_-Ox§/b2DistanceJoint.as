package §_-Ox§
{
   import §_-9z§.b2Mat22;
   import §_-9z§.b2Math;
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-EH§.b2TimeStep;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-bd§:b2Vec2;
      
      private var §_-Zq§:Number;
      
      private var §_-fc§:Number;
      
      private var §_-lL§:Number;
      
      private var §_-OE§:Number;
      
      private var §_-AM§:Number;
      
      private var §_-hE§:Number;
      
      private var §_-D1§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-bd§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-7E§);
         this.m_localAnchor2.SetV(param1.§_-ID§);
         this.§_-D1§ = param1.length;
         this.§_-Zq§ = param1.§_-Dr§;
         this.§_-fc§ = param1.§_-Dj§;
         this.§_-AM§ = 0;
         this.§_-lL§ = 0;
         this.§_-OE§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-e4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qA.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-AM§ * this.§_-bd§.x,param1 * this.§_-AM§ * this.§_-bd§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-lm§() : Number
      {
         return this.§_-D1§;
      }
      
      public function §_-eU§(param1:Number) : void
      {
         this.§_-D1§ = param1;
      }
      
      public function §_-Pd§() : Number
      {
         return this.§_-Zq§;
      }
      
      public function §_-nO§(param1:Number) : void
      {
         this.§_-Zq§ = param1;
      }
      
      public function §_-Ue§() : Number
      {
         return this.§_-fc§;
      }
      
      public function §_-15§(param1:Number) : void
      {
         this.§_-fc§ = param1;
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
         _loc4_ = b2internal::_-e4;
         _loc5_ = b2internal::_-qA;
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
         this.§_-bd§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§_-bd§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-bd§.x * this.§_-bd§.x + this.§_-bd§.y * this.§_-bd§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-bd§.§_-5L§(1 / _loc10_);
         }
         else
         {
            this.§_-bd§.§_-TJ§();
         }
         var _loc11_:Number = _loc6_ * this.§_-bd§.y - _loc7_ * this.§_-bd§.x;
         var _loc12_:Number = _loc8_ * this.§_-bd§.y - _loc9_ * this.§_-bd§.x;
         var _loc13_:Number = _loc4_.§_-dH§ + _loc4_.§_-sp§ * _loc11_ * _loc11_ + _loc5_.§_-dH§ + _loc5_.§_-sp§ * _loc12_ * _loc12_;
         this.§_-hE§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-Zq§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-D1§;
            _loc15_ = 2 * Math.PI * this.§_-Zq§;
            _loc16_ = 2 * this.§_-hE§ * this.§_-fc§ * _loc15_;
            _loc17_ = this.§_-hE§ * _loc15_ * _loc15_;
            this.§_-lL§ = param1.§_-pG§ * (_loc16_ + param1.§_-pG§ * _loc17_);
            this.§_-lL§ = this.§_-lL§ != 0 ? Number(1 / this.§_-lL§) : Number(0);
            this.§_-OE§ = _loc14_ * param1.§_-pG§ * _loc17_ * this.§_-lL§;
            this.§_-hE§ = _loc13_ + this.§_-lL§;
            this.§_-hE§ = this.§_-hE§ != 0 ? Number(1 / this.§_-hE§) : Number(0);
         }
         if(param1.§_-lZ§)
         {
            this.§_-AM§ *= param1.§_-Xs§;
            _loc18_ = this.§_-AM§ * this.§_-bd§.x;
            _loc19_ = this.§_-AM§ * this.§_-bd§.y;
            _loc4_.§_-wk§.x -= _loc4_.§_-dH§ * _loc18_;
            _loc4_.§_-wk§.y -= _loc4_.§_-dH§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-sp§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-wk§.x += _loc5_.§_-dH§ * _loc18_;
            _loc5_.§_-wk§.y += _loc5_.§_-dH§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-sp§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-AM§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-e4;
         var _loc4_:b2Body = b2internal::_-qA;
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
         var _loc10_:Number = _loc3_.§_-wk§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-wk§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-wk§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-wk§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-bd§.x * (_loc12_ - _loc10_) + this.§_-bd§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-hE§ * (_loc14_ + this.§_-OE§ + this.§_-lL§ * this.§_-AM§);
         this.§_-AM§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-bd§.x;
         var _loc17_:Number = _loc15_ * this.§_-bd§.y;
         _loc3_.§_-wk§.x -= _loc3_.§_-dH§ * _loc16_;
         _loc3_.§_-wk§.y -= _loc3_.§_-dH§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-sp§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-wk§.x += _loc4_.§_-dH§ * _loc16_;
         _loc4_.§_-wk§.y += _loc4_.§_-dH§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-sp§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-Zq§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-e4;
         var _loc4_:b2Body = b2internal::_-qA;
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
         var _loc13_:Number = _loc12_ - this.§_-D1§;
         _loc13_ = b2Math.§_-5a§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-hE§ * _loc13_;
         this.§_-bd§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-bd§.x;
         var _loc16_:Number = _loc14_ * this.§_-bd§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§_-dH§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§_-dH§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-sp§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§_-dH§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§_-dH§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-sp§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-dS§();
         _loc4_.§_-dS§();
         return b2Math.§_-Y9§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
