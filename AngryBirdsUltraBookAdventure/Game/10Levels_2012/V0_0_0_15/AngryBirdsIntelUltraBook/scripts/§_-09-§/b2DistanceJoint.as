package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-Mz§:b2Vec2;
      
      private var §_-FO§:Number;
      
      private var §_-x6§:Number;
      
      private var §_-v-§:Number;
      
      private var §_-D5§:Number;
      
      private var §_-MK§:Number;
      
      private var §_-5W§:Number;
      
      private var §_-63§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Mz§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-F6§);
         this.m_localAnchor2.SetV(param1.§_-0Bf§);
         this.§_-63§ = param1.length;
         this.§_-FO§ = param1.§true §;
         this.§_-x6§ = param1.§_-9r§;
         this.§_-MK§ = 0;
         this.§_-v-§ = 0;
         this.§_-D5§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-MK§ * this.§_-Mz§.x,param1 * this.§_-MK§ * this.§_-Mz§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-8C§() : Number
      {
         return this.§_-63§;
      }
      
      public function §_-6z§(param1:Number) : void
      {
         this.§_-63§ = param1;
      }
      
      public function §_-Am§() : Number
      {
         return this.§_-FO§;
      }
      
      public function §_-9W§(param1:Number) : void
      {
         this.§_-FO§ = param1;
      }
      
      public function §_-U8§() : Number
      {
         return this.§_-x6§;
      }
      
      public function §_-6H§(param1:Number) : void
      {
         this.§_-x6§ = param1;
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
         _loc4_ = b2internal::_-0FB;
         _loc5_ = b2internal::_-c9;
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
         this.§_-Mz§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§_-Mz§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-Mz§.x * this.§_-Mz§.x + this.§_-Mz§.y * this.§_-Mz§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-Mz§.§_-mx§(1 / _loc10_);
         }
         else
         {
            this.§_-Mz§.§_-el§();
         }
         var _loc11_:Number = _loc6_ * this.§_-Mz§.y - _loc7_ * this.§_-Mz§.x;
         var _loc12_:Number = _loc8_ * this.§_-Mz§.y - _loc9_ * this.§_-Mz§.x;
         var _loc13_:Number = _loc4_.§_-03A§ + _loc4_.§_-Dz§ * _loc11_ * _loc11_ + _loc5_.§_-03A§ + _loc5_.§_-Dz§ * _loc12_ * _loc12_;
         this.§_-5W§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-FO§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-63§;
            _loc15_ = 2 * Math.PI * this.§_-FO§;
            _loc16_ = 2 * this.§_-5W§ * this.§_-x6§ * _loc15_;
            _loc17_ = this.§_-5W§ * _loc15_ * _loc15_;
            this.§_-v-§ = param1.§_-pn§ * (_loc16_ + param1.§_-pn§ * _loc17_);
            this.§_-v-§ = this.§_-v-§ != 0 ? Number(1 / this.§_-v-§) : Number(0);
            this.§_-D5§ = _loc14_ * param1.§_-pn§ * _loc17_ * this.§_-v-§;
            this.§_-5W§ = _loc13_ + this.§_-v-§;
            this.§_-5W§ = this.§_-5W§ != 0 ? Number(1 / this.§_-5W§) : Number(0);
         }
         if(param1.§_-0F7§)
         {
            this.§_-MK§ *= param1.§_-b8§;
            _loc18_ = this.§_-MK§ * this.§_-Mz§.x;
            _loc19_ = this.§_-MK§ * this.§_-Mz§.y;
            _loc4_.§_-kZ§.x -= _loc4_.§_-03A§ * _loc18_;
            _loc4_.§_-kZ§.y -= _loc4_.§_-03A§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-Dz§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-kZ§.x += _loc5_.§_-03A§ * _loc18_;
            _loc5_.§_-kZ§.y += _loc5_.§_-03A§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-Dz§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-MK§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-0FB;
         var _loc4_:b2Body = b2internal::_-c9;
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
         var _loc10_:Number = _loc3_.§_-kZ§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-kZ§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-kZ§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-kZ§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-Mz§.x * (_loc12_ - _loc10_) + this.§_-Mz§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-5W§ * (_loc14_ + this.§_-D5§ + this.§_-v-§ * this.§_-MK§);
         this.§_-MK§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-Mz§.x;
         var _loc17_:Number = _loc15_ * this.§_-Mz§.y;
         _loc3_.§_-kZ§.x -= _loc3_.§_-03A§ * _loc16_;
         _loc3_.§_-kZ§.y -= _loc3_.§_-03A§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-Dz§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-kZ§.x += _loc4_.§_-03A§ * _loc16_;
         _loc4_.§_-kZ§.y += _loc4_.§_-03A§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-Dz§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-FO§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-0FB;
         var _loc4_:b2Body = b2internal::_-c9;
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
         var _loc13_:Number = _loc12_ - this.§_-63§;
         _loc13_ = b2Math.§_-ZK§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-5W§ * _loc13_;
         this.§_-Mz§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-Mz§.x;
         var _loc16_:Number = _loc14_ * this.§_-Mz§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§_-03A§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§_-03A§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-Dz§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§_-03A§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§_-03A§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-Dz§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-da§();
         _loc4_.§_-da§();
         return b2Math.§_-010§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
