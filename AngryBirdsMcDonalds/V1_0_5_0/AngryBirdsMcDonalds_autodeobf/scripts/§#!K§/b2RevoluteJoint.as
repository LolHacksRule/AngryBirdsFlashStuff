package §#!K§
{
   import §-0§.b2Body;
   import §-0§.b2TimeStep;
   import §@g§.b2Settings;
   import §@g§.b2internal;
   import §^!%§.b2Mat22;
   import §^!%§.b2Mat33;
   import §^!%§.b2Math;
   import §^!%§.b2Vec2;
   import §^!%§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §"!A§:b2Vec2 = new b2Vec2();
       
      
      private var §"3§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §]r§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §+!=§:b2Vec3;
      
      private var §7!d§:Number;
      
      private var §-!b§:b2Mat33;
      
      private var §2,§:Number;
      
      private var §^!>§:Boolean;
      
      private var §!g§:Number;
      
      private var §@!Q§:Number;
      
      private var §]!C§:Boolean;
      
      private var §8B§:Number;
      
      private var §-G§:Number;
      
      private var §,!B§:Number;
      
      private var §<!Q§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§"3§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§]r§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+!=§ = new b2Vec3();
         this.§-!b§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§0'§);
         this.m_localAnchor2.SetV(param1.§;!b§);
         this.§8B§ = param1.§&!C§;
         this.§+!=§.§4[§();
         this.§7!d§ = 0;
         this.§-G§ = param1.§'7§;
         this.§,!B§ = param1.§`W§;
         this.§!g§ = param1.§]9§;
         this.§@!Q§ = param1.motorSpeed;
         this.§]!C§ = param1.§=c§;
         this.§^!>§ = param1.§4=§;
         this.§<!Q§ = b2internal::8b;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+!`.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!7.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+!=§.x,param1 * this.§+!=§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+!=§.z;
      }
      
      public function §7!]§() : Number
      {
         return b2internal::,!7.m_sweep.a - b2internal::+!`.m_sweep.a - this.§8B§;
      }
      
      public function §1!F§() : Number
      {
         return b2internal::,!7.m_angularVelocity - b2internal::+!`.m_angularVelocity;
      }
      
      public function §6§() : Boolean
      {
         return this.§]!C§;
      }
      
      public function §!+§(param1:Boolean) : void
      {
         this.§]!C§ = param1;
      }
      
      public function §&!W§() : Number
      {
         return this.§-G§;
      }
      
      public function §4"§() : Number
      {
         return this.§,!B§;
      }
      
      public function §[!T§(param1:Number, param2:Number) : void
      {
         this.§-G§ = param1;
         this.§,!B§ = param2;
      }
      
      public function § do§() : Boolean
      {
         b2internal::+!`.SetAwake(true);
         b2internal::,!7.SetAwake(true);
         return this.§^!>§;
      }
      
      public function §%!j§(param1:Boolean) : void
      {
         this.§^!>§ = param1;
      }
      
      public function §@O§(param1:Number) : void
      {
         b2internal::+!`.SetAwake(true);
         b2internal::,!7.SetAwake(true);
         this.§@!Q§ = param1;
      }
      
      public function §<!`§() : Number
      {
         return this.§@!Q§;
      }
      
      public function §+i§(param1:Number) : void
      {
         this.§!g§ = param1;
      }
      
      public function §`!`§() : Number
      {
         return this.§!g§;
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
         _loc2_ = b2internal::+!`;
         _loc3_ = b2internal::,!7;
         if(this.§^!>§ || this.§]!C§)
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
         var _loc10_:Number = _loc2_.§!=§;
         var _loc11_:Number = _loc3_.§!=§;
         var _loc12_:Number = _loc2_.§4!i§;
         var _loc13_:Number = _loc3_.§4!i§;
         this.§-!b§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§-!b§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§-!b§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§-!b§.col1.y = this.§-!b§.col2.x;
         this.§-!b§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§-!b§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§-!b§.col1.z = this.§-!b§.col3.x;
         this.§-!b§.col2.z = this.§-!b§.col3.y;
         this.§-!b§.col3.z = _loc12_ + _loc13_;
         this.§2,§ = 1 / (_loc12_ + _loc13_);
         if(this.§^!>§ == false)
         {
            this.§7!d§ = 0;
         }
         if(this.§]!C§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§8B§;
            if(b2Math.§%g§(this.§,!B§ - this.§-G§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§<!Q§ = b2internal::"R;
            }
            else if(_loc14_ <= this.§-G§)
            {
               if(this.§<!Q§ != b2internal::`!2)
               {
                  this.§+!=§.z = 0;
               }
               this.§<!Q§ = b2internal::`!2;
            }
            else if(_loc14_ >= this.§,!B§)
            {
               if(this.§<!Q§ != b2internal::?!&)
               {
                  this.§+!=§.z = 0;
               }
               this.§<!Q§ = b2internal::?!&;
            }
            else
            {
               this.§<!Q§ = b2internal::8b;
               this.§+!=§.z = 0;
            }
         }
         else
         {
            this.§<!Q§ = b2internal::8b;
         }
         if(param1.§'!#§)
         {
            this.§+!=§.x *= param1.§,!e§;
            this.§+!=§.y *= param1.§,!e§;
            this.§7!d§ *= param1.§,!e§;
            _loc15_ = this.§+!=§.x;
            _loc16_ = this.§+!=§.y;
            _loc2_.§'!f§.x -= _loc10_ * _loc15_;
            _loc2_.§'!f§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§7!d§ + this.§+!=§.z);
            _loc3_.§'!f§.x += _loc11_ * _loc15_;
            _loc3_.§'!f§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§7!d§ + this.§+!=§.z);
         }
         else
         {
            this.§+!=§.§4[§();
            this.§7!d§ = 0;
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
         var _loc2_:b2Body = b2internal::+!`;
         var _loc3_:b2Body = b2internal::,!7;
         var _loc11_:b2Vec2 = _loc2_.§'!f§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§'!f§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§!=§;
         var _loc16_:Number = _loc3_.§!=§;
         var _loc17_:Number = _loc2_.§4!i§;
         var _loc18_:Number = _loc3_.§4!i§;
         if(this.§^!>§ && this.§<!Q§ != b2internal::"R)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§@!Q§;
            _loc20_ = this.§2,§ * -_loc19_;
            _loc21_ = this.§7!d§;
            _loc22_ = param1.§+u§ * this.§!g§;
            this.§7!d§ = b2Math.§]$§(this.§7!d§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§7!d§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§]!C§ && this.§<!Q§ != b2internal::8b)
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
            this.§-!b§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§<!Q§ == b2internal::"R)
            {
               this.§+!=§.§0!§(this.impulse3);
            }
            else if(this.§<!Q§ == b2internal::`!2)
            {
               if((_loc6_ = this.§+!=§.z + this.impulse3.z) < 0)
               {
                  this.§-!b§.Solve22(this.§]r§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§]r§.x;
                  this.impulse3.y = this.§]r§.y;
                  this.impulse3.z = -this.§+!=§.z;
                  this.§+!=§.x += this.§]r§.x;
                  this.§+!=§.y += this.§]r§.y;
                  this.§+!=§.z = 0;
               }
            }
            else if(this.§<!Q§ == b2internal::?!&)
            {
               if((_loc6_ = this.§+!=§.z + this.impulse3.z) > 0)
               {
                  this.§-!b§.Solve22(this.§]r§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§]r§.x;
                  this.impulse3.y = this.§]r§.y;
                  this.impulse3.z = -this.§+!=§.z;
                  this.§+!=§.x += this.§]r§.x;
                  this.§+!=§.y += this.§]r§.y;
                  this.§+!=§.z = 0;
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
            this.§-!b§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§+!=§.x += this.impulse2.x;
            this.§+!=§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§'!f§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§'!f§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::+!`;
         var _loc6_:b2Body = b2internal::,!7;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§]!C§ && this.§<!Q§ != b2internal::8b)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§8B§;
            _loc26_ = 0;
            if(this.§<!Q§ == b2internal::"R)
            {
               _loc3_ = b2Math.§]$§(_loc25_ - this.§-G§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§2,§ * _loc3_;
               _loc7_ = b2Math.§%g§(_loc3_);
            }
            else if(this.§<!Q§ == b2internal::`!2)
            {
               _loc3_ = _loc25_ - this.§-G§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§]$§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§2,§ * _loc3_;
            }
            else if(this.§<!Q§ == b2internal::?!&)
            {
               _loc3_ = _loc25_ - this.§,!B§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§]$§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§2,§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§4!i§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§4!i§ * _loc26_;
            _loc5_.§]t§();
            _loc6_.§]t§();
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
         var _loc20_:Number = _loc5_.§!=§;
         var _loc21_:Number = _loc6_.§!=§;
         var _loc22_:Number = _loc5_.§4!i§;
         var _loc23_:Number = _loc6_.§4!i§;
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
         this.§"3§.§;4§(this.K1);
         this.§"3§.§]_§(this.K2);
         this.§"3§.§]_§(this.K3);
         this.§"3§.§6!'§(§"!A§,-_loc16_,-_loc17_);
         _loc10_ = §"!A§.x;
         _loc11_ = §"!A§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§!=§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§!=§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§4!i§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§!=§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§!=§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§4!i§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§]t§();
         _loc6_.§]t§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
