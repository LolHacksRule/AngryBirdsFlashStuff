package §4"$§
{
   import §&!M§.b2Body;
   import §&!M§.b2TimeStep;
   import §3!t§.b2Mat22;
   import §3!t§.b2Mat33;
   import §3!t§.b2Math;
   import §3!t§.b2Vec2;
   import §3!t§.b2Vec3;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var § w§:b2Vec2 = new b2Vec2();
       
      
      private var §?8§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §"!a§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §>&§:b2Vec3;
      
      private var §@!S§:Number;
      
      private var §=!i§:b2Mat33;
      
      private var §@"-§:Number;
      
      private var §#!l§:Boolean;
      
      private var §9"1§:Number;
      
      private var §#x§:Number;
      
      private var § =§:Boolean;
      
      private var §`&§:Number;
      
      private var §#!,§:Number;
      
      private var §1"5§:Number;
      
      private var §-J§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§?8§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§"!a§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§>&§ = new b2Vec3();
         this.§=!i§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ 3§);
         this.m_localAnchor2.SetV(param1.§ '§);
         this.§`&§ = param1.§1+§;
         this.§>&§.§ 4§();
         this.§@!S§ = 0;
         this.§#!,§ = param1.§2!H§;
         this.§1"5§ = param1.§>!8§;
         this.§9"1§ = param1.§>A§;
         this.§#x§ = param1.motorSpeed;
         this.§ =§ = param1.§%"9§;
         this.§#!l§ = param1.§^g§;
         this.§-J§ = b2internal::21;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"!U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!3.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>&§.x,param1 * this.§>&§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>&§.z;
      }
      
      public function §+M§() : Number
      {
         return b2internal::!!3.m_sweep.a - b2internal::"!U.m_sweep.a - this.§`&§;
      }
      
      public function §+!z§() : Number
      {
         return b2internal::!!3.m_angularVelocity - b2internal::"!U.m_angularVelocity;
      }
      
      public function §4!9§() : Boolean
      {
         return this.§ =§;
      }
      
      public function §@Z§(param1:Boolean) : void
      {
         this.§ =§ = param1;
      }
      
      public function §1x§() : Number
      {
         return this.§#!,§;
      }
      
      public function § $§() : Number
      {
         return this.§1"5§;
      }
      
      public function §?4§(param1:Number, param2:Number) : void
      {
         this.§#!,§ = param1;
         this.§1"5§ = param2;
      }
      
      public function §finally§() : Boolean
      {
         b2internal::"!U.SetAwake(true);
         b2internal::!!3.SetAwake(true);
         return this.§#!l§;
      }
      
      public function §?!l§(param1:Boolean) : void
      {
         this.§#!l§ = param1;
      }
      
      public function §"X§(param1:Number) : void
      {
         b2internal::"!U.SetAwake(true);
         b2internal::!!3.SetAwake(true);
         this.§#x§ = param1;
      }
      
      public function §3!L§() : Number
      {
         return this.§#x§;
      }
      
      public function §4V§(param1:Number) : void
      {
         this.§9"1§ = param1;
      }
      
      public function §"[§() : Number
      {
         return this.§9"1§;
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
         _loc2_ = b2internal::"!U;
         _loc3_ = b2internal::!!3;
         if(this.§#!l§ || this.§ =§)
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
         var _loc10_:Number = _loc2_.§+!O§;
         var _loc11_:Number = _loc3_.§+!O§;
         var _loc12_:Number = _loc2_.§#f§;
         var _loc13_:Number = _loc3_.§#f§;
         this.§=!i§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§=!i§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§=!i§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§=!i§.col1.y = this.§=!i§.col2.x;
         this.§=!i§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§=!i§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§=!i§.col1.z = this.§=!i§.col3.x;
         this.§=!i§.col2.z = this.§=!i§.col3.y;
         this.§=!i§.col3.z = _loc12_ + _loc13_;
         this.§@"-§ = 1 / (_loc12_ + _loc13_);
         if(this.§#!l§ == false)
         {
            this.§@!S§ = 0;
         }
         if(this.§ =§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§`&§;
            if(b2Math.§3!n§(this.§1"5§ - this.§#!,§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§-J§ = b2internal::"h;
            }
            else if(_loc14_ <= this.§#!,§)
            {
               if(this.§-J§ != b2internal::<i)
               {
                  this.§>&§.z = 0;
               }
               this.§-J§ = b2internal::<i;
            }
            else if(_loc14_ >= this.§1"5§)
            {
               if(this.§-J§ != b2internal::2!s)
               {
                  this.§>&§.z = 0;
               }
               this.§-J§ = b2internal::2!s;
            }
            else
            {
               this.§-J§ = b2internal::21;
               this.§>&§.z = 0;
            }
         }
         else
         {
            this.§-J§ = b2internal::21;
         }
         if(param1.§50§)
         {
            this.§>&§.x *= param1.§<!4§;
            this.§>&§.y *= param1.§<!4§;
            this.§@!S§ *= param1.§<!4§;
            _loc15_ = this.§>&§.x;
            _loc16_ = this.§>&§.y;
            _loc2_.§[!m§.x -= _loc10_ * _loc15_;
            _loc2_.§[!m§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§@!S§ + this.§>&§.z);
            _loc3_.§[!m§.x += _loc11_ * _loc15_;
            _loc3_.§[!m§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§@!S§ + this.§>&§.z);
         }
         else
         {
            this.§>&§.§ 4§();
            this.§@!S§ = 0;
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
         var _loc2_:b2Body = b2internal::"!U;
         var _loc3_:b2Body = b2internal::!!3;
         var _loc11_:b2Vec2 = _loc2_.§[!m§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§[!m§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§+!O§;
         var _loc16_:Number = _loc3_.§+!O§;
         var _loc17_:Number = _loc2_.§#f§;
         var _loc18_:Number = _loc3_.§#f§;
         if(this.§#!l§ && this.§-J§ != b2internal::"h)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§#x§;
            _loc20_ = this.§@"-§ * -_loc19_;
            _loc21_ = this.§@!S§;
            _loc22_ = param1.§!"7§ * this.§9"1§;
            this.§@!S§ = b2Math.§4"?§(this.§@!S§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§@!S§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§ =§ && this.§-J§ != b2internal::21)
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
            this.§=!i§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§-J§ == b2internal::"h)
            {
               this.§>&§.§9!6§(this.impulse3);
            }
            else if(this.§-J§ == b2internal::<i)
            {
               if((_loc6_ = this.§>&§.z + this.impulse3.z) < 0)
               {
                  this.§=!i§.Solve22(this.§"!a§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§"!a§.x;
                  this.impulse3.y = this.§"!a§.y;
                  this.impulse3.z = -this.§>&§.z;
                  this.§>&§.x += this.§"!a§.x;
                  this.§>&§.y += this.§"!a§.y;
                  this.§>&§.z = 0;
               }
            }
            else if(this.§-J§ == b2internal::2!s)
            {
               if((_loc6_ = this.§>&§.z + this.impulse3.z) > 0)
               {
                  this.§=!i§.Solve22(this.§"!a§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§"!a§.x;
                  this.impulse3.y = this.§"!a§.y;
                  this.impulse3.z = -this.§>&§.z;
                  this.§>&§.x += this.§"!a§.x;
                  this.§>&§.y += this.§"!a§.y;
                  this.§>&§.z = 0;
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
            this.§=!i§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§>&§.x += this.impulse2.x;
            this.§>&§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§[!m§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§[!m§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::"!U;
         var _loc6_:b2Body = b2internal::!!3;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§ =§ && this.§-J§ != b2internal::21)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§`&§;
            _loc26_ = 0;
            if(this.§-J§ == b2internal::"h)
            {
               _loc3_ = b2Math.§4"?§(_loc25_ - this.§#!,§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§@"-§ * _loc3_;
               _loc7_ = b2Math.§3!n§(_loc3_);
            }
            else if(this.§-J§ == b2internal::<i)
            {
               _loc3_ = _loc25_ - this.§#!,§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§4"?§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§@"-§ * _loc3_;
            }
            else if(this.§-J§ == b2internal::2!s)
            {
               _loc3_ = _loc25_ - this.§1"5§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§4"?§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§@"-§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§#f§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§#f§ * _loc26_;
            _loc5_.§=!z§();
            _loc6_.§=!z§();
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
         var _loc20_:Number = _loc5_.§+!O§;
         var _loc21_:Number = _loc6_.§+!O§;
         var _loc22_:Number = _loc5_.§#f§;
         var _loc23_:Number = _loc6_.§#f§;
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
         this.§?8§.§0"%§(this.K1);
         this.§?8§.§,"5§(this.K2);
         this.§?8§.§,"5§(this.K3);
         this.§?8§.§6;§(§ w§,-_loc16_,-_loc17_);
         _loc10_ = § w§.x;
         _loc11_ = § w§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§+!O§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§+!O§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§#f§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§+!O§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§+!O§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§#f§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§=!z§();
         _loc6_.§=!z§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
