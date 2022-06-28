package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Mat33;
   import §8>§.b2Math;
   import §8>§.b2Vec2;
   import §8>§.b2Vec3;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §^H§:b2Vec2 = new b2Vec2();
       
      
      private var §@"§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §?![§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §+!P§:b2Vec3;
      
      private var §#!s§:Number;
      
      private var §#K§:b2Mat33;
      
      private var §>y§:Number;
      
      private var §@&§:Boolean;
      
      private var §1!K§:Number;
      
      private var §@!]§:Number;
      
      private var §]!x§:Boolean;
      
      private var §,8§:Number;
      
      private var §@s§:Number;
      
      private var §8E§:Number;
      
      private var §-!6§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§@"§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§?![§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+!P§ = new b2Vec3();
         this.§#K§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§9!9§);
         this.m_localAnchor2.SetV(param1.§^G§);
         this.§,8§ = param1.§1!@§;
         this.§+!P§.§%&§();
         this.§#!s§ = 0;
         this.§@s§ = param1.§8!7§;
         this.§8E§ = param1.§'!w§;
         this.§1!K§ = param1.§%!9§;
         this.§@!]§ = param1.motorSpeed;
         this.§]!x§ = param1.§"!8§;
         this.§@&§ = param1.§;!J§;
         this.§-!6§ = b2internal::7! ;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+!P§.x,param1 * this.§+!P§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+!P§.z;
      }
      
      public function §;w§() : Number
      {
         return b2internal::7!<.m_sweep.a - b2internal::^^.m_sweep.a - this.§,8§;
      }
      
      public function §;$§() : Number
      {
         return b2internal::7!<.m_angularVelocity - b2internal::^^.m_angularVelocity;
      }
      
      public function §9N§() : Boolean
      {
         return this.§]!x§;
      }
      
      public function §8<§(param1:Boolean) : void
      {
         this.§]!x§ = param1;
      }
      
      public function §3!'§() : Number
      {
         return this.§@s§;
      }
      
      public function §=!9§() : Number
      {
         return this.§8E§;
      }
      
      public function §=C§(param1:Number, param2:Number) : void
      {
         this.§@s§ = param1;
         this.§8E§ = param2;
      }
      
      public function §-!"§() : Boolean
      {
         b2internal::^^.SetAwake(true);
         b2internal::7!<.SetAwake(true);
         return this.§@&§;
      }
      
      public function §?!3§(param1:Boolean) : void
      {
         this.§@&§ = param1;
      }
      
      public function §<! §(param1:Number) : void
      {
         b2internal::^^.SetAwake(true);
         b2internal::7!<.SetAwake(true);
         this.§@!]§ = param1;
      }
      
      public function §%!4§() : Number
      {
         return this.§@!]§;
      }
      
      public function §0!§(param1:Number) : void
      {
         this.§1!K§ = param1;
      }
      
      public function §[c§() : Number
      {
         return this.§1!K§;
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
         _loc2_ = b2internal::^^;
         _loc3_ = b2internal::7!<;
         if(this.§@&§ || this.§]!x§)
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
         var _loc10_:Number = _loc2_.§1!X§;
         var _loc11_:Number = _loc3_.§1!X§;
         var _loc12_:Number = _loc2_.§^!B§;
         var _loc13_:Number = _loc3_.§^!B§;
         this.§#K§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§#K§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§#K§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§#K§.col1.y = this.§#K§.col2.x;
         this.§#K§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§#K§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§#K§.col1.z = this.§#K§.col3.x;
         this.§#K§.col2.z = this.§#K§.col3.y;
         this.§#K§.col3.z = _loc12_ + _loc13_;
         this.§>y§ = 1 / (_loc12_ + _loc13_);
         if(this.§@&§ == false)
         {
            this.§#!s§ = 0;
         }
         if(this.§]!x§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§,8§;
            if(b2Math.§>!Y§(this.§8E§ - this.§@s§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§-!6§ = b2internal::!>;
            }
            else if(_loc14_ <= this.§@s§)
            {
               if(this.§-!6§ != b2internal::?")
               {
                  this.§+!P§.z = 0;
               }
               this.§-!6§ = b2internal::?";
            }
            else if(_loc14_ >= this.§8E§)
            {
               if(this.§-!6§ != b2internal:: B)
               {
                  this.§+!P§.z = 0;
               }
               this.§-!6§ = b2internal:: B;
            }
            else
            {
               this.§-!6§ = b2internal::7! ;
               this.§+!P§.z = 0;
            }
         }
         else
         {
            this.§-!6§ = b2internal::7! ;
         }
         if(param1.§9!G§)
         {
            this.§+!P§.x *= param1.§&t§;
            this.§+!P§.y *= param1.§&t§;
            this.§#!s§ *= param1.§&t§;
            _loc15_ = this.§+!P§.x;
            _loc16_ = this.§+!P§.y;
            _loc2_.§9!§.x -= _loc10_ * _loc15_;
            _loc2_.§9!§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§#!s§ + this.§+!P§.z);
            _loc3_.§9!§.x += _loc11_ * _loc15_;
            _loc3_.§9!§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§#!s§ + this.§+!P§.z);
         }
         else
         {
            this.§+!P§.§%&§();
            this.§#!s§ = 0;
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
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         var _loc11_:b2Vec2 = _loc2_.§9!§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§9!§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§1!X§;
         var _loc16_:Number = _loc3_.§1!X§;
         var _loc17_:Number = _loc2_.§^!B§;
         var _loc18_:Number = _loc3_.§^!B§;
         if(this.§@&§ && this.§-!6§ != b2internal::!>)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§@!]§;
            _loc20_ = this.§>y§ * -_loc19_;
            _loc21_ = this.§#!s§;
            _loc22_ = param1.§6c§ * this.§1!K§;
            this.§#!s§ = b2Math.§5L§(this.§#!s§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§#!s§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§]!x§ && this.§-!6§ != b2internal::7! )
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
            this.§#K§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§-!6§ == b2internal::!>)
            {
               this.§+!P§.§[!C§(this.impulse3);
            }
            else if(this.§-!6§ == b2internal::?")
            {
               if((_loc6_ = this.§+!P§.z + this.impulse3.z) < 0)
               {
                  this.§#K§.Solve22(this.§?![§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§?![§.x;
                  this.impulse3.y = this.§?![§.y;
                  this.impulse3.z = -this.§+!P§.z;
                  this.§+!P§.x += this.§?![§.x;
                  this.§+!P§.y += this.§?![§.y;
                  this.§+!P§.z = 0;
               }
            }
            else if(this.§-!6§ == b2internal:: B)
            {
               if((_loc6_ = this.§+!P§.z + this.impulse3.z) > 0)
               {
                  this.§#K§.Solve22(this.§?![§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§?![§.x;
                  this.impulse3.y = this.§?![§.y;
                  this.impulse3.z = -this.§+!P§.z;
                  this.§+!P§.x += this.§?![§.x;
                  this.§+!P§.y += this.§?![§.y;
                  this.§+!P§.z = 0;
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
            this.§#K§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§+!P§.x += this.impulse2.x;
            this.§+!P§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§9!§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§9!§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::^^;
         var _loc6_:b2Body = b2internal::7!<;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§]!x§ && this.§-!6§ != b2internal::7! )
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§,8§;
            _loc26_ = 0;
            if(this.§-!6§ == b2internal::!>)
            {
               _loc3_ = b2Math.§5L§(_loc25_ - this.§@s§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§>y§ * _loc3_;
               _loc7_ = b2Math.§>!Y§(_loc3_);
            }
            else if(this.§-!6§ == b2internal::?")
            {
               _loc3_ = _loc25_ - this.§@s§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§5L§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§>y§ * _loc3_;
            }
            else if(this.§-!6§ == b2internal:: B)
            {
               _loc3_ = _loc25_ - this.§8E§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§5L§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§>y§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§^!B§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§^!B§ * _loc26_;
            _loc5_.§ n§();
            _loc6_.§ n§();
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
         var _loc20_:Number = _loc5_.§1!X§;
         var _loc21_:Number = _loc6_.§1!X§;
         var _loc22_:Number = _loc5_.§^!B§;
         var _loc23_:Number = _loc6_.§^!B§;
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
         this.§@"§.§2E§(this.K1);
         this.§@"§.§<O§(this.K2);
         this.§@"§.§<O§(this.K3);
         this.§@"§.§[!T§(§^H§,-_loc16_,-_loc17_);
         _loc10_ = §^H§.x;
         _loc11_ = §^H§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§1!X§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§1!X§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§^!B§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§1!X§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§1!X§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§^!B§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§ n§();
         _loc6_.§ n§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
