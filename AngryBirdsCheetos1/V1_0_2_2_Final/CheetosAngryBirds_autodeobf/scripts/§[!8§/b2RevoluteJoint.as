package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Mat33;
   import §0!G§.b2Math;
   import §0!G§.b2Vec2;
   import §0!G§.b2Vec3;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §"R§:b2Vec2 = new b2Vec2();
       
      
      private var §2#§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §<!§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var § !6§:b2Vec3;
      
      private var §]!]§:Number;
      
      private var §3!7§:b2Mat33;
      
      private var §4v§:Number;
      
      private var §`a§:Boolean;
      
      private var §`!1§:Number;
      
      private var §'!E§:Number;
      
      private var §?;§:Boolean;
      
      private var §@4§:Number;
      
      private var §+§:Number;
      
      private var §]F§:Number;
      
      private var §,4§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§2#§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§<!§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ !6§ = new b2Vec3();
         this.§3!7§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;9§);
         this.m_localAnchor2.SetV(param1.§-y§);
         this.§@4§ = param1.§;=§;
         this.§ !6§.§3a§();
         this.§]!]§ = 0;
         this.§+§ = param1.§4O§;
         this.§]F§ = param1.§0"§;
         this.§`!1§ = param1.§5!F§;
         this.§'!E§ = param1.motorSpeed;
         this.§?;§ = param1.§1&§;
         this.§`a§ = param1.§^=§;
         this.§,4§ = b2internal::%W;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§ !6§.x,param1 * this.§ !6§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ !6§.z;
      }
      
      public function §?_§() : Number
      {
         return b2internal::%^.m_sweep.a - b2internal::`p.m_sweep.a - this.§@4§;
      }
      
      public function §<P§() : Number
      {
         return b2internal::%^.m_angularVelocity - b2internal::`p.m_angularVelocity;
      }
      
      public function §&&§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §=<§(param1:Boolean) : void
      {
         this.§?;§ = param1;
      }
      
      public function §!!E§() : Number
      {
         return this.§+§;
      }
      
      public function §@U§() : Number
      {
         return this.§]F§;
      }
      
      public function §6!L§(param1:Number, param2:Number) : void
      {
         this.§+§ = param1;
         this.§]F§ = param2;
      }
      
      public function §!o§() : Boolean
      {
         b2internal::`p.SetAwake(true);
         b2internal::%^.SetAwake(true);
         return this.§`a§;
      }
      
      public function §?!2§(param1:Boolean) : void
      {
         this.§`a§ = param1;
      }
      
      public function §;X§(param1:Number) : void
      {
         b2internal::`p.SetAwake(true);
         b2internal::%^.SetAwake(true);
         this.§'!E§ = param1;
      }
      
      public function §class§() : Number
      {
         return this.§'!E§;
      }
      
      public function §'"§(param1:Number) : void
      {
         this.§`!1§ = param1;
      }
      
      public function §@2§() : Number
      {
         return this.§`!1§;
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
         _loc2_ = b2internal::`p;
         _loc3_ = b2internal::%^;
         if(this.§`a§ || this.§?;§)
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
         var _loc10_:Number = _loc2_.§#!D§;
         var _loc11_:Number = _loc3_.§#!D§;
         var _loc12_:Number = _loc2_.§?8§;
         var _loc13_:Number = _loc3_.§?8§;
         this.§3!7§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§3!7§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§3!7§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§3!7§.col1.y = this.§3!7§.col2.x;
         this.§3!7§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§3!7§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§3!7§.col1.z = this.§3!7§.col3.x;
         this.§3!7§.col2.z = this.§3!7§.col3.y;
         this.§3!7§.col3.z = _loc12_ + _loc13_;
         this.§4v§ = 1 / (_loc12_ + _loc13_);
         if(this.§`a§ == false)
         {
            this.§]!]§ = 0;
         }
         if(this.§?;§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§@4§;
            if(b2Math.§8M§(this.§]F§ - this.§+§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§,4§ = b2internal::7^;
            }
            else if(_loc14_ <= this.§+§)
            {
               if(this.§,4§ != b2internal::%! )
               {
                  this.§ !6§.z = 0;
               }
               this.§,4§ = b2internal::%! ;
            }
            else if(_loc14_ >= this.§]F§)
            {
               if(this.§,4§ != b2internal::+!E)
               {
                  this.§ !6§.z = 0;
               }
               this.§,4§ = b2internal::+!E;
            }
            else
            {
               this.§,4§ = b2internal::%W;
               this.§ !6§.z = 0;
            }
         }
         else
         {
            this.§,4§ = b2internal::%W;
         }
         if(param1.§5!N§)
         {
            this.§ !6§.x *= param1.§7!M§;
            this.§ !6§.y *= param1.§7!M§;
            this.§]!]§ *= param1.§7!M§;
            _loc15_ = this.§ !6§.x;
            _loc16_ = this.§ !6§.y;
            _loc2_.§,?§.x -= _loc10_ * _loc15_;
            _loc2_.§,?§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§]!]§ + this.§ !6§.z);
            _loc3_.§,?§.x += _loc11_ * _loc15_;
            _loc3_.§,?§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§]!]§ + this.§ !6§.z);
         }
         else
         {
            this.§ !6§.§3a§();
            this.§]!]§ = 0;
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
         var _loc2_:b2Body = b2internal::`p;
         var _loc3_:b2Body = b2internal::%^;
         var _loc11_:b2Vec2 = _loc2_.§,?§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§,?§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§#!D§;
         var _loc16_:Number = _loc3_.§#!D§;
         var _loc17_:Number = _loc2_.§?8§;
         var _loc18_:Number = _loc3_.§?8§;
         if(this.§`a§ && this.§,4§ != b2internal::7^)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§'!E§;
            _loc20_ = this.§4v§ * -_loc19_;
            _loc21_ = this.§]!]§;
            _loc22_ = param1.§7!?§ * this.§`!1§;
            this.§]!]§ = b2Math.§-!1§(this.§]!]§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§]!]§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§?;§ && this.§,4§ != b2internal::%W)
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
            this.§3!7§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§,4§ == b2internal::7^)
            {
               this.§ !6§.§-i§(this.impulse3);
            }
            else if(this.§,4§ == b2internal::%! )
            {
               if((_loc6_ = this.§ !6§.z + this.impulse3.z) < 0)
               {
                  this.§3!7§.Solve22(this.§<!§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§<!§.x;
                  this.impulse3.y = this.§<!§.y;
                  this.impulse3.z = -this.§ !6§.z;
                  this.§ !6§.x += this.§<!§.x;
                  this.§ !6§.y += this.§<!§.y;
                  this.§ !6§.z = 0;
               }
            }
            else if(this.§,4§ == b2internal::+!E)
            {
               if((_loc6_ = this.§ !6§.z + this.impulse3.z) > 0)
               {
                  this.§3!7§.Solve22(this.§<!§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§<!§.x;
                  this.impulse3.y = this.§<!§.y;
                  this.impulse3.z = -this.§ !6§.z;
                  this.§ !6§.x += this.§<!§.x;
                  this.§ !6§.y += this.§<!§.y;
                  this.§ !6§.z = 0;
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
            this.§3!7§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§ !6§.x += this.impulse2.x;
            this.§ !6§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§,?§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§,?§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::`p;
         var _loc6_:b2Body = b2internal::%^;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§?;§ && this.§,4§ != b2internal::%W)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§@4§;
            _loc26_ = 0;
            if(this.§,4§ == b2internal::7^)
            {
               _loc3_ = b2Math.§-!1§(_loc25_ - this.§+§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4v§ * _loc3_;
               _loc7_ = b2Math.§8M§(_loc3_);
            }
            else if(this.§,4§ == b2internal::%! )
            {
               _loc3_ = _loc25_ - this.§+§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§-!1§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§4v§ * _loc3_;
            }
            else if(this.§,4§ == b2internal::+!E)
            {
               _loc3_ = _loc25_ - this.§]F§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§-!1§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4v§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§?8§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§?8§ * _loc26_;
            _loc5_.§=!Y§();
            _loc6_.§=!Y§();
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
         var _loc20_:Number = _loc5_.§#!D§;
         var _loc21_:Number = _loc6_.§#!D§;
         var _loc22_:Number = _loc5_.§?8§;
         var _loc23_:Number = _loc6_.§?8§;
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
         this.§2#§.§,K§(this.K1);
         this.§2#§.§!C§(this.K2);
         this.§2#§.§!C§(this.K3);
         this.§2#§.§9G§(§"R§,-_loc16_,-_loc17_);
         _loc10_ = §"R§.x;
         _loc11_ = §"R§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§#!D§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§#!D§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§?8§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§#!D§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§#!D§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§?8§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§=!Y§();
         _loc6_.§=!Y§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
