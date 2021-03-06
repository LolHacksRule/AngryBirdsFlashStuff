package §4N§
{
   import §"!R§.b2Settings;
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §=!U§.b2TimeStep;
   import §implements§.b2Mat22;
   import §implements§.b2Mat33;
   import §implements§.b2Math;
   import §implements§.b2Vec2;
   import §implements§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §]%§:b2Vec2 = new b2Vec2();
       
      
      private var §<!K§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §=A§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §%!3§:b2Vec3;
      
      private var §?!#§:Number;
      
      private var §9^§:b2Mat33;
      
      private var §4'§:Number;
      
      private var §7!J§:Boolean;
      
      private var §2!8§:Number;
      
      private var §+!3§:Number;
      
      private var §-P§:Boolean;
      
      private var §%U§:Number;
      
      private var §`P§:Number;
      
      private var §?!9§:Number;
      
      private var §,L§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§<!K§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§=A§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§%!3§ = new b2Vec3();
         this.§9^§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§7z§);
         this.m_localAnchor2.SetV(param1.§#t§);
         this.§%U§ = param1.§^3§;
         this.§%!3§.§^!&§();
         this.§?!#§ = 0;
         this.§`P§ = param1.§'%§;
         this.§?!9§ = param1.§!!G§;
         this.§2!8§ = param1.§1L§;
         this.§+!3§ = param1.motorSpeed;
         this.§-P§ = param1.§&!8§;
         this.§7!J§ = param1.§>&§;
         this.§,L§ = b2internal::=!X;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^!N.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::1A.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%!3§.x,param1 * this.§%!3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§%!3§.z;
      }
      
      public function §[j§() : Number
      {
         return b2internal::1A.m_sweep.a - b2internal::^!N.m_sweep.a - this.§%U§;
      }
      
      public function §>G§() : Number
      {
         return b2internal::1A.m_angularVelocity - b2internal::^!N.m_angularVelocity;
      }
      
      public function §8!A§() : Boolean
      {
         return this.§-P§;
      }
      
      public function §0!W§(param1:Boolean) : void
      {
         this.§-P§ = param1;
      }
      
      public function §0,§() : Number
      {
         return this.§`P§;
      }
      
      public function §>h§() : Number
      {
         return this.§?!9§;
      }
      
      public function §`!=§(param1:Number, param2:Number) : void
      {
         this.§`P§ = param1;
         this.§?!9§ = param2;
      }
      
      public function §3!T§() : Boolean
      {
         b2internal::^!N.SetAwake(true);
         b2internal::1A.SetAwake(true);
         return this.§7!J§;
      }
      
      public function § !H§(param1:Boolean) : void
      {
         this.§7!J§ = param1;
      }
      
      public function §,o§(param1:Number) : void
      {
         b2internal::^!N.SetAwake(true);
         b2internal::1A.SetAwake(true);
         this.§+!3§ = param1;
      }
      
      public function §8%§() : Number
      {
         return this.§+!3§;
      }
      
      public function § `§(param1:Number) : void
      {
         this.§2!8§ = param1;
      }
      
      public function §^+§() : Number
      {
         return this.§2!8§;
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
         _loc2_ = b2internal::^!N;
         _loc3_ = b2internal::1A;
         if(this.§7!J§ || this.§-P§)
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
         var _loc10_:Number = _loc2_.§1!G§;
         var _loc11_:Number = _loc3_.§1!G§;
         var _loc12_:Number = _loc2_.§+$§;
         var _loc13_:Number = _loc3_.§+$§;
         this.§9^§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§9^§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§9^§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§9^§.col1.y = this.§9^§.col2.x;
         this.§9^§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§9^§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§9^§.col1.z = this.§9^§.col3.x;
         this.§9^§.col2.z = this.§9^§.col3.y;
         this.§9^§.col3.z = _loc12_ + _loc13_;
         this.§4'§ = 1 / (_loc12_ + _loc13_);
         if(this.§7!J§ == false)
         {
            this.§?!#§ = 0;
         }
         if(this.§-P§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§%U§;
            if(b2Math.§5'§(this.§?!9§ - this.§`P§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§,L§ = b2internal::+2;
            }
            else if(_loc14_ <= this.§`P§)
            {
               if(this.§,L§ != b2internal::"!3)
               {
                  this.§%!3§.z = 0;
               }
               this.§,L§ = b2internal::"!3;
            }
            else if(_loc14_ >= this.§?!9§)
            {
               if(this.§,L§ != b2internal::`p)
               {
                  this.§%!3§.z = 0;
               }
               this.§,L§ = b2internal::`p;
            }
            else
            {
               this.§,L§ = b2internal::=!X;
               this.§%!3§.z = 0;
            }
         }
         else
         {
            this.§,L§ = b2internal::=!X;
         }
         if(param1.§5R§)
         {
            this.§%!3§.x *= param1.§5!Y§;
            this.§%!3§.y *= param1.§5!Y§;
            this.§?!#§ *= param1.§5!Y§;
            _loc15_ = this.§%!3§.x;
            _loc16_ = this.§%!3§.y;
            _loc2_.§,!@§.x -= _loc10_ * _loc15_;
            _loc2_.§,!@§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§?!#§ + this.§%!3§.z);
            _loc3_.§,!@§.x += _loc11_ * _loc15_;
            _loc3_.§,!@§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§?!#§ + this.§%!3§.z);
         }
         else
         {
            this.§%!3§.§^!&§();
            this.§?!#§ = 0;
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
         var _loc2_:b2Body = b2internal::^!N;
         var _loc3_:b2Body = b2internal::1A;
         var _loc11_:b2Vec2 = _loc2_.§,!@§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§,!@§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§1!G§;
         var _loc16_:Number = _loc3_.§1!G§;
         var _loc17_:Number = _loc2_.§+$§;
         var _loc18_:Number = _loc3_.§+$§;
         if(this.§7!J§ && this.§,L§ != b2internal::+2)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§+!3§;
            _loc20_ = this.§4'§ * -_loc19_;
            _loc21_ = this.§?!#§;
            _loc22_ = param1.§5V§ * this.§2!8§;
            this.§?!#§ = b2Math.§+I§(this.§?!#§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§?!#§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§-P§ && this.§,L§ != b2internal::=!X)
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
            this.§9^§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§,L§ == b2internal::+2)
            {
               this.§%!3§.§=C§(this.impulse3);
            }
            else if(this.§,L§ == b2internal::"!3)
            {
               if((_loc6_ = this.§%!3§.z + this.impulse3.z) < 0)
               {
                  this.§9^§.Solve22(this.§=A§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§=A§.x;
                  this.impulse3.y = this.§=A§.y;
                  this.impulse3.z = -this.§%!3§.z;
                  this.§%!3§.x += this.§=A§.x;
                  this.§%!3§.y += this.§=A§.y;
                  this.§%!3§.z = 0;
               }
            }
            else if(this.§,L§ == b2internal::`p)
            {
               if((_loc6_ = this.§%!3§.z + this.impulse3.z) > 0)
               {
                  this.§9^§.Solve22(this.§=A§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§=A§.x;
                  this.impulse3.y = this.§=A§.y;
                  this.impulse3.z = -this.§%!3§.z;
                  this.§%!3§.x += this.§=A§.x;
                  this.§%!3§.y += this.§=A§.y;
                  this.§%!3§.z = 0;
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
            this.§9^§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§%!3§.x += this.impulse2.x;
            this.§%!3§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§,!@§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§,!@§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::^!N;
         var _loc6_:b2Body = b2internal::1A;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§-P§ && this.§,L§ != b2internal::=!X)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§%U§;
            _loc26_ = 0;
            if(this.§,L§ == b2internal::+2)
            {
               _loc3_ = b2Math.§+I§(_loc25_ - this.§`P§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4'§ * _loc3_;
               _loc7_ = b2Math.§5'§(_loc3_);
            }
            else if(this.§,L§ == b2internal::"!3)
            {
               _loc3_ = _loc25_ - this.§`P§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§+I§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§4'§ * _loc3_;
            }
            else if(this.§,L§ == b2internal::`p)
            {
               _loc3_ = _loc25_ - this.§?!9§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§+I§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4'§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§+$§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§+$§ * _loc26_;
            _loc5_.§<8§();
            _loc6_.§<8§();
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
         var _loc20_:Number = _loc5_.§1!G§;
         var _loc21_:Number = _loc6_.§1!G§;
         var _loc22_:Number = _loc5_.§+$§;
         var _loc23_:Number = _loc6_.§+$§;
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
         this.§<!K§.§9!B§(this.K1);
         this.§<!K§.§<Y§(this.K2);
         this.§<!K§.§<Y§(this.K3);
         this.§<!K§.§@!'§(§]%§,-_loc16_,-_loc17_);
         _loc10_ = §]%§.x;
         _loc11_ = §]%§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§1!G§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§1!G§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§+$§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§1!G§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§1!G§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§+$§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§<8§();
         _loc6_.§<8§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
