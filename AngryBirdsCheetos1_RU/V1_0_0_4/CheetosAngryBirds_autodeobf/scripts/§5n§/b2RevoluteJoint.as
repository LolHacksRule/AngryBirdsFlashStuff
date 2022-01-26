package §5n§
{
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2TimeStep;
   import §5!K§.b2Mat22;
   import §5!K§.b2Mat33;
   import §5!K§.b2Math;
   import §5!K§.b2Vec2;
   import §5!K§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §;T§:b2Vec2 = new b2Vec2();
       
      
      private var §!!]§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §"!5§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §8!2§:b2Vec3;
      
      private var § u§:Number;
      
      private var §9!=§:b2Mat33;
      
      private var §9!8§:Number;
      
      private var §3-§:Boolean;
      
      private var §;!T§:Number;
      
      private var §3!"§:Number;
      
      private var §>5§:Boolean;
      
      private var §9!-§:Number;
      
      private var § if§:Number;
      
      private var §2O§:Number;
      
      private var §<m§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§!!]§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§"!5§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8!2§ = new b2Vec3();
         this.§9!=§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!!B§);
         this.m_localAnchor2.SetV(param1.§<!_§);
         this.§9!-§ = param1.§2v§;
         this.§8!2§.§6d§();
         this.§ u§ = 0;
         this.§ if§ = param1.§!!+§;
         this.§2O§ = param1.§ !"§;
         this.§;!T§ = param1.§0!E§;
         this.§3!"§ = param1.motorSpeed;
         this.§>5§ = param1.§64§;
         this.§3-§ = param1.§ in§;
         this.§<m§ = b2internal::`4;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"8.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!;.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!2§.x,param1 * this.§8!2§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!2§.z;
      }
      
      public function §<&§() : Number
      {
         return b2internal::2!;.m_sweep.a - b2internal::"8.m_sweep.a - this.§9!-§;
      }
      
      public function §@!W§() : Number
      {
         return b2internal::2!;.m_angularVelocity - b2internal::"8.m_angularVelocity;
      }
      
      public function §>!§() : Boolean
      {
         return this.§>5§;
      }
      
      public function §2?§(param1:Boolean) : void
      {
         this.§>5§ = param1;
      }
      
      public function § E§() : Number
      {
         return this.§ if§;
      }
      
      public function § i§() : Number
      {
         return this.§2O§;
      }
      
      public function § do§(param1:Number, param2:Number) : void
      {
         this.§ if§ = param1;
         this.§2O§ = param2;
      }
      
      public function §^z§() : Boolean
      {
         b2internal::"8.SetAwake(true);
         b2internal::2!;.SetAwake(true);
         return this.§3-§;
      }
      
      public function §5v§(param1:Boolean) : void
      {
         this.§3-§ = param1;
      }
      
      public function §-!#§(param1:Number) : void
      {
         b2internal::"8.SetAwake(true);
         b2internal::2!;.SetAwake(true);
         this.§3!"§ = param1;
      }
      
      public function §>&§() : Number
      {
         return this.§3!"§;
      }
      
      public function §7M§(param1:Number) : void
      {
         this.§;!T§ = param1;
      }
      
      public function §^t§() : Number
      {
         return this.§;!T§;
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
         _loc2_ = b2internal::"8;
         _loc3_ = b2internal::2!;;
         if(this.§3-§ || this.§>5§)
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
         var _loc10_:Number = _loc2_.§"!§;
         var _loc11_:Number = _loc3_.§"!§;
         var _loc12_:Number = _loc2_.§9y§;
         var _loc13_:Number = _loc3_.§9y§;
         this.§9!=§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§9!=§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§9!=§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§9!=§.col1.y = this.§9!=§.col2.x;
         this.§9!=§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§9!=§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§9!=§.col1.z = this.§9!=§.col3.x;
         this.§9!=§.col2.z = this.§9!=§.col3.y;
         this.§9!=§.col3.z = _loc12_ + _loc13_;
         this.§9!8§ = 1 / (_loc12_ + _loc13_);
         if(this.§3-§ == false)
         {
            this.§ u§ = 0;
         }
         if(this.§>5§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§9!-§;
            if(b2Math.§-x§(this.§2O§ - this.§ if§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§<m§ = b2internal::9P;
            }
            else if(_loc14_ <= this.§ if§)
            {
               if(this.§<m§ != b2internal::@E)
               {
                  this.§8!2§.z = 0;
               }
               this.§<m§ = b2internal::@E;
            }
            else if(_loc14_ >= this.§2O§)
            {
               if(this.§<m§ != b2internal::3G)
               {
                  this.§8!2§.z = 0;
               }
               this.§<m§ = b2internal::3G;
            }
            else
            {
               this.§<m§ = b2internal::`4;
               this.§8!2§.z = 0;
            }
         }
         else
         {
            this.§<m§ = b2internal::`4;
         }
         if(param1.§[1§)
         {
            this.§8!2§.x *= param1.§8!J§;
            this.§8!2§.y *= param1.§8!J§;
            this.§ u§ *= param1.§8!J§;
            _loc15_ = this.§8!2§.x;
            _loc16_ = this.§8!2§.y;
            _loc2_.§;!#§.x -= _loc10_ * _loc15_;
            _loc2_.§;!#§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§ u§ + this.§8!2§.z);
            _loc3_.§;!#§.x += _loc11_ * _loc15_;
            _loc3_.§;!#§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§ u§ + this.§8!2§.z);
         }
         else
         {
            this.§8!2§.§6d§();
            this.§ u§ = 0;
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
         var _loc2_:b2Body = b2internal::"8;
         var _loc3_:b2Body = b2internal::2!;;
         var _loc11_:b2Vec2 = _loc2_.§;!#§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§;!#§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§"!§;
         var _loc16_:Number = _loc3_.§"!§;
         var _loc17_:Number = _loc2_.§9y§;
         var _loc18_:Number = _loc3_.§9y§;
         if(this.§3-§ && this.§<m§ != b2internal::9P)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§3!"§;
            _loc20_ = this.§9!8§ * -_loc19_;
            _loc21_ = this.§ u§;
            _loc22_ = param1.§0O§ * this.§;!T§;
            this.§ u§ = b2Math.§=!,§(this.§ u§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§ u§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§>5§ && this.§<m§ != b2internal::`4)
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
            this.§9!=§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§<m§ == b2internal::9P)
            {
               this.§8!2§.§0![§(this.impulse3);
            }
            else if(this.§<m§ == b2internal::@E)
            {
               if((_loc6_ = this.§8!2§.z + this.impulse3.z) < 0)
               {
                  this.§9!=§.Solve22(this.§"!5§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§"!5§.x;
                  this.impulse3.y = this.§"!5§.y;
                  this.impulse3.z = -this.§8!2§.z;
                  this.§8!2§.x += this.§"!5§.x;
                  this.§8!2§.y += this.§"!5§.y;
                  this.§8!2§.z = 0;
               }
            }
            else if(this.§<m§ == b2internal::3G)
            {
               if((_loc6_ = this.§8!2§.z + this.impulse3.z) > 0)
               {
                  this.§9!=§.Solve22(this.§"!5§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§"!5§.x;
                  this.impulse3.y = this.§"!5§.y;
                  this.impulse3.z = -this.§8!2§.z;
                  this.§8!2§.x += this.§"!5§.x;
                  this.§8!2§.y += this.§"!5§.y;
                  this.§8!2§.z = 0;
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
            this.§9!=§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§8!2§.x += this.impulse2.x;
            this.§8!2§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§;!#§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§;!#§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::"8;
         var _loc6_:b2Body = b2internal::2!;;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§>5§ && this.§<m§ != b2internal::`4)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§9!-§;
            _loc26_ = 0;
            if(this.§<m§ == b2internal::9P)
            {
               _loc3_ = b2Math.§=!,§(_loc25_ - this.§ if§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9!8§ * _loc3_;
               _loc7_ = b2Math.§-x§(_loc3_);
            }
            else if(this.§<m§ == b2internal::@E)
            {
               _loc3_ = _loc25_ - this.§ if§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§=!,§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§9!8§ * _loc3_;
            }
            else if(this.§<m§ == b2internal::3G)
            {
               _loc3_ = _loc25_ - this.§2O§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§=!,§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9!8§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§9y§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§9y§ * _loc26_;
            _loc5_.§8]§();
            _loc6_.§8]§();
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
         var _loc20_:Number = _loc5_.§"!§;
         var _loc21_:Number = _loc6_.§"!§;
         var _loc22_:Number = _loc5_.§9y§;
         var _loc23_:Number = _loc6_.§9y§;
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
         this.§!!]§.§[r§(this.K1);
         this.§!!]§.§9!R§(this.K2);
         this.§!!]§.§9!R§(this.K3);
         this.§!!]§.§;!N§(§;T§,-_loc16_,-_loc17_);
         _loc10_ = §;T§.x;
         _loc11_ = §;T§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§"!§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§"!§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§9y§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§"!§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§"!§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§9y§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§8]§();
         _loc6_.§8]§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
