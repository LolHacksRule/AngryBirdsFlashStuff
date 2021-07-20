package §2_§
{
   import §?!C§.b2Mat22;
   import §?!C§.b2Mat33;
   import §?!C§.b2Math;
   import §?!C§.b2Vec2;
   import §?!C§.b2Vec3;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §,#z§:b2Vec2 = new b2Vec2();
       
      
      private var §^_§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §%#[§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var § w§:b2Vec3;
      
      private var §;#P§:Number;
      
      private var §<#F§:b2Mat33;
      
      private var §=$=§:Number;
      
      private var §^#d§:Boolean;
      
      private var §?$ §:Number;
      
      private var §6$6§:Number;
      
      private var §^#P§:Boolean;
      
      private var §@"3§:Number;
      
      private var §"!p§:Number;
      
      private var §0R§:Number;
      
      private var §8!q§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§^_§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§%#[§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ w§ = new b2Vec3();
         this.§<#F§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§0$&§);
         this.m_localAnchor2.SetV(param1.§=#I§);
         this.§@"3§ = param1.§`#,§;
         this.§ w§.§1c§();
         this.§;#P§ = 0;
         this.§"!p§ = param1.§`#F§;
         this.§0R§ = param1.§;"D§;
         this.§?$ § = param1.§@!o§;
         this.§6$6§ = param1.motorSpeed;
         this.§^#P§ = param1.§8!R§;
         this.§^#d§ = param1.§2`§;
         this.§8!q§ = b2internal::5!;
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
         return new b2Vec2(param1 * this.§ w§.x,param1 * this.§ w§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ w§.z;
      }
      
      public function §;"p§() : Number
      {
         return b2internal::"$'.m_sweep.a - b2internal::]!".m_sweep.a - this.§@"3§;
      }
      
      public function §-$'§() : Number
      {
         return b2internal::"$'.m_angularVelocity - b2internal::]!".m_angularVelocity;
      }
      
      public function §'$2§() : Boolean
      {
         return this.§^#P§;
      }
      
      public function §99§(param1:Boolean) : void
      {
         this.§^#P§ = param1;
      }
      
      public function §;!7§() : Number
      {
         return this.§"!p§;
      }
      
      public function §9"9§() : Number
      {
         return this.§0R§;
      }
      
      public function §2#&§(param1:Number, param2:Number) : void
      {
         this.§"!p§ = param1;
         this.§0R§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§^#d§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::]!".SetAwake(true);
         b2internal::"$'.SetAwake(true);
         this.§^#d§ = param1;
      }
      
      public function §[$4§(param1:Number) : void
      {
         b2internal::]!".SetAwake(true);
         b2internal::"$'.SetAwake(true);
         this.§6$6§ = param1;
      }
      
      public function §1#f§() : Number
      {
         return this.§6$6§;
      }
      
      public function §@#s§(param1:Number) : void
      {
         this.§?$ § = param1;
      }
      
      public function § "n§() : Number
      {
         return this.§?$ §;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc2_ = b2internal::]!";
         _loc3_ = b2internal::"$';
         if(this.§^#d§ || this.§^#P§)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.§;#>§;
         var _loc11_:Number = _loc3_.§;#>§;
         var _loc12_:Number = _loc2_.§!#k§;
         var _loc13_:Number = _loc3_.§!#k§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§<#F§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§<#F§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§<#F§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§<#F§.col1.y = this.§<#F§.col2.x;
         this.§<#F§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§<#F§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§<#F§.col1.z = this.§<#F§.col3.x;
         this.§<#F§.col2.z = this.§<#F§.col3.y;
         this.§<#F§.col3.z = _loc12_ + _loc13_;
         this.§=$=§ = 1 / (_loc12_ + _loc13_);
         if(this.§^#d§ == false || _loc14_)
         {
            this.§;#P§ = 0;
         }
         if(this.§^#P§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§@"3§;
            if(b2Math.§`a§(this.§0R§ - this.§"!p§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§8!q§ = b2internal::-a;
            }
            else if(_loc15_ <= this.§"!p§)
            {
               if(this.§8!q§ != b2internal::0$2)
               {
                  this.§ w§.z = 0;
               }
               this.§8!q§ = b2internal::0$2;
            }
            else if(_loc15_ >= this.§0R§)
            {
               if(this.§8!q§ != b2internal::5#_)
               {
                  this.§ w§.z = 0;
               }
               this.§8!q§ = b2internal::5#_;
            }
            else
            {
               this.§8!q§ = b2internal::5!;
               this.§ w§.z = 0;
            }
         }
         else
         {
            this.§8!q§ = b2internal::5!;
         }
         if(param1.§,#g§)
         {
            this.§ w§.x *= param1.§+!y§;
            this.§ w§.y *= param1.§+!y§;
            this.§;#P§ *= param1.§+!y§;
            _loc16_ = this.§ w§.x;
            _loc17_ = this.§ w§.y;
            _loc2_.§!#p§.x -= _loc10_ * _loc16_;
            _loc2_.§!#p§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§;#P§ + this.§ w§.z);
            _loc3_.§!#p§.x += _loc11_ * _loc16_;
            _loc3_.§!#p§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§;#P§ + this.§ w§.z);
         }
         else
         {
            this.§ w§.§1c§();
            this.§;#P§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc2_:b2Body = b2internal::]!";
         var _loc3_:b2Body = b2internal::"$';
         var _loc11_:b2Vec2 = _loc2_.§!#p§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§!#p§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§;#>§;
         var _loc16_:Number = _loc3_.§;#>§;
         var _loc17_:Number = _loc2_.§!#k§;
         var _loc18_:Number = _loc3_.§!#k§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§^#d§ && this.§8!q§ != b2internal::-a && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§6$6§;
            _loc21_ = this.§=$=§ * -_loc20_;
            _loc22_ = this.§;#P§;
            _loc23_ = param1.dt * this.§?$ §;
            this.§;#P§ = b2Math.§<!f§(this.§;#P§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§;#P§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§^#P§ && this.§8!q§ != b2internal::5! && !_loc19_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc24_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc25_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc26_ = _loc14_ - _loc12_;
            this.§<#F§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§8!q§ == b2internal::-a)
            {
               this.§ w§.§ #H§(this.impulse3);
            }
            else if(this.§8!q§ == b2internal::0$2)
            {
               if((_loc6_ = this.§ w§.z + this.impulse3.z) < 0)
               {
                  this.§<#F§.Solve22(this.§%#[§,-_loc24_ + this.§ w§.z * this.§<#F§.col3.x,-_loc25_ + this.§ w§.z * this.§<#F§.col3.y);
                  this.impulse3.x = this.§%#[§.x;
                  this.impulse3.y = this.§%#[§.y;
                  this.impulse3.z = -this.§ w§.z;
                  this.§ w§.x += this.§%#[§.x;
                  this.§ w§.y += this.§%#[§.y;
                  this.§ w§.z = 0;
               }
               else
               {
                  this.§ w§.x += this.impulse3.x;
                  this.§ w§.y += this.impulse3.y;
                  this.§ w§.z += this.impulse3.z;
               }
            }
            else if(this.§8!q§ == b2internal::5#_)
            {
               if((_loc6_ = this.§ w§.z + this.impulse3.z) > 0)
               {
                  this.§<#F§.Solve22(this.§%#[§,-_loc24_ + this.§ w§.z * this.§<#F§.col3.x,-_loc25_ + this.§ w§.z * this.§<#F§.col3.y);
                  this.impulse3.x = this.§%#[§.x;
                  this.impulse3.y = this.§%#[§.y;
                  this.impulse3.z = -this.§ w§.z;
                  this.§ w§.x += this.§%#[§.x;
                  this.§ w§.y += this.§%#[§.y;
                  this.§ w§.z = 0;
               }
               else
               {
                  this.§ w§.x += this.impulse3.x;
                  this.§ w§.y += this.impulse3.y;
                  this.§ w§.z += this.impulse3.z;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc27_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc28_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§<#F§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§ w§.x += this.impulse2.x;
            this.§ w§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§!#p§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§!#p§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal::]!";
         var _loc6_:b2Body = b2internal::"$';
         var _loc7_:* = b2internal::&"5 + b2internal::7!_ == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§^#P§ && this.§8!q§ != b2internal::5! && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§@"3§;
            _loc27_ = 0;
            if(this.§8!q§ == b2internal::-a)
            {
               _loc3_ = b2Math.§<!f§(_loc26_ - this.§"!p§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§=$=§ * _loc3_;
               _loc8_ = b2Math.§`a§(_loc3_);
            }
            else if(this.§8!q§ == b2internal::0$2)
            {
               _loc3_ = _loc26_ - this.§"!p§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§<!f§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§=$=§ * _loc3_;
            }
            else if(this.§8!q§ == b2internal::5#_)
            {
               _loc3_ = _loc26_ - this.§0R§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§<!f§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§=$=§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§!#k§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§!#k§ * _loc27_;
            _loc5_.§[X§();
            _loc6_.§[X§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc13_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc14_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc13_ + _loc4_.col2.x * _loc14_;
         _loc14_ = _loc4_.col1.y * _loc13_ + _loc4_.col2.y * _loc14_;
         _loc13_ = _loc10_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc15_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc16_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc15_ + _loc4_.col2.x * _loc16_;
         _loc16_ = _loc4_.col1.y * _loc15_ + _loc4_.col2.y * _loc16_;
         _loc15_ = _loc10_;
         var _loc17_:Number = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
         var _loc18_:Number = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         var _loc19_:Number = _loc17_ * _loc17_ + _loc18_ * _loc18_;
         var _loc20_:Number;
         _loc9_ = _loc20_ = Math.sqrt(_loc19_);
         var _loc21_:Number = _loc5_.§;#>§;
         var _loc22_:Number = _loc6_.§;#>§;
         var _loc23_:Number = _loc5_.§!#k§;
         var _loc24_:Number = _loc6_.§!#k§;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            _loc28_ = _loc17_ / _loc20_;
            _loc29_ = _loc18_ / _loc20_;
            _loc30_ = _loc21_ + _loc22_;
            _loc11_ = (_loc31_ = 1 / _loc30_) * -_loc17_;
            _loc12_ = _loc31_ * -_loc18_;
            _loc32_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc32_ * _loc21_ * _loc11_;
            _loc5_.m_sweep.c.y -= _loc32_ * _loc21_ * _loc12_;
            _loc6_.m_sweep.c.x += _loc32_ * _loc22_ * _loc11_;
            _loc6_.m_sweep.c.y += _loc32_ * _loc22_ * _loc12_;
            _loc17_ = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
            _loc18_ = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         }
         this.K1.col1.x = _loc21_ + _loc22_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc21_ + _loc22_;
         this.K2.col1.x = _loc23_ * _loc14_ * _loc14_;
         this.K2.col2.x = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col1.y = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col2.y = _loc23_ * _loc13_ * _loc13_;
         this.K3.col1.x = _loc24_ * _loc16_ * _loc16_;
         this.K3.col2.x = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col1.y = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col2.y = _loc24_ * _loc15_ * _loc15_;
         this.§^_§.§`#T§(this.K1);
         this.§^_§.§@!n§(this.K2);
         this.§^_§.§@!n§(this.K3);
         this.§^_§.§%!_§(§,#z§,-_loc17_,-_loc18_);
         _loc11_ = §,#z§.x;
         _loc12_ = §,#z§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§;#>§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§;#>§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§!#k§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§;#>§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§;#>§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§!#k§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§[X§();
         _loc6_.§[X§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
