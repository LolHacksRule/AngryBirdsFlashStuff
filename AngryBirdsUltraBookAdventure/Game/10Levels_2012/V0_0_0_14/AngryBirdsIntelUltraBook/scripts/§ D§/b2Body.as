package § D§
{
   import §!!t§.b2ControllerEdge;
   import §&!-§.§>D§;
   import §0!'§.b2EdgeShape;
   import §0!'§.b2MassData;
   import §0!'§.b2Shape;
   import §7a§.b2Contact;
   import §7a§.b2ContactEdge;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Sweep;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   import §[!N§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §;4§:b2Transform = new b2Transform();
      
      b2internal static var §]!i§:uint = 1;
      
      b2internal static var §5D§:uint = 2;
      
      b2internal static var §=7§:uint = 4;
      
      b2internal static var §08§:uint = 8;
      
      b2internal static var §"O§:uint = 16;
      
      b2internal static var §?z§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var § !<§:uint;
      
      b2internal var §"!1§:int;
      
      b2internal var §0!b§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §9!§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §2!§:b2Vec2;
      
      b2internal var §`!R§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §4!7§:b2Body;
      
      b2internal var §7n§:b2Body;
      
      b2internal var §8!@§:b2Fixture;
      
      b2internal var §+!y§:int;
      
      b2internal var §[U§:b2ControllerEdge;
      
      b2internal var §7,§:int;
      
      b2internal var §>w§:b2JointEdge;
      
      b2internal var §#!u§:b2ContactEdge;
      
      b2internal var §#K§:Number;
      
      b2internal var §1!X§:Number;
      
      b2internal var §0!2§:Number;
      
      b2internal var §^!B§:Number;
      
      b2internal var §1!Y§:Number;
      
      b2internal var § u§:Number;
      
      b2internal var §&! §:Number;
      
      b2internal var § !"§:Number;
      
      private var §>a§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§9!§ = new b2Vec2();
         this.§2!§ = new b2Vec2();
         super();
         this.§ !<§ = 0;
         if(param1.§5!f§)
         {
            this.§ !<§ |= b2internal::08;
         }
         if(param1.§?!#§)
         {
            this.§ !<§ |= b2internal::"O;
         }
         if(param1.§+!&§)
         {
            this.§ !<§ |= b2internal::=7;
         }
         if(param1.§+!T§)
         {
            this.§ !<§ |= b2internal::5D;
         }
         if(param1.§=r§)
         {
            this.§ !<§ |= b2internal::?z;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§%&§();
         this.m_sweep.§0p§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§>w§ = null;
         this.§[U§ = null;
         this.§#!u§ = null;
         this.§7,§ = 0;
         this.§4!7§ = null;
         this.§7n§ = null;
         this.§9!§.SetV(param1.§^!h§);
         this.m_angularVelocity = param1.§=w§;
         this.§ u§ = param1.§#d§;
         this.§&! § = param1.§"v§;
         this.§2!§.Set(0,0);
         this.§`!R§ = 0;
         this.§ !"§ = 0;
         this.§"!1§ = param1.type;
         if(this.§"!1§ == b2_dynamicBody)
         {
            this.§#K§ = 1;
            this.§1!X§ = 1;
         }
         else
         {
            this.§#K§ = 0;
            this.§1!X§ = 0;
         }
         this.§0!2§ = 0;
         this.§^!B§ = 0;
         this.§1!Y§ = param1.§^?§;
         this.§>a§ = param1.§1o§;
         this.§8!@§ = null;
         this.§+!y§ = 0;
      }
      
      private function §?,§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§]l§().y,param2.§]l§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§<!G§(_loc5_,param2.§]l§());
         _loc6_ = b2Math.§>G§(_loc6_,param2.§'!=§());
         _loc6_ = b2Math.§<!G§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§-!>§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§-!>§(param1.§]l§(),param2.§]l§())).Normalize();
         var _loc8_:* = b2Math.§1!P§(param1.§]l§(),param2.§'!=§()) > 0;
         param1.§&!e§(param2,_loc6_,_loc7_,_loc8_);
         param2.§#!§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §;! §(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§>D§ = null;
         if(this.m_world.§5!Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§5=§(this,this.m_xf,param1);
         if(this.§ !<§ & b2internal::?z)
         {
            _loc3_ = this.m_world.§<!7§.§0G§;
            _loc2_.§2!9§(_loc3_,this.m_xf);
         }
         _loc2_.§7n§ = this.§8!@§;
         this.§8!@§ = _loc2_;
         ++this.§+!y§;
         _loc2_.m_body = this;
         if(_loc2_.§&-§ > 0)
         {
            this.§[!;§();
         }
         this.m_world.§ !<§ |= b2World.§#!p§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§;! §(_loc3_);
      }
      
      public function §5!u§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>D§ = null;
         if(this.m_world.§5!Y§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§8!@§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§7n§ = param1.§7n§;
               }
               else
               {
                  this.§8!@§ = param1.§7n§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§7n§;
         }
         var _loc5_:b2ContactEdge = this.§#!u§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§58§;
            _loc5_ = _loc5_.§0e§;
            _loc7_ = _loc6_.§5J§();
            _loc8_ = _loc6_.§@!X§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§<!7§.§"L§(_loc6_);
            }
         }
         if(this.§ !<§ & b2internal::?z)
         {
            _loc9_ = this.m_world.§<!7§.§0G§;
            param1.§"!=§(_loc9_);
         }
         param1.§"L§();
         param1.m_body = null;
         param1.§7n§ = null;
         --this.§+!y§;
         this.§[!;§();
      }
      
      public function §4v§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§5!Y§() == true)
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
         var _loc6_:§>D§ = this.m_world.§<!7§.§0G§;
         _loc3_ = this.§8!@§;
         while(_loc3_)
         {
            _loc3_.§^o§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§7n§;
         }
         this.m_world.§<!7§.§4!K§();
      }
      
      public function §3J§(param1:b2Transform) : void
      {
         this.§4v§(param1.position,param1.GetAngle());
      }
      
      public function §+!C§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §=!F§(param1:b2Vec2) : void
      {
         this.§4v§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function § !W§(param1:Number) : void
      {
         this.§4v§(this.GetPosition(),param1);
      }
      
      public function §=,§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §4!4§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§"!1§ == b2_staticBody)
         {
            return;
         }
         this.§9!§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§9!§;
      }
      
      public function §09§(param1:Number) : void
      {
         if(this.§"!1§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §]!<§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§0!@§();
         _loc1_.§+!&§ = (this.§ !<§ & b2internal::=7) == b2internal::=7;
         _loc1_.angle = this.GetAngle();
         _loc1_.§"v§ = this.§&! §;
         _loc1_.§=w§ = this.m_angularVelocity;
         _loc1_.§?!#§ = (this.§ !<§ & b2internal::"O) == b2internal::"O;
         _loc1_.§5!f§ = (this.§ !<§ & b2internal::08) == b2internal::08;
         _loc1_.§+!T§ = (this.§ !<§ & b2internal::5D) == b2internal::5D;
         _loc1_.§#d§ = this.§ u§;
         _loc1_.§^!h§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§1o§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §7q§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"!1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§2!§.x += param1.x;
         this.§2!§.y += param1.y;
         this.§`!R§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function § do§(param1:Number) : void
      {
         if(this.§"!1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§`!R§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"!1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§9!§.x += this.§1!X§ * param1.x;
         this.§9!§.y += this.§1!X§ * param1.y;
         this.m_angularVelocity += this.§^!B§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §2!f§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§=,§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§?!I§(this.§]!<§());
         var _loc8_:b2Fixture = _loc5_.§8!@§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§7n§;
               if(_loc7_)
               {
                  _loc7_.§7n§ = _loc13_;
               }
               else
               {
                  _loc5_.§8!@§ = _loc13_;
               }
               --_loc5_.§+!y§;
               _loc8_.§7n§ = _loc6_.§8!@§;
               _loc6_.§8!@§ = _loc8_;
               ++_loc6_.§+!y§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§7n§;
            }
         }
         _loc5_.§[!;§();
         _loc6_.§[!;§();
         var _loc9_:b2Vec2 = _loc5_.§=,§();
         var _loc10_:b2Vec2 = _loc6_.§=,§();
         var _loc11_:b2Vec2 = b2Math.§-!>§(_loc2_,b2Math.§#J§(_loc3_,b2Math.§>G§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§-!>§(_loc2_,b2Math.§#J§(_loc3_,b2Math.§>G§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§09§(_loc3_);
         _loc6_.§09§(_loc3_);
         _loc5_.§;!L§();
         _loc6_.§;!L§();
         return _loc6_;
      }
      
      public function §0r§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§8!@§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§7n§;
            --param1.§+!y§;
            _loc2_.§7n§ = this.§8!@§;
            this.§8!@§ = _loc2_;
            ++this.§+!y§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§+!y§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§=,§();
         var _loc6_:b2Vec2 = _loc4_.§=,§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§[!;§();
         this.§;!L§();
      }
      
      public function GetMass() : Number
      {
         return this.§#K§;
      }
      
      public function §7r§() : Number
      {
         return this.§0!2§;
      }
      
      public function § !^§(param1:b2MassData) : void
      {
         param1.§+!<§ = this.§#K§;
         param1.§+j§ = this.§0!2§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §?S§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§5!Y§() == false);
         if(this.m_world.§5!Y§() == true)
         {
            return;
         }
         if(this.§"!1§ != b2_dynamicBody)
         {
            return;
         }
         this.§1!X§ = 0;
         this.§0!2§ = 0;
         this.§^!B§ = 0;
         this.§#K§ = param1.§+!<§;
         if(this.§#K§ <= 0)
         {
            this.§#K§ = 1;
         }
         this.§1!X§ = 1 / this.§#K§;
         if(param1.§+j§ > 0 && (this.§ !<§ & b2internal::"O) == 0)
         {
            this.§0!2§ = param1.§+j§ - this.§#K§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§^!B§ = 1 / this.§0!2§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§,^§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9!§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§9!§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §[!;§() : void
      {
         var _loc4_:b2MassData = null;
         this.§#K§ = 0;
         this.§1!X§ = 0;
         this.§0!2§ = 0;
         this.§^!B§ = 0;
         this.m_sweep.localCenter.§%&§();
         if(this.§"!1§ == b2_staticBody || this.§"!1§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§8!f§(0,0);
         var _loc2_:b2Fixture = this.§8!@§;
         while(_loc2_)
         {
            if(_loc2_.§&-§ != 0)
            {
               _loc4_ = _loc2_.§ !^§();
               this.§#K§ += _loc4_.§+!<§;
               _loc1_.x += _loc4_.center.x * _loc4_.§+!<§;
               _loc1_.y += _loc4_.center.y * _loc4_.§+!<§;
               this.§0!2§ += _loc4_.§+j§;
            }
            _loc2_ = _loc2_.§7n§;
         }
         if(this.§#K§ > 0)
         {
            this.§1!X§ = 1 / this.§#K§;
            _loc1_.x *= this.§1!X§;
            _loc1_.y *= this.§1!X§;
         }
         else
         {
            this.§#K§ = 1;
            this.§1!X§ = 1;
         }
         if(this.§0!2§ > 0 && (this.§ !<§ & b2internal::"O) == 0)
         {
            this.§0!2§ -= this.§#K§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§0!2§ *= this.§1!Y§;
            b2Settings.b2Assert(this.§0!2§ > 0);
            this.§^!B§ = 1 / this.§0!2§;
         }
         else
         {
            this.§0!2§ = 0;
            this.§^!B§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§,^§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9!§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§9!§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §%1§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"!+§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ I§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`m§(this.m_xf.R,param1);
      }
      
      public function §+!2§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§9!§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§9!§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §,!I§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§9!§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§9!§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §5!s§() : Number
      {
         return this.§ u§;
      }
      
      public function §8p§(param1:Number) : void
      {
         this.§ u§ = param1;
      }
      
      public function §&!!§() : Number
      {
         return this.§&! §;
      }
      
      public function §'!6§(param1:Number) : void
      {
         this.§&! § = param1;
      }
      
      public function §8!t§(param1:uint) : void
      {
         if(this.§"!1§ == param1)
         {
            return;
         }
         this.§"!1§ = param1;
         this.§[!;§();
         if(this.§"!1§ == b2_staticBody)
         {
            this.§9!§.§%&§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§2!§.§%&§();
         this.§`!R§ = 0;
         var _loc2_:b2ContactEdge = this.§#!u§;
         while(_loc2_)
         {
            _loc2_.§58§.§?d§();
            _loc2_ = _loc2_.§0e§;
         }
      }
      
      public function §0!@§() : uint
      {
         return this.§"!1§;
      }
      
      public function §>!B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !<§ |= b2internal::08;
         }
         else
         {
            this.§ !<§ &= ~b2internal::08;
         }
      }
      
      public function §=!s§() : Boolean
      {
         return (this.§ !<§ & b2internal::08) == b2internal::08;
      }
      
      public function §`6§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !<§ |= b2internal::=7;
         }
         else
         {
            this.§ !<§ &= ~b2internal::=7;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !<§ |= b2internal::5D;
            this.§ !"§ = 0;
         }
         else
         {
            this.§ !<§ &= ~b2internal::5D;
            this.§ !"§ = 0;
            this.§9!§.§%&§();
            this.m_angularVelocity = 0;
            this.§2!§.§%&§();
            this.§`!R§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§ !<§ & b2internal::5D) == b2internal::5D;
      }
      
      public function §>0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !<§ |= b2internal::"O;
         }
         else
         {
            this.§ !<§ &= ~b2internal::"O;
         }
         this.§[!;§();
      }
      
      public function § get§() : Boolean
      {
         return (this.§ !<§ & b2internal::"O) == b2internal::"O;
      }
      
      public function §^i§(param1:Boolean) : void
      {
         var _loc2_:§>D§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§ !5§())
         {
            return;
         }
         if(param1)
         {
            this.§ !<§ |= b2internal::?z;
            _loc2_ = this.m_world.§<!7§.§0G§;
            _loc3_ = this.§8!@§;
            while(_loc3_)
            {
               _loc3_.§2!9§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§7n§;
            }
         }
         else
         {
            this.§ !<§ &= ~b2internal::?z;
            _loc2_ = this.m_world.§<!7§.§0G§;
            _loc3_ = this.§8!@§;
            while(_loc3_)
            {
               _loc3_.§"!=§(_loc2_);
               _loc3_ = _loc3_.§7n§;
            }
            _loc4_ = this.§#!u§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§0e§;
               this.m_world.§<!7§.§"L§(_loc5_.§58§);
            }
            this.§#!u§ = null;
         }
      }
      
      public function § !5§() : Boolean
      {
         return (this.§ !<§ & b2internal::?z) == b2internal::?z;
      }
      
      public function §#!A§() : Boolean
      {
         return (this.§ !<§ & b2internal::=7) == b2internal::=7;
      }
      
      public function §=Y§() : b2Fixture
      {
         return this.§8!@§;
      }
      
      public function §;!T§() : b2JointEdge
      {
         return this.§>w§;
      }
      
      public function §"!H§() : b2ControllerEdge
      {
         return this.§[U§;
      }
      
      public function §=!-§() : b2ContactEdge
      {
         return this.§#!u§;
      }
      
      public function §2!g§() : b2Body
      {
         return this.§7n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>a§;
      }
      
      public function § A§(param1:*) : void
      {
         this.§>a§ = param1;
      }
      
      public function §]`§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §;!L§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §;4§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§>D§ = this.m_world.§<!7§.§0G§;
         _loc4_ = this.§8!@§;
         while(_loc4_)
         {
            _loc4_.§^o§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§7n§;
         }
      }
      
      b2internal function § n§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §>?§(param1:b2Body) : Boolean
      {
         if(this.§"!1§ != b2_dynamicBody && param1.§"!1§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§>w§;
         while(_loc2_)
         {
            if(_loc2_.§<!-§ == param1)
            {
               if(_loc2_.§[!q§.§"!%§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§0e§;
         }
         return true;
      }
      
      b2internal function §]b§(param1:Number) : void
      {
         this.m_sweep.§]b§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§ n§();
      }
   }
}
