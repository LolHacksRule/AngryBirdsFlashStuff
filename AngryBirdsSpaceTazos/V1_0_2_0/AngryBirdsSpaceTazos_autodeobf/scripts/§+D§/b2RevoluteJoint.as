package §+D§
{
   import §#!X§.b2Body;
   import §#!X§.b2TimeStep;
   import §&!S§.b2Mat22;
   import §&!S§.b2Mat33;
   import §&!S§.b2Math;
   import §&!S§.b2Vec2;
   import §&!S§.b2Vec3;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §`!+§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §"k§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §!=§:b2Vec3;
      
      private var §#"H§:Number;
      
      private var §!!F§:b2Mat33;
      
      private var §,K§:Number;
      
      private var §#I§:Boolean;
      
      private var §9"§:Number;
      
      private var §'L§:Number;
      
      private var §3p§:Boolean;
      
      private var §0c§:Number;
      
      private var §<!b§:Number;
      
      private var §&a§:Number;
      
      private var get:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§"k§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§!=§ = new b2Vec3();
         this.§!!F§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§&9§);
         this.m_localAnchor2.SetV(param1.§^"<§);
         this.§0c§ = param1.§ "5§;
         this.§!=§.§ "2§();
         this.§#"H§ = 0;
         this.§<!b§ = param1.§5E§;
         this.§&a§ = param1.§;E§;
         this.§9"§ = param1.§+"%§;
         this.§'L§ = param1.motorSpeed;
         this.§3p§ = param1.§>6§;
         this.§#I§ = param1.§%]§;
         this.get = b2internal::%!";
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::9!W.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§!=§.x,param1 * this.§!=§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§!=§.z;
      }
      
      public function §1"1§() : Number
      {
         return b2internal::9!W.m_sweep.a - b2internal::]X.m_sweep.a - this.§0c§;
      }
      
      public function §7!j§() : Number
      {
         return b2internal::9!W.m_angularVelocity - b2internal::]X.m_angularVelocity;
      }
      
      public function §>!K§() : Boolean
      {
         return this.§3p§;
      }
      
      public function §3!&§(param1:Boolean) : void
      {
         this.§3p§ = param1;
      }
      
      public function §0"!§() : Number
      {
         return this.§<!b§;
      }
      
      public function §%!8§() : Number
      {
         return this.§&a§;
      }
      
      public function §@z§(param1:Number, param2:Number) : void
      {
         this.§<!b§ = param1;
         this.§&a§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§#I§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::]X.SetAwake(true);
         b2internal::9!W.SetAwake(true);
         this.§#I§ = param1;
      }
      
      public function § ]§(param1:Number) : void
      {
         b2internal::]X.SetAwake(true);
         b2internal::9!W.SetAwake(true);
         this.§'L§ = param1;
      }
      
      public function §@"E§() : Number
      {
         return this.§'L§;
      }
      
      public function §[!?§(param1:Number) : void
      {
         this.§9"§ = param1;
      }
      
      public function §0!Y§() : Number
      {
         return this.§9"§;
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
         _loc2_ = b2internal::]X;
         _loc3_ = b2internal::9!W;
         if(this.§#I§ || this.§3p§)
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
         var _loc10_:Number = _loc2_.§]!T§;
         var _loc11_:Number = _loc3_.§]!T§;
         var _loc12_:Number = _loc2_.§@#§;
         var _loc13_:Number = _loc3_.§@#§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§!!F§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§!!F§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§!!F§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§!!F§.col1.y = this.§!!F§.col2.x;
         this.§!!F§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§!!F§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§!!F§.col1.z = this.§!!F§.col3.x;
         this.§!!F§.col2.z = this.§!!F§.col3.y;
         this.§!!F§.col3.z = _loc12_ + _loc13_;
         this.§,K§ = 1 / (_loc12_ + _loc13_);
         if(this.§#I§ == false || _loc14_)
         {
            this.§#"H§ = 0;
         }
         if(this.§3p§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§0c§;
            if(b2Math.§12§(this.§&a§ - this.§<!b§) < 2 * b2Settings.b2_angularSlop)
            {
               this.get = b2internal::!!_;
            }
            else if(_loc15_ <= this.§<!b§)
            {
               if(this.get != b2internal::1!s)
               {
                  this.§!=§.z = 0;
               }
               this.get = b2internal::1!s;
            }
            else if(_loc15_ >= this.§&a§)
            {
               if(this.get != b2internal::^!n)
               {
                  this.§!=§.z = 0;
               }
               this.get = b2internal::^!n;
            }
            else
            {
               this.get = b2internal::%!";
               this.§!=§.z = 0;
            }
         }
         else
         {
            this.get = b2internal::%!";
         }
         if(param1.§3!2§)
         {
            this.§!=§.x *= param1.§2!H§;
            this.§!=§.y *= param1.§2!H§;
            this.§#"H§ *= param1.§2!H§;
            _loc16_ = this.§!=§.x;
            _loc17_ = this.§!=§.y;
            _loc2_.§>w§.x -= _loc10_ * _loc16_;
            _loc2_.§>w§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§#"H§ + this.§!=§.z);
            _loc3_.§>w§.x += _loc11_ * _loc16_;
            _loc3_.§>w§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§#"H§ + this.§!=§.z);
         }
         else
         {
            this.§!=§.§ "2§();
            this.§#"H§ = 0;
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
         var _loc2_:b2Body = b2internal::]X;
         var _loc3_:b2Body = b2internal::9!W;
         var _loc11_:b2Vec2 = _loc2_.§>w§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§>w§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§]!T§;
         var _loc16_:Number = _loc3_.§]!T§;
         var _loc17_:Number = _loc2_.§@#§;
         var _loc18_:Number = _loc3_.§@#§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§#I§ && this.get != b2internal::!!_ && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§'L§;
            _loc21_ = this.§,K§ * -_loc20_;
            _loc22_ = this.§#"H§;
            _loc23_ = param1.§`"%§ * this.§9"§;
            this.§#"H§ = b2Math.§>G§(this.§#"H§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§#"H§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§3p§ && this.get != b2internal::%!" && !_loc19_)
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
            this.§!!F§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.get == b2internal::!!_)
            {
               this.§!=§.§7-§(this.impulse3);
            }
            else if(this.get == b2internal::1!s)
            {
               if((_loc6_ = this.§!=§.z + this.impulse3.z) < 0)
               {
                  this.§!!F§.Solve22(this.§"k§,-_loc24_ + this.§!=§.z * this.§!!F§.col3.x,-_loc25_ + this.§!=§.z * this.§!!F§.col3.y);
                  this.impulse3.x = this.§"k§.x;
                  this.impulse3.y = this.§"k§.y;
                  this.impulse3.z = -this.§!=§.z;
                  this.§!=§.x += this.§"k§.x;
                  this.§!=§.y += this.§"k§.y;
                  this.§!=§.z = 0;
               }
               else
               {
                  this.§!=§.x += this.impulse3.x;
                  this.§!=§.y += this.impulse3.y;
                  this.§!=§.z += this.impulse3.z;
               }
            }
            else if(this.get == b2internal::^!n)
            {
               if((_loc6_ = this.§!=§.z + this.impulse3.z) > 0)
               {
                  this.§!!F§.Solve22(this.§"k§,-_loc24_ + this.§!=§.z * this.§!!F§.col3.x,-_loc25_ + this.§!=§.z * this.§!!F§.col3.y);
                  this.impulse3.x = this.§"k§.x;
                  this.impulse3.y = this.§"k§.y;
                  this.impulse3.z = -this.§!=§.z;
                  this.§!=§.x += this.§"k§.x;
                  this.§!=§.y += this.§"k§.y;
                  this.§!=§.z = 0;
               }
               else
               {
                  this.§!=§.x += this.impulse3.x;
                  this.§!=§.y += this.impulse3.y;
                  this.§!=§.z += this.impulse3.z;
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
            this.§!!F§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§!=§.x += this.impulse2.x;
            this.§!=§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§>w§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§>w§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::]X;
         var _loc6_:b2Body = b2internal::9!W;
         var _loc7_:* = b2internal::6!M + b2internal::^!M == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§3p§ && this.get != b2internal::%!" && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§0c§;
            _loc27_ = 0;
            if(this.get == b2internal::!!_)
            {
               _loc3_ = b2Math.§>G§(_loc26_ - this.§<!b§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§,K§ * _loc3_;
               _loc8_ = b2Math.§12§(_loc3_);
            }
            else if(this.get == b2internal::1!s)
            {
               _loc3_ = _loc26_ - this.§<!b§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§>G§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§,K§ * _loc3_;
            }
            else if(this.get == b2internal::^!n)
            {
               _loc3_ = _loc26_ - this.§&a§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§>G§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§,K§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§@#§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§@#§ * _loc27_;
            _loc5_.§;!E§();
            _loc6_.§;!E§();
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
         var _loc21_:Number = _loc5_.§]!T§;
         var _loc22_:Number = _loc6_.§]!T§;
         var _loc23_:Number = _loc5_.§@#§;
         var _loc24_:Number = _loc6_.§@#§;
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
         this.K.§8!g§(this.K1);
         this.K.§?Y§(this.K2);
         this.K.§?Y§(this.K3);
         this.K.§@"+§(§`!+§,-_loc17_,-_loc18_);
         _loc11_ = §`!+§.x;
         _loc12_ = §`!+§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§]!T§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§]!T§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§@#§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§]!T§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§]!T§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§@#§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§;!E§();
         _loc6_.§;!E§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
