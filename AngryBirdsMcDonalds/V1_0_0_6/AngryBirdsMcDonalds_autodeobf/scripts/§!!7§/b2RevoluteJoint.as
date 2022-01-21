package §!!7§
{
   import §7!5§.b2Body;
   import §7!5§.b2TimeStep;
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §@![§.b2Mat22;
   import §@![§.b2Mat33;
   import §@![§.b2Math;
   import §@![§.b2Vec2;
   import §@![§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §'!-§:b2Vec2 = new b2Vec2();
       
      
      private var §0!<§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §"!#§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §^!7§:b2Vec3;
      
      private var §3!a§:Number;
      
      private var §0!+§:b2Mat33;
      
      private var §9H§:Number;
      
      private var §`!-§:Boolean;
      
      private var §]!S§:Number;
      
      private var §@!H§:Number;
      
      private var §&N§:Boolean;
      
      private var §#r§:Number;
      
      private var §#!"§:Number;
      
      private var § H§:Number;
      
      private var §for §:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§0!<§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§"!#§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^!7§ = new b2Vec3();
         this.§0!+§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'8§);
         this.m_localAnchor2.SetV(param1.§>!_§);
         this.§#r§ = param1.§=^§;
         this.§^!7§.§%!&§();
         this.§3!a§ = 0;
         this.§#!"§ = param1.§@!'§;
         this.§ H§ = param1.§>f§;
         this.§]!S§ = param1.§[!G§;
         this.§@!H§ = param1.motorSpeed;
         this.§&N§ = param1.§#!D§;
         this.§`!-§ = param1.get;
         this.§for § = b2internal::&-;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-!j.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::30.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^!7§.x,param1 * this.§^!7§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^!7§.z;
      }
      
      public function §=!X§() : Number
      {
         return b2internal::30.m_sweep.a - b2internal::-!j.m_sweep.a - this.§#r§;
      }
      
      public function § var§() : Number
      {
         return b2internal::30.m_angularVelocity - b2internal::-!j.m_angularVelocity;
      }
      
      public function §!!<§() : Boolean
      {
         return this.§&N§;
      }
      
      public function §"n§(param1:Boolean) : void
      {
         this.§&N§ = param1;
      }
      
      public function §@W§() : Number
      {
         return this.§#!"§;
      }
      
      public function §2§() : Number
      {
         return this.§ H§;
      }
      
      public function §]Z§(param1:Number, param2:Number) : void
      {
         this.§#!"§ = param1;
         this.§ H§ = param2;
      }
      
      public function §-q§() : Boolean
      {
         b2internal::-!j.SetAwake(true);
         b2internal::30.SetAwake(true);
         return this.§`!-§;
      }
      
      public function §+x§(param1:Boolean) : void
      {
         this.§`!-§ = param1;
      }
      
      public function §!9§(param1:Number) : void
      {
         b2internal::-!j.SetAwake(true);
         b2internal::30.SetAwake(true);
         this.§@!H§ = param1;
      }
      
      public function §7w§() : Number
      {
         return this.§@!H§;
      }
      
      public function §3n§(param1:Number) : void
      {
         this.§]!S§ = param1;
      }
      
      public function §&R§() : Number
      {
         return this.§]!S§;
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
         _loc2_ = b2internal::-!j;
         _loc3_ = b2internal::30;
         if(this.§`!-§ || this.§&N§)
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
         var _loc10_:Number = _loc2_.§0T§;
         var _loc11_:Number = _loc3_.§0T§;
         var _loc12_:Number = _loc2_.§#d§;
         var _loc13_:Number = _loc3_.§#d§;
         this.§0!+§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§0!+§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§0!+§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§0!+§.col1.y = this.§0!+§.col2.x;
         this.§0!+§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§0!+§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§0!+§.col1.z = this.§0!+§.col3.x;
         this.§0!+§.col2.z = this.§0!+§.col3.y;
         this.§0!+§.col3.z = _loc12_ + _loc13_;
         this.§9H§ = 1 / (_loc12_ + _loc13_);
         if(this.§`!-§ == false)
         {
            this.§3!a§ = 0;
         }
         if(this.§&N§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§#r§;
            if(b2Math.§]!b§(this.§ H§ - this.§#!"§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§for § = b2internal::4!b;
            }
            else if(_loc14_ <= this.§#!"§)
            {
               if(this.§for § != b2internal::-A)
               {
                  this.§^!7§.z = 0;
               }
               this.§for § = b2internal::-A;
            }
            else if(_loc14_ >= this.§ H§)
            {
               if(this.§for § != b2internal::@w)
               {
                  this.§^!7§.z = 0;
               }
               this.§for § = b2internal::@w;
            }
            else
            {
               this.§for § = b2internal::&-;
               this.§^!7§.z = 0;
            }
         }
         else
         {
            this.§for § = b2internal::&-;
         }
         if(param1.§0!J§)
         {
            this.§^!7§.x *= param1.§'!P§;
            this.§^!7§.y *= param1.§'!P§;
            this.§3!a§ *= param1.§'!P§;
            _loc15_ = this.§^!7§.x;
            _loc16_ = this.§^!7§.y;
            _loc2_.§?!%§.x -= _loc10_ * _loc15_;
            _loc2_.§?!%§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§3!a§ + this.§^!7§.z);
            _loc3_.§?!%§.x += _loc11_ * _loc15_;
            _loc3_.§?!%§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§3!a§ + this.§^!7§.z);
         }
         else
         {
            this.§^!7§.§%!&§();
            this.§3!a§ = 0;
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
         var _loc2_:b2Body = b2internal::-!j;
         var _loc3_:b2Body = b2internal::30;
         var _loc11_:b2Vec2 = _loc2_.§?!%§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§?!%§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§0T§;
         var _loc16_:Number = _loc3_.§0T§;
         var _loc17_:Number = _loc2_.§#d§;
         var _loc18_:Number = _loc3_.§#d§;
         if(this.§`!-§ && this.§for § != b2internal::4!b)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§@!H§;
            _loc20_ = this.§9H§ * -_loc19_;
            _loc21_ = this.§3!a§;
            _loc22_ = param1.§4l§ * this.§]!S§;
            this.§3!a§ = b2Math.§1!P§(this.§3!a§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§3!a§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§&N§ && this.§for § != b2internal::&-)
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
            this.§0!+§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§for § == b2internal::4!b)
            {
               this.§^!7§.§,g§(this.impulse3);
            }
            else if(this.§for § == b2internal::-A)
            {
               if((_loc6_ = this.§^!7§.z + this.impulse3.z) < 0)
               {
                  this.§0!+§.Solve22(this.§"!#§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§"!#§.x;
                  this.impulse3.y = this.§"!#§.y;
                  this.impulse3.z = -this.§^!7§.z;
                  this.§^!7§.x += this.§"!#§.x;
                  this.§^!7§.y += this.§"!#§.y;
                  this.§^!7§.z = 0;
               }
            }
            else if(this.§for § == b2internal::@w)
            {
               if((_loc6_ = this.§^!7§.z + this.impulse3.z) > 0)
               {
                  this.§0!+§.Solve22(this.§"!#§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§"!#§.x;
                  this.impulse3.y = this.§"!#§.y;
                  this.impulse3.z = -this.§^!7§.z;
                  this.§^!7§.x += this.§"!#§.x;
                  this.§^!7§.y += this.§"!#§.y;
                  this.§^!7§.z = 0;
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
            this.§0!+§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§^!7§.x += this.impulse2.x;
            this.§^!7§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§?!%§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§?!%§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::-!j;
         var _loc6_:b2Body = b2internal::30;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§&N§ && this.§for § != b2internal::&-)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§#r§;
            _loc26_ = 0;
            if(this.§for § == b2internal::4!b)
            {
               _loc3_ = b2Math.§1!P§(_loc25_ - this.§#!"§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9H§ * _loc3_;
               _loc7_ = b2Math.§]!b§(_loc3_);
            }
            else if(this.§for § == b2internal::-A)
            {
               _loc3_ = _loc25_ - this.§#!"§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§1!P§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§9H§ * _loc3_;
            }
            else if(this.§for § == b2internal::@w)
            {
               _loc3_ = _loc25_ - this.§ H§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§1!P§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9H§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§#d§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§#d§ * _loc26_;
            _loc5_.§5!%§();
            _loc6_.§5!%§();
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
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§0T§;
         var _loc21_:Number = _loc6_.§0T§;
         var _loc22_:Number = _loc5_.§#d§;
         var _loc23_:Number = _loc6_.§#d§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
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
         this.§0!<§.§!!Q§(this.K1);
         this.§0!<§.§2!1§(this.K2);
         this.§0!<§.§2!1§(this.K3);
         this.§0!<§.§-8§(§'!-§,-_loc16_,-_loc17_);
         _loc10_ = §'!-§.x;
         _loc11_ = §'!-§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§0T§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§0T§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§#d§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§0T§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§0T§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§#d§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§5!%§();
         _loc6_.§5!%§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
