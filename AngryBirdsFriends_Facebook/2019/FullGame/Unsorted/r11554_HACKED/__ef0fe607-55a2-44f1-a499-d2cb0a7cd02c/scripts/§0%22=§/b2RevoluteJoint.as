package §0"=§
{
   import §8#t§.b2Body;
   import §8#t§.b2TimeStep;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §`# §.b2Mat22;
   import §`# §.b2Mat33;
   import §`# §.b2Math;
   import §`# §.b2Vec2;
   import §`# §.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §%!1§:b2Vec2 = new b2Vec2();
       
      
      private var §3$'§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §?#7§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §]"5§:b2Vec3;
      
      private var §%!Z§:Number;
      
      private var §7#B§:b2Mat33;
      
      private var §4!i§:Number;
      
      private var §4"q§:Boolean;
      
      private var §]#$§:Number;
      
      private var §3#,§:Number;
      
      private var §<#l§:Boolean;
      
      private var §"3§:Number;
      
      private var §6M§:Number;
      
      private var §1`§:Number;
      
      private var §=T§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§3$'§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§?#7§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]"5§ = new b2Vec3();
         this.§7#B§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ "2§);
         this.m_localAnchor2.SetV(param1.§8!U§);
         this.§"3§ = param1.§5!w§;
         this.§]"5§.§5J§();
         this.§%!Z§ = 0;
         this.§6M§ = param1.§3!o§;
         this.§1`§ = param1.§4"Z§;
         this.§]#$§ = param1.§="6§;
         this.§3#,§ = param1.motorSpeed;
         this.§<#l§ = param1.§9!8§;
         this.§4"q§ = param1.§4#L§;
         this.§=T§ = b2internal::0#W;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::?#E.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;$6.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]"5§.x,param1 * this.§]"5§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§]"5§.z;
      }
      
      public function §?" §() : Number
      {
         return b2internal::;$6.m_sweep.a - b2internal::?#E.m_sweep.a - this.§"3§;
      }
      
      public function §<!j§() : Number
      {
         return b2internal::;$6.m_angularVelocity - b2internal::?#E.m_angularVelocity;
      }
      
      public function §!"3§() : Boolean
      {
         return this.§<#l§;
      }
      
      public function §`#'§(param1:Boolean) : void
      {
         this.§<#l§ = param1;
      }
      
      public function §2!t§() : Number
      {
         return this.§6M§;
      }
      
      public function §1!J§() : Number
      {
         return this.§1`§;
      }
      
      public function §?!`§(param1:Number, param2:Number) : void
      {
         this.§6M§ = param1;
         this.§1`§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§4"q§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::?#E.SetAwake(true);
         b2internal::;$6.SetAwake(true);
         this.§4"q§ = param1;
      }
      
      public function §<$7§(param1:Number) : void
      {
         b2internal::?#E.SetAwake(true);
         b2internal::;$6.SetAwake(true);
         this.§3#,§ = param1;
      }
      
      public function §`!N§() : Number
      {
         return this.§3#,§;
      }
      
      public function §9A§(param1:Number) : void
      {
         this.§]#$§ = param1;
      }
      
      public function §##p§() : Number
      {
         return this.§]#$§;
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
         _loc2_ = b2internal::?#E;
         _loc3_ = b2internal::;$6;
         if(this.§4"q§ || this.§<#l§)
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
         var _loc10_:Number = _loc2_.§&!s§;
         var _loc11_:Number = _loc3_.§&!s§;
         var _loc12_:Number = _loc2_.§!$5§;
         var _loc13_:Number = _loc3_.§!$5§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§7#B§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§7#B§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§7#B§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§7#B§.col1.y = this.§7#B§.col2.x;
         this.§7#B§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§7#B§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§7#B§.col1.z = this.§7#B§.col3.x;
         this.§7#B§.col2.z = this.§7#B§.col3.y;
         this.§7#B§.col3.z = _loc12_ + _loc13_;
         this.§4!i§ = 1 / (_loc12_ + _loc13_);
         if(this.§4"q§ == false || _loc14_)
         {
            this.§%!Z§ = 0;
         }
         if(this.§<#l§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§"3§;
            if(b2Math.§6!8§(this.§1`§ - this.§6M§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§=T§ = b2internal::^#T;
            }
            else if(_loc15_ <= this.§6M§)
            {
               if(this.§=T§ != b2internal::`!S)
               {
                  this.§]"5§.z = 0;
               }
               this.§=T§ = b2internal::`!S;
            }
            else if(_loc15_ >= this.§1`§)
            {
               if(this.§=T§ != b2internal::#"o)
               {
                  this.§]"5§.z = 0;
               }
               this.§=T§ = b2internal::#"o;
            }
            else
            {
               this.§=T§ = b2internal::0#W;
               this.§]"5§.z = 0;
            }
         }
         else
         {
            this.§=T§ = b2internal::0#W;
         }
         if(param1.§`#=§)
         {
            this.§]"5§.x *= param1.§9]§;
            this.§]"5§.y *= param1.§9]§;
            this.§%!Z§ *= param1.§9]§;
            _loc16_ = this.§]"5§.x;
            _loc17_ = this.§]"5§.y;
            _loc2_.§8!z§.x -= _loc10_ * _loc16_;
            _loc2_.§8!z§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§%!Z§ + this.§]"5§.z);
            _loc3_.§8!z§.x += _loc11_ * _loc16_;
            _loc3_.§8!z§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§%!Z§ + this.§]"5§.z);
         }
         else
         {
            this.§]"5§.§5J§();
            this.§%!Z§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
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
         var _loc2_:b2Body = b2internal::?#E;
         var _loc3_:b2Body = b2internal::;$6;
         var _loc11_:b2Vec2 = _loc2_.§8!z§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§8!z§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§&!s§;
         var _loc16_:Number = _loc3_.§&!s§;
         var _loc17_:Number = _loc2_.§!$5§;
         var _loc18_:Number = _loc3_.§!$5§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§4"q§ && this.§=T§ != b2internal::^#T && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§3#,§;
            _loc21_ = this.§4!i§ * -_loc20_;
            _loc22_ = this.§%!Z§;
            _loc23_ = param1.dt * this.§]#$§;
            this.§%!Z§ = b2Math.§%!"§(this.§%!Z§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§%!Z§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§<#l§ && this.§=T§ != b2internal::0#W && !_loc19_)
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
            this.§7#B§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§=T§ == b2internal::^#T)
            {
               this.§]"5§.§1!]§(this.impulse3);
            }
            else if(this.§=T§ == b2internal::`!S)
            {
               if(Number(this.§]"5§.z + this.impulse3.z) < 0)
               {
                  this.§7#B§.Solve22(this.§?#7§,-_loc24_ + this.§]"5§.z * this.§7#B§.col3.x,-_loc25_ + this.§]"5§.z * this.§7#B§.col3.y);
                  this.impulse3.x = this.§?#7§.x;
                  this.impulse3.y = this.§?#7§.y;
                  this.impulse3.z = -this.§]"5§.z;
                  this.§]"5§.x += this.§?#7§.x;
                  this.§]"5§.y += this.§?#7§.y;
                  this.§]"5§.z = 0;
               }
               else
               {
                  this.§]"5§.x += this.impulse3.x;
                  this.§]"5§.y += this.impulse3.y;
                  this.§]"5§.z += this.impulse3.z;
               }
            }
            else if(this.§=T§ == b2internal::#"o)
            {
               if(Number(this.§]"5§.z + this.impulse3.z) > 0)
               {
                  this.§7#B§.Solve22(this.§?#7§,-_loc24_ + this.§]"5§.z * this.§7#B§.col3.x,-_loc25_ + this.§]"5§.z * this.§7#B§.col3.y);
                  this.impulse3.x = this.§?#7§.x;
                  this.impulse3.y = this.§?#7§.y;
                  this.impulse3.z = -this.§]"5§.z;
                  this.§]"5§.x += this.§?#7§.x;
                  this.§]"5§.y += this.§?#7§.y;
                  this.§]"5§.z = 0;
               }
               else
               {
                  this.§]"5§.x += this.impulse3.x;
                  this.§]"5§.y += this.impulse3.y;
                  this.§]"5§.z += this.impulse3.z;
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
            this.§7#B§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§]"5§.x += this.impulse2.x;
            this.§]"5§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§8!z§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§8!z§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal::?#E;
         var _loc6_:b2Body = b2internal::;$6;
         var _loc7_:* = b2internal::"!z + b2internal::6"& == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§<#l§ && this.§=T§ != b2internal::0#W && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§"3§;
            _loc27_ = 0;
            if(this.§=T§ == b2internal::^#T)
            {
               _loc3_ = b2Math.§%!"§(_loc26_ - this.§6M§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§4!i§ * _loc3_;
               _loc8_ = b2Math.§6!8§(_loc3_);
            }
            else if(this.§=T§ == b2internal::`!S)
            {
               _loc3_ = _loc26_ - this.§6M§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§%!"§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§4!i§ * _loc3_;
            }
            else if(this.§=T§ == b2internal::#"o)
            {
               _loc3_ = _loc26_ - this.§1`§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§%!"§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§4!i§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§!$5§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§!$5§ * _loc27_;
            _loc5_.§8$0§();
            _loc6_.§8$0§();
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
         var _loc21_:Number = _loc5_.§&!s§;
         var _loc22_:Number = _loc6_.§&!s§;
         var _loc23_:Number = _loc5_.§!$5§;
         var _loc24_:Number = _loc6_.§!$5§;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            Number(_loc17_ / _loc20_);
            Number(_loc18_ / _loc20_);
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
         this.§3$'§.§`!?§(this.K1);
         this.§3$'§.§6"a§(this.K2);
         this.§3$'§.§6"a§(this.K3);
         this.§3$'§.§]<§(§%!1§,-_loc17_,-_loc18_);
         _loc11_ = §%!1§.x;
         _loc12_ = §%!1§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§&!s§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§&!s§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§!$5§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§&!s§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§&!s§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§!$5§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§8$0§();
         _loc6_.§8$0§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
