package §+S§
{
   import § !V§.b2JointEdge;
   import §"!9§.b2EdgeShape;
   import §"!9§.b2MassData;
   import §"!9§.b2Shape;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Sweep;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.§#!M§;
   import §;T§.b2Contact;
   import §;T§.b2ContactEdge;
   import §=!z§.b2ControllerEdge;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §8?§:b2Transform = new b2Transform();
      
      b2internal static var §`Y§:uint = 1;
      
      b2internal static var §<"7§:uint = 2;
      
      b2internal static var §8"8§:uint = 4;
      
      b2internal static var §'!Z§:uint = 8;
      
      b2internal static var §!!,§:uint = 16;
      
      b2internal static var §@""§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §`"8§:uint;
      
      b2internal var §="1§:int;
      
      b2internal var §7<§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §,b§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §2!d§:b2Vec2;
      
      b2internal var §?6§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §7b§:b2Body;
      
      b2internal var §>""§:b2Body;
      
      b2internal var §&f§:b2Fixture;
      
      b2internal var §+w§:int;
      
      b2internal var §!n§:b2ControllerEdge;
      
      b2internal var §;"<§:int;
      
      b2internal var §-y§:b2JointEdge;
      
      b2internal var §]8§:b2ContactEdge;
      
      b2internal var §@e§:Number;
      
      b2internal var §;k§:Number;
      
      b2internal var §2;§:Number;
      
      b2internal var §6x§:Number;
      
      b2internal var §;!e§:Number;
      
      b2internal var §%!o§:Number;
      
      b2internal var §7!_§:Number;
      
      b2internal var §[^§:Number;
      
      private var §6g§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§,b§ = new b2Vec2();
         this.§2!d§ = new b2Vec2();
         super();
         this.§`"8§ = 0;
         if(param1.§@!§)
         {
            this.§`"8§ |= b2internal::'!Z;
         }
         if(param1.§4_§)
         {
            this.§`"8§ |= b2internal::!!,;
         }
         if(param1.§'!H§)
         {
            this.§`"8§ |= b2internal::8"8;
         }
         if(param1.§54§)
         {
            this.§`"8§ |= b2internal::<"7;
         }
         if(param1.§4!N§)
         {
            this.§`"8§ |= b2internal::@"";
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§@!s§();
         this.m_sweep.§`!e§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§-y§ = null;
         this.§!n§ = null;
         this.§]8§ = null;
         this.§;"<§ = 0;
         this.§7b§ = null;
         this.§>""§ = null;
         this.§,b§.SetV(param1.§;!k§);
         this.m_angularVelocity = param1.§@n§;
         this.§%!o§ = param1.§[!E§;
         this.§7!_§ = param1.§[!u§;
         this.§2!d§.Set(0,0);
         this.§?6§ = 0;
         this.§[^§ = 0;
         this.§="1§ = param1.type;
         if(this.§="1§ == b2_dynamicBody)
         {
            this.§@e§ = 1;
            this.§;k§ = 1;
         }
         else
         {
            this.§@e§ = 0;
            this.§;k§ = 0;
         }
         this.§2;§ = 0;
         this.§6x§ = 0;
         this.§;!e§ = param1.§7!p§;
         this.§6g§ = param1.§1P§;
         this.§&f§ = null;
         this.§+w§ = 0;
      }
      
      private function §-![§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§9i§().y,param2.§9i§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@;§(_loc5_,param2.§9i§());
         _loc6_ = b2Math.§'!%§(_loc6_,param2.§"I§());
         _loc6_ = b2Math.§@;§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§=0§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§=0§(param1.§9i§(),param2.§9i§())).Normalize();
         var _loc8_:* = b2Math.§@!y§(param1.§9i§(),param2.§"I§()) > 0;
         param1.§+!P§(param2,_loc6_,_loc7_,_loc8_);
         param2.§<x§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §!!V§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§#!M§ = null;
         if(this.m_world.§=W§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§-!x§(this,this.m_xf,param1);
         if(this.§`"8§ & b2internal::@"")
         {
            _loc3_ = this.m_world.§&!L§.§9n§;
            _loc2_.§>!#§(_loc3_,this.m_xf);
         }
         _loc2_.§>""§ = this.§&f§;
         this.§&f§ = _loc2_;
         ++this.§+w§;
         _loc2_.m_body = this;
         if(_loc2_.§-&§ > 0)
         {
            this.§3!L§();
         }
         this.m_world.§`"8§ |= b2World.§;!4§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§!!V§(_loc3_);
      }
      
      public function §[8§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§#!M§ = null;
         if(this.m_world.§=W§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&f§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§>""§ = param1.§>""§;
               }
               else
               {
                  this.§&f§ = param1.§>""§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§>""§;
         }
         var _loc5_:b2ContactEdge = this.§]8§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§3w§;
            _loc5_ = _loc5_.§9!V§;
            _loc7_ = _loc6_.§=!'§();
            _loc8_ = _loc6_.§&O§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§&!L§.§;&§(_loc6_);
            }
         }
         if(this.§`"8§ & b2internal::@"")
         {
            _loc9_ = this.m_world.§&!L§.§9n§;
            param1.§`4§(_loc9_);
         }
         param1.§;&§();
         param1.m_body = null;
         param1.§>""§ = null;
         --this.§+w§;
         this.§3!L§();
      }
      
      public function §,!C§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§=W§() == true)
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
         var _loc6_:§#!M§ = this.m_world.§&!L§.§9n§;
         _loc3_ = this.§&f§;
         while(_loc3_)
         {
            _loc3_.§";§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§>""§;
         }
         this.m_world.§&!L§.§+"-§();
      }
      
      public function §0">§(param1:b2Transform) : void
      {
         this.§,!C§(param1.position,param1.GetAngle());
      }
      
      public function §?^§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §>!W§(param1:b2Vec2) : void
      {
         this.§,!C§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §-!7§(param1:Number) : void
      {
         this.§,!C§(this.GetPosition(),param1);
      }
      
      public function §=!q§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §,!z§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§="1§ == b2_staticBody)
         {
            return;
         }
         this.§,b§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§,b§;
      }
      
      public function §`!`§(param1:Number) : void
      {
         if(this.§="1§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §7"<§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §`O§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§+!O§();
         _loc1_.§'!H§ = (this.§`"8§ & b2internal::8"8) == b2internal::8"8;
         _loc1_.angle = this.GetAngle();
         _loc1_.§[!u§ = this.§7!_§;
         _loc1_.§@n§ = this.m_angularVelocity;
         _loc1_.§4_§ = (this.§`"8§ & b2internal::!!,) == b2internal::!!,;
         _loc1_.§@!§ = (this.§`"8§ & b2internal::'!Z) == b2internal::'!Z;
         _loc1_.§54§ = (this.§`"8§ & b2internal::<"7) == b2internal::<"7;
         _loc1_.§[!E§ = this.§%!o§;
         _loc1_.§;!k§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§1P§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §6Q§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§="1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§2!d§.x += param1.x;
         this.§2!d§.y += param1.y;
         this.§?6§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §4K§(param1:Number) : void
      {
         if(this.§="1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?6§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§="1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,b§.x += this.§;k§ * param1.x;
         this.§,b§.y += this.§;k§ * param1.y;
         this.m_angularVelocity += this.§6x§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §6!6§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§7"<§();
         var _loc4_:b2Vec2 = this.§=!q§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§6!E§(this.§`O§());
         var _loc8_:b2Fixture = _loc5_.§&f§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§>""§;
               if(_loc7_)
               {
                  _loc7_.§>""§ = _loc13_;
               }
               else
               {
                  _loc5_.§&f§ = _loc13_;
               }
               --_loc5_.§+w§;
               _loc8_.§>""§ = _loc6_.§&f§;
               _loc6_.§&f§ = _loc8_;
               ++_loc6_.§+w§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>""§;
            }
         }
         _loc5_.§3!L§();
         _loc6_.§3!L§();
         var _loc9_:b2Vec2 = _loc5_.§=!q§();
         var _loc10_:b2Vec2 = _loc6_.§=!q§();
         var _loc11_:b2Vec2 = b2Math.§=0§(_loc2_,b2Math.§4n§(_loc3_,b2Math.§'!%§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§=0§(_loc2_,b2Math.§4n§(_loc3_,b2Math.§'!%§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§`!`§(_loc3_);
         _loc6_.§`!`§(_loc3_);
         _loc5_.§1"4§();
         _loc6_.§1"4§();
         return _loc6_;
      }
      
      public function §5!`§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&f§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§>""§;
            --param1.§+w§;
            _loc2_.§>""§ = this.§&f§;
            this.§&f§ = _loc2_;
            ++this.§+w§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§+w§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§=!q§();
         var _loc6_:b2Vec2 = _loc4_.§=!q§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§7"<§();
         var _loc10_:Number = _loc4_.§7"<§();
         _loc3_.§3!L§();
         this.§1"4§();
      }
      
      public function GetMass() : Number
      {
         return this.§@e§;
      }
      
      public function §"!3§() : Number
      {
         return this.§2;§;
      }
      
      public function §9!B§(param1:b2MassData) : void
      {
         param1.§5d§ = this.§@e§;
         param1.I = this.§2;§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §&t§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§=W§() == false);
         if(this.m_world.§=W§() == true)
         {
            return;
         }
         if(this.§="1§ != b2_dynamicBody)
         {
            return;
         }
         this.§;k§ = 0;
         this.§2;§ = 0;
         this.§6x§ = 0;
         this.§@e§ = param1.§5d§;
         if(this.§@e§ <= 0)
         {
            this.§@e§ = 1;
         }
         this.§;k§ = 1 / this.§@e§;
         if(param1.I > 0 && (this.§`"8§ & b2internal::!!,) == 0)
         {
            this.§2;§ = param1.I - this.§@e§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§6x§ = 1 / this.§2;§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§>!C§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,b§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§,b§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §3!L§() : void
      {
         var _loc4_:b2MassData = null;
         this.§@e§ = 0;
         this.§;k§ = 0;
         this.§2;§ = 0;
         this.§6x§ = 0;
         this.m_sweep.localCenter.§@!s§();
         if(this.§="1§ == b2_staticBody || this.§="1§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§ !z§(0,0);
         var _loc2_:b2Fixture = this.§&f§;
         while(_loc2_)
         {
            if(_loc2_.§-&§ != 0)
            {
               _loc4_ = _loc2_.§9!B§();
               this.§@e§ += _loc4_.§5d§;
               _loc1_.x += _loc4_.center.x * _loc4_.§5d§;
               _loc1_.y += _loc4_.center.y * _loc4_.§5d§;
               this.§2;§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§>""§;
         }
         if(this.§@e§ > 0)
         {
            this.§;k§ = 1 / this.§@e§;
            _loc1_.x *= this.§;k§;
            _loc1_.y *= this.§;k§;
         }
         else
         {
            this.§@e§ = 1;
            this.§;k§ = 1;
         }
         if(this.§2;§ > 0 && (this.§`"8§ & b2internal::!!,) == 0)
         {
            this.§2;§ -= this.§@e§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§2;§ *= this.§;!e§;
            b2Settings.b2Assert(this.§2;§ > 0);
            this.§6x§ = 1 / this.§2;§;
         }
         else
         {
            this.§2;§ = 0;
            this.§6x§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§>!C§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,b§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§,b§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §<!v§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0b§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§+D§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%!C§(this.m_xf.R,param1);
      }
      
      public function §0"0§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§,b§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§,b§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §7!l§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§,b§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§,b§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function § h§() : Number
      {
         return this.§%!o§;
      }
      
      public function §9p§(param1:Number) : void
      {
         this.§%!o§ = param1;
      }
      
      public function §<!Z§() : Number
      {
         return this.§7!_§;
      }
      
      public function §6!+§(param1:Number) : void
      {
         this.§7!_§ = param1;
      }
      
      public function §7"$§(param1:uint) : void
      {
         if(this.§="1§ == param1)
         {
            return;
         }
         this.§="1§ = param1;
         this.§3!L§();
         if(this.§="1§ == b2_staticBody)
         {
            this.§,b§.§@!s§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§2!d§.§@!s§();
         this.§?6§ = 0;
         var _loc2_:b2ContactEdge = this.§]8§;
         while(_loc2_)
         {
            _loc2_.§3w§.§6L§();
            _loc2_ = _loc2_.§9!V§;
         }
      }
      
      public function §+!O§() : uint
      {
         return this.§="1§;
      }
      
      public function § !E§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"8§ |= b2internal::'!Z;
         }
         else
         {
            this.§`"8§ &= ~b2internal::'!Z;
         }
      }
      
      public function §3#§() : Boolean
      {
         return (this.§`"8§ & b2internal::'!Z) == b2internal::'!Z;
      }
      
      public function §1B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"8§ |= b2internal::8"8;
         }
         else
         {
            this.§`"8§ &= ~b2internal::8"8;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"8§ |= b2internal::<"7;
            this.§[^§ = 0;
         }
         else
         {
            this.§`"8§ &= ~b2internal::<"7;
            this.§[^§ = 0;
            this.§,b§.§@!s§();
            this.m_angularVelocity = 0;
            this.§2!d§.§@!s§();
            this.§?6§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§`"8§ & b2internal::<"7) == b2internal::<"7;
      }
      
      public function §@M§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"8§ |= b2internal::!!,;
         }
         else
         {
            this.§`"8§ &= ~b2internal::!!,;
         }
         this.§3!L§();
      }
      
      public function §4!p§() : Boolean
      {
         return (this.§`"8§ & b2internal::!!,) == b2internal::!!,;
      }
      
      public function §2!%§(param1:Boolean) : void
      {
         var _loc2_:§#!M§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§9!9§())
         {
            return;
         }
         if(param1)
         {
            this.§`"8§ |= b2internal::@"";
            _loc2_ = this.m_world.§&!L§.§9n§;
            _loc3_ = this.§&f§;
            while(_loc3_)
            {
               _loc3_.§>!#§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§>""§;
            }
         }
         else
         {
            this.§`"8§ &= ~b2internal::@"";
            _loc2_ = this.m_world.§&!L§.§9n§;
            _loc3_ = this.§&f§;
            while(_loc3_)
            {
               _loc3_.§`4§(_loc2_);
               _loc3_ = _loc3_.§>""§;
            }
            _loc4_ = this.§]8§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§9!V§;
               this.m_world.§&!L§.§;&§(_loc5_.§3w§);
            }
            this.§]8§ = null;
         }
      }
      
      public function §9!9§() : Boolean
      {
         return (this.§`"8§ & b2internal::@"") == b2internal::@"";
      }
      
      public function §>!m§() : Boolean
      {
         return (this.§`"8§ & b2internal::8"8) == b2internal::8"8;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§&f§;
      }
      
      public function §>!`§() : b2JointEdge
      {
         return this.§-y§;
      }
      
      public function §#1§() : b2ControllerEdge
      {
         return this.§!n§;
      }
      
      public function §4!T§() : b2ContactEdge
      {
         return this.§]8§;
      }
      
      public function §'!q§() : b2Body
      {
         return this.§>""§;
      }
      
      public function GetUserData() : *
      {
         return this.§6g§;
      }
      
      public function §?"5§(param1:*) : void
      {
         this.§6g§ = param1;
      }
      
      public function §>[§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §1"4§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §8?§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§#!M§ = this.m_world.§&!L§.§9n§;
         _loc4_ = this.§&f§;
         while(_loc4_)
         {
            _loc4_.§";§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§>""§;
         }
      }
      
      b2internal function §#!k§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function § each§(param1:b2Body) : Boolean
      {
         if(this.§="1§ != b2_dynamicBody && param1.§="1§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§-y§;
         while(_loc2_)
         {
            if(_loc2_.§!!m§ == param1)
            {
               if(_loc2_.§?!'§.§1!-§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§9!V§;
         }
         return true;
      }
      
      b2internal function §-9§(param1:Number) : void
      {
         this.m_sweep.§-9§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§#!k§();
      }
   }
}
