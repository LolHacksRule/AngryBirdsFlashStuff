package §@!]§
{
   import §,!3§.b2Mat22;
   import §,!3§.b2Mat33;
   import §,!3§.b2Math;
   import §,!3§.b2Vec2;
   import §,!3§.b2Vec3;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   import §?!F§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §^2§:b2Vec2 = new b2Vec2();
       
      
      private var §>f§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §^!b§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §9y§:b2Vec3;
      
      private var §3?§:Number;
      
      private var §8!#§:b2Mat33;
      
      private var §"7§:Number;
      
      private var §<Y§:Boolean;
      
      private var §;!5§:Number;
      
      private var §2%§:Number;
      
      private var §29§:Boolean;
      
      private var §#Z§:Number;
      
      private var §;!O§:Number;
      
      private var §9Y§:Number;
      
      private var §[-§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§>f§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§^!b§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9y§ = new b2Vec3();
         this.§8!#§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§&!0§);
         this.m_localAnchor2.SetV(param1.§,%§);
         this.§#Z§ = param1.§!P§;
         this.§9y§.§#!d§();
         this.§3?§ = 0;
         this.§;!O§ = param1.§>A§;
         this.§9Y§ = param1.§'S§;
         this.§;!5§ = param1.§5z§;
         this.§2%§ = param1.motorSpeed;
         this.§29§ = param1.§8!&§;
         this.§<Y§ = param1.§`!Y§;
         this.§[-§ = b2internal::]W;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!O.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9y§.x,param1 * this.§9y§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9y§.z;
      }
      
      public function §=!,§() : Number
      {
         return b2internal::2!=.m_sweep.a - b2internal::]!O.m_sweep.a - this.§#Z§;
      }
      
      public function §<+§() : Number
      {
         return b2internal::2!=.m_angularVelocity - b2internal::]!O.m_angularVelocity;
      }
      
      public function § !'§() : Boolean
      {
         return this.§29§;
      }
      
      public function §6m§(param1:Boolean) : void
      {
         this.§29§ = param1;
      }
      
      public function §!e§() : Number
      {
         return this.§;!O§;
      }
      
      public function §<!K§() : Number
      {
         return this.§9Y§;
      }
      
      public function §`$§(param1:Number, param2:Number) : void
      {
         this.§;!O§ = param1;
         this.§9Y§ = param2;
      }
      
      public function §8A§() : Boolean
      {
         b2internal::]!O.SetAwake(true);
         b2internal::2!=.SetAwake(true);
         return this.§<Y§;
      }
      
      public function §60§(param1:Boolean) : void
      {
         this.§<Y§ = param1;
      }
      
      public function §0U§(param1:Number) : void
      {
         b2internal::]!O.SetAwake(true);
         b2internal::2!=.SetAwake(true);
         this.§2%§ = param1;
      }
      
      public function §3R§() : Number
      {
         return this.§2%§;
      }
      
      public function §+! §(param1:Number) : void
      {
         this.§;!5§ = param1;
      }
      
      public function §5j§() : Number
      {
         return this.§;!5§;
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
         _loc2_ = b2internal::]!O;
         _loc3_ = b2internal::2!=;
         if(this.§<Y§ || this.§29§)
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
         var _loc10_:Number = _loc2_.§;!E§;
         var _loc11_:Number = _loc3_.§;!E§;
         var _loc12_:Number = _loc2_.§8z§;
         var _loc13_:Number = _loc3_.§8z§;
         this.§8!#§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§8!#§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§8!#§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§8!#§.col1.y = this.§8!#§.col2.x;
         this.§8!#§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§8!#§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§8!#§.col1.z = this.§8!#§.col3.x;
         this.§8!#§.col2.z = this.§8!#§.col3.y;
         this.§8!#§.col3.z = _loc12_ + _loc13_;
         this.§"7§ = 1 / (_loc12_ + _loc13_);
         if(this.§<Y§ == false)
         {
            this.§3?§ = 0;
         }
         if(this.§29§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§#Z§;
            if(b2Math.§?A§(this.§9Y§ - this.§;!O§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§[-§ = b2internal::?&;
            }
            else if(_loc14_ <= this.§;!O§)
            {
               if(this.§[-§ != b2internal::;!=)
               {
                  this.§9y§.z = 0;
               }
               this.§[-§ = b2internal::;!=;
            }
            else if(_loc14_ >= this.§9Y§)
            {
               if(this.§[-§ != b2internal::[z)
               {
                  this.§9y§.z = 0;
               }
               this.§[-§ = b2internal::[z;
            }
            else
            {
               this.§[-§ = b2internal::]W;
               this.§9y§.z = 0;
            }
         }
         else
         {
            this.§[-§ = b2internal::]W;
         }
         if(param1.§3+§)
         {
            this.§9y§.x *= param1.§%"§;
            this.§9y§.y *= param1.§%"§;
            this.§3?§ *= param1.§%"§;
            _loc15_ = this.§9y§.x;
            _loc16_ = this.§9y§.y;
            _loc2_.§#A§.x -= _loc10_ * _loc15_;
            _loc2_.§#A§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§3?§ + this.§9y§.z);
            _loc3_.§#A§.x += _loc11_ * _loc15_;
            _loc3_.§#A§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§3?§ + this.§9y§.z);
         }
         else
         {
            this.§9y§.§#!d§();
            this.§3?§ = 0;
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
         var _loc2_:b2Body = b2internal::]!O;
         var _loc3_:b2Body = b2internal::2!=;
         var _loc11_:b2Vec2 = _loc2_.§#A§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§#A§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§;!E§;
         var _loc16_:Number = _loc3_.§;!E§;
         var _loc17_:Number = _loc2_.§8z§;
         var _loc18_:Number = _loc3_.§8z§;
         if(this.§<Y§ && this.§[-§ != b2internal::?&)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§2%§;
            _loc20_ = this.§"7§ * -_loc19_;
            _loc21_ = this.§3?§;
            _loc22_ = param1.§3v§ * this.§;!5§;
            this.§3?§ = b2Math.§8![§(this.§3?§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§3?§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§29§ && this.§[-§ != b2internal::]W)
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
            this.§8!#§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§[-§ == b2internal::?&)
            {
               this.§9y§.§03§(this.impulse3);
            }
            else if(this.§[-§ == b2internal::;!=)
            {
               if((_loc6_ = this.§9y§.z + this.impulse3.z) < 0)
               {
                  this.§8!#§.Solve22(this.§^!b§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§^!b§.x;
                  this.impulse3.y = this.§^!b§.y;
                  this.impulse3.z = -this.§9y§.z;
                  this.§9y§.x += this.§^!b§.x;
                  this.§9y§.y += this.§^!b§.y;
                  this.§9y§.z = 0;
               }
            }
            else if(this.§[-§ == b2internal::[z)
            {
               if((_loc6_ = this.§9y§.z + this.impulse3.z) > 0)
               {
                  this.§8!#§.Solve22(this.§^!b§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§^!b§.x;
                  this.impulse3.y = this.§^!b§.y;
                  this.impulse3.z = -this.§9y§.z;
                  this.§9y§.x += this.§^!b§.x;
                  this.§9y§.y += this.§^!b§.y;
                  this.§9y§.z = 0;
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
            this.§8!#§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§9y§.x += this.impulse2.x;
            this.§9y§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§#A§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§#A§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::]!O;
         var _loc6_:b2Body = b2internal::2!=;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§29§ && this.§[-§ != b2internal::]W)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§#Z§;
            _loc26_ = 0;
            if(this.§[-§ == b2internal::?&)
            {
               _loc3_ = b2Math.§8![§(_loc25_ - this.§;!O§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§"7§ * _loc3_;
               _loc7_ = b2Math.§?A§(_loc3_);
            }
            else if(this.§[-§ == b2internal::;!=)
            {
               _loc3_ = _loc25_ - this.§;!O§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§8![§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§"7§ * _loc3_;
            }
            else if(this.§[-§ == b2internal::[z)
            {
               _loc3_ = _loc25_ - this.§9Y§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§8![§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§"7§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§8z§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§8z§ * _loc26_;
            _loc5_.§+?§();
            _loc6_.§+?§();
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
         var _loc20_:Number = _loc5_.§;!E§;
         var _loc21_:Number = _loc6_.§;!E§;
         var _loc22_:Number = _loc5_.§8z§;
         var _loc23_:Number = _loc6_.§8z§;
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
         this.§>f§.§]!@§(this.K1);
         this.§>f§.§`'§(this.K2);
         this.§>f§.§`'§(this.K3);
         this.§>f§.§]!H§(§^2§,-_loc16_,-_loc17_);
         _loc10_ = §^2§.x;
         _loc11_ = §^2§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§;!E§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§;!E§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§8z§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§;!E§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§;!E§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§8z§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§+?§();
         _loc6_.§+?§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
