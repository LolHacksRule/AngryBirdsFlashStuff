package §#I§
{
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §2!'§.b2JointEdge;
   import §3b§.b2EdgeShape;
   import §3b§.b2MassData;
   import §3b§.b2Shape;
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §>!Z§.§<P§;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   import §`L§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §@!>§:b2Transform = new b2Transform();
      
      b2internal static var §0V§:uint = 1;
      
      b2internal static var §5!_§:uint = 2;
      
      b2internal static var §6T§:uint = 4;
      
      b2internal static var §;!@§:uint = 8;
      
      b2internal static var §]3§:uint = 16;
      
      b2internal static var §0!_§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §[B§:uint;
      
      b2internal var §3r§:int;
      
      b2internal var §-!_§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%!<§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §76§:b2Vec2;
      
      b2internal var §5n§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §+!3§:b2Body;
      
      b2internal var §=!8§:b2Body;
      
      b2internal var §>"#§:b2Fixture;
      
      b2internal var §9!;§:int;
      
      b2internal var §'z§:b2ControllerEdge;
      
      b2internal var §8H§:int;
      
      b2internal var §8!I§:b2JointEdge;
      
      b2internal var §0!?§:b2ContactEdge;
      
      b2internal var §"X§:Number;
      
      b2internal var §3!q§:Number;
      
      b2internal var §4!A§:Number;
      
      b2internal var §2!1§:Number;
      
      b2internal var §]5§:Number;
      
      b2internal var §];§:Number;
      
      b2internal var §[!7§:Number;
      
      b2internal var §+0§:Number;
      
      private var §>g§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§%!<§ = new b2Vec2();
         this.§76§ = new b2Vec2();
         super();
         this.§[B§ = 0;
         if(param1.§2!C§)
         {
            this.§[B§ |= b2internal::;!@;
         }
         if(param1.§%w§)
         {
            this.§[B§ |= b2internal::]3;
         }
         if(param1.§]#§)
         {
            this.§[B§ |= b2internal::6T;
         }
         if(param1.§-!A§)
         {
            this.§[B§ |= b2internal::5!_;
         }
         if(param1.§6!@§)
         {
            this.§[B§ |= b2internal::0!_;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§+J§();
         this.m_sweep.§3J§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§8!I§ = null;
         this.§'z§ = null;
         this.§0!?§ = null;
         this.§8H§ = 0;
         this.§+!3§ = null;
         this.§=!8§ = null;
         this.§%!<§.SetV(param1.§;!"§);
         this.m_angularVelocity = param1.§-!^§;
         this.§];§ = param1.§#"$§;
         this.§[!7§ = param1.§"!K§;
         this.§76§.Set(0,0);
         this.§5n§ = 0;
         this.§+0§ = 0;
         this.§3r§ = param1.type;
         if(this.§3r§ == b2_dynamicBody)
         {
            this.§"X§ = 1;
            this.§3!q§ = 1;
         }
         else
         {
            this.§"X§ = 0;
            this.§3!q§ = 0;
         }
         this.§4!A§ = 0;
         this.§2!1§ = 0;
         this.§]5§ = param1.§@!r§;
         this.§>g§ = param1.§]!=§;
         this.§>"#§ = null;
         this.§9!;§ = 0;
      }
      
      private function §7!-§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§ !P§().y,param2.§ !P§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'§(_loc5_,param2.§ !P§());
         _loc6_ = b2Math.§%M§(_loc6_,param2.§'p§());
         _loc6_ = b2Math.§'§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§`v§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§`v§(param1.§ !P§(),param2.§ !P§())).Normalize();
         var _loc8_:* = b2Math.§#D§(param1.§ !P§(),param2.§'p§()) > 0;
         param1.§<"!§(param2,_loc6_,_loc7_,_loc8_);
         param2.§5!o§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §&R§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§<P§ = null;
         if(this.m_world.§@%§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§1!Y§(this,this.m_xf,param1);
         if(this.§[B§ & b2internal::0!_)
         {
            _loc3_ = this.m_world.§5!>§.§,>§;
            _loc2_.§[E§(_loc3_,this.m_xf);
         }
         _loc2_.§=!8§ = this.§>"#§;
         this.§>"#§ = _loc2_;
         ++this.§9!;§;
         _loc2_.m_body = this;
         if(_loc2_.§`!k§ > 0)
         {
            this.§'!d§();
         }
         this.m_world.§[B§ |= b2World.§&r§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§&R§(_loc3_);
      }
      
      public function §,!_§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<P§ = null;
         if(this.m_world.§@%§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§>"#§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§=!8§ = param1.§=!8§;
               }
               else
               {
                  this.§>"#§ = param1.§=!8§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§=!8§;
         }
         var _loc5_:b2ContactEdge = this.§0!?§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§8!m§;
            _loc5_ = _loc5_.§`!w§;
            _loc7_ = _loc6_.§`!a§();
            _loc8_ = _loc6_.§2!s§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§5!>§.§=_§(_loc6_);
            }
         }
         if(this.§[B§ & b2internal::0!_)
         {
            _loc9_ = this.m_world.§5!>§.§,>§;
            param1.§#i§(_loc9_);
         }
         param1.§=_§();
         param1.m_body = null;
         param1.§=!8§ = null;
         --this.§9!;§;
         this.§'!d§();
      }
      
      public function §2#§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§@%§() == true)
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
         var _loc6_:§<P§ = this.m_world.§5!>§.§,>§;
         _loc3_ = this.§>"#§;
         while(_loc3_)
         {
            _loc3_.§0!H§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§=!8§;
         }
         this.m_world.§5!>§.§-!V§();
      }
      
      public function §+!x§(param1:b2Transform) : void
      {
         this.§2#§(param1.position,param1.GetAngle());
      }
      
      public function §%J§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §22§(param1:b2Vec2) : void
      {
         this.§2#§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §?!=§(param1:Number) : void
      {
         this.§2#§(this.GetPosition(),param1);
      }
      
      public function §58§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6!#§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§3r§ == b2_staticBody)
         {
            return;
         }
         this.§%!<§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%!<§;
      }
      
      public function §&e§(param1:Number) : void
      {
         if(this.§3r§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §'K§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §+!m§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§ 5§();
         _loc1_.§]#§ = (this.§[B§ & b2internal::6T) == b2internal::6T;
         _loc1_.angle = this.GetAngle();
         _loc1_.§"!K§ = this.§[!7§;
         _loc1_.§-!^§ = this.m_angularVelocity;
         _loc1_.§%w§ = (this.§[B§ & b2internal::]3) == b2internal::]3;
         _loc1_.§2!C§ = (this.§[B§ & b2internal::;!@) == b2internal::;!@;
         _loc1_.§-!A§ = (this.§[B§ & b2internal::5!_) == b2internal::5!_;
         _loc1_.§#"$§ = this.§];§;
         _loc1_.§;!"§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§]!=§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §;!U§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3r§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§76§.x += param1.x;
         this.§76§.y += param1.y;
         this.§5n§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §6!R§(param1:Number) : void
      {
         if(this.§3r§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5n§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3r§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%!<§.x += this.§3!q§ * param1.x;
         this.§%!<§.y += this.§3!q§ * param1.y;
         this.m_angularVelocity += this.§2!1§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §'!p§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§'K§();
         var _loc4_:b2Vec2 = this.§58§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§4!H§(this.§+!m§());
         var _loc8_:b2Fixture = _loc5_.§>"#§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§=!8§;
               if(_loc7_)
               {
                  _loc7_.§=!8§ = _loc13_;
               }
               else
               {
                  _loc5_.§>"#§ = _loc13_;
               }
               --_loc5_.§9!;§;
               _loc8_.§=!8§ = _loc6_.§>"#§;
               _loc6_.§>"#§ = _loc8_;
               ++_loc6_.§9!;§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§=!8§;
            }
         }
         _loc5_.§'!d§();
         _loc6_.§'!d§();
         var _loc9_:b2Vec2 = _loc5_.§58§();
         var _loc10_:b2Vec2 = _loc6_.§58§();
         var _loc11_:b2Vec2 = b2Math.§`v§(_loc2_,b2Math.§<G§(_loc3_,b2Math.§%M§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§`v§(_loc2_,b2Math.§<G§(_loc3_,b2Math.§%M§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§&e§(_loc3_);
         _loc6_.§&e§(_loc3_);
         _loc5_.§%y§();
         _loc6_.§%y§();
         return _loc6_;
      }
      
      public function §1D§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§>"#§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§=!8§;
            --param1.§9!;§;
            _loc2_.§=!8§ = this.§>"#§;
            this.§>"#§ = _loc2_;
            ++this.§9!;§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§9!;§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§58§();
         var _loc6_:b2Vec2 = _loc4_.§58§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§'K§();
         var _loc10_:Number = _loc4_.§'K§();
         _loc3_.§'!d§();
         this.§%y§();
      }
      
      public function GetMass() : Number
      {
         return this.§"X§;
      }
      
      public function § `§() : Number
      {
         return this.§4!A§;
      }
      
      public function §&K§(param1:b2MassData) : void
      {
         param1.§&q§ = this.§"X§;
         param1.§6_§ = this.§4!A§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §'!N§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§@%§() == false);
         if(this.m_world.§@%§() == true)
         {
            return;
         }
         if(this.§3r§ != b2_dynamicBody)
         {
            return;
         }
         this.§3!q§ = 0;
         this.§4!A§ = 0;
         this.§2!1§ = 0;
         this.§"X§ = param1.§&q§;
         if(this.§"X§ <= 0)
         {
            this.§"X§ = 1;
         }
         this.§3!q§ = 1 / this.§"X§;
         if(param1.§6_§ > 0 && (this.§[B§ & b2internal::]3) == 0)
         {
            this.§4!A§ = param1.§6_§ - this.§"X§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§2!1§ = 1 / this.§4!A§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§%!r§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%!<§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§%!<§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §'!d§() : void
      {
         var _loc4_:b2MassData = null;
         this.§"X§ = 0;
         this.§3!q§ = 0;
         this.§4!A§ = 0;
         this.§2!1§ = 0;
         this.m_sweep.localCenter.§+J§();
         if(this.§3r§ == b2_staticBody || this.§3r§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§5U§(0,0);
         var _loc2_:b2Fixture = this.§>"#§;
         while(_loc2_)
         {
            if(_loc2_.§`!k§ != 0)
            {
               _loc4_ = _loc2_.§&K§();
               this.§"X§ += _loc4_.§&q§;
               _loc1_.x += _loc4_.center.x * _loc4_.§&q§;
               _loc1_.y += _loc4_.center.y * _loc4_.§&q§;
               this.§4!A§ += _loc4_.§6_§;
            }
            _loc2_ = _loc2_.§=!8§;
         }
         if(this.§"X§ > 0)
         {
            this.§3!q§ = 1 / this.§"X§;
            _loc1_.x *= this.§3!q§;
            _loc1_.y *= this.§3!q§;
         }
         else
         {
            this.§"X§ = 1;
            this.§3!q§ = 1;
         }
         if(this.§4!A§ > 0 && (this.§[B§ & b2internal::]3) == 0)
         {
            this.§4!A§ -= this.§"X§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§4!A§ *= this.§]5§;
            b2Settings.b2Assert(this.§4!A§ > 0);
            this.§2!1§ = 1 / this.§4!A§;
         }
         else
         {
            this.§4!A§ = 0;
            this.§2!1§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§%!r§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%!<§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§%!<§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §2^§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[!%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5T§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0!&§(this.m_xf.R,param1);
      }
      
      public function §&8§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§%!<§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§%!<§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §0L§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§%!<§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§%!<§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §2!o§() : Number
      {
         return this.§];§;
      }
      
      public function §7Z§(param1:Number) : void
      {
         this.§];§ = param1;
      }
      
      public function §3!9§() : Number
      {
         return this.§[!7§;
      }
      
      public function §,!T§(param1:Number) : void
      {
         this.§[!7§ = param1;
      }
      
      public function §@!$§(param1:uint) : void
      {
         if(this.§3r§ == param1)
         {
            return;
         }
         this.§3r§ = param1;
         this.§'!d§();
         if(this.§3r§ == b2_staticBody)
         {
            this.§%!<§.§+J§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§76§.§+J§();
         this.§5n§ = 0;
         var _loc2_:b2ContactEdge = this.§0!?§;
         while(_loc2_)
         {
            _loc2_.§8!m§.§+q§();
            _loc2_ = _loc2_.§`!w§;
         }
      }
      
      public function § 5§() : uint
      {
         return this.§3r§;
      }
      
      public function §[V§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[B§ |= b2internal::;!@;
         }
         else
         {
            this.§[B§ &= ~b2internal::;!@;
         }
      }
      
      public function §5"#§() : Boolean
      {
         return (this.§[B§ & b2internal::;!@) == b2internal::;!@;
      }
      
      public function §]1§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[B§ |= b2internal::6T;
         }
         else
         {
            this.§[B§ &= ~b2internal::6T;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[B§ |= b2internal::5!_;
            this.§+0§ = 0;
         }
         else
         {
            this.§[B§ &= ~b2internal::5!_;
            this.§+0§ = 0;
            this.§%!<§.§+J§();
            this.m_angularVelocity = 0;
            this.§76§.§+J§();
            this.§5n§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§[B§ & b2internal::5!_) == b2internal::5!_;
      }
      
      public function §#!z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[B§ |= b2internal::]3;
         }
         else
         {
            this.§[B§ &= ~b2internal::]3;
         }
         this.§'!d§();
      }
      
      public function §,_§() : Boolean
      {
         return (this.§[B§ & b2internal::]3) == b2internal::]3;
      }
      
      public function §4!3§(param1:Boolean) : void
      {
         var _loc2_:§<P§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§3!C§())
         {
            return;
         }
         if(param1)
         {
            this.§[B§ |= b2internal::0!_;
            _loc2_ = this.m_world.§5!>§.§,>§;
            _loc3_ = this.§>"#§;
            while(_loc3_)
            {
               _loc3_.§[E§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§=!8§;
            }
         }
         else
         {
            this.§[B§ &= ~b2internal::0!_;
            _loc2_ = this.m_world.§5!>§.§,>§;
            _loc3_ = this.§>"#§;
            while(_loc3_)
            {
               _loc3_.§#i§(_loc2_);
               _loc3_ = _loc3_.§=!8§;
            }
            _loc4_ = this.§0!?§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§`!w§;
               this.m_world.§5!>§.§=_§(_loc5_.§8!m§);
            }
            this.§0!?§ = null;
         }
      }
      
      public function §3!C§() : Boolean
      {
         return (this.§[B§ & b2internal::0!_) == b2internal::0!_;
      }
      
      public function §3!j§() : Boolean
      {
         return (this.§[B§ & b2internal::6T) == b2internal::6T;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§>"#§;
      }
      
      public function §86§() : b2JointEdge
      {
         return this.§8!I§;
      }
      
      public function §`!S§() : b2ControllerEdge
      {
         return this.§'z§;
      }
      
      public function §>!3§() : b2ContactEdge
      {
         return this.§0!?§;
      }
      
      public function §?!^§() : b2Body
      {
         return this.§=!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§>g§;
      }
      
      public function §%V§(param1:*) : void
      {
         this.§>g§ = param1;
      }
      
      public function §var §() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%y§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §@!>§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§<P§ = this.m_world.§5!>§.§,>§;
         _loc4_ = this.§>"#§;
         while(_loc4_)
         {
            _loc4_.§0!H§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§=!8§;
         }
      }
      
      b2internal function §@!1§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §'!F§(param1:b2Body) : Boolean
      {
         if(this.§3r§ != b2_dynamicBody && param1.§3r§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§8!I§;
         while(_loc2_)
         {
            if(_loc2_.§<!M§ == param1)
            {
               if(_loc2_.§@"!§.§7u§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§`!w§;
         }
         return true;
      }
      
      b2internal function §5!4§(param1:Number) : void
      {
         this.m_sweep.§5!4§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§@!1§();
      }
   }
}
