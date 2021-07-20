package §"G§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2TimeStep;
   import §7F§.b2Mat22;
   import §7F§.b2Mat33;
   import §7F§.b2Math;
   import §7F§.b2Vec2;
   import §7F§.b2Vec3;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §3!k§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §#"6§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §^"8§:b2Vec3;
      
      private var §`;§:Number;
      
      private var §#!u§:b2Mat33;
      
      private var §1!T§:Number;
      
      private var §,7§:Boolean;
      
      private var §+"7§:Number;
      
      private var §3!?§:Number;
      
      private var §<!f§:Boolean;
      
      private var §%D§:Number;
      
      private var §0"D§:Number;
      
      private var §4!B§:Number;
      
      private var § !5§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§#"6§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^"8§ = new b2Vec3();
         this.§#!u§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!d§);
         this.m_localAnchor2.SetV(param1.§;!9§);
         this.§%D§ = param1.§?"K§;
         this.§^"8§.§%"0§();
         this.§`;§ = 0;
         this.§0"D§ = param1.§"&§;
         this.§4!B§ = param1.§6c§;
         this.§+"7§ = param1.§>g§;
         this.§3!?§ = param1.motorSpeed;
         this.§<!f§ = param1.§5a§;
         this.§,7§ = param1.§-q§;
         this.§ !5§ = b2internal::;7;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::<X.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^"8§.x,param1 * this.§^"8§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^"8§.z;
      }
      
      public function §=z§() : Number
      {
         return b2internal::<X.m_sweep.a - b2internal::3"6.m_sweep.a - this.§%D§;
      }
      
      public function §-e§() : Number
      {
         return b2internal::<X.m_angularVelocity - b2internal::3"6.m_angularVelocity;
      }
      
      public function §var §() : Boolean
      {
         return this.§<!f§;
      }
      
      public function §?v§(param1:Boolean) : void
      {
         this.§<!f§ = param1;
      }
      
      public function §0K§() : Number
      {
         return this.§0"D§;
      }
      
      public function §<!5§() : Number
      {
         return this.§4!B§;
      }
      
      public function §@a§(param1:Number, param2:Number) : void
      {
         this.§0"D§ = param1;
         this.§4!B§ = param2;
      }
      
      public function §9"E§() : Boolean
      {
         b2internal::3"6.SetAwake(true);
         b2internal::<X.SetAwake(true);
         return this.§,7§;
      }
      
      public function §^"§(param1:Boolean) : void
      {
         this.§,7§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::3"6.SetAwake(true);
         b2internal::<X.SetAwake(true);
         this.§3!?§ = param1;
      }
      
      public function §%>§() : Number
      {
         return this.§3!?§;
      }
      
      public function §"!=§(param1:Number) : void
      {
         this.§+"7§ = param1;
      }
      
      public function §;]§() : Number
      {
         return this.§+"7§;
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
         _loc2_ = b2internal::3"6;
         _loc3_ = b2internal::<X;
         if(this.§,7§ || this.§<!f§)
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
         var _loc10_:Number = _loc2_.§6!j§;
         var _loc11_:Number = _loc3_.§6!j§;
         var _loc12_:Number = _loc2_.§6!$§;
         var _loc13_:Number = _loc3_.§6!$§;
         this.§#!u§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§#!u§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§#!u§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§#!u§.col1.y = this.§#!u§.col2.x;
         this.§#!u§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§#!u§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§#!u§.col1.z = this.§#!u§.col3.x;
         this.§#!u§.col2.z = this.§#!u§.col3.y;
         this.§#!u§.col3.z = _loc12_ + _loc13_;
         this.§1!T§ = 1 / (_loc12_ + _loc13_);
         if(this.§,7§ == false)
         {
            this.§`;§ = 0;
         }
         if(this.§<!f§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§%D§;
            if(b2Math.§?h§(this.§4!B§ - this.§0"D§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§ !5§ = b2internal:: j;
            }
            else if(_loc14_ <= this.§0"D§)
            {
               if(this.§ !5§ != b2internal::#N)
               {
                  this.§^"8§.z = 0;
               }
               this.§ !5§ = b2internal::#N;
            }
            else if(_loc14_ >= this.§4!B§)
            {
               if(this.§ !5§ != b2internal::!c)
               {
                  this.§^"8§.z = 0;
               }
               this.§ !5§ = b2internal::!c;
            }
            else
            {
               this.§ !5§ = b2internal::;7;
               this.§^"8§.z = 0;
            }
         }
         else
         {
            this.§ !5§ = b2internal::;7;
         }
         if(param1.§@"9§)
         {
            this.§^"8§.x *= param1.§0#§;
            this.§^"8§.y *= param1.§0#§;
            this.§`;§ *= param1.§0#§;
            _loc15_ = this.§^"8§.x;
            _loc16_ = this.§^"8§.y;
            _loc2_.§,!1§.x -= _loc10_ * _loc15_;
            _loc2_.§,!1§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§`;§ + this.§^"8§.z);
            _loc3_.§,!1§.x += _loc11_ * _loc15_;
            _loc3_.§,!1§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§`;§ + this.§^"8§.z);
         }
         else
         {
            this.§^"8§.§%"0§();
            this.§`;§ = 0;
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
         var _loc2_:b2Body = b2internal::3"6;
         var _loc3_:b2Body = b2internal::<X;
         var _loc11_:b2Vec2 = _loc2_.§,!1§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§,!1§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§6!j§;
         var _loc16_:Number = _loc3_.§6!j§;
         var _loc17_:Number = _loc2_.§6!$§;
         var _loc18_:Number = _loc3_.§6!$§;
         if(this.§,7§ && this.§ !5§ != b2internal:: j)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§3!?§;
            _loc20_ = this.§1!T§ * -_loc19_;
            _loc21_ = this.§`;§;
            _loc22_ = param1.§&!K§ * this.§+"7§;
            this.§`;§ = b2Math.§&+§(this.§`;§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§`;§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§<!f§ && this.§ !5§ != b2internal::;7)
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
            this.§#!u§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§ !5§ == b2internal:: j)
            {
               this.§^"8§.§?!;§(this.impulse3);
            }
            else if(this.§ !5§ == b2internal::#N)
            {
               if((_loc6_ = this.§^"8§.z + this.impulse3.z) < 0)
               {
                  this.§#!u§.Solve22(this.§#"6§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§#"6§.x;
                  this.impulse3.y = this.§#"6§.y;
                  this.impulse3.z = -this.§^"8§.z;
                  this.§^"8§.x += this.§#"6§.x;
                  this.§^"8§.y += this.§#"6§.y;
                  this.§^"8§.z = 0;
               }
            }
            else if(this.§ !5§ == b2internal::!c)
            {
               if((_loc6_ = this.§^"8§.z + this.impulse3.z) > 0)
               {
                  this.§#!u§.Solve22(this.§#"6§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§#"6§.x;
                  this.impulse3.y = this.§#"6§.y;
                  this.impulse3.z = -this.§^"8§.z;
                  this.§^"8§.x += this.§#"6§.x;
                  this.§^"8§.y += this.§#"6§.y;
                  this.§^"8§.z = 0;
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
            this.§#!u§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§^"8§.x += this.impulse2.x;
            this.§^"8§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§,!1§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§,!1§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::3"6;
         var _loc6_:b2Body = b2internal::<X;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§<!f§ && this.§ !5§ != b2internal::;7)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§%D§;
            _loc26_ = 0;
            if(this.§ !5§ == b2internal:: j)
            {
               _loc3_ = b2Math.§&+§(_loc25_ - this.§0"D§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§1!T§ * _loc3_;
               _loc7_ = b2Math.§?h§(_loc3_);
            }
            else if(this.§ !5§ == b2internal::#N)
            {
               _loc3_ = _loc25_ - this.§0"D§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§&+§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§1!T§ * _loc3_;
            }
            else if(this.§ !5§ == b2internal::!c)
            {
               _loc3_ = _loc25_ - this.§4!B§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§&+§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§1!T§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§6!$§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§6!$§ * _loc26_;
            _loc5_.§-v§();
            _loc6_.§-v§();
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
         var _loc20_:Number = _loc5_.§6!j§;
         var _loc21_:Number = _loc6_.§6!j§;
         var _loc22_:Number = _loc5_.§6!$§;
         var _loc23_:Number = _loc6_.§6!$§;
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
         this.K.§,i§(this.K1);
         this.K.§]l§(this.K2);
         this.K.§]l§(this.K3);
         this.K.§3-§(§3!k§,-_loc16_,-_loc17_);
         _loc10_ = §3!k§.x;
         _loc11_ = §3!k§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§6!j§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§6!j§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§6!$§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§6!j§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§6!j§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§6!$§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§-v§();
         _loc6_.§-v§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
