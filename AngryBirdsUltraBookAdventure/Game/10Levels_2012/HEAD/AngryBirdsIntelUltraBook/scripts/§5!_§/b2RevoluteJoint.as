package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Mat22;
   import §?!&§.b2Mat33;
   import §?!&§.b2Math;
   import §?!&§.b2Vec2;
   import §?!&§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §%N§:b2Vec2 = new b2Vec2();
       
      
      private var §^7§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §9G§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §>!C§:b2Vec3;
      
      private var §<D§:Number;
      
      private var §;!3§:b2Mat33;
      
      private var §8!B§:Number;
      
      private var §4z§:Boolean;
      
      private var §#!d§:Number;
      
      private var §+V§:Number;
      
      private var §+`§:Boolean;
      
      private var §]+§:Number;
      
      private var §2-§:Number;
      
      private var §8!D§:Number;
      
      private var §;,§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§^7§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§9G§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§>!C§ = new b2Vec3();
         this.§;!3§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'!<§);
         this.m_localAnchor2.SetV(param1.§1!0§);
         this.§]+§ = param1.§5S§;
         this.§>!C§.§@l§();
         this.§<D§ = 0;
         this.§2-§ = param1.§&;§;
         this.§8!D§ = param1.§ !>§;
         this.§#!d§ = param1.§?!h§;
         this.§+V§ = param1.motorSpeed;
         this.§+`§ = param1.§!X§;
         this.§4z§ = param1.§0e§;
         this.§;,§ = §1P§;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §,^§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return § X§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>!C§.x,param1 * this.§>!C§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>!C§.z;
      }
      
      public function §^T§() : Number
      {
         return § X§.m_sweep.a - §,^§.m_sweep.a - this.§]+§;
      }
      
      public function §4!=§() : Number
      {
         return § X§.m_angularVelocity - §,^§.m_angularVelocity;
      }
      
      public function §!!N§() : Boolean
      {
         return this.§+`§;
      }
      
      public function §5P§(param1:Boolean) : void
      {
         this.§+`§ = param1;
      }
      
      public function § 1§() : Number
      {
         return this.§2-§;
      }
      
      public function §#c§() : Number
      {
         return this.§8!D§;
      }
      
      public function §`k§(param1:Number, param2:Number) : void
      {
         this.§2-§ = param1;
         this.§8!D§ = param2;
      }
      
      public function §2,§() : Boolean
      {
         §,^§.SetAwake(true);
         § X§.SetAwake(true);
         return this.§4z§;
      }
      
      public function §@-§(param1:Boolean) : void
      {
         this.§4z§ = param1;
      }
      
      public function §39§(param1:Number) : void
      {
         §,^§.SetAwake(true);
         § X§.SetAwake(true);
         this.§+V§ = param1;
      }
      
      public function §3!g§() : Number
      {
         return this.§+V§;
      }
      
      public function §>6§(param1:Number) : void
      {
         this.§#!d§ = param1;
      }
      
      public function §`!]§() : Number
      {
         return this.§#!d§;
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
         _loc2_ = §,^§;
         _loc3_ = § X§;
         if(this.§4z§ || this.§+`§)
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
         var _loc10_:Number = _loc2_.§4s§;
         var _loc11_:Number = _loc3_.§4s§;
         var _loc12_:Number = _loc2_.§[!F§;
         var _loc13_:Number = _loc3_.§[!F§;
         this.§;!3§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§;!3§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§;!3§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§;!3§.col1.y = this.§;!3§.col2.x;
         this.§;!3§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§;!3§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§;!3§.col1.z = this.§;!3§.col3.x;
         this.§;!3§.col2.z = this.§;!3§.col3.y;
         this.§;!3§.col3.z = _loc12_ + _loc13_;
         this.§8!B§ = 1 / (_loc12_ + _loc13_);
         if(this.§4z§ == false)
         {
            this.§<D§ = 0;
         }
         if(this.§+`§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§]+§;
            if(b2Math.§'!8§(this.§8!D§ - this.§2-§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§;,§ = §>!2§;
            }
            else if(_loc14_ <= this.§2-§)
            {
               if(this.§;,§ != §1!>§)
               {
                  this.§>!C§.z = 0;
               }
               this.§;,§ = §1!>§;
            }
            else if(_loc14_ >= this.§8!D§)
            {
               if(this.§;,§ != §5'§)
               {
                  this.§>!C§.z = 0;
               }
               this.§;,§ = §5'§;
            }
            else
            {
               this.§;,§ = §1P§;
               this.§>!C§.z = 0;
            }
         }
         else
         {
            this.§;,§ = §1P§;
         }
         if(param1.§3!=§)
         {
            this.§>!C§.x *= param1.§&l§;
            this.§>!C§.y *= param1.§&l§;
            this.§<D§ *= param1.§&l§;
            _loc15_ = this.§>!C§.x;
            _loc16_ = this.§>!C§.y;
            _loc2_.§69§.x -= _loc10_ * _loc15_;
            _loc2_.§69§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§<D§ + this.§>!C§.z);
            _loc3_.§69§.x += _loc11_ * _loc15_;
            _loc3_.§69§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§<D§ + this.§>!C§.z);
         }
         else
         {
            this.§>!C§.§@l§();
            this.§<D§ = 0;
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
         var _loc2_:b2Body = §,^§;
         var _loc3_:b2Body = § X§;
         var _loc11_:b2Vec2 = _loc2_.§69§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§69§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§4s§;
         var _loc16_:Number = _loc3_.§4s§;
         var _loc17_:Number = _loc2_.§[!F§;
         var _loc18_:Number = _loc3_.§[!F§;
         if(this.§4z§ && this.§;,§ != §>!2§)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§+V§;
            _loc20_ = this.§8!B§ * -_loc19_;
            _loc21_ = this.§<D§;
            _loc22_ = param1.§?!>§ * this.§#!d§;
            this.§<D§ = b2Math.§"J§(this.§<D§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§<D§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§+`§ && this.§;,§ != §1P§)
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
            this.§;!3§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§;,§ == §>!2§)
            {
               this.§>!C§.§1"§(this.impulse3);
            }
            else if(this.§;,§ == §1!>§)
            {
               _loc6_ = this.§>!C§.z + this.impulse3.z;
               if(_loc6_ < 0)
               {
                  this.§;!3§.Solve22(this.§9G§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§9G§.x;
                  this.impulse3.y = this.§9G§.y;
                  this.impulse3.z = -this.§>!C§.z;
                  this.§>!C§.x += this.§9G§.x;
                  this.§>!C§.y += this.§9G§.y;
                  this.§>!C§.z = 0;
               }
            }
            else if(this.§;,§ == §5'§)
            {
               _loc6_ = this.§>!C§.z + this.impulse3.z;
               if(_loc6_ > 0)
               {
                  this.§;!3§.Solve22(this.§9G§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§9G§.x;
                  this.impulse3.y = this.§9G§.y;
                  this.impulse3.z = -this.§>!C§.z;
                  this.§>!C§.x += this.§9G§.x;
                  this.§>!C§.y += this.§9G§.y;
                  this.§>!C§.z = 0;
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
            this.§;!3§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§>!C§.x += this.impulse2.x;
            this.§>!C§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§69§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§69§.SetV(_loc13_);
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
         var _loc5_:b2Body = §,^§;
         var _loc6_:b2Body = § X§;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§+`§ && this.§;,§ != §1P§)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§]+§;
            _loc26_ = 0;
            if(this.§;,§ == §>!2§)
            {
               _loc3_ = b2Math.§"J§(_loc25_ - this.§2-§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§8!B§ * _loc3_;
               _loc7_ = b2Math.§'!8§(_loc3_);
            }
            else if(this.§;,§ == §1!>§)
            {
               _loc3_ = _loc25_ - this.§2-§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§"J§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§8!B§ * _loc3_;
            }
            else if(this.§;,§ == §5'§)
            {
               _loc3_ = _loc25_ - this.§8!D§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§"J§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§8!B§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§[!F§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§[!F§ * _loc26_;
            _loc5_.§`! §();
            _loc6_.§`! §();
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
         var _loc19_:Number = Math.sqrt(_loc18_);
         _loc8_ = _loc19_;
         var _loc20_:Number = _loc5_.§4s§;
         var _loc21_:Number = _loc6_.§4s§;
         var _loc22_:Number = _loc5_.§[!F§;
         var _loc23_:Number = _loc6_.§[!F§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc30_ = 1 / _loc29_;
            _loc10_ = _loc30_ * -_loc16_;
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
         this.§^7§.§72§(this.K1);
         this.§^7§.§;!X§(this.K2);
         this.§^7§.§;!X§(this.K3);
         this.§^7§.§ M§(§%N§,-_loc16_,-_loc17_);
         _loc10_ = §%N§.x;
         _loc11_ = §%N§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§4s§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§4s§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§[!F§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§4s§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§4s§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§[!F§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§`! §();
         _loc6_.§`! §();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
