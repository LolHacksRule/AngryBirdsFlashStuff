package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Mat33;
   import §>!8§.b2Math;
   import §>!8§.b2Vec2;
   import §>!8§.b2Vec3;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §%i§:b2Vec2 = new b2Vec2();
       
      
      private var §'!§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §8@§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §;D§:b2Vec3;
      
      private var §4k§:Number;
      
      private var §@U§:b2Mat33;
      
      private var § !J§:Number;
      
      private var §8!_§:Boolean;
      
      private var §`i§:Number;
      
      private var §2"§:Number;
      
      private var §3!§:Boolean;
      
      private var §8;§:Number;
      
      private var §%E§:Number;
      
      private var §1!V§:Number;
      
      private var §!!I§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§'!§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§8@§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§;D§ = new b2Vec3();
         this.§@U§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§>!g§);
         this.m_localAnchor2.SetV(param1.§&1§);
         this.§8;§ = param1.§6![§;
         this.§;D§.§@!;§();
         this.§4k§ = 0;
         this.§%E§ = param1.§!!e§;
         this.§1!V§ = param1.§+!9§;
         this.§`i§ = param1.§`!?§;
         this.§2"§ = param1.motorSpeed;
         this.§3!§ = param1.§0$§;
         this.§8!_§ = param1.§ in§;
         this.§!!I§ = §5!§;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;D§.x,param1 * this.§;D§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;D§.z;
      }
      
      public function §4X§() : Number
      {
         return §`x§.m_sweep.a - §-;§.m_sweep.a - this.§8;§;
      }
      
      public function §,!9§() : Number
      {
         return §`x§.m_angularVelocity - §-;§.m_angularVelocity;
      }
      
      public function §0§() : Boolean
      {
         return this.§3!§;
      }
      
      public function §+!C§(param1:Boolean) : void
      {
         this.§3!§ = param1;
      }
      
      public function §"!M§() : Number
      {
         return this.§%E§;
      }
      
      public function §6!4§() : Number
      {
         return this.§1!V§;
      }
      
      public function §=^§(param1:Number, param2:Number) : void
      {
         this.§%E§ = param1;
         this.§1!V§ = param2;
      }
      
      public function §1!L§() : Boolean
      {
         §-;§.SetAwake(true);
         §`x§.SetAwake(true);
         return this.§8!_§;
      }
      
      public function §4#§(param1:Boolean) : void
      {
         this.§8!_§ = param1;
      }
      
      public function §#f§(param1:Number) : void
      {
         §-;§.SetAwake(true);
         §`x§.SetAwake(true);
         this.§2"§ = param1;
      }
      
      public function §9!W§() : Number
      {
         return this.§2"§;
      }
      
      public function §52§(param1:Number) : void
      {
         this.§`i§ = param1;
      }
      
      public function §"!k§() : Number
      {
         return this.§`i§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = §-;§;
         _loc3_ = §`x§;
         if(this.§8!_§ || this.§3!§)
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
         var _loc10_:Number = _loc2_.§=n§;
         var _loc11_:Number = _loc3_.§=n§;
         var _loc12_:Number = _loc2_.§1&§;
         var _loc13_:Number = _loc3_.§1&§;
         this.§@U§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§@U§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§@U§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§@U§.col1.y = this.§@U§.col2.x;
         this.§@U§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§@U§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§@U§.col1.z = this.§@U§.col3.x;
         this.§@U§.col2.z = this.§@U§.col3.y;
         this.§@U§.col3.z = _loc12_ + _loc13_;
         this.§ !J§ = 1 / (_loc12_ + _loc13_);
         if(this.§8!_§ == false)
         {
            this.§4k§ = 0;
         }
         if(this.§3!§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§8;§;
            if(b2Math.§&!]§(this.§1!V§ - this.§%E§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§!!I§ = §;x§;
            }
            else if(_loc14_ <= this.§%E§)
            {
               if(this.§!!I§ != §1p§)
               {
                  this.§;D§.z = 0;
               }
               this.§!!I§ = §1p§;
            }
            else if(_loc14_ >= this.§1!V§)
            {
               if(this.§!!I§ != §`7§)
               {
                  this.§;D§.z = 0;
               }
               this.§!!I§ = §`7§;
            }
            else
            {
               this.§!!I§ = §5!§;
               this.§;D§.z = 0;
            }
         }
         else
         {
            this.§!!I§ = §5!§;
         }
         if(param1.§-K§)
         {
            this.§;D§.x *= param1.§&s§;
            this.§;D§.y *= param1.§&s§;
            this.§4k§ *= param1.§&s§;
            _loc15_ = this.§;D§.x;
            _loc16_ = this.§;D§.y;
            _loc2_.§4!h§.x -= _loc10_ * _loc15_;
            _loc2_.§4!h§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§4k§ + this.§;D§.z);
            _loc3_.§4!h§.x += _loc11_ * _loc15_;
            _loc3_.§4!h§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§4k§ + this.§;D§.z);
         }
         else
         {
            this.§;D§.§@!;§();
            this.§4k§ = 0;
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
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         var _loc11_:b2Vec2 = _loc2_.§4!h§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§4!h§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§=n§;
         var _loc16_:Number = _loc3_.§=n§;
         var _loc17_:Number = _loc2_.§1&§;
         var _loc18_:Number = _loc3_.§1&§;
         if(this.§8!_§ && this.§!!I§ != §;x§)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§2"§;
            _loc20_ = this.§ !J§ * -_loc19_;
            _loc21_ = this.§4k§;
            _loc22_ = param1.§`M§ * this.§`i§;
            this.§4k§ = b2Math.§3X§(this.§4k§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§4k§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§3!§ && this.§!!I§ != §5!§)
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
            _loc23_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc24_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc25_ = _loc14_ - _loc12_;
            this.§@U§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§!!I§ == §;x§)
            {
               this.§;D§.§!V§(this.impulse3);
            }
            else if(this.§!!I§ == §1p§)
            {
               _loc6_ = this.§;D§.z + this.impulse3.z;
               if(_loc6_ < 0)
               {
                  this.§@U§.Solve22(this.§8@§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8@§.x;
                  this.impulse3.y = this.§8@§.y;
                  this.impulse3.z = -this.§;D§.z;
                  this.§;D§.x += this.§8@§.x;
                  this.§;D§.y += this.§8@§.y;
                  this.§;D§.z = 0;
               }
            }
            else if(this.§!!I§ == §`7§)
            {
               _loc6_ = this.§;D§.z + this.impulse3.z;
               if(_loc6_ > 0)
               {
                  this.§@U§.Solve22(this.§8@§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8@§.x;
                  this.impulse3.y = this.§8@§.y;
                  this.impulse3.z = -this.§;D§.z;
                  this.§;D§.x += this.§8@§.x;
                  this.§;D§.y += this.§8@§.y;
                  this.§;D§.z = 0;
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
            _loc26_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc27_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§@U§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§;D§.x += this.impulse2.x;
            this.§;D§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§4!h§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§4!h§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:b2Body = §-;§;
         var _loc6_:b2Body = §`x§;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§3!§ && this.§!!I§ != §5!§)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§8;§;
            _loc26_ = 0;
            if(this.§!!I§ == §;x§)
            {
               _loc3_ = b2Math.§3X§(_loc25_ - this.§%E§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§ !J§ * _loc3_;
               _loc7_ = b2Math.§&!]§(_loc3_);
            }
            else if(this.§!!I§ == §1p§)
            {
               _loc3_ = _loc25_ - this.§%E§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§3X§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§ !J§ * _loc3_;
            }
            else if(this.§!!I§ == §`7§)
            {
               _loc3_ = _loc25_ - this.§1!V§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§3X§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§ !J§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§1&§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§1&§ * _loc26_;
            _loc5_.§"!_§();
            _loc6_.§"!_§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc12_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc13_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc12_ + _loc4_.col2.x * _loc13_;
         _loc13_ = _loc4_.col1.y * _loc12_ + _loc4_.col2.y * _loc13_;
         _loc12_ = _loc9_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc14_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc15_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc14_ + _loc4_.col2.x * _loc15_;
         _loc15_ = _loc4_.col1.y * _loc14_ + _loc4_.col2.y * _loc15_;
         _loc14_ = _loc9_;
         var _loc16_:Number = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number = Math.sqrt(_loc18_);
         _loc8_ = _loc19_;
         var _loc20_:Number = _loc5_.§=n§;
         var _loc21_:Number = _loc6_.§=n§;
         var _loc22_:Number = _loc5_.§1&§;
         var _loc23_:Number = _loc6_.§1&§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc30_ = 1 / _loc29_;
            _loc10_ = _loc30_ * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.c.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.c.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.c.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         }
         this.K1.col1.x = _loc20_ + _loc21_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc20_ + _loc21_;
         this.K2.col1.x = _loc22_ * _loc13_ * _loc13_;
         this.K2.col2.x = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col1.y = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col2.y = _loc22_ * _loc12_ * _loc12_;
         this.K3.col1.x = _loc23_ * _loc15_ * _loc15_;
         this.K3.col2.x = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col1.y = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col2.y = _loc23_ * _loc14_ * _loc14_;
         this.§'!§.§<+§(this.K1);
         this.§'!§.§!!h§(this.K2);
         this.§'!§.§!!h§(this.K3);
         this.§'!§.§]j§(§%i§,-_loc16_,-_loc17_);
         _loc10_ = §%i§.x;
         _loc11_ = §%i§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§=n§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§=n§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§1&§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§=n§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§=n§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§1&§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§"!_§();
         _loc6_.§"!_§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
