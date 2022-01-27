package §6>§
{
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2TimeStep;
   import §=i§.b2Mat22;
   import §=i§.b2Mat33;
   import §=i§.b2Math;
   import §=i§.b2Vec2;
   import §=i§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §<K§:b2Vec2 = new b2Vec2();
       
      
      private var §[]§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §]!]§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §=!3§:b2Vec3;
      
      private var §[K§:Number;
      
      private var §!!9§:b2Mat33;
      
      private var §06§:Number;
      
      private var §6!U§:Boolean;
      
      private var §6b§:Number;
      
      private var §'!&§:Number;
      
      private var §,?§:Boolean;
      
      private var §-!X§:Number;
      
      private var §<![§:Number;
      
      private var §]!8§:Number;
      
      private var §6'§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§[]§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§]!]§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§=!3§ = new b2Vec3();
         this.§!!9§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ i§);
         this.m_localAnchor2.SetV(param1.§<=§);
         this.§-!X§ = param1.§&!U§;
         this.§=!3§.§0!=§();
         this.§[K§ = 0;
         this.§<![§ = param1.§-h§;
         this.§]!8§ = param1.§"!Q§;
         this.§6b§ = param1.§]R§;
         this.§'!&§ = param1.motorSpeed;
         this.§,?§ = param1.§^a§;
         this.§6!U§ = param1.§;r§;
         this.§6'§ = b2internal::;W;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+!N.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@;.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§=!3§.x,param1 * this.§=!3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§=!3§.z;
      }
      
      public function §]f§() : Number
      {
         return b2internal::@;.m_sweep.a - b2internal::+!N.m_sweep.a - this.§-!X§;
      }
      
      public function §2§() : Number
      {
         return b2internal::@;.m_angularVelocity - b2internal::+!N.m_angularVelocity;
      }
      
      public function §',§() : Boolean
      {
         return this.§,?§;
      }
      
      public function §>!I§(param1:Boolean) : void
      {
         this.§,?§ = param1;
      }
      
      public function §^!]§() : Number
      {
         return this.§<![§;
      }
      
      public function §!I§() : Number
      {
         return this.§]!8§;
      }
      
      public function §8$§(param1:Number, param2:Number) : void
      {
         this.§<![§ = param1;
         this.§]!8§ = param2;
      }
      
      public function §`o§() : Boolean
      {
         b2internal::+!N.SetAwake(true);
         b2internal::@;.SetAwake(true);
         return this.§6!U§;
      }
      
      public function §6L§(param1:Boolean) : void
      {
         this.§6!U§ = param1;
      }
      
      public function §@!N§(param1:Number) : void
      {
         b2internal::+!N.SetAwake(true);
         b2internal::@;.SetAwake(true);
         this.§'!&§ = param1;
      }
      
      public function §;!S§() : Number
      {
         return this.§'!&§;
      }
      
      public function §5F§(param1:Number) : void
      {
         this.§6b§ = param1;
      }
      
      public function §]!M§() : Number
      {
         return this.§6b§;
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
         _loc2_ = b2internal::+!N;
         _loc3_ = b2internal::@;;
         if(this.§6!U§ || this.§,?§)
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
         var _loc10_:Number = _loc2_.§=!C§;
         var _loc11_:Number = _loc3_.§=!C§;
         var _loc12_:Number = _loc2_.§!!§;
         var _loc13_:Number = _loc3_.§!!§;
         this.§!!9§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§!!9§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§!!9§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§!!9§.col1.y = this.§!!9§.col2.x;
         this.§!!9§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§!!9§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§!!9§.col1.z = this.§!!9§.col3.x;
         this.§!!9§.col2.z = this.§!!9§.col3.y;
         this.§!!9§.col3.z = _loc12_ + _loc13_;
         this.§06§ = 1 / (_loc12_ + _loc13_);
         if(this.§6!U§ == false)
         {
            this.§[K§ = 0;
         }
         if(this.§,?§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§-!X§;
            if(b2Math.§]3§(this.§]!8§ - this.§<![§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§6'§ = b2internal::`!1;
            }
            else if(_loc14_ <= this.§<![§)
            {
               if(this.§6'§ != b2internal::8!O)
               {
                  this.§=!3§.z = 0;
               }
               this.§6'§ = b2internal::8!O;
            }
            else if(_loc14_ >= this.§]!8§)
            {
               if(this.§6'§ != b2internal::&![)
               {
                  this.§=!3§.z = 0;
               }
               this.§6'§ = b2internal::&![;
            }
            else
            {
               this.§6'§ = b2internal::;W;
               this.§=!3§.z = 0;
            }
         }
         else
         {
            this.§6'§ = b2internal::;W;
         }
         if(param1.§%r§)
         {
            this.§=!3§.x *= param1.§^!Y§;
            this.§=!3§.y *= param1.§^!Y§;
            this.§[K§ *= param1.§^!Y§;
            _loc15_ = this.§=!3§.x;
            _loc16_ = this.§=!3§.y;
            _loc2_.§]J§.x -= _loc10_ * _loc15_;
            _loc2_.§]J§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§[K§ + this.§=!3§.z);
            _loc3_.§]J§.x += _loc11_ * _loc15_;
            _loc3_.§]J§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§[K§ + this.§=!3§.z);
         }
         else
         {
            this.§=!3§.§0!=§();
            this.§[K§ = 0;
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
         var _loc2_:b2Body = b2internal::+!N;
         var _loc3_:b2Body = b2internal::@;;
         var _loc11_:b2Vec2 = _loc2_.§]J§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§]J§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§=!C§;
         var _loc16_:Number = _loc3_.§=!C§;
         var _loc17_:Number = _loc2_.§!!§;
         var _loc18_:Number = _loc3_.§!!§;
         if(this.§6!U§ && this.§6'§ != b2internal::`!1)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§'!&§;
            _loc20_ = this.§06§ * -_loc19_;
            _loc21_ = this.§[K§;
            _loc22_ = param1.§5!8§ * this.§6b§;
            this.§[K§ = b2Math.§%!c§(this.§[K§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§[K§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§,?§ && this.§6'§ != b2internal::;W)
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
            this.§!!9§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§6'§ == b2internal::`!1)
            {
               this.§=!3§.§%<§(this.impulse3);
            }
            else if(this.§6'§ == b2internal::8!O)
            {
               if((_loc6_ = this.§=!3§.z + this.impulse3.z) < 0)
               {
                  this.§!!9§.Solve22(this.§]!]§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§]!]§.x;
                  this.impulse3.y = this.§]!]§.y;
                  this.impulse3.z = -this.§=!3§.z;
                  this.§=!3§.x += this.§]!]§.x;
                  this.§=!3§.y += this.§]!]§.y;
                  this.§=!3§.z = 0;
               }
            }
            else if(this.§6'§ == b2internal::&![)
            {
               if((_loc6_ = this.§=!3§.z + this.impulse3.z) > 0)
               {
                  this.§!!9§.Solve22(this.§]!]§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§]!]§.x;
                  this.impulse3.y = this.§]!]§.y;
                  this.impulse3.z = -this.§=!3§.z;
                  this.§=!3§.x += this.§]!]§.x;
                  this.§=!3§.y += this.§]!]§.y;
                  this.§=!3§.z = 0;
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
            this.§!!9§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§=!3§.x += this.impulse2.x;
            this.§=!3§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§]J§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§]J§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::+!N;
         var _loc6_:b2Body = b2internal::@;;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§,?§ && this.§6'§ != b2internal::;W)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§-!X§;
            _loc26_ = 0;
            if(this.§6'§ == b2internal::`!1)
            {
               _loc3_ = b2Math.§%!c§(_loc25_ - this.§<![§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§06§ * _loc3_;
               _loc7_ = b2Math.§]3§(_loc3_);
            }
            else if(this.§6'§ == b2internal::8!O)
            {
               _loc3_ = _loc25_ - this.§<![§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§%!c§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§06§ * _loc3_;
            }
            else if(this.§6'§ == b2internal::&![)
            {
               _loc3_ = _loc25_ - this.§]!8§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§%!c§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§06§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§!!§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§!!§ * _loc26_;
            _loc5_.§,M§();
            _loc6_.§,M§();
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
         var _loc20_:Number = _loc5_.§=!C§;
         var _loc21_:Number = _loc6_.§=!C§;
         var _loc22_:Number = _loc5_.§!!§;
         var _loc23_:Number = _loc6_.§!!§;
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
         this.§[]§.§!3§(this.K1);
         this.§[]§.§9I§(this.K2);
         this.§[]§.§9I§(this.K3);
         this.§[]§.§6!W§(§<K§,-_loc16_,-_loc17_);
         _loc10_ = §<K§.x;
         _loc11_ = §<K§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§=!C§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§=!C§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§!!§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§=!C§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§=!C§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§!!§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§,M§();
         _loc6_.§,M§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
