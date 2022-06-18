package §=!P§
{
   import §4! §.b2Settings;
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2TimeStep;
   import §^q§.b2Mat22;
   import §^q§.b2Mat33;
   import §^q§.b2Math;
   import §^q§.b2Vec2;
   import §^q§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §0-§:b2Vec2 = new b2Vec2();
       
      
      private var §@!D§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var § b§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §8!R§:b2Vec3;
      
      private var §6!`§:Number;
      
      private var §!!@§:b2Mat33;
      
      private var §;!&§:Number;
      
      private var §@g§:Boolean;
      
      private var §'!?§:Number;
      
      private var §9F§:Number;
      
      private var § g§:Boolean;
      
      private var §@&§:Number;
      
      private var §2!`§:Number;
      
      private var §#J§:Number;
      
      private var §^V§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§@!D§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§ b§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8!R§ = new b2Vec3();
         this.§!!@§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;I§);
         this.m_localAnchor2.SetV(param1.§-!&§);
         this.§@&§ = param1.§5!5§;
         this.§8!R§.§0q§();
         this.§6!`§ = 0;
         this.§2!`§ = param1.§^!]§;
         this.§#J§ = param1.§>K§;
         this.§'!?§ = param1.§^!Y§;
         this.§9F§ = param1.motorSpeed;
         this.§ g§ = param1.§'!`§;
         this.§@g§ = param1.§@<§;
         this.§^V§ = b2internal::@+;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&!?.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!c.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!R§.x,param1 * this.§8!R§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!R§.z;
      }
      
      public function §[1§() : Number
      {
         return b2internal::!!c.m_sweep.a - b2internal::&!?.m_sweep.a - this.§@&§;
      }
      
      public function §&!A§() : Number
      {
         return b2internal::!!c.m_angularVelocity - b2internal::&!?.m_angularVelocity;
      }
      
      public function §?T§() : Boolean
      {
         return this.§ g§;
      }
      
      public function §if §(param1:Boolean) : void
      {
         this.§ g§ = param1;
      }
      
      public function § C§() : Number
      {
         return this.§2!`§;
      }
      
      public function §]G§() : Number
      {
         return this.§#J§;
      }
      
      public function §%O§(param1:Number, param2:Number) : void
      {
         this.§2!`§ = param1;
         this.§#J§ = param2;
      }
      
      public function §!6§() : Boolean
      {
         b2internal::&!?.SetAwake(true);
         b2internal::!!c.SetAwake(true);
         return this.§@g§;
      }
      
      public function §>!=§(param1:Boolean) : void
      {
         this.§@g§ = param1;
      }
      
      public function §==§(param1:Number) : void
      {
         b2internal::&!?.SetAwake(true);
         b2internal::!!c.SetAwake(true);
         this.§9F§ = param1;
      }
      
      public function §2!V§() : Number
      {
         return this.§9F§;
      }
      
      public function §]D§(param1:Number) : void
      {
         this.§'!?§ = param1;
      }
      
      public function §!E§() : Number
      {
         return this.§'!?§;
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
         _loc2_ = b2internal::&!?;
         _loc3_ = b2internal::!!c;
         if(this.§@g§ || this.§ g§)
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
         var _loc10_:Number = _loc2_.§5Z§;
         var _loc11_:Number = _loc3_.§5Z§;
         var _loc12_:Number = _loc2_.§[S§;
         var _loc13_:Number = _loc3_.§[S§;
         this.§!!@§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§!!@§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§!!@§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§!!@§.col1.y = this.§!!@§.col2.x;
         this.§!!@§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§!!@§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§!!@§.col1.z = this.§!!@§.col3.x;
         this.§!!@§.col2.z = this.§!!@§.col3.y;
         this.§!!@§.col3.z = _loc12_ + _loc13_;
         this.§;!&§ = 1 / (_loc12_ + _loc13_);
         if(this.§@g§ == false)
         {
            this.§6!`§ = 0;
         }
         if(this.§ g§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§@&§;
            if(b2Math.§"§(this.§#J§ - this.§2!`§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§^V§ = b2internal::&9;
            }
            else if(_loc14_ <= this.§2!`§)
            {
               if(this.§^V§ != b2internal:: %)
               {
                  this.§8!R§.z = 0;
               }
               this.§^V§ = b2internal:: %;
            }
            else if(_loc14_ >= this.§#J§)
            {
               if(this.§^V§ != b2internal::-I)
               {
                  this.§8!R§.z = 0;
               }
               this.§^V§ = b2internal::-I;
            }
            else
            {
               this.§^V§ = b2internal::@+;
               this.§8!R§.z = 0;
            }
         }
         else
         {
            this.§^V§ = b2internal::@+;
         }
         if(param1.§3!S§)
         {
            this.§8!R§.x *= param1.§8B§;
            this.§8!R§.y *= param1.§8B§;
            this.§6!`§ *= param1.§8B§;
            _loc15_ = this.§8!R§.x;
            _loc16_ = this.§8!R§.y;
            _loc2_.§"!N§.x -= _loc10_ * _loc15_;
            _loc2_.§"!N§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§6!`§ + this.§8!R§.z);
            _loc3_.§"!N§.x += _loc11_ * _loc15_;
            _loc3_.§"!N§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§6!`§ + this.§8!R§.z);
         }
         else
         {
            this.§8!R§.§0q§();
            this.§6!`§ = 0;
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
         var _loc2_:b2Body = b2internal::&!?;
         var _loc3_:b2Body = b2internal::!!c;
         var _loc11_:b2Vec2 = _loc2_.§"!N§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§"!N§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§5Z§;
         var _loc16_:Number = _loc3_.§5Z§;
         var _loc17_:Number = _loc2_.§[S§;
         var _loc18_:Number = _loc3_.§[S§;
         if(this.§@g§ && this.§^V§ != b2internal::&9)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§9F§;
            _loc20_ = this.§;!&§ * -_loc19_;
            _loc21_ = this.§6!`§;
            _loc22_ = param1.§7!H§ * this.§'!?§;
            this.§6!`§ = b2Math.§in§(this.§6!`§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§6!`§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§ g§ && this.§^V§ != b2internal::@+)
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
            this.§!!@§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§^V§ == b2internal::&9)
            {
               this.§8!R§.§9&§(this.impulse3);
            }
            else if(this.§^V§ == b2internal:: %)
            {
               if((_loc6_ = this.§8!R§.z + this.impulse3.z) < 0)
               {
                  this.§!!@§.Solve22(this.§ b§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§ b§.x;
                  this.impulse3.y = this.§ b§.y;
                  this.impulse3.z = -this.§8!R§.z;
                  this.§8!R§.x += this.§ b§.x;
                  this.§8!R§.y += this.§ b§.y;
                  this.§8!R§.z = 0;
               }
            }
            else if(this.§^V§ == b2internal::-I)
            {
               if((_loc6_ = this.§8!R§.z + this.impulse3.z) > 0)
               {
                  this.§!!@§.Solve22(this.§ b§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§ b§.x;
                  this.impulse3.y = this.§ b§.y;
                  this.impulse3.z = -this.§8!R§.z;
                  this.§8!R§.x += this.§ b§.x;
                  this.§8!R§.y += this.§ b§.y;
                  this.§8!R§.z = 0;
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
            this.§!!@§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§8!R§.x += this.impulse2.x;
            this.§8!R§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§"!N§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§"!N§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::&!?;
         var _loc6_:b2Body = b2internal::!!c;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§ g§ && this.§^V§ != b2internal::@+)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§@&§;
            _loc26_ = 0;
            if(this.§^V§ == b2internal::&9)
            {
               _loc3_ = b2Math.§in§(_loc25_ - this.§2!`§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§;!&§ * _loc3_;
               _loc7_ = b2Math.§"§(_loc3_);
            }
            else if(this.§^V§ == b2internal:: %)
            {
               _loc3_ = _loc25_ - this.§2!`§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§in§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§;!&§ * _loc3_;
            }
            else if(this.§^V§ == b2internal::-I)
            {
               _loc3_ = _loc25_ - this.§#J§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§in§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§;!&§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§[S§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§[S§ * _loc26_;
            _loc5_.§`%§();
            _loc6_.§`%§();
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
         var _loc20_:Number = _loc5_.§5Z§;
         var _loc21_:Number = _loc6_.§5Z§;
         var _loc22_:Number = _loc5_.§[S§;
         var _loc23_:Number = _loc6_.§[S§;
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
         this.§@!D§.§=d§(this.K1);
         this.§@!D§.§'$§(this.K2);
         this.§@!D§.§'$§(this.K3);
         this.§@!D§.§#p§(§0-§,-_loc16_,-_loc17_);
         _loc10_ = §0-§.x;
         _loc11_ = §0-§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§5Z§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§5Z§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§[S§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§5Z§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§5Z§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§[S§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§`%§();
         _loc6_.§`%§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
