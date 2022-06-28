package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Mat33;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §>H§.b2Vec3;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §^D§:b2Vec2 = new b2Vec2();
       
      
      private var §]_§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §>!T§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §,!2§:b2Vec3;
      
      private var §8t§:Number;
      
      private var §,0§:b2Mat33;
      
      private var §<M§:Number;
      
      private var §-!>§:Boolean;
      
      private var §"!;§:Number;
      
      private var §&?§:Number;
      
      private var §5,§:Boolean;
      
      private var §2!l§:Number;
      
      private var §-!E§:Number;
      
      private var §6P§:Number;
      
      private var §>!X§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§]_§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§>!T§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,!2§ = new b2Vec3();
         this.§,0§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§<?§);
         this.m_localAnchor2.SetV(param1.§%!e§);
         this.§2!l§ = param1.§-!Y§;
         this.§,!2§.§`!5§();
         this.§8t§ = 0;
         this.§-!E§ = param1.§6!x§;
         this.§6P§ = param1.§#f§;
         this.§"!;§ = param1.§5!?§;
         this.§&?§ = param1.motorSpeed;
         this.§5,§ = param1.§&%§;
         this.§-!>§ = param1.§!;§;
         this.§>!X§ = b2internal::+!t;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§,!2§.x,param1 * this.§,!2§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§,!2§.z;
      }
      
      public function §,b§() : Number
      {
         return b2internal::0!w.m_sweep.a - b2internal::6!G.m_sweep.a - this.§2!l§;
      }
      
      public function §4!f§() : Number
      {
         return b2internal::0!w.m_angularVelocity - b2internal::6!G.m_angularVelocity;
      }
      
      public function §1!B§() : Boolean
      {
         return this.§5,§;
      }
      
      public function §?j§(param1:Boolean) : void
      {
         this.§5,§ = param1;
      }
      
      public function §"r§() : Number
      {
         return this.§-!E§;
      }
      
      public function §]!u§() : Number
      {
         return this.§6P§;
      }
      
      public function §7_§(param1:Number, param2:Number) : void
      {
         this.§-!E§ = param1;
         this.§6P§ = param2;
      }
      
      public function §>o§() : Boolean
      {
         b2internal::6!G.SetAwake(true);
         b2internal::0!w.SetAwake(true);
         return this.§-!>§;
      }
      
      public function §8!'§(param1:Boolean) : void
      {
         this.§-!>§ = param1;
      }
      
      public function §[>§(param1:Number) : void
      {
         b2internal::6!G.SetAwake(true);
         b2internal::0!w.SetAwake(true);
         this.§&?§ = param1;
      }
      
      public function §1!V§() : Number
      {
         return this.§&?§;
      }
      
      public function §>'§(param1:Number) : void
      {
         this.§"!;§ = param1;
      }
      
      public function §0!k§() : Number
      {
         return this.§"!;§;
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
         _loc2_ = b2internal::6!G;
         _loc3_ = b2internal::0!w;
         if(this.§-!>§ || this.§5,§)
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
         var _loc10_:Number = _loc2_.§7n§;
         var _loc11_:Number = _loc3_.§7n§;
         var _loc12_:Number = _loc2_.§;5§;
         var _loc13_:Number = _loc3_.§;5§;
         this.§,0§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§,0§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§,0§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§,0§.col1.y = this.§,0§.col2.x;
         this.§,0§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§,0§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§,0§.col1.z = this.§,0§.col3.x;
         this.§,0§.col2.z = this.§,0§.col3.y;
         this.§,0§.col3.z = _loc12_ + _loc13_;
         this.§<M§ = 1 / (_loc12_ + _loc13_);
         if(this.§-!>§ == false)
         {
            this.§8t§ = 0;
         }
         if(this.§5,§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§2!l§;
            if(b2Math.§-n§(this.§6P§ - this.§-!E§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§>!X§ = b2internal::'!E;
            }
            else if(_loc14_ <= this.§-!E§)
            {
               if(this.§>!X§ != b2internal::1!i)
               {
                  this.§,!2§.z = 0;
               }
               this.§>!X§ = b2internal::1!i;
            }
            else if(_loc14_ >= this.§6P§)
            {
               if(this.§>!X§ != b2internal::#!F)
               {
                  this.§,!2§.z = 0;
               }
               this.§>!X§ = b2internal::#!F;
            }
            else
            {
               this.§>!X§ = b2internal::+!t;
               this.§,!2§.z = 0;
            }
         }
         else
         {
            this.§>!X§ = b2internal::+!t;
         }
         if(param1.§[8§)
         {
            this.§,!2§.x *= param1.§87§;
            this.§,!2§.y *= param1.§87§;
            this.§8t§ *= param1.§87§;
            _loc15_ = this.§,!2§.x;
            _loc16_ = this.§,!2§.y;
            _loc2_.§^O§.x -= _loc10_ * _loc15_;
            _loc2_.§^O§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§8t§ + this.§,!2§.z);
            _loc3_.§^O§.x += _loc11_ * _loc15_;
            _loc3_.§^O§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§8t§ + this.§,!2§.z);
         }
         else
         {
            this.§,!2§.§`!5§();
            this.§8t§ = 0;
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
         var _loc2_:b2Body = b2internal::6!G;
         var _loc3_:b2Body = b2internal::0!w;
         var _loc11_:b2Vec2 = _loc2_.§^O§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§^O§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§7n§;
         var _loc16_:Number = _loc3_.§7n§;
         var _loc17_:Number = _loc2_.§;5§;
         var _loc18_:Number = _loc3_.§;5§;
         if(this.§-!>§ && this.§>!X§ != b2internal::'!E)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§&?§;
            _loc20_ = this.§<M§ * -_loc19_;
            _loc21_ = this.§8t§;
            _loc22_ = param1.§^Z§ * this.§"!;§;
            this.§8t§ = b2Math.§]#§(this.§8t§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§8t§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§5,§ && this.§>!X§ != b2internal::+!t)
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
            this.§,0§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§>!X§ == b2internal::'!E)
            {
               this.§,!2§.§7x§(this.impulse3);
            }
            else if(this.§>!X§ == b2internal::1!i)
            {
               if((_loc6_ = this.§,!2§.z + this.impulse3.z) < 0)
               {
                  this.§,0§.Solve22(this.§>!T§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§>!T§.x;
                  this.impulse3.y = this.§>!T§.y;
                  this.impulse3.z = -this.§,!2§.z;
                  this.§,!2§.x += this.§>!T§.x;
                  this.§,!2§.y += this.§>!T§.y;
                  this.§,!2§.z = 0;
               }
            }
            else if(this.§>!X§ == b2internal::#!F)
            {
               if((_loc6_ = this.§,!2§.z + this.impulse3.z) > 0)
               {
                  this.§,0§.Solve22(this.§>!T§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§>!T§.x;
                  this.impulse3.y = this.§>!T§.y;
                  this.impulse3.z = -this.§,!2§.z;
                  this.§,!2§.x += this.§>!T§.x;
                  this.§,!2§.y += this.§>!T§.y;
                  this.§,!2§.z = 0;
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
            this.§,0§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§,!2§.x += this.impulse2.x;
            this.§,!2§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§^O§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§^O§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::6!G;
         var _loc6_:b2Body = b2internal::0!w;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§5,§ && this.§>!X§ != b2internal::+!t)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§2!l§;
            _loc26_ = 0;
            if(this.§>!X§ == b2internal::'!E)
            {
               _loc3_ = b2Math.§]#§(_loc25_ - this.§-!E§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§<M§ * _loc3_;
               _loc7_ = b2Math.§-n§(_loc3_);
            }
            else if(this.§>!X§ == b2internal::1!i)
            {
               _loc3_ = _loc25_ - this.§-!E§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§]#§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§<M§ * _loc3_;
            }
            else if(this.§>!X§ == b2internal::#!F)
            {
               _loc3_ = _loc25_ - this.§6P§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§]#§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§<M§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§;5§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§;5§ * _loc26_;
            _loc5_.§0!y§();
            _loc6_.§0!y§();
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
         var _loc20_:Number = _loc5_.§7n§;
         var _loc21_:Number = _loc6_.§7n§;
         var _loc22_:Number = _loc5_.§;5§;
         var _loc23_:Number = _loc6_.§;5§;
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
         this.§]_§.§1c§(this.K1);
         this.§]_§.§ !Y§(this.K2);
         this.§]_§.§ !Y§(this.K3);
         this.§]_§.§3!=§(§^D§,-_loc16_,-_loc17_);
         _loc10_ = §^D§.x;
         _loc11_ = §^D§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§7n§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§7n§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§;5§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§7n§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§7n§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§;5§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§0!y§();
         _loc6_.§0!y§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
