package §9"5§
{
   import §!!o§.b2Contact;
   import §!!o§.b2ContactEdge;
   import §+!0§.b2JointEdge;
   import §,P§.§7!G§;
   import §-%§.b2Mat22;
   import §-%§.b2Math;
   import §-%§.b2Sweep;
   import §-%§.b2Transform;
   import §-%§.b2Vec2;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   import §>"&§.b2EdgeShape;
   import §>"&§.b2MassData;
   import §>"&§.b2Shape;
   import §]y§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §1f§:b2Transform = new b2Transform();
      
      b2internal static var §%!=§:uint = 1;
      
      b2internal static var §4!m§:uint = 2;
      
      b2internal static var §^!4§:uint = 4;
      
      b2internal static var §0!^§:uint = 8;
      
      b2internal static var §1!q§:uint = 16;
      
      b2internal static var §3!T§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §&!G§:uint;
      
      b2internal var §^Z§:int;
      
      b2internal var §]!s§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §]!1§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §@p§:b2Vec2;
      
      b2internal var §%#§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §'"5§:b2Body;
      
      b2internal var §]4§:b2Body;
      
      b2internal var §2`§:b2Fixture;
      
      b2internal var §7!5§:int;
      
      b2internal var §6!1§:b2ControllerEdge;
      
      b2internal var §&[§:int;
      
      b2internal var §9`§:b2JointEdge;
      
      b2internal var §,!D§:b2ContactEdge;
      
      b2internal var §1i§:Number;
      
      b2internal var §^!u§:Number;
      
      b2internal var §58§:Number;
      
      b2internal var §;!A§:Number;
      
      b2internal var §0"!§:Number;
      
      b2internal var §6V§:Number;
      
      b2internal var §"L§:Number;
      
      b2internal var §>#§:Number;
      
      b2internal var §]!+§:Number;
      
      private var §44§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§]!1§ = new b2Vec2();
         this.§@p§ = new b2Vec2();
         super();
         this.§&!G§ = 0;
         if(param1.§+5§)
         {
            this.§&!G§ |= b2internal::0!^;
         }
         if(param1.§%!]§)
         {
            this.§&!G§ |= b2internal::1!q;
         }
         if(param1.§#"!§)
         {
            this.§&!G§ |= b2internal::^!4;
         }
         if(param1.§0u§)
         {
            this.§&!G§ |= b2internal::4!m;
         }
         if(param1.active)
         {
            this.§&!G§ |= b2internal::3!T;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§'p§();
         this.m_sweep.§?!S§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§9`§ = null;
         this.§6!1§ = null;
         this.§,!D§ = null;
         this.§&[§ = 0;
         this.§'"5§ = null;
         this.§]4§ = null;
         this.§]!1§.SetV(param1.§%!;§);
         this.m_angularVelocity = param1.§6!=§;
         this.§6V§ = param1.§&!m§;
         this.§"L§ = param1.§!?§;
         this.§]!+§ = param1.§ v§;
         this.§@p§.Set(0,0);
         this.§%#§ = 0;
         this.§>#§ = 0;
         this.§^Z§ = param1.type;
         if(this.§^Z§ == b2_dynamicBody)
         {
            this.§1i§ = 1;
            this.§^!u§ = 1;
         }
         else
         {
            this.§1i§ = 0;
            this.§^!u§ = 0;
         }
         this.§58§ = 0;
         this.§;!A§ = 0;
         this.§0"!§ = param1.§7@§;
         this.§44§ = param1.userData;
         this.§2`§ = null;
         this.§7!5§ = 0;
      }
      
      private function §3F§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§2!@§().y,param2.§2!@§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§?!x§(_loc5_,param2.§2!@§());
         _loc6_ = b2Math.§'c§(_loc6_,param2.§8!w§());
         _loc6_ = b2Math.§?!x§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§7v§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§7v§(param1.§2!@§(),param2.§2!@§())).Normalize();
         var _loc8_:* = b2Math.§;K§(param1.§2!@§(),param2.§8!w§()) > 0;
         param1.§!!D§(param2,_loc6_,_loc7_,_loc8_);
         param2.§"""§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§7!G§ = null;
         if(this.m_world.§=_§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§0!8§(this,this.m_xf,param1);
         if(this.§&!G§ & b2internal::3!T)
         {
            _loc3_ = this.m_world.§&h§.§%!_§;
            _loc2_.§[!o§(_loc3_,this.m_xf);
         }
         _loc2_.§]4§ = this.§2`§;
         this.§2`§ = _loc2_;
         ++this.§7!5§;
         _loc2_.m_body = this;
         if(_loc2_.§4O§ > 0)
         {
            this.§`A§();
         }
         this.m_world.§&!G§ |= b2World.§1!Z§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §1!>§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§7!G§ = null;
         if(this.m_world.§=_§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§2`§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§]4§ = param1.§]4§;
               }
               else
               {
                  this.§2`§ = param1.§]4§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§]4§;
         }
         var _loc5_:b2ContactEdge = this.§,!D§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§4%§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§?s§();
            _loc8_ = _loc6_.§^!q§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§&h§.§&`§(_loc6_);
            }
         }
         if(this.§&!G§ & b2internal::3!T)
         {
            _loc9_ = this.m_world.§&h§.§%!_§;
            param1.§<h§(_loc9_);
         }
         param1.§&`§();
         param1.m_body = null;
         param1.§]4§ = null;
         --this.§7!5§;
         this.§`A§();
      }
      
      public function §"" §(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§=_§() == true)
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
         var _loc6_:§7!G§ = this.m_world.§&h§.§%!_§;
         _loc3_ = this.§2`§;
         while(_loc3_)
         {
            _loc3_.§%!f§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§]4§;
         }
         this.m_world.§&h§.§8!x§();
      }
      
      public function §[!_§(param1:b2Transform) : void
      {
         this.§"" §(param1.position,param1.GetAngle());
      }
      
      public function §,!h§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§"" §(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§"" §(this.GetPosition(),param1);
      }
      
      public function §2!H§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §-[§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§^Z§ == b2_staticBody)
         {
            return;
         }
         this.§]!1§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§]!1§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§^Z§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §?j§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§4!C§();
         _loc1_.§#"!§ = (this.§&!G§ & b2internal::^!4) == b2internal::^!4;
         _loc1_.angle = this.GetAngle();
         _loc1_.§!?§ = this.§"L§;
         _loc1_.§6!=§ = this.m_angularVelocity;
         _loc1_.§%!]§ = (this.§&!G§ & b2internal::1!q) == b2internal::1!q;
         _loc1_.§+5§ = (this.§&!G§ & b2internal::0!^) == b2internal::0!^;
         _loc1_.§0u§ = (this.§&!G§ & b2internal::4!m) == b2internal::4!m;
         _loc1_.§&!m§ = this.§6V§;
         _loc1_.§%!;§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §0!x§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§^Z§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§@p§.x += param1.x;
         this.§@p§.y += param1.y;
         this.§%#§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §#Q§(param1:Number) : void
      {
         if(this.§^Z§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%#§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§^Z§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§]!1§.x += this.§^!u§ * param1.x;
         this.§]!1§.y += this.§^!u§ * param1.y;
         this.m_angularVelocity += this.§;!A§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §-!k§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§2!H§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§?j§());
         var _loc8_:b2Fixture = _loc5_.§2`§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§]4§;
               if(_loc7_)
               {
                  _loc7_.§]4§ = _loc13_;
               }
               else
               {
                  _loc5_.§2`§ = _loc13_;
               }
               --_loc5_.§7!5§;
               _loc8_.§]4§ = _loc6_.§2`§;
               _loc6_.§2`§ = _loc8_;
               ++_loc6_.§7!5§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§]4§;
            }
         }
         _loc5_.§`A§();
         _loc6_.§`A§();
         var _loc9_:b2Vec2 = _loc5_.§2!H§();
         var _loc10_:b2Vec2 = _loc6_.§2!H§();
         var _loc11_:b2Vec2 = b2Math.§7v§(_loc2_,b2Math.§@0§(_loc3_,b2Math.§'c§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§7v§(_loc2_,b2Math.§@0§(_loc3_,b2Math.§'c§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§1"+§();
         _loc6_.§1"+§();
         return _loc6_;
      }
      
      public function § -§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§2`§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§]4§;
            --param1.§7!5§;
            _loc2_.§]4§ = this.§2`§;
            this.§2`§ = _loc2_;
            ++this.§7!5§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§7!5§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§2!H§();
         var _loc6_:b2Vec2 = _loc4_.§2!H§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§`A§();
         this.§1"+§();
      }
      
      public function GetMass() : Number
      {
         return this.§1i§;
      }
      
      public function §!!G§() : Number
      {
         return this.§58§;
      }
      
      public function §-"0§(param1:b2MassData) : void
      {
         param1.§#!,§ = this.§1i§;
         param1.I = this.§58§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §9i§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§=_§() == false);
         if(this.m_world.§=_§() == true)
         {
            return;
         }
         if(this.§^Z§ != b2_dynamicBody)
         {
            return;
         }
         this.§^!u§ = 0;
         this.§58§ = 0;
         this.§;!A§ = 0;
         this.§1i§ = param1.§#!,§;
         if(this.§1i§ <= 0)
         {
            this.§1i§ = 1;
         }
         this.§^!u§ = 1 / this.§1i§;
         if(param1.I > 0 && (this.§&!G§ & b2internal::1!q) == 0)
         {
            this.§58§ = param1.I - this.§1i§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§;!A§ = 1 / this.§58§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§>!U§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§]!1§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§]!1§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §`A§() : void
      {
         var _loc4_:b2MassData = null;
         this.§1i§ = 0;
         this.§^!u§ = 0;
         this.§58§ = 0;
         this.§;!A§ = 0;
         this.m_sweep.localCenter.§'p§();
         if(this.§^Z§ == b2_staticBody || this.§^Z§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§?"§(0,0);
         var _loc2_:b2Fixture = this.§2`§;
         while(_loc2_)
         {
            if(_loc2_.§4O§ != 0)
            {
               _loc4_ = _loc2_.§-"0§();
               this.§1i§ += _loc4_.§#!,§;
               _loc1_.x += _loc4_.center.x * _loc4_.§#!,§;
               _loc1_.y += _loc4_.center.y * _loc4_.§#!,§;
               this.§58§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§]4§;
         }
         if(this.§1i§ > 0)
         {
            this.§^!u§ = 1 / this.§1i§;
            _loc1_.x *= this.§^!u§;
            _loc1_.y *= this.§^!u§;
         }
         else
         {
            this.§1i§ = 1;
            this.§^!u§ = 1;
         }
         if(this.§58§ > 0 && (this.§&!G§ & b2internal::1!q) == 0)
         {
            this.§58§ -= this.§1i§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§58§ *= this.§0"!§;
            b2Settings.b2Assert(this.§58§ > 0);
            this.§;!A§ = 1 / this.§58§;
         }
         else
         {
            this.§58§ = 0;
            this.§;!A§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§>!U§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§]!1§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§]!1§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §#!J§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?U§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,s§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§+!=§(this.m_xf.R,param1);
      }
      
      public function §,!G§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§]!1§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§]!1§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §;O§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§]!1§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§]!1§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §>N§() : Number
      {
         return this.§6V§;
      }
      
      public function §#!B§(param1:Number) : void
      {
         this.§6V§ = param1;
      }
      
      public function §5!_§() : Number
      {
         return this.§"L§;
      }
      
      public function §+!L§(param1:Number) : void
      {
         this.§"L§ = param1;
      }
      
      public function §?!T§() : Number
      {
         return this.§]!+§;
      }
      
      public function §<?§(param1:Number) : void
      {
         this.§]!+§ = param1;
      }
      
      public function §'!B§(param1:uint) : void
      {
         if(this.§^Z§ == param1)
         {
            return;
         }
         this.§^Z§ = param1;
         this.§`A§();
         if(this.§^Z§ == b2_staticBody)
         {
            this.§]!1§.§'p§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§@p§.§'p§();
         this.§%#§ = 0;
         var _loc2_:b2ContactEdge = this.§,!D§;
         while(_loc2_)
         {
            _loc2_.§4%§.§?%§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §4!C§() : uint
      {
         return this.§^Z§;
      }
      
      public function §+[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!G§ |= b2internal::0!^;
         }
         else
         {
            this.§&!G§ &= ~b2internal::0!^;
         }
      }
      
      public function §^"0§() : Boolean
      {
         return (this.§&!G§ & b2internal::0!^) == b2internal::0!^;
      }
      
      public function §7!Q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!G§ |= b2internal::^!4;
         }
         else
         {
            this.§&!G§ &= ~b2internal::^!4;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!G§ |= b2internal::4!m;
            this.§>#§ = 0;
         }
         else
         {
            this.§&!G§ &= ~b2internal::4!m;
            this.§>#§ = 0;
            this.§]!1§.§'p§();
            this.m_angularVelocity = 0;
            this.§@p§.§'p§();
            this.§%#§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§&!G§ & b2internal::4!m) == b2internal::4!m;
      }
      
      public function §6!<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!G§ |= b2internal::1!q;
         }
         else
         {
            this.§&!G§ &= ~b2internal::1!q;
         }
         this.§`A§();
      }
      
      public function §40§() : Boolean
      {
         return (this.§&!G§ & b2internal::1!q) == b2internal::1!q;
      }
      
      public function §=l§(param1:Boolean) : void
      {
         var _loc2_:§7!G§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§"_§())
         {
            return;
         }
         if(param1)
         {
            this.§&!G§ |= b2internal::3!T;
            _loc2_ = this.m_world.§&h§.§%!_§;
            _loc3_ = this.§2`§;
            while(_loc3_)
            {
               _loc3_.§[!o§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§]4§;
            }
         }
         else
         {
            this.§&!G§ &= ~b2internal::3!T;
            _loc2_ = this.m_world.§&h§.§%!_§;
            _loc3_ = this.§2`§;
            while(_loc3_)
            {
               _loc3_.§<h§(_loc2_);
               _loc3_ = _loc3_.§]4§;
            }
            _loc4_ = this.§,!D§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§&h§.§&`§(_loc5_.§4%§);
            }
            this.§,!D§ = null;
         }
      }
      
      public function §"_§() : Boolean
      {
         return (this.§&!G§ & b2internal::3!T) == b2internal::3!T;
      }
      
      public function §,!E§() : Boolean
      {
         return (this.§&!G§ & b2internal::^!4) == b2internal::^!4;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§2`§;
      }
      
      public function §@!m§() : b2JointEdge
      {
         return this.§9`§;
      }
      
      public function §84§() : b2ControllerEdge
      {
         return this.§6!1§;
      }
      
      public function §%!"§() : b2ContactEdge
      {
         return this.§,!D§;
      }
      
      public function §+"3§() : b2Body
      {
         return this.§]4§;
      }
      
      public function GetUserData() : *
      {
         return this.§44§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§44§ = param1;
      }
      
      public function §?!y§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §1"+§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §1f§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§7!G§ = this.m_world.§&h§.§%!_§;
         _loc4_ = this.§2`§;
         while(_loc4_)
         {
            _loc4_.§%!f§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§]4§;
         }
      }
      
      b2internal function §53§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §0Q§(param1:b2Body) : Boolean
      {
         if(this.§^Z§ != b2_dynamicBody && param1.§^Z§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§9`§;
         while(_loc2_)
         {
            if(_loc2_.§8`§ == param1)
            {
               if(_loc2_.§;!f§.§!!k§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function §"!!§(param1:Number) : void
      {
         this.m_sweep.§"!!§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§53§();
      }
   }
}
