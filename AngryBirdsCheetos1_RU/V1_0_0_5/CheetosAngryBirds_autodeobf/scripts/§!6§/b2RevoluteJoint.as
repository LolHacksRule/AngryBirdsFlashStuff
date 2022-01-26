package §!6§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Mat22;
   import §+,§.b2Mat33;
   import §+,§.b2Math;
   import §+,§.b2Vec2;
   import §+,§.b2Vec3;
   import §[W§.b2Body;
   import §[W§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §5t§:b2Vec2 = new b2Vec2();
       
      
      private var §+!]§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §8!O§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §;!B§:b2Vec3;
      
      private var §'!S§:Number;
      
      private var §]f§:b2Mat33;
      
      private var §]!#§:Number;
      
      private var §%=§:Boolean;
      
      private var §1+§:Number;
      
      private var §%c§:Number;
      
      private var §0!&§:Boolean;
      
      private var §^!7§:Number;
      
      private var §>;§:Number;
      
      private var §-P§:Number;
      
      private var §4!W§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§+!]§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§8!O§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§;!B§ = new b2Vec3();
         this.§]f§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§2f§);
         this.m_localAnchor2.SetV(param1.§@n§);
         this.§^!7§ = param1.§7Z§;
         this.§;!B§.§&N§();
         this.§'!S§ = 0;
         this.§>;§ = param1.§1![§;
         this.§-P§ = param1.§5-§;
         this.§1+§ = param1.§>^§;
         this.§%c§ = param1.motorSpeed;
         this.§0!&§ = param1.§9o§;
         this.§%=§ = param1.§=!;§;
         this.§4!W§ = b2internal::@D;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;!B§.x,param1 * this.§;!B§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;!B§.z;
      }
      
      public function §[!_§() : Number
      {
         return b2internal::-!`.m_sweep.a - b2internal::#4.m_sweep.a - this.§^!7§;
      }
      
      public function §?!X§() : Number
      {
         return b2internal::-!`.m_angularVelocity - b2internal::#4.m_angularVelocity;
      }
      
      public function §#!#§() : Boolean
      {
         return this.§0!&§;
      }
      
      public function §?a§(param1:Boolean) : void
      {
         this.§0!&§ = param1;
      }
      
      public function §[^§() : Number
      {
         return this.§>;§;
      }
      
      public function §%!#§() : Number
      {
         return this.§-P§;
      }
      
      public function §`0§(param1:Number, param2:Number) : void
      {
         this.§>;§ = param1;
         this.§-P§ = param2;
      }
      
      public function §4h§() : Boolean
      {
         b2internal::#4.SetAwake(true);
         b2internal::-!`.SetAwake(true);
         return this.§%=§;
      }
      
      public function §4!M§(param1:Boolean) : void
      {
         this.§%=§ = param1;
      }
      
      public function §9!E§(param1:Number) : void
      {
         b2internal::#4.SetAwake(true);
         b2internal::-!`.SetAwake(true);
         this.§%c§ = param1;
      }
      
      public function §#!9§() : Number
      {
         return this.§%c§;
      }
      
      public function §'z§(param1:Number) : void
      {
         this.§1+§ = param1;
      }
      
      public function §;!V§() : Number
      {
         return this.§1+§;
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
         _loc2_ = b2internal::#4;
         _loc3_ = b2internal::-!`;
         if(this.§%=§ || this.§0!&§)
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
         var _loc10_:Number = _loc2_.§^!^§;
         var _loc11_:Number = _loc3_.§^!^§;
         var _loc12_:Number = _loc2_.§^U§;
         var _loc13_:Number = _loc3_.§^U§;
         this.§]f§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§]f§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§]f§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§]f§.col1.y = this.§]f§.col2.x;
         this.§]f§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§]f§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§]f§.col1.z = this.§]f§.col3.x;
         this.§]f§.col2.z = this.§]f§.col3.y;
         this.§]f§.col3.z = _loc12_ + _loc13_;
         this.§]!#§ = 1 / (_loc12_ + _loc13_);
         if(this.§%=§ == false)
         {
            this.§'!S§ = 0;
         }
         if(this.§0!&§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§^!7§;
            if(b2Math.§=1§(this.§-P§ - this.§>;§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§4!W§ = b2internal::4!O;
            }
            else if(_loc14_ <= this.§>;§)
            {
               if(this.§4!W§ != b2internal::3!L)
               {
                  this.§;!B§.z = 0;
               }
               this.§4!W§ = b2internal::3!L;
            }
            else if(_loc14_ >= this.§-P§)
            {
               if(this.§4!W§ != b2internal::#2)
               {
                  this.§;!B§.z = 0;
               }
               this.§4!W§ = b2internal::#2;
            }
            else
            {
               this.§4!W§ = b2internal::@D;
               this.§;!B§.z = 0;
            }
         }
         else
         {
            this.§4!W§ = b2internal::@D;
         }
         if(param1.§'K§)
         {
            this.§;!B§.x *= param1.§0O§;
            this.§;!B§.y *= param1.§0O§;
            this.§'!S§ *= param1.§0O§;
            _loc15_ = this.§;!B§.x;
            _loc16_ = this.§;!B§.y;
            _loc2_.§%!N§.x -= _loc10_ * _loc15_;
            _loc2_.§%!N§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§'!S§ + this.§;!B§.z);
            _loc3_.§%!N§.x += _loc11_ * _loc15_;
            _loc3_.§%!N§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§'!S§ + this.§;!B§.z);
         }
         else
         {
            this.§;!B§.§&N§();
            this.§'!S§ = 0;
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
         var _loc2_:b2Body = b2internal::#4;
         var _loc3_:b2Body = b2internal::-!`;
         var _loc11_:b2Vec2 = _loc2_.§%!N§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§%!N§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§^!^§;
         var _loc16_:Number = _loc3_.§^!^§;
         var _loc17_:Number = _loc2_.§^U§;
         var _loc18_:Number = _loc3_.§^U§;
         if(this.§%=§ && this.§4!W§ != b2internal::4!O)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§%c§;
            _loc20_ = this.§]!#§ * -_loc19_;
            _loc21_ = this.§'!S§;
            _loc22_ = param1.§=S§ * this.§1+§;
            this.§'!S§ = b2Math.§ !`§(this.§'!S§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§'!S§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§0!&§ && this.§4!W§ != b2internal::@D)
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
            this.§]f§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§4!W§ == b2internal::4!O)
            {
               this.§;!B§.§-!L§(this.impulse3);
            }
            else if(this.§4!W§ == b2internal::3!L)
            {
               if((_loc6_ = this.§;!B§.z + this.impulse3.z) < 0)
               {
                  this.§]f§.Solve22(this.§8!O§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8!O§.x;
                  this.impulse3.y = this.§8!O§.y;
                  this.impulse3.z = -this.§;!B§.z;
                  this.§;!B§.x += this.§8!O§.x;
                  this.§;!B§.y += this.§8!O§.y;
                  this.§;!B§.z = 0;
               }
            }
            else if(this.§4!W§ == b2internal::#2)
            {
               if((_loc6_ = this.§;!B§.z + this.impulse3.z) > 0)
               {
                  this.§]f§.Solve22(this.§8!O§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8!O§.x;
                  this.impulse3.y = this.§8!O§.y;
                  this.impulse3.z = -this.§;!B§.z;
                  this.§;!B§.x += this.§8!O§.x;
                  this.§;!B§.y += this.§8!O§.y;
                  this.§;!B§.z = 0;
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
            this.§]f§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§;!B§.x += this.impulse2.x;
            this.§;!B§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§%!N§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§%!N§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::#4;
         var _loc6_:b2Body = b2internal::-!`;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§0!&§ && this.§4!W§ != b2internal::@D)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§^!7§;
            _loc26_ = 0;
            if(this.§4!W§ == b2internal::4!O)
            {
               _loc3_ = b2Math.§ !`§(_loc25_ - this.§>;§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§]!#§ * _loc3_;
               _loc7_ = b2Math.§=1§(_loc3_);
            }
            else if(this.§4!W§ == b2internal::3!L)
            {
               _loc3_ = _loc25_ - this.§>;§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§ !`§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§]!#§ * _loc3_;
            }
            else if(this.§4!W§ == b2internal::#2)
            {
               _loc3_ = _loc25_ - this.§-P§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§ !`§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§]!#§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§^U§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§^U§ * _loc26_;
            _loc5_.§'!N§();
            _loc6_.§'!N§();
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
         var _loc20_:Number = _loc5_.§^!^§;
         var _loc21_:Number = _loc6_.§^!^§;
         var _loc22_:Number = _loc5_.§^U§;
         var _loc23_:Number = _loc6_.§^U§;
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
         this.§+!]§.§2!<§(this.K1);
         this.§+!]§.§]a§(this.K2);
         this.§+!]§.§]a§(this.K3);
         this.§+!]§.§%!?§(§5t§,-_loc16_,-_loc17_);
         _loc10_ = §5t§.x;
         _loc11_ = §5t§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§^!^§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§^!^§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§^U§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§^!^§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§^!^§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§^U§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§'!N§();
         _loc6_.§'!N§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
