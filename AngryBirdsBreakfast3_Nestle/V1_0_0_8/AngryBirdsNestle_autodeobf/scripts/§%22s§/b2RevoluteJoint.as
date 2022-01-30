package §"s§
{
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2TimeStep;
   import §[K§.b2Mat22;
   import §[K§.b2Mat33;
   import §[K§.b2Math;
   import §[K§.b2Vec2;
   import §[K§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §[!y§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §9'§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §+f§:b2Vec3;
      
      private var §>h§:Number;
      
      private var §^-§:b2Mat33;
      
      private var §;S§:Number;
      
      private var §==§:Boolean;
      
      private var §3'§:Number;
      
      private var §0Y§:Number;
      
      private var §1J§:Boolean;
      
      private var §6J§:Number;
      
      private var §];§:Number;
      
      private var §7!c§:Number;
      
      private var §6!s§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§9'§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+f§ = new b2Vec3();
         this.§^-§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§#J§);
         this.m_localAnchor2.SetV(param1.§7!A§);
         this.§6J§ = param1.§[§;
         this.§+f§.§3S§();
         this.§>h§ = 0;
         this.§];§ = param1.§,$§;
         this.§7!c§ = param1.§'I§;
         this.§3'§ = param1.§9"$§;
         this.§0Y§ = param1.motorSpeed;
         this.§1J§ = param1.§ b§;
         this.§==§ = param1.§-!W§;
         this.§6!s§ = b2internal::4!0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::;l.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+f§.x,param1 * this.§+f§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+f§.z;
      }
      
      public function §^8§() : Number
      {
         return b2internal::2z.m_sweep.a - b2internal::;l.m_sweep.a - this.§6J§;
      }
      
      public function §!!R§() : Number
      {
         return b2internal::2z.m_angularVelocity - b2internal::;l.m_angularVelocity;
      }
      
      public function §[-§() : Boolean
      {
         return this.§1J§;
      }
      
      public function §>!`§(param1:Boolean) : void
      {
         this.§1J§ = param1;
      }
      
      public function §while§() : Number
      {
         return this.§];§;
      }
      
      public function §4w§() : Number
      {
         return this.§7!c§;
      }
      
      public function §?"-§(param1:Number, param2:Number) : void
      {
         this.§];§ = param1;
         this.§7!c§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§==§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::;l.SetAwake(true);
         b2internal::2z.SetAwake(true);
         this.§==§ = param1;
      }
      
      public function §case§(param1:Number) : void
      {
         b2internal::;l.SetAwake(true);
         b2internal::2z.SetAwake(true);
         this.§0Y§ = param1;
      }
      
      public function §5k§() : Number
      {
         return this.§0Y§;
      }
      
      public function §9"'§(param1:Number) : void
      {
         this.§3'§ = param1;
      }
      
      public function §;!L§() : Number
      {
         return this.§3'§;
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
         _loc2_ = b2internal::;l;
         _loc3_ = b2internal::2z;
         if(this.§==§ || this.§1J§)
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
         var _loc10_:Number = _loc2_.§]p§;
         var _loc11_:Number = _loc3_.§]p§;
         var _loc12_:Number = _loc2_.§;!$§;
         var _loc13_:Number = _loc3_.§;!$§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§^-§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§^-§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§^-§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§^-§.col1.y = this.§^-§.col2.x;
         this.§^-§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§^-§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§^-§.col1.z = this.§^-§.col3.x;
         this.§^-§.col2.z = this.§^-§.col3.y;
         this.§^-§.col3.z = _loc12_ + _loc13_;
         this.§;S§ = 1 / (_loc12_ + _loc13_);
         if(this.§==§ == false || _loc14_)
         {
            this.§>h§ = 0;
         }
         if(this.§1J§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§6J§;
            if(b2Math.§-L§(this.§7!c§ - this.§];§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§6!s§ = b2internal::-!F;
            }
            else if(_loc15_ <= this.§];§)
            {
               if(this.§6!s§ != b2internal::,!?)
               {
                  this.§+f§.z = 0;
               }
               this.§6!s§ = b2internal::,!?;
            }
            else if(_loc15_ >= this.§7!c§)
            {
               if(this.§6!s§ != b2internal::&!d)
               {
                  this.§+f§.z = 0;
               }
               this.§6!s§ = b2internal::&!d;
            }
            else
            {
               this.§6!s§ = b2internal::4!0;
               this.§+f§.z = 0;
            }
         }
         else
         {
            this.§6!s§ = b2internal::4!0;
         }
         if(param1.§8"4§)
         {
            this.§+f§.x *= param1.§1!+§;
            this.§+f§.y *= param1.§1!+§;
            this.§>h§ *= param1.§1!+§;
            _loc16_ = this.§+f§.x;
            _loc17_ = this.§+f§.y;
            _loc2_.§;B§.x -= _loc10_ * _loc16_;
            _loc2_.§;B§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§>h§ + this.§+f§.z);
            _loc3_.§;B§.x += _loc11_ * _loc16_;
            _loc3_.§;B§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§>h§ + this.§+f§.z);
         }
         else
         {
            this.§+f§.§3S§();
            this.§>h§ = 0;
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
         var _loc2_:b2Body = b2internal::;l;
         var _loc3_:b2Body = b2internal::2z;
         var _loc11_:b2Vec2 = _loc2_.§;B§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§;B§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§]p§;
         var _loc16_:Number = _loc3_.§]p§;
         var _loc17_:Number = _loc2_.§;!$§;
         var _loc18_:Number = _loc3_.§;!$§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§==§ && this.§6!s§ != b2internal::-!F && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§0Y§;
            _loc21_ = this.§;S§ * -_loc20_;
            _loc22_ = this.§>h§;
            _loc23_ = param1.§>!W§ * this.§3'§;
            this.§>h§ = b2Math.§1!s§(this.§>h§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§>h§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§1J§ && this.§6!s§ != b2internal::4!0 && !_loc19_)
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
            this.§^-§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§6!s§ == b2internal::-!F)
            {
               this.§+f§.§6f§(this.impulse3);
            }
            else if(this.§6!s§ == b2internal::,!?)
            {
               if((_loc6_ = this.§+f§.z + this.impulse3.z) < 0)
               {
                  this.§^-§.Solve22(this.§9'§,-_loc24_ + this.§+f§.z * this.§^-§.col3.x,-_loc25_ + this.§+f§.z * this.§^-§.col3.y);
                  this.impulse3.x = this.§9'§.x;
                  this.impulse3.y = this.§9'§.y;
                  this.impulse3.z = -this.§+f§.z;
                  this.§+f§.x += this.§9'§.x;
                  this.§+f§.y += this.§9'§.y;
                  this.§+f§.z = 0;
               }
               else
               {
                  this.§+f§.x += this.impulse3.x;
                  this.§+f§.y += this.impulse3.y;
                  this.§+f§.z += this.impulse3.z;
               }
            }
            else if(this.§6!s§ == b2internal::&!d)
            {
               if((_loc6_ = this.§+f§.z + this.impulse3.z) > 0)
               {
                  this.§^-§.Solve22(this.§9'§,-_loc24_ + this.§+f§.z * this.§^-§.col3.x,-_loc25_ + this.§+f§.z * this.§^-§.col3.y);
                  this.impulse3.x = this.§9'§.x;
                  this.impulse3.y = this.§9'§.y;
                  this.impulse3.z = -this.§+f§.z;
                  this.§+f§.x += this.§9'§.x;
                  this.§+f§.y += this.§9'§.y;
                  this.§+f§.z = 0;
               }
               else
               {
                  this.§+f§.x += this.impulse3.x;
                  this.§+f§.y += this.impulse3.y;
                  this.§+f§.z += this.impulse3.z;
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
            this.§^-§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§+f§.x += this.impulse2.x;
            this.§+f§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§;B§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§;B§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::;l;
         var _loc6_:b2Body = b2internal::2z;
         var _loc7_:* = b2internal::,!y + b2internal::&A == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§1J§ && this.§6!s§ != b2internal::4!0 && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§6J§;
            _loc27_ = 0;
            if(this.§6!s§ == b2internal::-!F)
            {
               _loc3_ = b2Math.§1!s§(_loc26_ - this.§];§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§;S§ * _loc3_;
               _loc8_ = b2Math.§-L§(_loc3_);
            }
            else if(this.§6!s§ == b2internal::,!?)
            {
               _loc3_ = _loc26_ - this.§];§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§1!s§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§;S§ * _loc3_;
            }
            else if(this.§6!s§ == b2internal::&!d)
            {
               _loc3_ = _loc26_ - this.§7!c§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§1!s§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§;S§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§;!$§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§;!$§ * _loc27_;
            _loc5_.§<!0§();
            _loc6_.§<!0§();
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
         var _loc21_:Number = _loc5_.§]p§;
         var _loc22_:Number = _loc6_.§]p§;
         var _loc23_:Number = _loc5_.§;!$§;
         var _loc24_:Number = _loc6_.§;!$§;
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
         this.K.§1!]§(this.K1);
         this.K.§"!1§(this.K2);
         this.K.§"!1§(this.K3);
         this.K.§;%§(§[!y§,-_loc17_,-_loc18_);
         _loc11_ = §[!y§.x;
         _loc12_ = §[!y§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§]p§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§]p§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§;!$§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§]p§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§]p§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§;!$§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§<!0§();
         _loc6_.§<!0§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
