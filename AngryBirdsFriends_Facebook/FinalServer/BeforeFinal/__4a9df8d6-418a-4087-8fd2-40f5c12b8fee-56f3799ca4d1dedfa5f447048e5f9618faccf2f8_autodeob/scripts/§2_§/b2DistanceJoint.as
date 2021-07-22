package §2_§
{
   import §?!C§.b2Mat22;
   import §?!C§.b2Math;
   import §?!C§.b2Vec2;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §,i§:b2Vec2;
      
      private var §3"]§:Number;
      
      private var §[K§:Number;
      
      private var §5"r§:Number;
      
      private var §!$!§:Number;
      
      private var § w§:Number;
      
      private var §<#F§:Number;
      
      private var §5%§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,i§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§0$&§);
         this.m_localAnchor2.SetV(param1.§=#I§);
         this.§5%§ = param1.length;
         this.§3"]§ = param1.§,K§;
         this.§[K§ = param1.dampingRatio;
         this.§ w§ = 0;
         this.§5"r§ = 0;
         this.§!$!§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!".GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"$'.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§ w§ * this.§,i§.x,param1 * this.§ w§ * this.§,i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §=G§() : Number
      {
         return this.§5%§;
      }
      
      public function §7"F§(param1:Number) : void
      {
         this.§5%§ = param1;
      }
      
      public function §["q§() : Number
      {
         return this.§3"]§;
      }
      
      public function §]$$§(param1:Number) : void
      {
         this.§3"]§ = param1;
      }
      
      public function §<"1§() : Number
      {
         return this.§[K§;
      }
      
      public function §="O§(param1:Number) : void
      {
         this.§[K§ = param1;
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
         _loc4_ = b2internal::]!";
         _loc5_ = b2internal::"$';
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
         this.§,i§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§,i§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§,i§.x * this.§,i§.x + this.§,i§.y * this.§,i§.y)) > b2Settings.b2_linearSlop)
         {
            this.§,i§.§?$'§(1 / _loc10_);
         }
         else
         {
            this.§,i§.§1c§();
         }
         var _loc11_:Number = _loc6_ * this.§,i§.y - _loc7_ * this.§,i§.x;
         var _loc12_:Number = _loc8_ * this.§,i§.y - _loc9_ * this.§,i§.x;
         var _loc13_:Number = _loc4_.§;#>§ + _loc4_.§!#k§ * _loc11_ * _loc11_ + _loc5_.§;#>§ + _loc5_.§!#k§ * _loc12_ * _loc12_;
         this.§<#F§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§3"]§ > 0)
         {
            _loc14_ = _loc10_ - this.§5%§;
            _loc15_ = 2 * Math.PI * this.§3"]§;
            _loc16_ = 2 * this.§<#F§ * this.§[K§ * _loc15_;
            _loc17_ = this.§<#F§ * _loc15_ * _loc15_;
            this.§5"r§ = param1.dt * (_loc16_ + param1.dt * _loc17_);
            this.§5"r§ = this.§5"r§ != 0 ? Number(1 / this.§5"r§) : Number(0);
            this.§!$!§ = _loc14_ * param1.dt * _loc17_ * this.§5"r§;
            this.§<#F§ = _loc13_ + this.§5"r§;
            this.§<#F§ = this.§<#F§ != 0 ? Number(1 / this.§<#F§) : Number(0);
         }
         if(param1.§,#g§)
         {
            this.§ w§ *= param1.§+!y§;
            _loc18_ = this.§ w§ * this.§,i§.x;
            _loc19_ = this.§ w§ * this.§,i§.y;
            _loc4_.§!#p§.x -= _loc4_.§;#>§ * _loc18_;
            _loc4_.§!#p§.y -= _loc4_.§;#>§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§!#k§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§!#p§.x += _loc5_.§;#>§ * _loc18_;
            _loc5_.§!#p§.y += _loc5_.§;#>§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§!#k§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§ w§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::]!";
         var _loc4_:b2Body = b2internal::"$';
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
         var _loc10_:Number = _loc3_.§!#p§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§!#p§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§!#p§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§!#p§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§,i§.x * (_loc12_ - _loc10_) + this.§,i§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§<#F§ * (_loc14_ + this.§!$!§ + this.§5"r§ * this.§ w§);
         this.§ w§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§,i§.x;
         var _loc17_:Number = _loc15_ * this.§,i§.y;
         _loc3_.§!#p§.x -= _loc3_.§;#>§ * _loc16_;
         _loc3_.§!#p§.y -= _loc3_.§;#>§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§!#k§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§!#p§.x += _loc4_.§;#>§ * _loc16_;
         _loc4_.§!#p§.y += _loc4_.§;#>§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§!#k§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§3"]§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::]!";
         var _loc4_:b2Body = b2internal::"$';
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
         var _loc13_:Number = _loc12_ - this.§5%§;
         _loc13_ = b2Math.§<!f§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§<#F§ * _loc13_;
         this.§,i§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§,i§.x;
         var _loc16_:Number = _loc14_ * this.§,i§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§;#>§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§;#>§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§!#k§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§;#>§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§;#>§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§!#k§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§[X§();
         _loc4_.§[X§();
         return b2Math.§`a§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
