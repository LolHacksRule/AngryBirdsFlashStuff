package §#V§
{
   import §&a§.b2JointEdge;
   import §,C§.b2EdgeShape;
   import §,C§.b2MassData;
   import §,C§.b2Shape;
   import §,G§.b2Contact;
   import §,G§.b2ContactEdge;
   import §0<§.b2ControllerEdge;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.§2U§;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Sweep;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#g§:b2Transform = new b2Transform();
      
      b2internal static var §6!I§:uint = 1;
      
      b2internal static var §4!-§:uint = 2;
      
      b2internal static var §<!O§:uint = 4;
      
      b2internal static var §7!y§:uint = 8;
      
      b2internal static var §[J§:uint = 16;
      
      b2internal static var §`4§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §]!p§:uint;
      
      b2internal var §"_§:int;
      
      b2internal var §"R§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%!V§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §^!L§:b2Vec2;
      
      b2internal var §%&§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §[2§:b2Body;
      
      b2internal var §@o§:b2Body;
      
      b2internal var §6!s§:b2Fixture;
      
      b2internal var §!H§:int;
      
      b2internal var §+!f§:b2ControllerEdge;
      
      b2internal var §2&§:int;
      
      b2internal var §,!K§:b2JointEdge;
      
      b2internal var §<!7§:b2ContactEdge;
      
      b2internal var § ,§:Number;
      
      b2internal var §-7§:Number;
      
      b2internal var §-!j§:Number;
      
      b2internal var §,!o§:Number;
      
      b2internal var §?!,§:Number;
      
      b2internal var §-!G§:Number;
      
      b2internal var §7!1§:Number;
      
      b2internal var §3!T§:Number;
      
      private var §,h§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§%!V§ = new b2Vec2();
         this.§^!L§ = new b2Vec2();
         super();
         this.§]!p§ = 0;
         if(param1.§6!b§)
         {
            this.§]!p§ |= b2internal::7!y;
         }
         if(param1.§2M§)
         {
            this.§]!p§ |= b2internal::[J;
         }
         if(param1.§ !U§)
         {
            this.§]!p§ |= b2internal::<!O;
         }
         if(param1.§3§)
         {
            this.§]!p§ |= b2internal::4!-;
         }
         if(param1.§2!8§)
         {
            this.§]!p§ |= b2internal::`4;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§&!K§();
         this.m_sweep.§!%§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§,!K§ = null;
         this.§+!f§ = null;
         this.§<!7§ = null;
         this.§2&§ = 0;
         this.§[2§ = null;
         this.§@o§ = null;
         this.§%!V§.SetV(param1.§9!e§);
         this.m_angularVelocity = param1.§+!o§;
         this.§-!G§ = param1.§5!L§;
         this.§7!1§ = param1.§&!G§;
         this.§^!L§.Set(0,0);
         this.§%&§ = 0;
         this.§3!T§ = 0;
         this.§"_§ = param1.type;
         if(this.§"_§ == b2_dynamicBody)
         {
            this.§ ,§ = 1;
            this.§-7§ = 1;
         }
         else
         {
            this.§ ,§ = 0;
            this.§-7§ = 0;
         }
         this.§-!j§ = 0;
         this.§,!o§ = 0;
         this.§?!,§ = param1.§=!m§;
         this.§,h§ = param1.§#+§;
         this.§6!s§ = null;
         this.§!H§ = 0;
      }
      
      private function §%!k§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§,S§().y,param2.§,S§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§4%§(_loc5_,param2.§,S§());
         _loc6_ = b2Math.§9!<§(_loc6_,param2.§4!9§());
         _loc6_ = b2Math.§4%§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§5I§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§5I§(param1.§,S§(),param2.§,S§())).Normalize();
         var _loc8_:* = b2Math.§+!1§(param1.§,S§(),param2.§4!9§()) > 0;
         param1.§<!p§(param2,_loc6_,_loc7_,_loc8_);
         param2.§5;§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §[8§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§2U§ = null;
         if(this.m_world.§+!#§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§1#§(this,this.m_xf,param1);
         if(this.§]!p§ & b2internal::`4)
         {
            _loc3_ = this.m_world.§`N§.§0!f§;
            _loc2_.§1!@§(_loc3_,this.m_xf);
         }
         _loc2_.§@o§ = this.§6!s§;
         this.§6!s§ = _loc2_;
         ++this.§!H§;
         _loc2_.m_body = this;
         if(_loc2_.§?!T§ > 0)
         {
            this.§!m§();
         }
         this.m_world.§]!p§ |= b2World.§&`§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§[8§(_loc3_);
      }
      
      public function §"l§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§2U§ = null;
         if(this.m_world.§+!#§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§6!s§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§@o§ = param1.§@o§;
               }
               else
               {
                  this.§6!s§ = param1.§@o§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§@o§;
         }
         var _loc5_:b2ContactEdge = this.§<!7§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§80§;
            _loc5_ = _loc5_.§#!R§;
            _loc7_ = _loc6_.§68§();
            _loc8_ = _loc6_.§[t§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§`N§.§,!W§(_loc6_);
            }
         }
         if(this.§]!p§ & b2internal::`4)
         {
            _loc9_ = this.m_world.§`N§.§0!f§;
            param1.§for §(_loc9_);
         }
         param1.§,!W§();
         param1.m_body = null;
         param1.§@o§ = null;
         --this.§!H§;
         this.§!m§();
      }
      
      public function §%!t§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§+!#§() == true)
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
         var _loc6_:§2U§ = this.m_world.§`N§.§0!f§;
         _loc3_ = this.§6!s§;
         while(_loc3_)
         {
            _loc3_.§^!7§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§@o§;
         }
         this.m_world.§`N§.§,K§();
      }
      
      public function §9E§(param1:b2Transform) : void
      {
         this.§%!t§(param1.position,param1.GetAngle());
      }
      
      public function §7§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §>!Y§(param1:b2Vec2) : void
      {
         this.§%!t§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §=!y§(param1:Number) : void
      {
         this.§%!t§(this.GetPosition(),param1);
      }
      
      public function §64§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §0Z§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§"_§ == b2_staticBody)
         {
            return;
         }
         this.§%!V§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%!V§;
      }
      
      public function §^j§(param1:Number) : void
      {
         if(this.§"_§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §8!G§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §9Q§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§'!_§();
         _loc1_.§ !U§ = (this.§]!p§ & b2internal::<!O) == b2internal::<!O;
         _loc1_.angle = this.GetAngle();
         _loc1_.§&!G§ = this.§7!1§;
         _loc1_.§+!o§ = this.m_angularVelocity;
         _loc1_.§2M§ = (this.§]!p§ & b2internal::[J) == b2internal::[J;
         _loc1_.§6!b§ = (this.§]!p§ & b2internal::7!y) == b2internal::7!y;
         _loc1_.§3§ = (this.§]!p§ & b2internal::4!-) == b2internal::4!-;
         _loc1_.§5!L§ = this.§-!G§;
         _loc1_.§9!e§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§#+§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §,^§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"_§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^!L§.x += param1.x;
         this.§^!L§.y += param1.y;
         this.§%&§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §6!j§(param1:Number) : void
      {
         if(this.§"_§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%&§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"_§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%!V§.x += this.§-7§ * param1.x;
         this.§%!V§.y += this.§-7§ * param1.y;
         this.m_angularVelocity += this.§,!o§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §@!B§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§8!G§();
         var _loc4_:b2Vec2 = this.§64§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§!!$§(this.§9Q§());
         var _loc8_:b2Fixture = _loc5_.§6!s§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§@o§;
               if(_loc7_)
               {
                  _loc7_.§@o§ = _loc13_;
               }
               else
               {
                  _loc5_.§6!s§ = _loc13_;
               }
               --_loc5_.§!H§;
               _loc8_.§@o§ = _loc6_.§6!s§;
               _loc6_.§6!s§ = _loc8_;
               ++_loc6_.§!H§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§@o§;
            }
         }
         _loc5_.§!m§();
         _loc6_.§!m§();
         var _loc9_:b2Vec2 = _loc5_.§64§();
         var _loc10_:b2Vec2 = _loc6_.§64§();
         var _loc11_:b2Vec2 = b2Math.§5I§(_loc2_,b2Math.§8!Z§(_loc3_,b2Math.§9!<§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§5I§(_loc2_,b2Math.§8!Z§(_loc3_,b2Math.§9!<§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§^j§(_loc3_);
         _loc6_.§^j§(_loc3_);
         _loc5_.§9%§();
         _loc6_.§9%§();
         return _loc6_;
      }
      
      public function § _§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§6!s§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§@o§;
            --param1.§!H§;
            _loc2_.§@o§ = this.§6!s§;
            this.§6!s§ = _loc2_;
            ++this.§!H§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§!H§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§64§();
         var _loc6_:b2Vec2 = _loc4_.§64§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§8!G§();
         var _loc10_:Number = _loc4_.§8!G§();
         _loc3_.§!m§();
         this.§9%§();
      }
      
      public function GetMass() : Number
      {
         return this.§ ,§;
      }
      
      public function §1U§() : Number
      {
         return this.§-!j§;
      }
      
      public function §-!`§(param1:b2MassData) : void
      {
         param1.§]J§ = this.§ ,§;
         param1.§93§ = this.§-!j§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §+!?§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§+!#§() == false);
         if(this.m_world.§+!#§() == true)
         {
            return;
         }
         if(this.§"_§ != b2_dynamicBody)
         {
            return;
         }
         this.§-7§ = 0;
         this.§-!j§ = 0;
         this.§,!o§ = 0;
         this.§ ,§ = param1.§]J§;
         if(this.§ ,§ <= 0)
         {
            this.§ ,§ = 1;
         }
         this.§-7§ = 1 / this.§ ,§;
         if(param1.§93§ > 0 && (this.§]!p§ & b2internal::[J) == 0)
         {
            this.§-!j§ = param1.§93§ - this.§ ,§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§,!o§ = 1 / this.§-!j§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§#!<§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%!V§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§%!V§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §!m§() : void
      {
         var _loc4_:b2MassData = null;
         this.§ ,§ = 0;
         this.§-7§ = 0;
         this.§-!j§ = 0;
         this.§,!o§ = 0;
         this.m_sweep.localCenter.§&!K§();
         if(this.§"_§ == b2_staticBody || this.§"_§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§9!h§(0,0);
         var _loc2_:b2Fixture = this.§6!s§;
         while(_loc2_)
         {
            if(_loc2_.§?!T§ != 0)
            {
               _loc4_ = _loc2_.§-!`§();
               this.§ ,§ += _loc4_.§]J§;
               _loc1_.x += _loc4_.center.x * _loc4_.§]J§;
               _loc1_.y += _loc4_.center.y * _loc4_.§]J§;
               this.§-!j§ += _loc4_.§93§;
            }
            _loc2_ = _loc2_.§@o§;
         }
         if(this.§ ,§ > 0)
         {
            this.§-7§ = 1 / this.§ ,§;
            _loc1_.x *= this.§-7§;
            _loc1_.y *= this.§-7§;
         }
         else
         {
            this.§ ,§ = 1;
            this.§-7§ = 1;
         }
         if(this.§-!j§ > 0 && (this.§]!p§ & b2internal::[J) == 0)
         {
            this.§-!j§ -= this.§ ,§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§-!j§ *= this.§?!,§;
            b2Settings.b2Assert(this.§-!j§ > 0);
            this.§,!o§ = 1 / this.§-!j§;
         }
         else
         {
            this.§-!j§ = 0;
            this.§,!o§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§#!<§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%!V§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§%!V§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §4!1§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&!Q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6L§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[Z§(this.m_xf.R,param1);
      }
      
      public function §%!n§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§%!V§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§%!V§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §@A§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§%!V§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§%!V§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §7!=§() : Number
      {
         return this.§-!G§;
      }
      
      public function §;!s§(param1:Number) : void
      {
         this.§-!G§ = param1;
      }
      
      public function §5'§() : Number
      {
         return this.§7!1§;
      }
      
      public function §]!>§(param1:Number) : void
      {
         this.§7!1§ = param1;
      }
      
      public function §2Q§(param1:uint) : void
      {
         if(this.§"_§ == param1)
         {
            return;
         }
         this.§"_§ = param1;
         this.§!m§();
         if(this.§"_§ == b2_staticBody)
         {
            this.§%!V§.§&!K§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§^!L§.§&!K§();
         this.§%&§ = 0;
         var _loc2_:b2ContactEdge = this.§<!7§;
         while(_loc2_)
         {
            _loc2_.§80§.§9!E§();
            _loc2_ = _loc2_.§#!R§;
         }
      }
      
      public function §'!_§() : uint
      {
         return this.§"_§;
      }
      
      public function §'?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!p§ |= b2internal::7!y;
         }
         else
         {
            this.§]!p§ &= ~b2internal::7!y;
         }
      }
      
      public function §'a§() : Boolean
      {
         return (this.§]!p§ & b2internal::7!y) == b2internal::7!y;
      }
      
      public function §4!e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!p§ |= b2internal::<!O;
         }
         else
         {
            this.§]!p§ &= ~b2internal::<!O;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!p§ |= b2internal::4!-;
            this.§3!T§ = 0;
         }
         else
         {
            this.§]!p§ &= ~b2internal::4!-;
            this.§3!T§ = 0;
            this.§%!V§.§&!K§();
            this.m_angularVelocity = 0;
            this.§^!L§.§&!K§();
            this.§%&§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§]!p§ & b2internal::4!-) == b2internal::4!-;
      }
      
      public function §3!?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!p§ |= b2internal::[J;
         }
         else
         {
            this.§]!p§ &= ~b2internal::[J;
         }
         this.§!m§();
      }
      
      public function §@1§() : Boolean
      {
         return (this.§]!p§ & b2internal::[J) == b2internal::[J;
      }
      
      public function §-!8§(param1:Boolean) : void
      {
         var _loc2_:§2U§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§89§())
         {
            return;
         }
         if(param1)
         {
            this.§]!p§ |= b2internal::`4;
            _loc2_ = this.m_world.§`N§.§0!f§;
            _loc3_ = this.§6!s§;
            while(_loc3_)
            {
               _loc3_.§1!@§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§@o§;
            }
         }
         else
         {
            this.§]!p§ &= ~b2internal::`4;
            _loc2_ = this.m_world.§`N§.§0!f§;
            _loc3_ = this.§6!s§;
            while(_loc3_)
            {
               _loc3_.§for §(_loc2_);
               _loc3_ = _loc3_.§@o§;
            }
            _loc4_ = this.§<!7§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§#!R§;
               this.m_world.§`N§.§,!W§(_loc5_.§80§);
            }
            this.§<!7§ = null;
         }
      }
      
      public function §89§() : Boolean
      {
         return (this.§]!p§ & b2internal::`4) == b2internal::`4;
      }
      
      public function §&!C§() : Boolean
      {
         return (this.§]!p§ & b2internal::<!O) == b2internal::<!O;
      }
      
      public function §,!H§() : b2Fixture
      {
         return this.§6!s§;
      }
      
      public function §%[§() : b2JointEdge
      {
         return this.§,!K§;
      }
      
      public function §5j§() : b2ControllerEdge
      {
         return this.§+!f§;
      }
      
      public function § !S§() : b2ContactEdge
      {
         return this.§<!7§;
      }
      
      public function §>H§() : b2Body
      {
         return this.§@o§;
      }
      
      public function GetUserData() : *
      {
         return this.§,h§;
      }
      
      public function §2[§(param1:*) : void
      {
         this.§,h§ = param1;
      }
      
      public function §@!"§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §9%§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#g§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§2U§ = this.m_world.§`N§.§0!f§;
         _loc4_ = this.§6!s§;
         while(_loc4_)
         {
            _loc4_.§^!7§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§@o§;
         }
      }
      
      b2internal function §#3§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §'!3§(param1:b2Body) : Boolean
      {
         if(this.§"_§ != b2_dynamicBody && param1.§"_§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§,!K§;
         while(_loc2_)
         {
            if(_loc2_.§9"§ == param1)
            {
               if(_loc2_.§!!d§.§ "§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§#!R§;
         }
         return true;
      }
      
      b2internal function §#B§(param1:Number) : void
      {
         this.m_sweep.§#B§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§#3§();
      }
   }
}
