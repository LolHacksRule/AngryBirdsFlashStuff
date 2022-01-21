package §7!5§
{
   import §!!7§.b2JointEdge;
   import §%!h§.b2EdgeShape;
   import §%!h§.b2MassData;
   import §%!h§.b2Shape;
   import §2!A§.b2ControllerEdge;
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §8!n§.§>=§;
   import §;W§.b2Contact;
   import §;W§.b2ContactEdge;
   import §@![§.b2Mat22;
   import §@![§.b2Math;
   import §@![§.b2Sweep;
   import §@![§.b2Transform;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §"T§:b2Transform = new b2Transform();
      
      b2internal static var §3!D§:uint = 1;
      
      b2internal static var §=!;§:uint = 2;
      
      b2internal static var §=!A§:uint = 4;
      
      b2internal static var §<!0§:uint = 8;
      
      b2internal static var §^%§:uint = 16;
      
      b2internal static var §7!C§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §`M§:uint;
      
      b2internal var §3l§:int;
      
      b2internal var §;!1§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §?!%§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §,x§:b2Vec2;
      
      b2internal var §69§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §;!Z§:b2Body;
      
      b2internal var §%&§:b2Body;
      
      b2internal var §%G§:b2Fixture;
      
      b2internal var §]h§:int;
      
      b2internal var §@!P§:b2ControllerEdge;
      
      b2internal var §3!l§:int;
      
      b2internal var §4!h§:b2JointEdge;
      
      b2internal var §`a§:b2ContactEdge;
      
      b2internal var §0!+§:Number;
      
      b2internal var §0T§:Number;
      
      b2internal var §^"§:Number;
      
      b2internal var §#d§:Number;
      
      b2internal var §8y§:Number;
      
      b2internal var §>z§:Number;
      
      b2internal var §<!U§:Number;
      
      b2internal var §@V§:Number;
      
      private var §0!m§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§?!%§ = new b2Vec2();
         this.§,x§ = new b2Vec2();
         super();
         this.§`M§ = 0;
         if(param1.§!!O§)
         {
            this.§`M§ |= b2internal::<!0;
         }
         if(param1.§`!X§)
         {
            this.§`M§ |= b2internal::^%;
         }
         if(param1.§'!@§)
         {
            this.§`M§ |= b2internal::=!A;
         }
         if(param1.§]9§)
         {
            this.§`M§ |= b2internal::=!;;
         }
         if(param1.§0r§)
         {
            this.§`M§ |= b2internal::7!C;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§%!&§();
         this.m_sweep.§!!^§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§4!h§ = null;
         this.§@!P§ = null;
         this.§`a§ = null;
         this.§3!l§ = 0;
         this.§;!Z§ = null;
         this.§%&§ = null;
         this.§?!%§.SetV(param1.§?2§);
         this.m_angularVelocity = param1.§5r§;
         this.§>z§ = param1.§;!j§;
         this.§<!U§ = param1.§3!-§;
         this.§,x§.Set(0,0);
         this.§69§ = 0;
         this.§@V§ = 0;
         this.§3l§ = param1.type;
         if(this.§3l§ == b2_dynamicBody)
         {
            this.§0!+§ = 1;
            this.§0T§ = 1;
         }
         else
         {
            this.§0!+§ = 0;
            this.§0T§ = 0;
         }
         this.§^"§ = 0;
         this.§#d§ = 0;
         this.§8y§ = param1.§#!e§;
         this.§0!m§ = param1.§7M§;
         this.§%G§ = null;
         this.§]h§ = 0;
      }
      
      private function §5E§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§=!8§().y,param2.§=!8§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§<!S§(_loc5_,param2.§=!8§());
         _loc6_ = b2Math.§'u§(_loc6_,param2.§7i§());
         _loc6_ = b2Math.§<!S§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'a§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'a§(param1.§=!8§(),param2.§=!8§())).Normalize();
         var _loc8_:* = b2Math.§#!?§(param1.§=!8§(),param2.§7i§()) > 0;
         param1.§'!B§(param2,_loc6_,_loc7_,_loc8_);
         param2.§1j§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §4!%§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§>=§ = null;
         if(this.m_world.§"!F§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§class§(this,this.m_xf,param1);
         if(this.§`M§ & b2internal::7!C)
         {
            _loc3_ = this.m_world.§ @§.§+!1§;
            _loc2_.§ set§(_loc3_,this.m_xf);
         }
         _loc2_.§%&§ = this.§%G§;
         this.§%G§ = _loc2_;
         ++this.§]h§;
         _loc2_.m_body = this;
         if(_loc2_.§&+§ > 0)
         {
            this.§=a§();
         }
         this.m_world.§`M§ |= b2World.§4>§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§4!%§(_loc3_);
      }
      
      public function §01§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>=§ = null;
         if(this.m_world.§"!F§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§%G§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§%&§ = param1.§%&§;
               }
               else
               {
                  this.§%G§ = param1.§%&§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§%&§;
         }
         var _loc5_:b2ContactEdge = this.§`a§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§+!Y§;
            _loc5_ = _loc5_.§"!=§;
            _loc7_ = _loc6_.§"![§();
            _loc8_ = _loc6_.§5,§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§ @§.§5^§(_loc6_);
            }
         }
         if(this.§`M§ & b2internal::7!C)
         {
            _loc9_ = this.m_world.§ @§.§+!1§;
            param1.§#j§(_loc9_);
         }
         param1.§5^§();
         param1.m_body = null;
         param1.§%&§ = null;
         --this.§]h§;
         this.§=a§();
      }
      
      public function §"!-§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§"!F§() == true)
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
         var _loc6_:§>=§ = this.m_world.§ @§.§+!1§;
         _loc3_ = this.§%G§;
         while(_loc3_)
         {
            _loc3_.§>V§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§%&§;
         }
         this.m_world.§ @§.§;&§();
      }
      
      public function §+N§(param1:b2Transform) : void
      {
         this.§"!-§(param1.position,param1.GetAngle());
      }
      
      public function §@!;§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §@c§(param1:b2Vec2) : void
      {
         this.§"!-§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §9!'§(param1:Number) : void
      {
         this.§"!-§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §5!j§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§3l§ == b2_staticBody)
         {
            return;
         }
         this.§?!%§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§?!%§;
      }
      
      public function §^!c§(param1:Number) : void
      {
         if(this.§3l§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §3!k§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §return§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§&!B§();
         _loc1_.§'!@§ = (this.§`M§ & b2internal::=!A) == b2internal::=!A;
         _loc1_.angle = this.GetAngle();
         _loc1_.§3!-§ = this.§<!U§;
         _loc1_.§5r§ = this.m_angularVelocity;
         _loc1_.§`!X§ = (this.§`M§ & b2internal::^%) == b2internal::^%;
         _loc1_.§!!O§ = (this.§`M§ & b2internal::<!0) == b2internal::<!0;
         _loc1_.§]9§ = (this.§`M§ & b2internal::=!;) == b2internal::=!;;
         _loc1_.§;!j§ = this.§>z§;
         _loc1_.§?2§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§7M§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §`q§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3l§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,x§.x += param1.x;
         this.§,x§.y += param1.y;
         this.§69§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §%"§(param1:Number) : void
      {
         if(this.§3l§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§69§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3l§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?!%§.x += this.§0T§ * param1.x;
         this.§?!%§.y += this.§0T§ * param1.y;
         this.m_angularVelocity += this.§#d§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §[!;§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§3!k§();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§>!Z§(this.§return§());
         var _loc8_:b2Fixture = _loc5_.§%G§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§%&§;
               if(_loc7_)
               {
                  _loc7_.§%&§ = _loc13_;
               }
               else
               {
                  _loc5_.§%G§ = _loc13_;
               }
               --_loc5_.§]h§;
               _loc8_.§%&§ = _loc6_.§%G§;
               _loc6_.§%G§ = _loc8_;
               ++_loc6_.§]h§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§%&§;
            }
         }
         _loc5_.§=a§();
         _loc6_.§=a§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§'a§(_loc2_,b2Math.§9!W§(_loc3_,b2Math.§'u§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§'a§(_loc2_,b2Math.§9!W§(_loc3_,b2Math.§'u§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§^!c§(_loc3_);
         _loc6_.§^!c§(_loc3_);
         _loc5_.§&!6§();
         _loc6_.§&!6§();
         return _loc6_;
      }
      
      public function §@!K§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%G§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§%&§;
            --param1.§]h§;
            _loc2_.§%&§ = this.§%G§;
            this.§%G§ = _loc2_;
            ++this.§]h§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§]h§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§3!k§();
         var _loc10_:Number = _loc4_.§3!k§();
         _loc3_.§=a§();
         this.§&!6§();
      }
      
      public function GetMass() : Number
      {
         return this.§0!+§;
      }
      
      public function §!§() : Number
      {
         return this.§^"§;
      }
      
      public function §8#§(param1:b2MassData) : void
      {
         param1.§%!#§ = this.§0!+§;
         param1.§%l§ = this.§^"§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §13§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§"!F§() == false);
         if(this.m_world.§"!F§() == true)
         {
            return;
         }
         if(this.§3l§ != b2_dynamicBody)
         {
            return;
         }
         this.§0T§ = 0;
         this.§^"§ = 0;
         this.§#d§ = 0;
         this.§0!+§ = param1.§%!#§;
         if(this.§0!+§ <= 0)
         {
            this.§0!+§ = 1;
         }
         this.§0T§ = 1 / this.§0!+§;
         if(param1.§%l§ > 0 && (this.§`M§ & b2internal::^%) == 0)
         {
            this.§^"§ = param1.§%l§ - this.§0!+§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§#d§ = 1 / this.§^"§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§+!W§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!%§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§?!%§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §=a§() : void
      {
         var _loc4_:b2MassData = null;
         this.§0!+§ = 0;
         this.§0T§ = 0;
         this.§^"§ = 0;
         this.§#d§ = 0;
         this.m_sweep.localCenter.§%!&§();
         if(this.§3l§ == b2_staticBody || this.§3l§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§%![§(0,0);
         var _loc2_:b2Fixture = this.§%G§;
         while(_loc2_)
         {
            if(_loc2_.§&+§ != 0)
            {
               _loc4_ = _loc2_.§8#§();
               this.§0!+§ += _loc4_.§%!#§;
               _loc1_.x += _loc4_.center.x * _loc4_.§%!#§;
               _loc1_.y += _loc4_.center.y * _loc4_.§%!#§;
               this.§^"§ += _loc4_.§%l§;
            }
            _loc2_ = _loc2_.§%&§;
         }
         if(this.§0!+§ > 0)
         {
            this.§0T§ = 1 / this.§0!+§;
            _loc1_.x *= this.§0T§;
            _loc1_.y *= this.§0T§;
         }
         else
         {
            this.§0!+§ = 1;
            this.§0T§ = 1;
         }
         if(this.§^"§ > 0 && (this.§`M§ & b2internal::^%) == 0)
         {
            this.§^"§ -= this.§0!+§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§^"§ *= this.§8y§;
            b2Settings.b2Assert(this.§^"§ > 0);
            this.§#d§ = 1 / this.§^"§;
         }
         else
         {
            this.§^"§ = 0;
            this.§#d§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§+!W§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!%§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§?!%§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §1!6§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&U§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5!_§(this.m_xf.R,param1);
      }
      
      public function §&C§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§?!%§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§?!%§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §%!2§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§?!%§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§?!%§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §%T§() : Number
      {
         return this.§>z§;
      }
      
      public function §"!6§(param1:Number) : void
      {
         this.§>z§ = param1;
      }
      
      public function §'E§() : Number
      {
         return this.§<!U§;
      }
      
      public function §2B§(param1:Number) : void
      {
         this.§<!U§ = param1;
      }
      
      public function §5!h§(param1:uint) : void
      {
         if(this.§3l§ == param1)
         {
            return;
         }
         this.§3l§ = param1;
         this.§=a§();
         if(this.§3l§ == b2_staticBody)
         {
            this.§?!%§.§%!&§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§,x§.§%!&§();
         this.§69§ = 0;
         var _loc2_:b2ContactEdge = this.§`a§;
         while(_loc2_)
         {
            _loc2_.§+!Y§.§9q§();
            _loc2_ = _loc2_.§"!=§;
         }
      }
      
      public function §&!B§() : uint
      {
         return this.§3l§;
      }
      
      public function §<!8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`M§ |= b2internal::<!0;
         }
         else
         {
            this.§`M§ &= ~b2internal::<!0;
         }
      }
      
      public function §'!_§() : Boolean
      {
         return (this.§`M§ & b2internal::<!0) == b2internal::<!0;
      }
      
      public function §-=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`M§ |= b2internal::=!A;
         }
         else
         {
            this.§`M§ &= ~b2internal::=!A;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`M§ |= b2internal::=!;;
            this.§@V§ = 0;
         }
         else
         {
            this.§`M§ &= ~b2internal::=!;;
            this.§@V§ = 0;
            this.§?!%§.§%!&§();
            this.m_angularVelocity = 0;
            this.§,x§.§%!&§();
            this.§69§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§`M§ & b2internal::=!;) == b2internal::=!;;
      }
      
      public function §2!Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`M§ |= b2internal::^%;
         }
         else
         {
            this.§`M§ &= ~b2internal::^%;
         }
         this.§=a§();
      }
      
      public function §--§() : Boolean
      {
         return (this.§`M§ & b2internal::^%) == b2internal::^%;
      }
      
      public function §,!X§(param1:Boolean) : void
      {
         var _loc2_:§>=§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§`M§ |= b2internal::7!C;
            _loc2_ = this.m_world.§ @§.§+!1§;
            _loc3_ = this.§%G§;
            while(_loc3_)
            {
               _loc3_.§ set§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§%&§;
            }
         }
         else
         {
            this.§`M§ &= ~b2internal::7!C;
            _loc2_ = this.m_world.§ @§.§+!1§;
            _loc3_ = this.§%G§;
            while(_loc3_)
            {
               _loc3_.§#j§(_loc2_);
               _loc3_ = _loc3_.§%&§;
            }
            _loc4_ = this.§`a§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§"!=§;
               this.m_world.§ @§.§5^§(_loc5_.§+!Y§);
            }
            this.§`a§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§`M§ & b2internal::7!C) == b2internal::7!C;
      }
      
      public function §-?§() : Boolean
      {
         return (this.§`M§ & b2internal::=!A) == b2internal::=!A;
      }
      
      public function §<T§() : b2Fixture
      {
         return this.§%G§;
      }
      
      public function §^!_§() : b2JointEdge
      {
         return this.§4!h§;
      }
      
      public function §^!L§() : b2ControllerEdge
      {
         return this.§@!P§;
      }
      
      public function §54§() : b2ContactEdge
      {
         return this.§`a§;
      }
      
      public function §5w§() : b2Body
      {
         return this.§%&§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!m§;
      }
      
      public function §6]§(param1:*) : void
      {
         this.§0!m§ = param1;
      }
      
      public function §?!8§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §&!6§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §"T§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§>=§ = this.m_world.§ @§.§+!1§;
         _loc4_ = this.§%G§;
         while(_loc4_)
         {
            _loc4_.§>V§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§%&§;
         }
      }
      
      b2internal function §5!%§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §0!A§(param1:b2Body) : Boolean
      {
         if(this.§3l§ != b2_dynamicBody && param1.§3l§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§4!h§;
         while(_loc2_)
         {
            if(_loc2_.§]=§ == param1)
            {
               if(_loc2_.§+!G§.§?f§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§"!=§;
         }
         return true;
      }
      
      b2internal function §4[§(param1:Number) : void
      {
         this.m_sweep.§4[§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§5!%§();
      }
   }
}
