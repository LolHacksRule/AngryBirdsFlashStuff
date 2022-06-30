package §3!A§
{
   import § !_§.b2Mat22;
   import § !_§.b2Mat33;
   import § !_§.b2Math;
   import § !_§.b2Vec2;
   import § !_§.b2Vec3;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   import §^!Z§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §^u§:b2Vec2 = new b2Vec2();
       
      
      private var §>D§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §5!Q§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §#I§:b2Vec3;
      
      private var §+!_§:Number;
      
      private var §6H§:b2Mat33;
      
      private var §?!W§:Number;
      
      private var §]m§:Boolean;
      
      private var §8!B§:Number;
      
      private var §`$§:Number;
      
      private var §`x§:Boolean;
      
      private var § !Q§:Number;
      
      private var §?G§:Number;
      
      private var §-O§:Number;
      
      private var § %§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§>D§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§5!Q§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§#I§ = new b2Vec3();
         this.§6H§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§?&§);
         this.m_localAnchor2.SetV(param1.§4t§);
         this.§ !Q§ = param1.§9N§;
         this.§#I§.§>!T§();
         this.§+!_§ = 0;
         this.§?G§ = param1.§?y§;
         this.§-O§ = param1.§>!D§;
         this.§8!B§ = param1.§3z§;
         this.§`$§ = param1.motorSpeed;
         this.§`x§ = param1.§1!<§;
         this.§]m§ = param1.§6!O§;
         this.§ %§ = b2internal::9Z;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::,".GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,g.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§#I§.x,param1 * this.§#I§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§#I§.z;
      }
      
      public function §+!0§() : Number
      {
         return b2internal::,g.m_sweep.a - b2internal::,".m_sweep.a - this.§ !Q§;
      }
      
      public function §5!M§() : Number
      {
         return b2internal::,g.m_angularVelocity - b2internal::,".m_angularVelocity;
      }
      
      public function §<x§() : Boolean
      {
         return this.§`x§;
      }
      
      public function §]!Z§(param1:Boolean) : void
      {
         this.§`x§ = param1;
      }
      
      public function §"!A§() : Number
      {
         return this.§?G§;
      }
      
      public function §>7§() : Number
      {
         return this.§-O§;
      }
      
      public function §9U§(param1:Number, param2:Number) : void
      {
         this.§?G§ = param1;
         this.§-O§ = param2;
      }
      
      public function § !Z§() : Boolean
      {
         b2internal::,".SetAwake(true);
         b2internal::,g.SetAwake(true);
         return this.§]m§;
      }
      
      public function §&!R§(param1:Boolean) : void
      {
         this.§]m§ = param1;
      }
      
      public function §3!V§(param1:Number) : void
      {
         b2internal::,".SetAwake(true);
         b2internal::,g.SetAwake(true);
         this.§`$§ = param1;
      }
      
      public function §-x§() : Number
      {
         return this.§`$§;
      }
      
      public function §];§(param1:Number) : void
      {
         this.§8!B§ = param1;
      }
      
      public function §8![§() : Number
      {
         return this.§8!B§;
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
         _loc2_ = b2internal::,";
         _loc3_ = b2internal::,g;
         if(this.§]m§ || this.§`x§)
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
         var _loc10_:Number = _loc2_.§1!+§;
         var _loc11_:Number = _loc3_.§1!+§;
         var _loc12_:Number = _loc2_.§-!f§;
         var _loc13_:Number = _loc3_.§-!f§;
         this.§6H§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§6H§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§6H§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§6H§.col1.y = this.§6H§.col2.x;
         this.§6H§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§6H§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§6H§.col1.z = this.§6H§.col3.x;
         this.§6H§.col2.z = this.§6H§.col3.y;
         this.§6H§.col3.z = _loc12_ + _loc13_;
         this.§?!W§ = 1 / (_loc12_ + _loc13_);
         if(this.§]m§ == false)
         {
            this.§+!_§ = 0;
         }
         if(this.§`x§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§ !Q§;
            if(b2Math.§=!1§(this.§-O§ - this.§?G§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§ %§ = b2internal::1!G;
            }
            else if(_loc14_ <= this.§?G§)
            {
               if(this.§ %§ != b2internal::%!P)
               {
                  this.§#I§.z = 0;
               }
               this.§ %§ = b2internal::%!P;
            }
            else if(_loc14_ >= this.§-O§)
            {
               if(this.§ %§ != b2internal::7L)
               {
                  this.§#I§.z = 0;
               }
               this.§ %§ = b2internal::7L;
            }
            else
            {
               this.§ %§ = b2internal::9Z;
               this.§#I§.z = 0;
            }
         }
         else
         {
            this.§ %§ = b2internal::9Z;
         }
         if(param1.§9!N§)
         {
            this.§#I§.x *= param1.§>x§;
            this.§#I§.y *= param1.§>x§;
            this.§+!_§ *= param1.§>x§;
            _loc15_ = this.§#I§.x;
            _loc16_ = this.§#I§.y;
            _loc2_.§@!1§.x -= _loc10_ * _loc15_;
            _loc2_.§@!1§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§+!_§ + this.§#I§.z);
            _loc3_.§@!1§.x += _loc11_ * _loc15_;
            _loc3_.§@!1§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§+!_§ + this.§#I§.z);
         }
         else
         {
            this.§#I§.§>!T§();
            this.§+!_§ = 0;
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
         var _loc2_:b2Body = b2internal::,";
         var _loc3_:b2Body = b2internal::,g;
         var _loc11_:b2Vec2 = _loc2_.§@!1§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§@!1§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§1!+§;
         var _loc16_:Number = _loc3_.§1!+§;
         var _loc17_:Number = _loc2_.§-!f§;
         var _loc18_:Number = _loc3_.§-!f§;
         if(this.§]m§ && this.§ %§ != b2internal::1!G)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§`$§;
            _loc20_ = this.§?!W§ * -_loc19_;
            _loc21_ = this.§+!_§;
            _loc22_ = param1.§]!"§ * this.§8!B§;
            this.§+!_§ = b2Math.§-F§(this.§+!_§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§+!_§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§`x§ && this.§ %§ != b2internal::9Z)
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
            this.§6H§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§ %§ == b2internal::1!G)
            {
               this.§#I§.§'5§(this.impulse3);
            }
            else if(this.§ %§ == b2internal::%!P)
            {
               if((_loc6_ = this.§#I§.z + this.impulse3.z) < 0)
               {
                  this.§6H§.Solve22(this.§5!Q§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§5!Q§.x;
                  this.impulse3.y = this.§5!Q§.y;
                  this.impulse3.z = -this.§#I§.z;
                  this.§#I§.x += this.§5!Q§.x;
                  this.§#I§.y += this.§5!Q§.y;
                  this.§#I§.z = 0;
               }
            }
            else if(this.§ %§ == b2internal::7L)
            {
               if((_loc6_ = this.§#I§.z + this.impulse3.z) > 0)
               {
                  this.§6H§.Solve22(this.§5!Q§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§5!Q§.x;
                  this.impulse3.y = this.§5!Q§.y;
                  this.impulse3.z = -this.§#I§.z;
                  this.§#I§.x += this.§5!Q§.x;
                  this.§#I§.y += this.§5!Q§.y;
                  this.§#I§.z = 0;
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
            this.§6H§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§#I§.x += this.impulse2.x;
            this.§#I§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§@!1§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§@!1§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::,";
         var _loc6_:b2Body = b2internal::,g;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§`x§ && this.§ %§ != b2internal::9Z)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§ !Q§;
            _loc26_ = 0;
            if(this.§ %§ == b2internal::1!G)
            {
               _loc3_ = b2Math.§-F§(_loc25_ - this.§?G§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§?!W§ * _loc3_;
               _loc7_ = b2Math.§=!1§(_loc3_);
            }
            else if(this.§ %§ == b2internal::%!P)
            {
               _loc3_ = _loc25_ - this.§?G§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§-F§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§?!W§ * _loc3_;
            }
            else if(this.§ %§ == b2internal::7L)
            {
               _loc3_ = _loc25_ - this.§-O§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§-F§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§?!W§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§-!f§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§-!f§ * _loc26_;
            _loc5_.§1&§();
            _loc6_.§1&§();
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
         var _loc20_:Number = _loc5_.§1!+§;
         var _loc21_:Number = _loc6_.§1!+§;
         var _loc22_:Number = _loc5_.§-!f§;
         var _loc23_:Number = _loc6_.§-!f§;
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
         this.§>D§.§]5§(this.K1);
         this.§>D§.§'i§(this.K2);
         this.§>D§.§'i§(this.K3);
         this.§>D§.§<!B§(§^u§,-_loc16_,-_loc17_);
         _loc10_ = §^u§.x;
         _loc11_ = §^u§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§1!+§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§1!+§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§-!f§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§1!+§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§1!+§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§-!f§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§1&§();
         _loc6_.§1&§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
