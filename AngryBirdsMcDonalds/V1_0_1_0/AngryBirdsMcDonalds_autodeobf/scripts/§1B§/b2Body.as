package §1B§
{
   import §!R§.b2Mat22;
   import §!R§.b2Math;
   import §!R§.b2Sweep;
   import §!R§.b2Transform;
   import §!R§.b2Vec2;
   import §%9§.b2ControllerEdge;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   import §;N§.b2JointEdge;
   import §>!'§.b2Contact;
   import §>!'§.b2ContactEdge;
   import §]7§.§#!0§;
   import §]q§.b2EdgeShape;
   import §]q§.b2MassData;
   import §]q§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §[!B§:b2Transform = new b2Transform();
      
      b2internal static var §^!b§:uint = 1;
      
      b2internal static var §?!I§:uint = 2;
      
      b2internal static var §&!"§:uint = 4;
      
      b2internal static var §9!m§:uint = 8;
      
      b2internal static var §'!R§:uint = 16;
      
      b2internal static var §[!'§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §%!%§:uint;
      
      b2internal var §+C§:int;
      
      b2internal var §`!!§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §5!m§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §4F§:b2Vec2;
      
      b2internal var §[!U§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §]!K§:b2Body;
      
      b2internal var §>y§:b2Body;
      
      b2internal var §>!U§:b2Fixture;
      
      b2internal var §+!D§:int;
      
      b2internal var §1p§:b2ControllerEdge;
      
      b2internal var §`2§:int;
      
      b2internal var §break§:b2JointEdge;
      
      b2internal var §<!@§:b2ContactEdge;
      
      b2internal var §+!C§:Number;
      
      b2internal var §#@§:Number;
      
      b2internal var §5Z§:Number;
      
      b2internal var §<3§:Number;
      
      b2internal var §9!V§:Number;
      
      b2internal var §%!I§:Number;
      
      b2internal var §7w§:Number;
      
      b2internal var §?!!§:Number;
      
      private var §89§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§5!m§ = new b2Vec2();
         this.§4F§ = new b2Vec2();
         super();
         this.§%!%§ = 0;
         if(param1.§<!2§)
         {
            this.§%!%§ |= b2internal::9!m;
         }
         if(param1.§1x§)
         {
            this.§%!%§ |= b2internal::'!R;
         }
         if(param1.§+!Z§)
         {
            this.§%!%§ |= b2internal::&!";
         }
         if(param1.§[!N§)
         {
            this.§%!%§ |= b2internal::?!I;
         }
         if(param1.§%Q§)
         {
            this.§%!%§ |= b2internal::[!';
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§"9§();
         this.m_sweep.§3!2§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§break§ = null;
         this.§1p§ = null;
         this.§<!@§ = null;
         this.§`2§ = 0;
         this.§]!K§ = null;
         this.§>y§ = null;
         this.§5!m§.SetV(param1.§6![§);
         this.m_angularVelocity = param1.§0!4§;
         this.§%!I§ = param1.§7!$§;
         this.§7w§ = param1.§!!5§;
         this.§4F§.Set(0,0);
         this.§[!U§ = 0;
         this.§?!!§ = 0;
         this.§+C§ = param1.type;
         if(this.§+C§ == b2_dynamicBody)
         {
            this.§+!C§ = 1;
            this.§#@§ = 1;
         }
         else
         {
            this.§+!C§ = 0;
            this.§#@§ = 0;
         }
         this.§5Z§ = 0;
         this.§<3§ = 0;
         this.§9!V§ = param1.§?!4§;
         this.§89§ = param1.§0I§;
         this.§>!U§ = null;
         this.§+!D§ = 0;
      }
      
      private function §+c§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§0$§().y,param2.§0$§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§5c§(_loc5_,param2.§0$§());
         _loc6_ = b2Math.§>+§(_loc6_,param2.§!!j§());
         _loc6_ = b2Math.§5c§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§ 7§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§ 7§(param1.§0$§(),param2.§0$§())).Normalize();
         var _loc8_:* = b2Math.§[U§(param1.§0$§(),param2.§!!j§()) > 0;
         param1.§?%§(param2,_loc6_,_loc7_,_loc8_);
         param2.§9&§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §1L§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§#!0§ = null;
         if(this.m_world.§#!E§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§ %§(this,this.m_xf,param1);
         if(this.§%!%§ & b2internal::[!')
         {
            _loc3_ = this.m_world.§`C§.§-!4§;
            _loc2_.§9u§(_loc3_,this.m_xf);
         }
         _loc2_.§>y§ = this.§>!U§;
         this.§>!U§ = _loc2_;
         ++this.§+!D§;
         _loc2_.m_body = this;
         if(_loc2_.§"!-§ > 0)
         {
            this.§<g§();
         }
         this.m_world.§%!%§ |= b2World.§@K§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§1L§(_loc3_);
      }
      
      public function §"?§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§#!0§ = null;
         if(this.m_world.§#!E§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§>!U§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§>y§ = param1.§>y§;
               }
               else
               {
                  this.§>!U§ = param1.§>y§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§>y§;
         }
         var _loc5_:b2ContactEdge = this.§<!@§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§"!3§;
            _loc5_ = _loc5_.§6W§;
            _loc7_ = _loc6_.§>C§();
            _loc8_ = _loc6_.§3y§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§`C§.§%_§(_loc6_);
            }
         }
         if(this.§%!%§ & b2internal::[!')
         {
            _loc9_ = this.m_world.§`C§.§-!4§;
            param1.§"!"§(_loc9_);
         }
         param1.§%_§();
         param1.m_body = null;
         param1.§>y§ = null;
         --this.§+!D§;
         this.§<g§();
      }
      
      public function §7!l§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§#!E§() == true)
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
         var _loc6_:§#!0§ = this.m_world.§`C§.§-!4§;
         _loc3_ = this.§>!U§;
         while(_loc3_)
         {
            _loc3_.§+r§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§>y§;
         }
         this.m_world.§`C§.§?o§();
      }
      
      public function §0&§(param1:b2Transform) : void
      {
         this.§7!l§(param1.position,param1.GetAngle());
      }
      
      public function §&0§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §<!1§(param1:b2Vec2) : void
      {
         this.§7!l§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function § ! §(param1:Number) : void
      {
         this.§7!l§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §#]§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§+C§ == b2_staticBody)
         {
            return;
         }
         this.§5!m§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§5!m§;
      }
      
      public function §<!9§(param1:Number) : void
      {
         if(this.§+C§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §`!l§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function § use§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§#+§();
         _loc1_.§+!Z§ = (this.§%!%§ & b2internal::&!") == b2internal::&!";
         _loc1_.angle = this.GetAngle();
         _loc1_.§!!5§ = this.§7w§;
         _loc1_.§0!4§ = this.m_angularVelocity;
         _loc1_.§1x§ = (this.§%!%§ & b2internal::'!R) == b2internal::'!R;
         _loc1_.§<!2§ = (this.§%!%§ & b2internal::9!m) == b2internal::9!m;
         _loc1_.§[!N§ = (this.§%!%§ & b2internal::?!I) == b2internal::?!I;
         _loc1_.§7!$§ = this.§%!I§;
         _loc1_.§6![§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§0I§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §<!=§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+C§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4F§.x += param1.x;
         this.§4F§.y += param1.y;
         this.§[!U§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §%N§(param1:Number) : void
      {
         if(this.§+C§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§[!U§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+C§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5!m§.x += this.§#@§ * param1.x;
         this.§5!m§.y += this.§#@§ * param1.y;
         this.m_angularVelocity += this.§<3§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §<!j§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§`!l§();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§5U§(this.§ use§());
         var _loc8_:b2Fixture = _loc5_.§>!U§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§>y§;
               if(_loc7_)
               {
                  _loc7_.§>y§ = _loc13_;
               }
               else
               {
                  _loc5_.§>!U§ = _loc13_;
               }
               --_loc5_.§+!D§;
               _loc8_.§>y§ = _loc6_.§>!U§;
               _loc6_.§>!U§ = _loc8_;
               ++_loc6_.§+!D§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>y§;
            }
         }
         _loc5_.§<g§();
         _loc6_.§<g§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§ 7§(_loc2_,b2Math.§&!-§(_loc3_,b2Math.§>+§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§ 7§(_loc2_,b2Math.§&!-§(_loc3_,b2Math.§>+§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§<!9§(_loc3_);
         _loc6_.§<!9§(_loc3_);
         _loc5_.§5<§();
         _loc6_.§5<§();
         return _loc6_;
      }
      
      public function §8!8§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§>!U§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§>y§;
            --param1.§+!D§;
            _loc2_.§>y§ = this.§>!U§;
            this.§>!U§ = _loc2_;
            ++this.§+!D§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§+!D§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§`!l§();
         var _loc10_:Number = _loc4_.§`!l§();
         _loc3_.§<g§();
         this.§5<§();
      }
      
      public function GetMass() : Number
      {
         return this.§+!C§;
      }
      
      public function §!![§() : Number
      {
         return this.§5Z§;
      }
      
      public function §2I§(param1:b2MassData) : void
      {
         param1.§0,§ = this.§+!C§;
         param1.§4!8§ = this.§5Z§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §!!b§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§#!E§() == false);
         if(this.m_world.§#!E§() == true)
         {
            return;
         }
         if(this.§+C§ != b2_dynamicBody)
         {
            return;
         }
         this.§#@§ = 0;
         this.§5Z§ = 0;
         this.§<3§ = 0;
         this.§+!C§ = param1.§0,§;
         if(this.§+!C§ <= 0)
         {
            this.§+!C§ = 1;
         }
         this.§#@§ = 1 / this.§+!C§;
         if(param1.§4!8§ > 0 && (this.§%!%§ & b2internal::'!R) == 0)
         {
            this.§5Z§ = param1.§4!8§ - this.§+!C§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§<3§ = 1 / this.§5Z§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§ case§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§5!m§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§5!m§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §<g§() : void
      {
         var _loc4_:b2MassData = null;
         this.§+!C§ = 0;
         this.§#@§ = 0;
         this.§5Z§ = 0;
         this.§<3§ = 0;
         this.m_sweep.localCenter.§"9§();
         if(this.§+C§ == b2_staticBody || this.§+C§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§,`§(0,0);
         var _loc2_:b2Fixture = this.§>!U§;
         while(_loc2_)
         {
            if(_loc2_.§"!-§ != 0)
            {
               _loc4_ = _loc2_.§2I§();
               this.§+!C§ += _loc4_.§0,§;
               _loc1_.x += _loc4_.center.x * _loc4_.§0,§;
               _loc1_.y += _loc4_.center.y * _loc4_.§0,§;
               this.§5Z§ += _loc4_.§4!8§;
            }
            _loc2_ = _loc2_.§>y§;
         }
         if(this.§+!C§ > 0)
         {
            this.§#@§ = 1 / this.§+!C§;
            _loc1_.x *= this.§#@§;
            _loc1_.y *= this.§#@§;
         }
         else
         {
            this.§+!C§ = 1;
            this.§#@§ = 1;
         }
         if(this.§5Z§ > 0 && (this.§%!%§ & b2internal::'!R) == 0)
         {
            this.§5Z§ -= this.§+!C§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§5Z§ *= this.§9!V§;
            b2Settings.b2Assert(this.§5Z§ > 0);
            this.§<3§ = 1 / this.§5Z§;
         }
         else
         {
            this.§5Z§ = 0;
            this.§<3§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§ case§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§5!m§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§5!m§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §'!%§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"]§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§1!-§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,C§(this.m_xf.R,param1);
      }
      
      public function §^!L§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§5!m§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§5!m§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §+P§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§5!m§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§5!m§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function § "§() : Number
      {
         return this.§%!I§;
      }
      
      public function §+3§(param1:Number) : void
      {
         this.§%!I§ = param1;
      }
      
      public function §;!Y§() : Number
      {
         return this.§7w§;
      }
      
      public function §7!G§(param1:Number) : void
      {
         this.§7w§ = param1;
      }
      
      public function § w§(param1:uint) : void
      {
         if(this.§+C§ == param1)
         {
            return;
         }
         this.§+C§ = param1;
         this.§<g§();
         if(this.§+C§ == b2_staticBody)
         {
            this.§5!m§.§"9§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§4F§.§"9§();
         this.§[!U§ = 0;
         var _loc2_:b2ContactEdge = this.§<!@§;
         while(_loc2_)
         {
            _loc2_.§"!3§.§each §();
            _loc2_ = _loc2_.§6W§;
         }
      }
      
      public function §#+§() : uint
      {
         return this.§+C§;
      }
      
      public function §9]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!%§ |= b2internal::9!m;
         }
         else
         {
            this.§%!%§ &= ~b2internal::9!m;
         }
      }
      
      public function §^!=§() : Boolean
      {
         return (this.§%!%§ & b2internal::9!m) == b2internal::9!m;
      }
      
      public function §,i§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!%§ |= b2internal::&!";
         }
         else
         {
            this.§%!%§ &= ~b2internal::&!";
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!%§ |= b2internal::?!I;
            this.§?!!§ = 0;
         }
         else
         {
            this.§%!%§ &= ~b2internal::?!I;
            this.§?!!§ = 0;
            this.§5!m§.§"9§();
            this.m_angularVelocity = 0;
            this.§4F§.§"9§();
            this.§[!U§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§%!%§ & b2internal::?!I) == b2internal::?!I;
      }
      
      public function §=u§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!%§ |= b2internal::'!R;
         }
         else
         {
            this.§%!%§ &= ~b2internal::'!R;
         }
         this.§<g§();
      }
      
      public function §1`§() : Boolean
      {
         return (this.§%!%§ & b2internal::'!R) == b2internal::'!R;
      }
      
      public function §"!@§(param1:Boolean) : void
      {
         var _loc2_:§#!0§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§%!%§ |= b2internal::[!';
            _loc2_ = this.m_world.§`C§.§-!4§;
            _loc3_ = this.§>!U§;
            while(_loc3_)
            {
               _loc3_.§9u§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§>y§;
            }
         }
         else
         {
            this.§%!%§ &= ~b2internal::[!';
            _loc2_ = this.m_world.§`C§.§-!4§;
            _loc3_ = this.§>!U§;
            while(_loc3_)
            {
               _loc3_.§"!"§(_loc2_);
               _loc3_ = _loc3_.§>y§;
            }
            _loc4_ = this.§<!@§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§6W§;
               this.m_world.§`C§.§%_§(_loc5_.§"!3§);
            }
            this.§<!@§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§%!%§ & b2internal::[!') == b2internal::[!';
      }
      
      public function §#!'§() : Boolean
      {
         return (this.§%!%§ & b2internal::&!") == b2internal::&!";
      }
      
      public function §=Y§() : b2Fixture
      {
         return this.§>!U§;
      }
      
      public function §-Q§() : b2JointEdge
      {
         return this.§break§;
      }
      
      public function §7!W§() : b2ControllerEdge
      {
         return this.§1p§;
      }
      
      public function §`K§() : b2ContactEdge
      {
         return this.§<!@§;
      }
      
      public function §-7§() : b2Body
      {
         return this.§>y§;
      }
      
      public function GetUserData() : *
      {
         return this.§89§;
      }
      
      public function § !@§(param1:*) : void
      {
         this.§89§ = param1;
      }
      
      public function §[A§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §5<§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §[!B§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§#!0§ = this.m_world.§`C§.§-!4§;
         _loc4_ = this.§>!U§;
         while(_loc4_)
         {
            _loc4_.§+r§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§>y§;
         }
      }
      
      b2internal function §"d§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §^!'§(param1:b2Body) : Boolean
      {
         if(this.§+C§ != b2_dynamicBody && param1.§+C§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§break§;
         while(_loc2_)
         {
            if(_loc2_.§>!B§ == param1)
            {
               if(_loc2_.§5!@§.§9!9§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§6W§;
         }
         return true;
      }
      
      b2internal function §-!@§(param1:Number) : void
      {
         this.m_sweep.§-!@§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§"d§();
      }
   }
}
