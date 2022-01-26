package §9A§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Mat22;
   import §3q§.b2Mat33;
   import §3q§.b2Math;
   import §3q§.b2Vec2;
   import §3q§.b2Vec3;
   import §?0§.b2Body;
   import §?0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §&u§:b2Vec2 = new b2Vec2();
       
      
      private var §3?§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §9!D§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §&S§:b2Vec3;
      
      private var §"^§:Number;
      
      private var §"n§:b2Mat33;
      
      private var §4!&§:Number;
      
      private var §3;§:Boolean;
      
      private var §!!a§:Number;
      
      private var §4!A§:Number;
      
      private var §`z§:Boolean;
      
      private var §5j§:Number;
      
      private var §]!_§:Number;
      
      private var §3!?§:Number;
      
      private var §%&§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§3?§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§9!D§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&S§ = new b2Vec3();
         this.§"n§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§`!X§);
         this.m_localAnchor2.SetV(param1.§+!,§);
         this.§5j§ = param1.§5o§;
         this.§&S§.§<!5§();
         this.§"^§ = 0;
         this.§]!_§ = param1.§+!J§;
         this.§3!?§ = param1.§14§;
         this.§!!a§ = param1.§ ]§;
         this.§4!A§ = param1.motorSpeed;
         this.§`z§ = param1.§-$§;
         this.§3;§ = param1.§2l§;
         this.§%&§ = b2internal::26;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::try.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-f.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§&S§.x,param1 * this.§&S§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§&S§.z;
      }
      
      public function §#$§() : Number
      {
         return b2internal::-f.m_sweep.a - b2internal::try.m_sweep.a - this.§5j§;
      }
      
      public function §'#§() : Number
      {
         return b2internal::-f.m_angularVelocity - b2internal::try.m_angularVelocity;
      }
      
      public function §2!U§() : Boolean
      {
         return this.§`z§;
      }
      
      public function §^u§(param1:Boolean) : void
      {
         this.§`z§ = param1;
      }
      
      public function §"!E§() : Number
      {
         return this.§]!_§;
      }
      
      public function §2N§() : Number
      {
         return this.§3!?§;
      }
      
      public function §6!M§(param1:Number, param2:Number) : void
      {
         this.§]!_§ = param1;
         this.§3!?§ = param2;
      }
      
      public function §9W§() : Boolean
      {
         b2internal::try.SetAwake(true);
         b2internal::-f.SetAwake(true);
         return this.§3;§;
      }
      
      public function §+!$§(param1:Boolean) : void
      {
         this.§3;§ = param1;
      }
      
      public function §^=§(param1:Number) : void
      {
         b2internal::try.SetAwake(true);
         b2internal::-f.SetAwake(true);
         this.§4!A§ = param1;
      }
      
      public function §!!W§() : Number
      {
         return this.§4!A§;
      }
      
      public function §2!6§(param1:Number) : void
      {
         this.§!!a§ = param1;
      }
      
      public function §5D§() : Number
      {
         return this.§!!a§;
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
         _loc2_ = b2internal::try;
         _loc3_ = b2internal::-f;
         if(this.§3;§ || this.§`z§)
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
         var _loc10_:Number = _loc2_.§-q§;
         var _loc11_:Number = _loc3_.§-q§;
         var _loc12_:Number = _loc2_.§'a§;
         var _loc13_:Number = _loc3_.§'a§;
         this.§"n§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§"n§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§"n§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§"n§.col1.y = this.§"n§.col2.x;
         this.§"n§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§"n§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§"n§.col1.z = this.§"n§.col3.x;
         this.§"n§.col2.z = this.§"n§.col3.y;
         this.§"n§.col3.z = _loc12_ + _loc13_;
         this.§4!&§ = 1 / (_loc12_ + _loc13_);
         if(this.§3;§ == false)
         {
            this.§"^§ = 0;
         }
         if(this.§`z§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§5j§;
            if(b2Math.§@6§(this.§3!?§ - this.§]!_§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§%&§ = b2internal::=6;
            }
            else if(_loc14_ <= this.§]!_§)
            {
               if(this.§%&§ != b2internal::1-)
               {
                  this.§&S§.z = 0;
               }
               this.§%&§ = b2internal::1-;
            }
            else if(_loc14_ >= this.§3!?§)
            {
               if(this.§%&§ != b2internal::<j)
               {
                  this.§&S§.z = 0;
               }
               this.§%&§ = b2internal::<j;
            }
            else
            {
               this.§%&§ = b2internal::26;
               this.§&S§.z = 0;
            }
         }
         else
         {
            this.§%&§ = b2internal::26;
         }
         if(param1.§4!D§)
         {
            this.§&S§.x *= param1.§1a§;
            this.§&S§.y *= param1.§1a§;
            this.§"^§ *= param1.§1a§;
            _loc15_ = this.§&S§.x;
            _loc16_ = this.§&S§.y;
            _loc2_.§2!G§.x -= _loc10_ * _loc15_;
            _loc2_.§2!G§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§"^§ + this.§&S§.z);
            _loc3_.§2!G§.x += _loc11_ * _loc15_;
            _loc3_.§2!G§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§"^§ + this.§&S§.z);
         }
         else
         {
            this.§&S§.§<!5§();
            this.§"^§ = 0;
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
         var _loc2_:b2Body = b2internal::try;
         var _loc3_:b2Body = b2internal::-f;
         var _loc11_:b2Vec2 = _loc2_.§2!G§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§2!G§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§-q§;
         var _loc16_:Number = _loc3_.§-q§;
         var _loc17_:Number = _loc2_.§'a§;
         var _loc18_:Number = _loc3_.§'a§;
         if(this.§3;§ && this.§%&§ != b2internal::=6)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§4!A§;
            _loc20_ = this.§4!&§ * -_loc19_;
            _loc21_ = this.§"^§;
            _loc22_ = param1.§+!I§ * this.§!!a§;
            this.§"^§ = b2Math.§;f§(this.§"^§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§"^§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§`z§ && this.§%&§ != b2internal::26)
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
            this.§"n§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§%&§ == b2internal::=6)
            {
               this.§&S§.§=O§(this.impulse3);
            }
            else if(this.§%&§ == b2internal::1-)
            {
               if((_loc6_ = this.§&S§.z + this.impulse3.z) < 0)
               {
                  this.§"n§.Solve22(this.§9!D§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§9!D§.x;
                  this.impulse3.y = this.§9!D§.y;
                  this.impulse3.z = -this.§&S§.z;
                  this.§&S§.x += this.§9!D§.x;
                  this.§&S§.y += this.§9!D§.y;
                  this.§&S§.z = 0;
               }
            }
            else if(this.§%&§ == b2internal::<j)
            {
               if((_loc6_ = this.§&S§.z + this.impulse3.z) > 0)
               {
                  this.§"n§.Solve22(this.§9!D§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§9!D§.x;
                  this.impulse3.y = this.§9!D§.y;
                  this.impulse3.z = -this.§&S§.z;
                  this.§&S§.x += this.§9!D§.x;
                  this.§&S§.y += this.§9!D§.y;
                  this.§&S§.z = 0;
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
            this.§"n§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§&S§.x += this.impulse2.x;
            this.§&S§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§2!G§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§2!G§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::try;
         var _loc6_:b2Body = b2internal::-f;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§`z§ && this.§%&§ != b2internal::26)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§5j§;
            _loc26_ = 0;
            if(this.§%&§ == b2internal::=6)
            {
               _loc3_ = b2Math.§;f§(_loc25_ - this.§]!_§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4!&§ * _loc3_;
               _loc7_ = b2Math.§@6§(_loc3_);
            }
            else if(this.§%&§ == b2internal::1-)
            {
               _loc3_ = _loc25_ - this.§]!_§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§;f§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§4!&§ * _loc3_;
            }
            else if(this.§%&§ == b2internal::<j)
            {
               _loc3_ = _loc25_ - this.§3!?§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§;f§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4!&§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§'a§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§'a§ * _loc26_;
            _loc5_.§>W§();
            _loc6_.§>W§();
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
         var _loc20_:Number = _loc5_.§-q§;
         var _loc21_:Number = _loc6_.§-q§;
         var _loc22_:Number = _loc5_.§'a§;
         var _loc23_:Number = _loc6_.§'a§;
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
         this.§3?§.§-z§(this.K1);
         this.§3?§.§7e§(this.K2);
         this.§3?§.§7e§(this.K3);
         this.§3?§.§-!X§(§&u§,-_loc16_,-_loc17_);
         _loc10_ = §&u§.x;
         _loc11_ = §&u§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§-q§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§-q§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§'a§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§-q§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§-q§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§'a§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§>W§();
         _loc6_.§>W§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
