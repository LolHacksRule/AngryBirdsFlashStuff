package §=9§
{
   import §%!H§.b2ControllerEdge;
   import §-!G§.b2Mat22;
   import §-!G§.b2Math;
   import §-!G§.b2Sweep;
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §7"'§.b2Settings;
   import §7"'§.b2internal;
   import §8!D§.b2Contact;
   import §8!D§.b2ContactEdge;
   import §8!k§.b2JointEdge;
   import §<!j§.b2EdgeShape;
   import §<!j§.b2MassData;
   import §<!j§.b2Shape;
   import §[!Z§.§8!1§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §7!?§:b2Transform = new b2Transform();
      
      b2internal static var §&!Z§:uint = 1;
      
      b2internal static var §-§:uint = 2;
      
      b2internal static var §1"'§:uint = 4;
      
      b2internal static var §6!B§:uint = 8;
      
      b2internal static var §?D§:uint = 16;
      
      b2internal static var §-^§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §1z§:uint;
      
      b2internal var §!!y§:int;
      
      b2internal var §6"2§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §?!@§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §'!G§:b2Vec2;
      
      b2internal var §%!o§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §7%§:b2Body;
      
      b2internal var §1""§:b2Body;
      
      b2internal var §8"7§:b2Fixture;
      
      b2internal var §[E§:int;
      
      b2internal var §0L§:b2ControllerEdge;
      
      b2internal var §,!b§:int;
      
      b2internal var §+!G§:b2JointEdge;
      
      b2internal var §&!E§:b2ContactEdge;
      
      b2internal var §9!>§:Number;
      
      b2internal var §@"!§:Number;
      
      b2internal var §;Y§:Number;
      
      b2internal var §!!o§:Number;
      
      b2internal var §%v§:Number;
      
      b2internal var §<s§:Number;
      
      b2internal var §>$§:Number;
      
      b2internal var §%!F§:Number;
      
      private var §"!l§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§?!@§ = new b2Vec2();
         this.§'!G§ = new b2Vec2();
         super();
         this.§1z§ = 0;
         if(param1.§8Q§)
         {
            this.§1z§ |= b2internal::6!B;
         }
         if(param1.§<k§)
         {
            this.§1z§ |= b2internal::?D;
         }
         if(param1.§'" §)
         {
            this.§1z§ |= b2internal::1"';
         }
         if(param1.§"W§)
         {
            this.§1z§ |= b2internal::-;
         }
         if(param1.§%!y§)
         {
            this.§1z§ |= b2internal::-^;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§7!@§();
         this.m_sweep.§<8§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§+!G§ = null;
         this.§0L§ = null;
         this.§&!E§ = null;
         this.§,!b§ = 0;
         this.§7%§ = null;
         this.§1""§ = null;
         this.§?!@§.SetV(param1.§37§);
         this.m_angularVelocity = param1.§&"#§;
         this.§<s§ = param1.§>2§;
         this.§>$§ = param1.§[-§;
         this.§'!G§.Set(0,0);
         this.§%!o§ = 0;
         this.§%!F§ = 0;
         this.§!!y§ = param1.type;
         if(this.§!!y§ == b2_dynamicBody)
         {
            this.§9!>§ = 1;
            this.§@"!§ = 1;
         }
         else
         {
            this.§9!>§ = 0;
            this.§@"!§ = 0;
         }
         this.§;Y§ = 0;
         this.§!!o§ = 0;
         this.§%v§ = param1.§=!-§;
         this.§"!l§ = param1.§2"$§;
         this.§8"7§ = null;
         this.§[E§ = 0;
      }
      
      private function §@V§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§8W§().y,param2.§8W§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§ !f§(_loc5_,param2.§8W§());
         _loc6_ = b2Math.§?[§(_loc6_,param2.§&T§());
         _loc6_ = b2Math.§ !f§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§=!S§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§=!S§(param1.§8W§(),param2.§8W§())).Normalize();
         var _loc8_:* = b2Math.§3M§(param1.§8W§(),param2.§&T§()) > 0;
         param1.§4!i§(param2,_loc6_,_loc7_,_loc8_);
         param2.§9D§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §9!@§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§8!1§ = null;
         if(this.m_world.§&"'§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§83§(this,this.m_xf,param1);
         if(this.§1z§ & b2internal::-^)
         {
            _loc3_ = this.m_world.§>!b§.§+9§;
            _loc2_.§ !#§(_loc3_,this.m_xf);
         }
         _loc2_.§1""§ = this.§8"7§;
         this.§8"7§ = _loc2_;
         ++this.§[E§;
         _loc2_.m_body = this;
         if(_loc2_.§3!6§ > 0)
         {
            this.§@"6§();
         }
         this.m_world.§1z§ |= b2World.§;"2§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§9!@§(_loc3_);
      }
      
      public function §"!b§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§8!1§ = null;
         if(this.m_world.§&"'§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§8"7§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§1""§ = param1.§1""§;
               }
               else
               {
                  this.§8"7§ = param1.§1""§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§1""§;
         }
         var _loc5_:b2ContactEdge = this.§&!E§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§@K§;
            _loc5_ = _loc5_.§ J§;
            _loc7_ = _loc6_.§1!j§();
            _loc8_ = _loc6_.§!!'§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§>!b§.§&!`§(_loc6_);
            }
         }
         if(this.§1z§ & b2internal::-^)
         {
            _loc9_ = this.m_world.§>!b§.§+9§;
            param1.§7y§(_loc9_);
         }
         param1.§&!`§();
         param1.m_body = null;
         param1.§1""§ = null;
         --this.§[E§;
         this.§@"6§();
      }
      
      public function §@^§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§&"'§() == true)
         {
            return;
         }
         this.m_xf.R.Set(param2);
         this.m_xf.position.SetV(param1);
         var _loc4_:b2Mat22 = this.m_xf.R;
         var _loc5_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this.m_sweep.c.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.m_sweep.a0 = this.m_sweep.a = param2;
         var _loc6_:§8!1§ = this.m_world.§>!b§.§+9§;
         _loc3_ = this.§8"7§;
         while(_loc3_)
         {
            _loc3_.§,o§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§1""§;
         }
         this.m_world.§>!b§.§5""§();
      }
      
      public function §^w§(param1:b2Transform) : void
      {
         this.§@^§(param1.position,param1.GetAngle());
      }
      
      public function §5G§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §3+§(param1:b2Vec2) : void
      {
         this.§@^§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §7!^§(param1:Number) : void
      {
         this.§@^§(this.GetPosition(),param1);
      }
      
      public function §%!d§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §3!Z§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§!!y§ == b2_staticBody)
         {
            return;
         }
         this.§?!@§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§?!@§;
      }
      
      public function §@6§(param1:Number) : void
      {
         if(this.§!!y§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §`I§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §"3§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.get();
         _loc1_.§'" § = (this.§1z§ & b2internal::1"') == b2internal::1"';
         _loc1_.angle = this.GetAngle();
         _loc1_.§[-§ = this.§>$§;
         _loc1_.§&"#§ = this.m_angularVelocity;
         _loc1_.§<k§ = (this.§1z§ & b2internal::?D) == b2internal::?D;
         _loc1_.§8Q§ = (this.§1z§ & b2internal::6!B) == b2internal::6!B;
         _loc1_.§"W§ = (this.§1z§ & b2internal::-) == b2internal::-;
         _loc1_.§>2§ = this.§<s§;
         _loc1_.§37§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§2"$§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §8"!§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§!!y§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'!G§.x += param1.x;
         this.§'!G§.y += param1.y;
         this.§%!o§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §-w§(param1:Number) : void
      {
         if(this.§!!y§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%!o§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§!!y§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?!@§.x += this.§@"!§ * param1.x;
         this.§?!@§.y += this.§@"!§ * param1.y;
         this.m_angularVelocity += this.§!!o§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §1!g§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§`I§();
         var _loc4_:b2Vec2 = this.§%!d§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§4[§(this.§"3§());
         var _loc8_:b2Fixture = _loc5_.§8"7§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§1""§;
               if(_loc7_)
               {
                  _loc7_.§1""§ = _loc13_;
               }
               else
               {
                  _loc5_.§8"7§ = _loc13_;
               }
               --_loc5_.§[E§;
               _loc8_.§1""§ = _loc6_.§8"7§;
               _loc6_.§8"7§ = _loc8_;
               ++_loc6_.§[E§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§1""§;
            }
         }
         _loc5_.§@"6§();
         _loc6_.§@"6§();
         var _loc9_:b2Vec2 = _loc5_.§%!d§();
         var _loc10_:b2Vec2 = _loc6_.§%!d§();
         var _loc11_:b2Vec2 = b2Math.§=!S§(_loc2_,b2Math.§9!B§(_loc3_,b2Math.§?[§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§=!S§(_loc2_,b2Math.§9!B§(_loc3_,b2Math.§?[§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§@6§(_loc3_);
         _loc6_.§@6§(_loc3_);
         _loc5_.§1L§();
         _loc6_.§1L§();
         return _loc6_;
      }
      
      public function §[!7§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§8"7§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§1""§;
            --param1.§[E§;
            _loc2_.§1""§ = this.§8"7§;
            this.§8"7§ = _loc2_;
            ++this.§[E§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§[E§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§%!d§();
         var _loc6_:b2Vec2 = _loc4_.§%!d§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§`I§();
         var _loc10_:Number = _loc4_.§`I§();
         _loc3_.§@"6§();
         this.§1L§();
      }
      
      public function GetMass() : Number
      {
         return this.§9!>§;
      }
      
      public function §#"3§() : Number
      {
         return this.§;Y§;
      }
      
      public function §9!=§(param1:b2MassData) : void
      {
         param1.§6%§ = this.§9!>§;
         param1.I = this.§;Y§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §^!r§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§&"'§() == false);
         if(this.m_world.§&"'§() == true)
         {
            return;
         }
         if(this.§!!y§ != b2_dynamicBody)
         {
            return;
         }
         this.§@"!§ = 0;
         this.§;Y§ = 0;
         this.§!!o§ = 0;
         this.§9!>§ = param1.§6%§;
         if(this.§9!>§ <= 0)
         {
            this.§9!>§ = 1;
         }
         this.§@"!§ = 1 / this.§9!>§;
         if(param1.I > 0 && (this.§1z§ & b2internal::?D) == 0)
         {
            this.§;Y§ = param1.I - this.§9!>§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§!!o§ = 1 / this.§;Y§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§'H§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!@§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§?!@§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §@"6§() : void
      {
         var _loc4_:b2MassData = null;
         this.§9!>§ = 0;
         this.§@"!§ = 0;
         this.§;Y§ = 0;
         this.§!!o§ = 0;
         this.m_sweep.localCenter.§7!@§();
         if(this.§!!y§ == b2_staticBody || this.§!!y§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§'"'§(0,0);
         var _loc2_:b2Fixture = this.§8"7§;
         while(_loc2_)
         {
            if(_loc2_.§3!6§ != 0)
            {
               _loc4_ = _loc2_.§9!=§();
               this.§9!>§ += _loc4_.§6%§;
               _loc1_.x += _loc4_.center.x * _loc4_.§6%§;
               _loc1_.y += _loc4_.center.y * _loc4_.§6%§;
               this.§;Y§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§1""§;
         }
         if(this.§9!>§ > 0)
         {
            this.§@"!§ = 1 / this.§9!>§;
            _loc1_.x *= this.§@"!§;
            _loc1_.y *= this.§@"!§;
         }
         else
         {
            this.§9!>§ = 1;
            this.§@"!§ = 1;
         }
         if(this.§;Y§ > 0 && (this.§1z§ & b2internal::?D) == 0)
         {
            this.§;Y§ -= this.§9!>§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§;Y§ *= this.§%v§;
            b2Settings.b2Assert(this.§;Y§ > 0);
            this.§!!o§ = 1 / this.§;Y§;
         }
         else
         {
            this.§;Y§ = 0;
            this.§!!o§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§'H§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!@§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§?!@§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §9!X§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6B§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0!=§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&x§(this.m_xf.R,param1);
      }
      
      public function §57§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§?!@§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§?!@§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §=!d§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§?!@§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§?!@§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §6u§() : Number
      {
         return this.§<s§;
      }
      
      public function §+!z§(param1:Number) : void
      {
         this.§<s§ = param1;
      }
      
      public function §+!#§() : Number
      {
         return this.§>$§;
      }
      
      public function §5`§(param1:Number) : void
      {
         this.§>$§ = param1;
      }
      
      public function §+!Z§(param1:uint) : void
      {
         if(this.§!!y§ == param1)
         {
            return;
         }
         this.§!!y§ = param1;
         this.§@"6§();
         if(this.§!!y§ == b2_staticBody)
         {
            this.§?!@§.§7!@§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§'!G§.§7!@§();
         this.§%!o§ = 0;
         var _loc2_:b2ContactEdge = this.§&!E§;
         while(_loc2_)
         {
            _loc2_.§@K§.§[!,§();
            _loc2_ = _loc2_.§ J§;
         }
      }
      
      public function get() : uint
      {
         return this.§!!y§;
      }
      
      public function § !I§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1z§ |= b2internal::6!B;
         }
         else
         {
            this.§1z§ &= ~b2internal::6!B;
         }
      }
      
      public function §&"4§() : Boolean
      {
         return (this.§1z§ & b2internal::6!B) == b2internal::6!B;
      }
      
      public function §?!h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1z§ |= b2internal::1"';
         }
         else
         {
            this.§1z§ &= ~b2internal::1"';
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1z§ |= b2internal::-;
            this.§%!F§ = 0;
         }
         else
         {
            this.§1z§ &= ~b2internal::-;
            this.§%!F§ = 0;
            this.§?!@§.§7!@§();
            this.m_angularVelocity = 0;
            this.§'!G§.§7!@§();
            this.§%!o§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§1z§ & b2internal::-) == b2internal::-;
      }
      
      public function §=p§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1z§ |= b2internal::?D;
         }
         else
         {
            this.§1z§ &= ~b2internal::?D;
         }
         this.§@"6§();
      }
      
      public function §+Q§() : Boolean
      {
         return (this.§1z§ & b2internal::?D) == b2internal::?D;
      }
      
      public function §+=§(param1:Boolean) : void
      {
         var _loc2_:§8!1§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§,G§())
         {
            return;
         }
         if(param1)
         {
            this.§1z§ |= b2internal::-^;
            _loc2_ = this.m_world.§>!b§.§+9§;
            _loc3_ = this.§8"7§;
            while(_loc3_)
            {
               _loc3_.§ !#§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§1""§;
            }
         }
         else
         {
            this.§1z§ &= ~b2internal::-^;
            _loc2_ = this.m_world.§>!b§.§+9§;
            _loc3_ = this.§8"7§;
            while(_loc3_)
            {
               _loc3_.§7y§(_loc2_);
               _loc3_ = _loc3_.§1""§;
            }
            _loc4_ = this.§&!E§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§ J§;
               this.m_world.§>!b§.§&!`§(_loc5_.§@K§);
            }
            this.§&!E§ = null;
         }
      }
      
      public function §,G§() : Boolean
      {
         return (this.§1z§ & b2internal::-^) == b2internal::-^;
      }
      
      public function §"!^§() : Boolean
      {
         return (this.§1z§ & b2internal::1"') == b2internal::1"';
      }
      
      public function §]L§() : b2Fixture
      {
         return this.§8"7§;
      }
      
      public function §"! §() : b2JointEdge
      {
         return this.§+!G§;
      }
      
      public function §5"8§() : b2ControllerEdge
      {
         return this.§0L§;
      }
      
      public function §<!Y§() : b2ContactEdge
      {
         return this.§&!E§;
      }
      
      public function §9!]§() : b2Body
      {
         return this.§1""§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!l§;
      }
      
      public function §3l§(param1:*) : void
      {
         this.§"!l§ = param1;
      }
      
      public function §8!L§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §1L§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §7!?§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§8!1§ = this.m_world.§>!b§.§+9§;
         _loc4_ = this.§8"7§;
         while(_loc4_)
         {
            _loc4_.§,o§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§1""§;
         }
      }
      
      b2internal function §+"+§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §1O§(param1:b2Body) : Boolean
      {
         if(this.§!!y§ != b2_dynamicBody && param1.§!!y§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§+!G§;
         while(_loc2_)
         {
            if(_loc2_.§?g§ == param1)
            {
               if(_loc2_.§35§.§8k§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§ J§;
         }
         return true;
      }
      
      b2internal function §["$§(param1:Number) : void
      {
         this.m_sweep.§["$§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§+"+§();
      }
   }
}
