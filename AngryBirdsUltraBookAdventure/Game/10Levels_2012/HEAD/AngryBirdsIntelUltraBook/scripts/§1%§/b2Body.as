package §1%§
{
   import §'!@§.b2ControllerEdge;
   import §,X§.b2EdgeShape;
   import §,X§.b2MassData;
   import §,X§.b2Shape;
   import §5!_§.b2JointEdge;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §>s§.b2Contact;
   import §>s§.b2ContactEdge;
   import §?!&§.b2Mat22;
   import §?!&§.b2Math;
   import §?!&§.b2Sweep;
   import §?!&§.b2Transform;
   import §?!&§.b2Vec2;
   import §`!H§.§>u§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#!7§:b2Transform = new b2Transform();
      
      b2internal static var §8s§:uint = 1;
      
      b2internal static var §`!+§:uint = 2;
      
      b2internal static var §3!+§:uint = 4;
      
      b2internal static var §4o§:uint = 8;
      
      b2internal static var §5l§:uint = 16;
      
      b2internal static var §=!1§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §8A§:uint;
      
      b2internal var §@!D§:int;
      
      b2internal var §>!B§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §69§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §'<§:b2Vec2;
      
      b2internal var §46§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §4!0§:b2Body;
      
      b2internal var §!J§:b2Body;
      
      b2internal var §82§:b2Fixture;
      
      b2internal var §3!2§:int;
      
      b2internal var §>@§:b2ControllerEdge;
      
      b2internal var §1e§:int;
      
      b2internal var §>q§:b2JointEdge;
      
      b2internal var §;T§:b2ContactEdge;
      
      b2internal var §;!3§:Number;
      
      b2internal var §4s§:Number;
      
      b2internal var §=V§:Number;
      
      b2internal var §[!F§:Number;
      
      b2internal var §2!?§:Number;
      
      b2internal var §]2§:Number;
      
      b2internal var §3]§:Number;
      
      b2internal var §6"§:Number;
      
      private var §#!I§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§69§ = new b2Vec2();
         this.§'<§ = new b2Vec2();
         super();
         this.§8A§ = 0;
         if(param1.§4x§)
         {
            this.§8A§ |= §4o§;
         }
         if(param1.§0F§)
         {
            this.§8A§ |= §5l§;
         }
         if(param1.§?a§)
         {
            this.§8A§ |= §3!+§;
         }
         if(param1.§-y§)
         {
            this.§8A§ |= §`!+§;
         }
         if(param1.§83§)
         {
            this.§8A§ |= §=!1§;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§@l§();
         this.m_sweep.§]h§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§>q§ = null;
         this.§>@§ = null;
         this.§;T§ = null;
         this.§1e§ = 0;
         this.§4!0§ = null;
         this.§!J§ = null;
         this.§69§.SetV(param1.§`@§);
         this.m_angularVelocity = param1.§8!]§;
         this.§]2§ = param1.§1!h§;
         this.§3]§ = param1.§<!D§;
         this.§'<§.Set(0,0);
         this.§46§ = 0;
         this.§6"§ = 0;
         this.§@!D§ = param1.type;
         if(this.§@!D§ == b2_dynamicBody)
         {
            this.§;!3§ = 1;
            this.§4s§ = 1;
         }
         else
         {
            this.§;!3§ = 0;
            this.§4s§ = 0;
         }
         this.§=V§ = 0;
         this.§[!F§ = 0;
         this.§2!?§ = param1.§6!T§;
         this.§#!I§ = param1.§#!`§;
         this.§82§ = null;
         this.§3!2§ = 0;
      }
      
      private function §-X§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§ true§().y,param2.§ true§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§`!;§(_loc5_,param2.§ true§());
         _loc6_ = b2Math.§0l§(_loc6_,param2.§]L§());
         _loc6_ = b2Math.§`!;§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§use §(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2 = b2Math.§use §(param1.§ true§(),param2.§ true§());
         _loc7_.Normalize();
         var _loc8_:Boolean = b2Math.§6!F§(param1.§ true§(),param2.§]L§()) > 0;
         param1.§-!i§(param2,_loc6_,_loc7_,_loc8_);
         param2.§]P§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §-&§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§>u§ = null;
         if(this.m_world.§3! §() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§;!]§(this,this.m_xf,param1);
         if(this.§8A§ & §=!1§)
         {
            _loc3_ = this.m_world.§7@§.§+!2§;
            _loc2_.§'R§(_loc3_,this.m_xf);
         }
         _loc2_.§!J§ = this.§82§;
         this.§82§ = _loc2_;
         ++this.§3!2§;
         _loc2_.m_body = this;
         if(_loc2_.§9Y§ > 0)
         {
            this.§@!O§();
         }
         this.m_world.§8A§ |= b2World.§?v§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§-&§(_loc3_);
      }
      
      public function §%`§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>u§ = null;
         if(this.m_world.§3! §() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§82§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§!J§ = param1.§!J§;
               }
               else
               {
                  this.§82§ = param1.§!J§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§!J§;
         }
         var _loc5_:b2ContactEdge = this.§;T§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§#!#§;
            _loc5_ = _loc5_.§86§;
            _loc7_ = _loc6_.§%! §();
            _loc8_ = _loc6_.§4#§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§7@§.§"!Q§(_loc6_);
            }
         }
         if(this.§8A§ & §=!1§)
         {
            _loc9_ = this.m_world.§7@§.§+!2§;
            param1.§^!B§(_loc9_);
         }
         param1.§"!Q§();
         param1.m_body = null;
         param1.§!J§ = null;
         --this.§3!2§;
         this.§@!O§();
      }
      
      public function §0B§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§3! §() == true)
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
         var _loc6_:§>u§ = this.m_world.§7@§.§+!2§;
         _loc3_ = this.§82§;
         while(_loc3_)
         {
            _loc3_.§6L§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§!J§;
         }
         this.m_world.§7@§.§ !§();
      }
      
      public function §%!S§(param1:b2Transform) : void
      {
         this.§0B§(param1.position,param1.GetAngle());
      }
      
      public function §?Q§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §5u§(param1:b2Vec2) : void
      {
         this.§0B§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §=!]§(param1:Number) : void
      {
         this.§0B§(this.GetPosition(),param1);
      }
      
      public function §5!Q§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §;]§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§@!D§ == b2_staticBody)
         {
            return;
         }
         this.§69§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§69§;
      }
      
      public function §&R§(param1:Number) : void
      {
         if(this.§@!D§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §7!;§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§3r§();
         _loc1_.§?a§ = (this.§8A§ & §3!+§) == §3!+§;
         _loc1_.angle = this.GetAngle();
         _loc1_.§<!D§ = this.§3]§;
         _loc1_.§8!]§ = this.m_angularVelocity;
         _loc1_.§0F§ = (this.§8A§ & §5l§) == §5l§;
         _loc1_.§4x§ = (this.§8A§ & §4o§) == §4o§;
         _loc1_.§-y§ = (this.§8A§ & §`!+§) == §`!+§;
         _loc1_.§1!h§ = this.§]2§;
         _loc1_.§`@§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§#!`§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §1!Y§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@!D§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'<§.x += param1.x;
         this.§'<§.y += param1.y;
         this.§46§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §1!3§(param1:Number) : void
      {
         if(this.§@!D§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§46§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@!D§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§69§.x += this.§4s§ * param1.x;
         this.§69§.y += this.§4s§ * param1.y;
         this.m_angularVelocity += this.§[!F§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §1C§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§5!Q§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§,!j§(this.§7!;§());
         var _loc8_:b2Fixture = _loc5_.§82§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§!J§;
               if(_loc7_)
               {
                  _loc7_.§!J§ = _loc13_;
               }
               else
               {
                  _loc5_.§82§ = _loc13_;
               }
               --_loc5_.§3!2§;
               _loc8_.§!J§ = _loc6_.§82§;
               _loc6_.§82§ = _loc8_;
               ++_loc6_.§3!2§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§!J§;
            }
         }
         _loc5_.§@!O§();
         _loc6_.§@!O§();
         var _loc9_:b2Vec2 = _loc5_.§5!Q§();
         var _loc10_:b2Vec2 = _loc6_.§5!Q§();
         var _loc11_:b2Vec2 = b2Math.§use §(_loc2_,b2Math.§6!§(_loc3_,b2Math.§0l§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§use §(_loc2_,b2Math.§6!§(_loc3_,b2Math.§0l§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§&R§(_loc3_);
         _loc6_.§&R§(_loc3_);
         _loc5_.§%t§();
         _loc6_.§%t§();
         return _loc6_;
      }
      
      public function §&!!§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§82§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§!J§;
            --param1.§3!2§;
            _loc2_.§!J§ = this.§82§;
            this.§82§ = _loc2_;
            ++this.§3!2§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§3!2§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§5!Q§();
         var _loc6_:b2Vec2 = _loc4_.§5!Q§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§@!O§();
         this.§%t§();
      }
      
      public function GetMass() : Number
      {
         return this.§;!3§;
      }
      
      public function §?d§() : Number
      {
         return this.§=V§;
      }
      
      public function §+T§(param1:b2MassData) : void
      {
         param1.§2!3§ = this.§;!3§;
         param1.§'!i§ = this.§=V§;
         param1.§+!a§.SetV(this.m_sweep.localCenter);
      }
      
      public function §!!A§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§3! §() == false);
         if(this.m_world.§3! §() == true)
         {
            return;
         }
         if(this.§@!D§ != b2_dynamicBody)
         {
            return;
         }
         this.§4s§ = 0;
         this.§=V§ = 0;
         this.§[!F§ = 0;
         this.§;!3§ = param1.§2!3§;
         if(this.§;!3§ <= 0)
         {
            this.§;!3§ = 1;
         }
         this.§4s§ = 1 / this.§;!3§;
         if(param1.§'!i§ > 0 && (this.§8A§ & §5l§) == 0)
         {
            this.§=V§ = param1.§'!i§ - this.§;!3§ * (param1.§+!a§.x * param1.§+!a§.x + param1.§+!a§.y * param1.§+!a§.y);
            this.§[!F§ = 1 / this.§=V§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§+!a§);
         this.m_sweep.c0.SetV(b2Math.§5F§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§69§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§69§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §@!O§() : void
      {
         var _loc4_:b2MassData = null;
         this.§;!3§ = 0;
         this.§4s§ = 0;
         this.§=V§ = 0;
         this.§[!F§ = 0;
         this.m_sweep.localCenter.§@l§();
         if(this.§@!D§ == b2_staticBody || this.§@!D§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§<3§(0,0);
         var _loc2_:b2Fixture = this.§82§;
         while(_loc2_)
         {
            if(_loc2_.§9Y§ != 0)
            {
               _loc4_ = _loc2_.§+T§();
               this.§;!3§ += _loc4_.§2!3§;
               _loc1_.x += _loc4_.§+!a§.x * _loc4_.§2!3§;
               _loc1_.y += _loc4_.§+!a§.y * _loc4_.§2!3§;
               this.§=V§ += _loc4_.§'!i§;
            }
            _loc2_ = _loc2_.§!J§;
         }
         if(this.§;!3§ > 0)
         {
            this.§4s§ = 1 / this.§;!3§;
            _loc1_.x *= this.§4s§;
            _loc1_.y *= this.§4s§;
         }
         else
         {
            this.§;!3§ = 1;
            this.§4s§ = 1;
         }
         if(this.§=V§ > 0 && (this.§8A§ & §5l§) == 0)
         {
            this.§=V§ -= this.§;!3§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§=V§ *= this.§2!?§;
            b2Settings.b2Assert(this.§=V§ > 0);
            this.§[!F§ = 1 / this.§=V§;
         }
         else
         {
            this.§=V§ = 0;
            this.§[!F§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§5F§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§69§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§69§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §]!-§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§>8§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§9!g§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`!e§(this.m_xf.R,param1);
      }
      
      public function §,!@§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§69§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§69§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §-M§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§69§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§69§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §0!P§() : Number
      {
         return this.§]2§;
      }
      
      public function §%!N§(param1:Number) : void
      {
         this.§]2§ = param1;
      }
      
      public function §;!a§() : Number
      {
         return this.§3]§;
      }
      
      public function §&!H§(param1:Number) : void
      {
         this.§3]§ = param1;
      }
      
      public function §continue§(param1:uint) : void
      {
         if(this.§@!D§ == param1)
         {
            return;
         }
         this.§@!D§ = param1;
         this.§@!O§();
         if(this.§@!D§ == b2_staticBody)
         {
            this.§69§.§@l§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§'<§.§@l§();
         this.§46§ = 0;
         var _loc2_:b2ContactEdge = this.§;T§;
         while(_loc2_)
         {
            _loc2_.§#!#§.§+! §();
            _loc2_ = _loc2_.§86§;
         }
      }
      
      public function §3r§() : uint
      {
         return this.§@!D§;
      }
      
      public function §?!;§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8A§ |= §4o§;
         }
         else
         {
            this.§8A§ &= ~§4o§;
         }
      }
      
      public function §"#§() : Boolean
      {
         return (this.§8A§ & §4o§) == §4o§;
      }
      
      public function §0h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8A§ |= §3!+§;
         }
         else
         {
            this.§8A§ &= ~§3!+§;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8A§ |= §`!+§;
            this.§6"§ = 0;
         }
         else
         {
            this.§8A§ &= ~§`!+§;
            this.§6"§ = 0;
            this.§69§.§@l§();
            this.m_angularVelocity = 0;
            this.§'<§.§@l§();
            this.§46§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§8A§ & §`!+§) == §`!+§;
      }
      
      public function §8d§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8A§ |= §5l§;
         }
         else
         {
            this.§8A§ &= ~§5l§;
         }
         this.§@!O§();
      }
      
      public function §#&§() : Boolean
      {
         return (this.§8A§ & §5l§) == §5l§;
      }
      
      public function §&I§(param1:Boolean) : void
      {
         var _loc2_:§>u§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§6!%§())
         {
            return;
         }
         if(param1)
         {
            this.§8A§ |= §=!1§;
            _loc2_ = this.m_world.§7@§.§+!2§;
            _loc3_ = this.§82§;
            while(_loc3_)
            {
               _loc3_.§'R§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§!J§;
            }
         }
         else
         {
            this.§8A§ &= ~§=!1§;
            _loc2_ = this.m_world.§7@§.§+!2§;
            _loc3_ = this.§82§;
            while(_loc3_)
            {
               _loc3_.§^!B§(_loc2_);
               _loc3_ = _loc3_.§!J§;
            }
            _loc4_ = this.§;T§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§86§;
               this.m_world.§7@§.§"!Q§(_loc5_.§#!#§);
            }
            this.§;T§ = null;
         }
      }
      
      public function §6!%§() : Boolean
      {
         return (this.§8A§ & §=!1§) == §=!1§;
      }
      
      public function §1]§() : Boolean
      {
         return (this.§8A§ & §3!+§) == §3!+§;
      }
      
      public function §+?§() : b2Fixture
      {
         return this.§82§;
      }
      
      public function §&Y§() : b2JointEdge
      {
         return this.§>q§;
      }
      
      public function §>!G§() : b2ControllerEdge
      {
         return this.§>@§;
      }
      
      public function §"!c§() : b2ContactEdge
      {
         return this.§;T§;
      }
      
      public function §5<§() : b2Body
      {
         return this.§!J§;
      }
      
      public function GetUserData() : *
      {
         return this.§#!I§;
      }
      
      public function §^!T§(param1:*) : void
      {
         this.§#!I§ = param1;
      }
      
      public function §#!"§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%t§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#!7§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§>u§ = this.m_world.§7@§.§+!2§;
         _loc4_ = this.§82§;
         while(_loc4_)
         {
            _loc4_.§6L§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§!J§;
         }
      }
      
      b2internal function §`! §() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §8`§(param1:b2Body) : Boolean
      {
         if(this.§@!D§ != b2_dynamicBody && param1.§@!D§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§>q§;
         while(_loc2_)
         {
            if(_loc2_.§;-§ == param1)
            {
               if(_loc2_.§'#§.§'!"§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§86§;
         }
         return true;
      }
      
      b2internal function §6!4§(param1:Number) : void
      {
         this.m_sweep.§6!4§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§`! §();
      }
   }
}
