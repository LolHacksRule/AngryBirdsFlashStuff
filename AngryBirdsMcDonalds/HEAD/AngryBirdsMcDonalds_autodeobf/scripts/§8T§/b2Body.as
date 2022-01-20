package §8T§
{
   import §!!M§.b2JointEdge;
   import §+S§.b2Mat22;
   import §+S§.b2Math;
   import §+S§.b2Sweep;
   import §+S§.b2Transform;
   import §+S§.b2Vec2;
   import §,!V§.§"!>§;
   import §2G§.b2ControllerEdge;
   import §6!g§.b2Contact;
   import §6!g§.b2ContactEdge;
   import §<!D§.b2EdgeShape;
   import §<!D§.b2MassData;
   import §<!D§.b2Shape;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §3!p§:b2Transform = new b2Transform();
      
      b2internal static var §"1§:uint = 1;
      
      b2internal static var §6!D§:uint = 2;
      
      b2internal static var §<!U§:uint = 4;
      
      b2internal static var §5!d§:uint = 8;
      
      b2internal static var §@!#§:uint = 16;
      
      b2internal static var §2!f§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §3!V§:uint;
      
      b2internal var §@k§:int;
      
      b2internal var §'b§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §switch§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §5!I§:b2Vec2;
      
      b2internal var §`7§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §7%§:b2Body;
      
      b2internal var §[h§:b2Body;
      
      b2internal var §&!N§:b2Fixture;
      
      b2internal var §@!O§:int;
      
      b2internal var §6%§:b2ControllerEdge;
      
      b2internal var §!! §:int;
      
      b2internal var §5Y§:b2JointEdge;
      
      b2internal var §=!c§:b2ContactEdge;
      
      b2internal var §2D§:Number;
      
      b2internal var §;!m§:Number;
      
      b2internal var § I§:Number;
      
      b2internal var §]q§:Number;
      
      b2internal var §[a§:Number;
      
      b2internal var §3!B§:Number;
      
      b2internal var §+!-§:Number;
      
      b2internal var § r§:Number;
      
      private var §0!R§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§switch§ = new b2Vec2();
         this.§5!I§ = new b2Vec2();
         super();
         this.§3!V§ = 0;
         if(param1.§&!1§)
         {
            this.§3!V§ |= b2internal::5!d;
         }
         if(param1.§^'§)
         {
            this.§3!V§ |= b2internal::@!#;
         }
         if(param1.§!!_§)
         {
            this.§3!V§ |= b2internal::<!U;
         }
         if(param1.§`d§)
         {
            this.§3!V§ |= b2internal::6!D;
         }
         if(param1.§!a§)
         {
            this.§3!V§ |= b2internal::2!f;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§%^§();
         this.m_sweep.§?9§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§5Y§ = null;
         this.§6%§ = null;
         this.§=!c§ = null;
         this.§!! § = 0;
         this.§7%§ = null;
         this.§[h§ = null;
         this.§switch§.SetV(param1.§0!+§);
         this.m_angularVelocity = param1.§`!#§;
         this.§3!B§ = param1.§&!l§;
         this.§+!-§ = param1.§^!E§;
         this.§5!I§.Set(0,0);
         this.§`7§ = 0;
         this.§ r§ = 0;
         this.§@k§ = param1.type;
         if(this.§@k§ == b2_dynamicBody)
         {
            this.§2D§ = 1;
            this.§;!m§ = 1;
         }
         else
         {
            this.§2D§ = 0;
            this.§;!m§ = 0;
         }
         this.§ I§ = 0;
         this.§]q§ = 0;
         this.§[a§ = param1.§3!+§;
         this.§0!R§ = param1.§-&§;
         this.§&!N§ = null;
         this.§@!O§ = 0;
      }
      
      private function §^!+§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§=J§().y,param2.§=J§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§<!^§(_loc5_,param2.§=J§());
         _loc6_ = b2Math.§1!,§(_loc6_,param2.§&_§());
         _loc6_ = b2Math.§<!^§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§3=§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§3=§(param1.§=J§(),param2.§=J§())).Normalize();
         var _loc8_:* = b2Math.§7!7§(param1.§=J§(),param2.§&_§()) > 0;
         param1.§for§(param2,_loc6_,_loc7_,_loc8_);
         param2.§-T§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §4p§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§"!>§ = null;
         if(this.m_world.§-w§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§[u§(this,this.m_xf,param1);
         if(this.§3!V§ & b2internal::2!f)
         {
            _loc3_ = this.m_world.§3!P§.§>@§;
            _loc2_.§,!F§(_loc3_,this.m_xf);
         }
         _loc2_.§[h§ = this.§&!N§;
         this.§&!N§ = _loc2_;
         ++this.§@!O§;
         _loc2_.m_body = this;
         if(_loc2_.§5F§ > 0)
         {
            this.§-!<§();
         }
         this.m_world.§3!V§ |= b2World.§#!+§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§4p§(_loc3_);
      }
      
      public function §extends§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§"!>§ = null;
         if(this.m_world.§-w§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&!N§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§[h§ = param1.§[h§;
               }
               else
               {
                  this.§&!N§ = param1.§[h§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§[h§;
         }
         var _loc5_:b2ContactEdge = this.§=!c§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§]>§;
            _loc5_ = _loc5_.§=h§;
            _loc7_ = _loc6_.§8!O§();
            _loc8_ = _loc6_.§>$§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§3!P§.§60§(_loc6_);
            }
         }
         if(this.§3!V§ & b2internal::2!f)
         {
            _loc9_ = this.m_world.§3!P§.§>@§;
            param1.§9!8§(_loc9_);
         }
         param1.§60§();
         param1.m_body = null;
         param1.§[h§ = null;
         --this.§@!O§;
         this.§-!<§();
      }
      
      public function §?!Y§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§-w§() == true)
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
         var _loc6_:§"!>§ = this.m_world.§3!P§.§>@§;
         _loc3_ = this.§&!N§;
         while(_loc3_)
         {
            _loc3_.§12§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§[h§;
         }
         this.m_world.§3!P§.§'!B§();
      }
      
      public function §,!`§(param1:b2Transform) : void
      {
         this.§?!Y§(param1.position,param1.GetAngle());
      }
      
      public function §+!g§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §0!]§(param1:b2Vec2) : void
      {
         this.§?!Y§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function § !;§(param1:Number) : void
      {
         this.§?!Y§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §;!U§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§@k§ == b2_staticBody)
         {
            return;
         }
         this.§switch§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§switch§;
      }
      
      public function §->§(param1:Number) : void
      {
         if(this.§@k§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §?`§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §8s§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§1l§();
         _loc1_.§!!_§ = (this.§3!V§ & b2internal::<!U) == b2internal::<!U;
         _loc1_.angle = this.GetAngle();
         _loc1_.§^!E§ = this.§+!-§;
         _loc1_.§`!#§ = this.m_angularVelocity;
         _loc1_.§^'§ = (this.§3!V§ & b2internal::@!#) == b2internal::@!#;
         _loc1_.§&!1§ = (this.§3!V§ & b2internal::5!d) == b2internal::5!d;
         _loc1_.§`d§ = (this.§3!V§ & b2internal::6!D) == b2internal::6!D;
         _loc1_.§&!l§ = this.§3!B§;
         _loc1_.§0!+§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§-&§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §#0§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@k§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5!I§.x += param1.x;
         this.§5!I§.y += param1.y;
         this.§`7§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §!![§(param1:Number) : void
      {
         if(this.§@k§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§`7§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@k§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§switch§.x += this.§;!m§ * param1.x;
         this.§switch§.y += this.§;!m§ * param1.y;
         this.m_angularVelocity += this.§]q§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §`z§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§?`§();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§&5§(this.§8s§());
         var _loc8_:b2Fixture = _loc5_.§&!N§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§[h§;
               if(_loc7_)
               {
                  _loc7_.§[h§ = _loc13_;
               }
               else
               {
                  _loc5_.§&!N§ = _loc13_;
               }
               --_loc5_.§@!O§;
               _loc8_.§[h§ = _loc6_.§&!N§;
               _loc6_.§&!N§ = _loc8_;
               ++_loc6_.§@!O§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§[h§;
            }
         }
         _loc5_.§-!<§();
         _loc6_.§-!<§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§3=§(_loc2_,b2Math.§,!7§(_loc3_,b2Math.§1!,§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§3=§(_loc2_,b2Math.§,!7§(_loc3_,b2Math.§1!,§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§->§(_loc3_);
         _loc6_.§->§(_loc3_);
         _loc5_.§`!<§();
         _loc6_.§`!<§();
         return _loc6_;
      }
      
      public function §^!O§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&!N§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§[h§;
            --param1.§@!O§;
            _loc2_.§[h§ = this.§&!N§;
            this.§&!N§ = _loc2_;
            ++this.§@!O§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§@!O§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§?`§();
         var _loc10_:Number = _loc4_.§?`§();
         _loc3_.§-!<§();
         this.§`!<§();
      }
      
      public function GetMass() : Number
      {
         return this.§2D§;
      }
      
      public function §!u§() : Number
      {
         return this.§ I§;
      }
      
      public function §9!L§(param1:b2MassData) : void
      {
         param1.§>P§ = this.§2D§;
         param1.§;#§ = this.§ I§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §"!Y§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§-w§() == false);
         if(this.m_world.§-w§() == true)
         {
            return;
         }
         if(this.§@k§ != b2_dynamicBody)
         {
            return;
         }
         this.§;!m§ = 0;
         this.§ I§ = 0;
         this.§]q§ = 0;
         this.§2D§ = param1.§>P§;
         if(this.§2D§ <= 0)
         {
            this.§2D§ = 1;
         }
         this.§;!m§ = 1 / this.§2D§;
         if(param1.§;#§ > 0 && (this.§3!V§ & b2internal::@!#) == 0)
         {
            this.§ I§ = param1.§;#§ - this.§2D§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§]q§ = 1 / this.§ I§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§<j§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§switch§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§switch§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §-!<§() : void
      {
         var _loc4_:b2MassData = null;
         this.§2D§ = 0;
         this.§;!m§ = 0;
         this.§ I§ = 0;
         this.§]q§ = 0;
         this.m_sweep.localCenter.§%^§();
         if(this.§@k§ == b2_staticBody || this.§@k§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§-!P§(0,0);
         var _loc2_:b2Fixture = this.§&!N§;
         while(_loc2_)
         {
            if(_loc2_.§5F§ != 0)
            {
               _loc4_ = _loc2_.§9!L§();
               this.§2D§ += _loc4_.§>P§;
               _loc1_.x += _loc4_.center.x * _loc4_.§>P§;
               _loc1_.y += _loc4_.center.y * _loc4_.§>P§;
               this.§ I§ += _loc4_.§;#§;
            }
            _loc2_ = _loc2_.§[h§;
         }
         if(this.§2D§ > 0)
         {
            this.§;!m§ = 1 / this.§2D§;
            _loc1_.x *= this.§;!m§;
            _loc1_.y *= this.§;!m§;
         }
         else
         {
            this.§2D§ = 1;
            this.§;!m§ = 1;
         }
         if(this.§ I§ > 0 && (this.§3!V§ & b2internal::@!#) == 0)
         {
            this.§ I§ -= this.§2D§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§ I§ *= this.§[a§;
            b2Settings.b2Assert(this.§ I§ > 0);
            this.§]q§ = 1 / this.§ I§;
         }
         else
         {
            this.§ I§ = 0;
            this.§]q§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§<j§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§switch§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§switch§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §]n§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§>H§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6!k§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?r§(this.m_xf.R,param1);
      }
      
      public function §?v§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§switch§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§switch§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §%X§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§switch§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§switch§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §]!1§() : Number
      {
         return this.§3!B§;
      }
      
      public function §4T§(param1:Number) : void
      {
         this.§3!B§ = param1;
      }
      
      public function § !,§() : Number
      {
         return this.§+!-§;
      }
      
      public function §"!r§(param1:Number) : void
      {
         this.§+!-§ = param1;
      }
      
      public function §#!=§(param1:uint) : void
      {
         if(this.§@k§ == param1)
         {
            return;
         }
         this.§@k§ = param1;
         this.§-!<§();
         if(this.§@k§ == b2_staticBody)
         {
            this.§switch§.§%^§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§5!I§.§%^§();
         this.§`7§ = 0;
         var _loc2_:b2ContactEdge = this.§=!c§;
         while(_loc2_)
         {
            _loc2_.§]>§.§6&§();
            _loc2_ = _loc2_.§=h§;
         }
      }
      
      public function §1l§() : uint
      {
         return this.§@k§;
      }
      
      public function §+!8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!V§ |= b2internal::5!d;
         }
         else
         {
            this.§3!V§ &= ~b2internal::5!d;
         }
      }
      
      public function §&i§() : Boolean
      {
         return (this.§3!V§ & b2internal::5!d) == b2internal::5!d;
      }
      
      public function §3w§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!V§ |= b2internal::<!U;
         }
         else
         {
            this.§3!V§ &= ~b2internal::<!U;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!V§ |= b2internal::6!D;
            this.§ r§ = 0;
         }
         else
         {
            this.§3!V§ &= ~b2internal::6!D;
            this.§ r§ = 0;
            this.§switch§.§%^§();
            this.m_angularVelocity = 0;
            this.§5!I§.§%^§();
            this.§`7§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§3!V§ & b2internal::6!D) == b2internal::6!D;
      }
      
      public function §;!'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!V§ |= b2internal::@!#;
         }
         else
         {
            this.§3!V§ &= ~b2internal::@!#;
         }
         this.§-!<§();
      }
      
      public function §5!A§() : Boolean
      {
         return (this.§3!V§ & b2internal::@!#) == b2internal::@!#;
      }
      
      public function §9=§(param1:Boolean) : void
      {
         var _loc2_:§"!>§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§3!V§ |= b2internal::2!f;
            _loc2_ = this.m_world.§3!P§.§>@§;
            _loc3_ = this.§&!N§;
            while(_loc3_)
            {
               _loc3_.§,!F§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§[h§;
            }
         }
         else
         {
            this.§3!V§ &= ~b2internal::2!f;
            _loc2_ = this.m_world.§3!P§.§>@§;
            _loc3_ = this.§&!N§;
            while(_loc3_)
            {
               _loc3_.§9!8§(_loc2_);
               _loc3_ = _loc3_.§[h§;
            }
            _loc4_ = this.§=!c§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§=h§;
               this.m_world.§3!P§.§60§(_loc5_.§]>§);
            }
            this.§=!c§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§3!V§ & b2internal::2!f) == b2internal::2!f;
      }
      
      public function §3p§() : Boolean
      {
         return (this.§3!V§ & b2internal::<!U) == b2internal::<!U;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§&!N§;
      }
      
      public function §0!,§() : b2JointEdge
      {
         return this.§5Y§;
      }
      
      public function §6y§() : b2ControllerEdge
      {
         return this.§6%§;
      }
      
      public function § v§() : b2ContactEdge
      {
         return this.§=!c§;
      }
      
      public function §%!J§() : b2Body
      {
         return this.§[h§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!R§;
      }
      
      public function §7K§(param1:*) : void
      {
         this.§0!R§ = param1;
      }
      
      public function §#R§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §`!<§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §3!p§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§"!>§ = this.m_world.§3!P§.§>@§;
         _loc4_ = this.§&!N§;
         while(_loc4_)
         {
            _loc4_.§12§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§[h§;
         }
      }
      
      b2internal function §40§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §6k§(param1:b2Body) : Boolean
      {
         if(this.§@k§ != b2_dynamicBody && param1.§@k§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§5Y§;
         while(_loc2_)
         {
            if(_loc2_.§#B§ == param1)
            {
               if(_loc2_.§"!k§.§?!m§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§=h§;
         }
         return true;
      }
      
      b2internal function §,b§(param1:Number) : void
      {
         this.m_sweep.§,b§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§40§();
      }
   }
}
