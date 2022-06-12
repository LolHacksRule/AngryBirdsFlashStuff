package §2_§
{
   import §?!C§.b2Mat22;
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §^_§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §^#-§:b2Vec2;
      
      private var §<#H§:b2Vec2;
      
      private var § w§:b2Vec2;
      
      private var §<#F§:b2Mat22;
      
      private var §0#L§:b2Vec2;
      
      private var §@!t§:Number;
      
      private var §3"]§:Number;
      
      private var §[K§:Number;
      
      private var §;"3§:Number;
      
      private var §5"r§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§^_§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§^#-§ = new b2Vec2();
         this.§<#H§ = new b2Vec2();
         this.§ w§ = new b2Vec2();
         this.§<#F§ = new b2Mat22();
         this.§0#L§ = new b2Vec2();
         super(param1);
         this.§<#H§.SetV(param1.target);
         _loc2_ = this.§<#H§.x - b2internal::"$'.m_xf.position.x;
         var _loc3_:Number = this.§<#H§.y - b2internal::"$'.m_xf.position.y;
         _loc4_ = b2internal::"$'.m_xf.R;
         this.§^#-§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§^#-§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§@!t§ = param1.§=!g§;
         this.§ w§.§1c§();
         this.§3"]§ = param1.§,K§;
         this.§[K§ = param1.dampingRatio;
         this.§;"3§ = 0;
         this.§5"r§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§<#H§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"$'.GetWorldPoint(this.§^#-§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§ w§.x,param1 * this.§ w§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §@J§() : b2Vec2
      {
         return this.§<#H§;
      }
      
      public function §>!3§(param1:b2Vec2) : void
      {
         if(b2internal::"$'.IsAwake() == false)
         {
            b2internal::"$'.SetAwake(true);
         }
         this.§<#H§ = param1;
      }
      
      public function §-#§() : Number
      {
         return this.§@!t§;
      }
      
      public function §2"f§(param1:Number) : void
      {
         this.§@!t§ = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::"$';
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§3"]§;
         var _loc5_:Number = 2 * _loc3_ * this.§[K§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§5"r§ = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.§5"r§ = this.§5"r§ != 0 ? Number(1 / this.§5"r§) : Number(0);
         this.§;"3§ = param1.dt * _loc6_ * this.§5"r§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§^#-§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§^#-§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§;#>§;
         _loc12_ = _loc2_.§!#k§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§^_§.§`#T§(this.K1);
         this.§^_§.§@!n§(this.K2);
         this.§^_§.col1.x += this.§5"r§;
         this.§^_§.col2.y += this.§5"r§;
         this.§^_§.§4I§(this.§<#F§);
         this.§0#L§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§<#H§.x;
         this.§0#L§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§<#H§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§ w§.x *= param1.§+!y§;
         this.§ w§.y *= param1.§+!y§;
         _loc2_.§!#p§.x += _loc11_ * this.§ w§.x;
         _loc2_.§!#p§.y += _loc11_ * this.§ w§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§ w§.y - _loc9_ * this.§ w§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::"$';
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§^#-§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§^#-§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§!#p§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§!#p§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§<#F§;
         _loc4_ = _loc8_ + this.§;"3§ * this.§0#L§.x + this.§5"r§ * this.§ w§.x;
         _loc5_ = _loc9_ + this.§;"3§ * this.§0#L§.y + this.§5"r§ * this.§ w§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§ w§.x;
         var _loc13_:Number = this.§ w§.y;
         this.§ w§.x += _loc10_;
         this.§ w§.y += _loc11_;
         var _loc14_:Number = param1.dt * this.§@!t§;
         if(this.§ w§.§?#&§() > _loc14_ * _loc14_)
         {
            this.§ w§.§?$'§(_loc14_ / this.§ w§.Length());
         }
         _loc10_ = this.§ w§.x - _loc12_;
         _loc11_ = this.§ w§.y - _loc13_;
         _loc2_.§!#p§.x += _loc2_.§;#>§ * _loc10_;
         _loc2_.§!#p§.y += _loc2_.§;#>§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§!#k§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
