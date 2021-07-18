package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Mat33;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §6A§.b2Vec3;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §7s§:b2Vec2 = new b2Vec2();
       
      
      private var §=6§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §<R§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §12§:b2Vec3;
      
      private var §!!X§:Number;
      
      private var §`!6§:b2Mat33;
      
      private var §!b§:Number;
      
      private var §6!P§:Boolean;
      
      private var §8!T§:Number;
      
      private var §?T§:Number;
      
      private var §?!c§:Boolean;
      
      private var §=C§:Number;
      
      private var § !%§:Number;
      
      private var §,K§:Number;
      
      private var §"B§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§=6§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§<R§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§12§ = new b2Vec3();
         this.§`!6§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§@b§);
         this.m_localAnchor2.SetV(param1.§=i§);
         this.§=C§ = param1.§;w§;
         this.§12§.§^!,§();
         this.§!!X§ = 0;
         this.§ !%§ = param1.§"!0§;
         this.§,K§ = param1.§ b§;
         this.§8!T§ = param1.§'Y§;
         this.§?T§ = param1.motorSpeed;
         this.§?!c§ = param1.§3L§;
         this.§6!P§ = param1.§;`§;
         this.§"B§ = b2internal::7t;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§12§.x,param1 * this.§12§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§12§.z;
      }
      
      public function §9-§() : Number
      {
         return b2internal::2!`.m_sweep.a - b2internal::#A.m_sweep.a - this.§=C§;
      }
      
      public function §?!D§() : Number
      {
         return b2internal::2!`.m_angularVelocity - b2internal::#A.m_angularVelocity;
      }
      
      public function § p§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function §3<§(param1:Boolean) : void
      {
         this.§?!c§ = param1;
      }
      
      public function §6-§() : Number
      {
         return this.§ !%§;
      }
      
      public function §41§() : Number
      {
         return this.§,K§;
      }
      
      public function §+!T§(param1:Number, param2:Number) : void
      {
         this.§ !%§ = param1;
         this.§,K§ = param2;
      }
      
      public function §@7§() : Boolean
      {
         b2internal::#A.SetAwake(true);
         b2internal::2!`.SetAwake(true);
         return this.§6!P§;
      }
      
      public function §1!'§(param1:Boolean) : void
      {
         this.§6!P§ = param1;
      }
      
      public function §2!K§(param1:Number) : void
      {
         b2internal::#A.SetAwake(true);
         b2internal::2!`.SetAwake(true);
         this.§?T§ = param1;
      }
      
      public function §^!f§() : Number
      {
         return this.§?T§;
      }
      
      public function §`!-§(param1:Number) : void
      {
         this.§8!T§ = param1;
      }
      
      public function §+!P§() : Number
      {
         return this.§8!T§;
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
         _loc2_ = b2internal::#A;
         _loc3_ = b2internal::2!`;
         if(this.§6!P§ || this.§?!c§)
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
         var _loc10_:Number = _loc2_.§",§;
         var _loc11_:Number = _loc3_.§",§;
         var _loc12_:Number = _loc2_.§-2§;
         var _loc13_:Number = _loc3_.§-2§;
         this.§`!6§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§`!6§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§`!6§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§`!6§.col1.y = this.§`!6§.col2.x;
         this.§`!6§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§`!6§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§`!6§.col1.z = this.§`!6§.col3.x;
         this.§`!6§.col2.z = this.§`!6§.col3.y;
         this.§`!6§.col3.z = _loc12_ + _loc13_;
         this.§!b§ = 1 / (_loc12_ + _loc13_);
         if(this.§6!P§ == false)
         {
            this.§!!X§ = 0;
         }
         if(this.§?!c§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§=C§;
            if(b2Math.§!V§(this.§,K§ - this.§ !%§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§"B§ = b2internal::]!A;
            }
            else if(_loc14_ <= this.§ !%§)
            {
               if(this.§"B§ != b2internal::-z)
               {
                  this.§12§.z = 0;
               }
               this.§"B§ = b2internal::-z;
            }
            else if(_loc14_ >= this.§,K§)
            {
               if(this.§"B§ != b2internal::&!U)
               {
                  this.§12§.z = 0;
               }
               this.§"B§ = b2internal::&!U;
            }
            else
            {
               this.§"B§ = b2internal::7t;
               this.§12§.z = 0;
            }
         }
         else
         {
            this.§"B§ = b2internal::7t;
         }
         if(param1.§?S§)
         {
            this.§12§.x *= param1.§const§;
            this.§12§.y *= param1.§const§;
            this.§!!X§ *= param1.§const§;
            _loc15_ = this.§12§.x;
            _loc16_ = this.§12§.y;
            _loc2_.§@S§.x -= _loc10_ * _loc15_;
            _loc2_.§@S§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§!!X§ + this.§12§.z);
            _loc3_.§@S§.x += _loc11_ * _loc15_;
            _loc3_.§@S§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§!!X§ + this.§12§.z);
         }
         else
         {
            this.§12§.§^!,§();
            this.§!!X§ = 0;
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
         var _loc2_:b2Body = b2internal::#A;
         var _loc3_:b2Body = b2internal::2!`;
         var _loc11_:b2Vec2 = _loc2_.§@S§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§@S§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§",§;
         var _loc16_:Number = _loc3_.§",§;
         var _loc17_:Number = _loc2_.§-2§;
         var _loc18_:Number = _loc3_.§-2§;
         if(this.§6!P§ && this.§"B§ != b2internal::]!A)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§?T§;
            _loc20_ = this.§!b§ * -_loc19_;
            _loc21_ = this.§!!X§;
            _loc22_ = param1.§?u§ * this.§8!T§;
            this.§!!X§ = b2Math.§>I§(this.§!!X§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§!!X§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§?!c§ && this.§"B§ != b2internal::7t)
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
            this.§`!6§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§"B§ == b2internal::]!A)
            {
               this.§12§.§ v§(this.impulse3);
            }
            else if(this.§"B§ == b2internal::-z)
            {
               if((_loc6_ = this.§12§.z + this.impulse3.z) < 0)
               {
                  this.§`!6§.Solve22(this.§<R§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§<R§.x;
                  this.impulse3.y = this.§<R§.y;
                  this.impulse3.z = -this.§12§.z;
                  this.§12§.x += this.§<R§.x;
                  this.§12§.y += this.§<R§.y;
                  this.§12§.z = 0;
               }
            }
            else if(this.§"B§ == b2internal::&!U)
            {
               if((_loc6_ = this.§12§.z + this.impulse3.z) > 0)
               {
                  this.§`!6§.Solve22(this.§<R§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§<R§.x;
                  this.impulse3.y = this.§<R§.y;
                  this.impulse3.z = -this.§12§.z;
                  this.§12§.x += this.§<R§.x;
                  this.§12§.y += this.§<R§.y;
                  this.§12§.z = 0;
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
            this.§`!6§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§12§.x += this.impulse2.x;
            this.§12§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§@S§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§@S§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::#A;
         var _loc6_:b2Body = b2internal::2!`;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§?!c§ && this.§"B§ != b2internal::7t)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§=C§;
            _loc26_ = 0;
            if(this.§"B§ == b2internal::]!A)
            {
               _loc3_ = b2Math.§>I§(_loc25_ - this.§ !%§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§!b§ * _loc3_;
               _loc7_ = b2Math.§!V§(_loc3_);
            }
            else if(this.§"B§ == b2internal::-z)
            {
               _loc3_ = _loc25_ - this.§ !%§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§>I§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§!b§ * _loc3_;
            }
            else if(this.§"B§ == b2internal::&!U)
            {
               _loc3_ = _loc25_ - this.§,K§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§>I§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§!b§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§-2§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§-2§ * _loc26_;
            _loc5_.§-W§();
            _loc6_.§-W§();
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
         var _loc20_:Number = _loc5_.§",§;
         var _loc21_:Number = _loc6_.§",§;
         var _loc22_:Number = _loc5_.§-2§;
         var _loc23_:Number = _loc6_.§-2§;
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
         this.§=6§.§&o§(this.K1);
         this.§=6§.§3k§(this.K2);
         this.§=6§.§3k§(this.K3);
         this.§=6§.§]!G§(§7s§,-_loc16_,-_loc17_);
         _loc10_ = §7s§.x;
         _loc11_ = §7s§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§",§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§",§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§-2§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§",§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§",§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§-2§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§-W§();
         _loc6_.§-W§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
