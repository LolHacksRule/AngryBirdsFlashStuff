package §;!r§
{
   import §,v§.b2Body;
   import §,v§.b2TimeStep;
   import §-!A§.b2Mat22;
   import §-!A§.b2Mat33;
   import §-!A§.b2Math;
   import §-!A§.b2Vec2;
   import §-!A§.b2Vec3;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §4!i§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §>_§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §[!9§:b2Vec3;
      
      private var § !L§:Number;
      
      private var §-X§:b2Mat33;
      
      private var §'"1§:Number;
      
      private var §]n§:Boolean;
      
      private var §96§:Number;
      
      private var §6r§:Number;
      
      private var §[!C§:Boolean;
      
      private var §>9§:Number;
      
      private var §'!#§:Number;
      
      private var §'b§:Number;
      
      private var §1!E§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§>_§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§[!9§ = new b2Vec3();
         this.§-X§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§5S§);
         this.m_localAnchor2.SetV(param1.§-!9§);
         this.§>9§ = param1.§,!w§;
         this.§[!9§.§9N§();
         this.§ !L§ = 0;
         this.§'!#§ = param1.§7#§;
         this.§'b§ = param1.§%![§;
         this.§96§ = param1.§4r§;
         this.§6r§ = param1.motorSpeed;
         this.§[!C§ = param1.§%"5§;
         this.§]n§ = param1.§0z§;
         this.§1!E§ = b2internal::-!n;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: !>.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!9§.x,param1 * this.§[!9§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[!9§.z;
      }
      
      public function §<§() : Number
      {
         return b2internal:: !>.m_sweep.a - b2internal::-U.m_sweep.a - this.§>9§;
      }
      
      public function § B§() : Number
      {
         return b2internal:: !>.m_angularVelocity - b2internal::-U.m_angularVelocity;
      }
      
      public function §-!]§() : Boolean
      {
         return this.§[!C§;
      }
      
      public function §3q§(param1:Boolean) : void
      {
         this.§[!C§ = param1;
      }
      
      public function §^X§() : Number
      {
         return this.§'!#§;
      }
      
      public function §=b§() : Number
      {
         return this.§'b§;
      }
      
      public function §^"$§(param1:Number, param2:Number) : void
      {
         this.§'!#§ = param1;
         this.§'b§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§]n§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::-U.SetAwake(true);
         b2internal:: !>.SetAwake(true);
         this.§]n§ = param1;
      }
      
      public function §!-§(param1:Number) : void
      {
         b2internal::-U.SetAwake(true);
         b2internal:: !>.SetAwake(true);
         this.§6r§ = param1;
      }
      
      public function §7i§() : Number
      {
         return this.§6r§;
      }
      
      public function §<1§(param1:Number) : void
      {
         this.§96§ = param1;
      }
      
      public function §default§() : Number
      {
         return this.§96§;
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
         _loc2_ = b2internal::-U;
         _loc3_ = b2internal:: !>;
         if(this.§]n§ || this.§[!C§)
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
         var _loc10_:Number = _loc2_.§3!o§;
         var _loc11_:Number = _loc3_.§3!o§;
         var _loc12_:Number = _loc2_.§%!^§;
         var _loc13_:Number = _loc3_.§%!^§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§-X§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§-X§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§-X§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§-X§.col1.y = this.§-X§.col2.x;
         this.§-X§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§-X§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§-X§.col1.z = this.§-X§.col3.x;
         this.§-X§.col2.z = this.§-X§.col3.y;
         this.§-X§.col3.z = _loc12_ + _loc13_;
         this.§'"1§ = 1 / (_loc12_ + _loc13_);
         if(this.§]n§ == false || _loc14_)
         {
            this.§ !L§ = 0;
         }
         if(this.§[!C§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§>9§;
            if(b2Math.§'!B§(this.§'b§ - this.§'!#§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§1!E§ = b2internal::;c;
            }
            else if(_loc15_ <= this.§'!#§)
            {
               if(this.§1!E§ != b2internal::^1)
               {
                  this.§[!9§.z = 0;
               }
               this.§1!E§ = b2internal::^1;
            }
            else if(_loc15_ >= this.§'b§)
            {
               if(this.§1!E§ != b2internal::<!s)
               {
                  this.§[!9§.z = 0;
               }
               this.§1!E§ = b2internal::<!s;
            }
            else
            {
               this.§1!E§ = b2internal::-!n;
               this.§[!9§.z = 0;
            }
         }
         else
         {
            this.§1!E§ = b2internal::-!n;
         }
         if(param1.§-F§)
         {
            this.§[!9§.x *= param1.§;!y§;
            this.§[!9§.y *= param1.§;!y§;
            this.§ !L§ *= param1.§;!y§;
            _loc16_ = this.§[!9§.x;
            _loc17_ = this.§[!9§.y;
            _loc2_.§4!"§.x -= _loc10_ * _loc16_;
            _loc2_.§4!"§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§ !L§ + this.§[!9§.z);
            _loc3_.§4!"§.x += _loc11_ * _loc16_;
            _loc3_.§4!"§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§ !L§ + this.§[!9§.z);
         }
         else
         {
            this.§[!9§.§9N§();
            this.§ !L§ = 0;
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
         var _loc2_:b2Body = b2internal::-U;
         var _loc3_:b2Body = b2internal:: !>;
         var _loc11_:b2Vec2 = _loc2_.§4!"§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§4!"§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§3!o§;
         var _loc16_:Number = _loc3_.§3!o§;
         var _loc17_:Number = _loc2_.§%!^§;
         var _loc18_:Number = _loc3_.§%!^§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§]n§ && this.§1!E§ != b2internal::;c && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§6r§;
            _loc21_ = this.§'"1§ * -_loc20_;
            _loc22_ = this.§ !L§;
            _loc23_ = param1.§]>§ * this.§96§;
            this.§ !L§ = b2Math.§;p§(this.§ !L§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§ !L§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§[!C§ && this.§1!E§ != b2internal::-!n && !_loc19_)
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
            this.§-X§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§1!E§ == b2internal::;c)
            {
               this.§[!9§.§!"§(this.impulse3);
            }
            else if(this.§1!E§ == b2internal::^1)
            {
               if((_loc6_ = this.§[!9§.z + this.impulse3.z) < 0)
               {
                  this.§-X§.Solve22(this.§>_§,-_loc24_ + this.§[!9§.z * this.§-X§.col3.x,-_loc25_ + this.§[!9§.z * this.§-X§.col3.y);
                  this.impulse3.x = this.§>_§.x;
                  this.impulse3.y = this.§>_§.y;
                  this.impulse3.z = -this.§[!9§.z;
                  this.§[!9§.x += this.§>_§.x;
                  this.§[!9§.y += this.§>_§.y;
                  this.§[!9§.z = 0;
               }
               else
               {
                  this.§[!9§.x += this.impulse3.x;
                  this.§[!9§.y += this.impulse3.y;
                  this.§[!9§.z += this.impulse3.z;
               }
            }
            else if(this.§1!E§ == b2internal::<!s)
            {
               if((_loc6_ = this.§[!9§.z + this.impulse3.z) > 0)
               {
                  this.§-X§.Solve22(this.§>_§,-_loc24_ + this.§[!9§.z * this.§-X§.col3.x,-_loc25_ + this.§[!9§.z * this.§-X§.col3.y);
                  this.impulse3.x = this.§>_§.x;
                  this.impulse3.y = this.§>_§.y;
                  this.impulse3.z = -this.§[!9§.z;
                  this.§[!9§.x += this.§>_§.x;
                  this.§[!9§.y += this.§>_§.y;
                  this.§[!9§.z = 0;
               }
               else
               {
                  this.§[!9§.x += this.impulse3.x;
                  this.§[!9§.y += this.impulse3.y;
                  this.§[!9§.z += this.impulse3.z;
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
            this.§-X§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§[!9§.x += this.impulse2.x;
            this.§[!9§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§4!"§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§4!"§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::-U;
         var _loc6_:b2Body = b2internal:: !>;
         var _loc7_:* = b2internal::9!4 + b2internal::0G == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§[!C§ && this.§1!E§ != b2internal::-!n && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§>9§;
            _loc27_ = 0;
            if(this.§1!E§ == b2internal::;c)
            {
               _loc3_ = b2Math.§;p§(_loc26_ - this.§'!#§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§'"1§ * _loc3_;
               _loc8_ = b2Math.§'!B§(_loc3_);
            }
            else if(this.§1!E§ == b2internal::^1)
            {
               _loc3_ = _loc26_ - this.§'!#§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§;p§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§'"1§ * _loc3_;
            }
            else if(this.§1!E§ == b2internal::<!s)
            {
               _loc3_ = _loc26_ - this.§'b§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§;p§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§'"1§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§%!^§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§%!^§ * _loc27_;
            _loc5_.§+!S§();
            _loc6_.§+!S§();
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
         var _loc21_:Number = _loc5_.§3!o§;
         var _loc22_:Number = _loc6_.§3!o§;
         var _loc23_:Number = _loc5_.§%!^§;
         var _loc24_:Number = _loc6_.§%!^§;
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
         this.K.§>"-§(this.K1);
         this.K.§2?§(this.K2);
         this.K.§2?§(this.K3);
         this.K.§[J§(§4!i§,-_loc17_,-_loc18_);
         _loc11_ = §4!i§.x;
         _loc12_ = §4!i§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§3!o§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§3!o§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§%!^§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§3!o§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§3!o§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§%!^§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§+!S§();
         _loc6_.§+!S§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
