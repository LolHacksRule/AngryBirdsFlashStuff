package § !t§
{
   import §#A§.b2Contact;
   import §#A§.b2ContactEdge;
   import §#b§.b2EdgeShape;
   import §#b§.b2MassData;
   import §#b§.b2Shape;
   import §'!;§.§1!p§;
   import §+!F§.b2ControllerEdge;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Sweep;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   import §[h§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §=5§:b2Transform = new b2Transform();
      
      b2internal static var §8!b§:uint = 1;
      
      b2internal static var §`b§:uint = 2;
      
      b2internal static var §!o§:uint = 4;
      
      b2internal static var §+l§:uint = 8;
      
      b2internal static var §3!%§:uint = 16;
      
      b2internal static var §4G§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §;!n§:uint;
      
      b2internal var §5!Z§:int;
      
      b2internal var §2d§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §<&§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §"!F§:b2Vec2;
      
      b2internal var §&a§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §?!D§:b2Body;
      
      b2internal var § <§:b2Body;
      
      b2internal var §7p§:b2Fixture;
      
      b2internal var §!![§:int;
      
      b2internal var §`7§:b2ControllerEdge;
      
      b2internal var §[w§:int;
      
      b2internal var §"!7§:b2JointEdge;
      
      b2internal var §<!T§:b2ContactEdge;
      
      b2internal var §+!U§:Number;
      
      b2internal var §7!?§:Number;
      
      b2internal var §8!7§:Number;
      
      b2internal var §`d§:Number;
      
      b2internal var §5$§:Number;
      
      b2internal var §+i§:Number;
      
      b2internal var §5!p§:Number;
      
      b2internal var §0o§:Number;
      
      private var §>!2§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§<&§ = new b2Vec2();
         this.§"!F§ = new b2Vec2();
         super();
         this.§;!n§ = 0;
         if(param1.§@x§)
         {
            this.§;!n§ |= b2internal::+l;
         }
         if(param1.§`!p§)
         {
            this.§;!n§ |= b2internal::3!%;
         }
         if(param1.§[_§)
         {
            this.§;!n§ |= b2internal::!o;
         }
         if(param1.§5@§)
         {
            this.§;!n§ |= b2internal::`b;
         }
         if(param1.active)
         {
            this.§;!n§ |= b2internal::4G;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§22§();
         this.m_sweep.§[!$§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§"!7§ = null;
         this.§`7§ = null;
         this.§<!T§ = null;
         this.§[w§ = 0;
         this.§?!D§ = null;
         this.§ <§ = null;
         this.§<&§.SetV(param1.§4!=§);
         this.m_angularVelocity = param1.§'!h§;
         this.§+i§ = param1.§4!6§;
         this.§5!p§ = param1.§<!A§;
         this.§"!F§.Set(0,0);
         this.§&a§ = 0;
         this.§0o§ = 0;
         this.§5!Z§ = param1.type;
         if(this.§5!Z§ == b2_dynamicBody)
         {
            this.§+!U§ = 1;
            this.§7!?§ = 1;
         }
         else
         {
            this.§+!U§ = 0;
            this.§7!?§ = 0;
         }
         this.§8!7§ = 0;
         this.§`d§ = 0;
         this.§5$§ = param1.§=!i§;
         this.§>!2§ = param1.§!L§;
         this.§7p§ = null;
         this.§!![§ = 0;
      }
      
      private function §3D§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§[p§().y,param2.§[p§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'m§(_loc5_,param2.§[p§());
         _loc6_ = b2Math.§<b§(_loc6_,param2.§2l§());
         _loc6_ = b2Math.§'m§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§[!d§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§[!d§(param1.§[p§(),param2.§[p§())).Normalize();
         var _loc8_:* = b2Math.§9!;§(param1.§[p§(),param2.§2l§()) > 0;
         param1.§9n§(param2,_loc6_,_loc7_,_loc8_);
         param2.§3!j§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §=!2§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§1!p§ = null;
         if(this.m_world.§%!_§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§?J§(this,this.m_xf,param1);
         if(this.§;!n§ & b2internal::4G)
         {
            _loc3_ = this.m_world.§,!o§.§3!C§;
            _loc2_.§<!U§(_loc3_,this.m_xf);
         }
         _loc2_.§ <§ = this.§7p§;
         this.§7p§ = _loc2_;
         ++this.§!![§;
         _loc2_.m_body = this;
         if(_loc2_.§"x§ > 0)
         {
            this.§@M§();
         }
         this.m_world.§;!n§ |= b2World.§^m§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§=!2§(_loc3_);
      }
      
      public function §0!g§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§1!p§ = null;
         if(this.m_world.§%!_§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§7p§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§ <§ = param1.§ <§;
               }
               else
               {
                  this.§7p§ = param1.§ <§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§ <§;
         }
         var _loc5_:b2ContactEdge = this.§<!T§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§12§;
            _loc5_ = _loc5_.§1!U§;
            _loc7_ = _loc6_.§,^§();
            _loc8_ = _loc6_.§'!+§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§,!o§.§;!#§(_loc6_);
            }
         }
         if(this.§;!n§ & b2internal::4G)
         {
            _loc9_ = this.m_world.§,!o§.§3!C§;
            param1.§`!A§(_loc9_);
         }
         param1.§;!#§();
         param1.m_body = null;
         param1.§ <§ = null;
         --this.§!![§;
         this.§@M§();
      }
      
      public function §`!#§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§%!_§() == true)
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
         var _loc6_:§1!p§ = this.m_world.§,!o§.§3!C§;
         _loc3_ = this.§7p§;
         while(_loc3_)
         {
            _loc3_.§=!J§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§ <§;
         }
         this.m_world.§,!o§.§<"§();
      }
      
      public function §4Q§(param1:b2Transform) : void
      {
         this.§`!#§(param1.position,param1.GetAngle());
      }
      
      public function §>!H§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §&!%§(param1:b2Vec2) : void
      {
         this.§`!#§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §]<§(param1:Number) : void
      {
         this.§`!#§(this.GetPosition(),param1);
      }
      
      public function §^I§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §>G§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5!Z§ == b2_staticBody)
         {
            return;
         }
         this.§<&§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§<&§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§5!Z§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §use §() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§"!j§();
         _loc1_.§[_§ = (this.§;!n§ & b2internal::!o) == b2internal::!o;
         _loc1_.angle = this.GetAngle();
         _loc1_.§<!A§ = this.§5!p§;
         _loc1_.§'!h§ = this.m_angularVelocity;
         _loc1_.§`!p§ = (this.§;!n§ & b2internal::3!%) == b2internal::3!%;
         _loc1_.§@x§ = (this.§;!n§ & b2internal::+l) == b2internal::+l;
         _loc1_.§5@§ = (this.§;!n§ & b2internal::`b) == b2internal::`b;
         _loc1_.§4!6§ = this.§+i§;
         _loc1_.§4!=§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§!L§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §7!§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!Z§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§"!F§.x += param1.x;
         this.§"!F§.y += param1.y;
         this.§&a§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §#e§(param1:Number) : void
      {
         if(this.§5!Z§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§&a§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!Z§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§<&§.x += this.§7!?§ * param1.x;
         this.§<&§.y += this.§7!?§ * param1.y;
         this.m_angularVelocity += this.§`d§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §9e§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§^I§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§ i§(this.§use §());
         var _loc8_:b2Fixture = _loc5_.§7p§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§ <§;
               if(_loc7_)
               {
                  _loc7_.§ <§ = _loc13_;
               }
               else
               {
                  _loc5_.§7p§ = _loc13_;
               }
               --_loc5_.§!![§;
               _loc8_.§ <§ = _loc6_.§7p§;
               _loc6_.§7p§ = _loc8_;
               ++_loc6_.§!![§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§ <§;
            }
         }
         _loc5_.§@M§();
         _loc6_.§@M§();
         var _loc9_:b2Vec2 = _loc5_.§^I§();
         var _loc10_:b2Vec2 = _loc6_.§^I§();
         var _loc11_:b2Vec2 = b2Math.§[!d§(_loc2_,b2Math.§=!b§(_loc3_,b2Math.§<b§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§[!d§(_loc2_,b2Math.§=!b§(_loc3_,b2Math.§<b§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§1X§();
         _loc6_.§1X§();
         return _loc6_;
      }
      
      public function §3!U§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§7p§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§ <§;
            --param1.§!![§;
            _loc2_.§ <§ = this.§7p§;
            this.§7p§ = _loc2_;
            ++this.§!![§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§!![§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§^I§();
         var _loc6_:b2Vec2 = _loc4_.§^I§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§@M§();
         this.§1X§();
      }
      
      public function GetMass() : Number
      {
         return this.§+!U§;
      }
      
      public function §0l§() : Number
      {
         return this.§8!7§;
      }
      
      public function §!I§(param1:b2MassData) : void
      {
         param1.§3!^§ = this.§+!U§;
         param1.§=!'§ = this.§8!7§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §"O§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§%!_§() == false);
         if(this.m_world.§%!_§() == true)
         {
            return;
         }
         if(this.§5!Z§ != b2_dynamicBody)
         {
            return;
         }
         this.§7!?§ = 0;
         this.§8!7§ = 0;
         this.§`d§ = 0;
         this.§+!U§ = param1.§3!^§;
         if(this.§+!U§ <= 0)
         {
            this.§+!U§ = 1;
         }
         this.§7!?§ = 1 / this.§+!U§;
         if(param1.§=!'§ > 0 && (this.§;!n§ & b2internal::3!%) == 0)
         {
            this.§8!7§ = param1.§=!'§ - this.§+!U§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§`d§ = 1 / this.§8!7§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§#!N§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§<&§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§<&§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §@M§() : void
      {
         var _loc4_:b2MassData = null;
         this.§+!U§ = 0;
         this.§7!?§ = 0;
         this.§8!7§ = 0;
         this.§`d§ = 0;
         this.m_sweep.localCenter.§22§();
         if(this.§5!Z§ == b2_staticBody || this.§5!Z§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§;!T§(0,0);
         var _loc2_:b2Fixture = this.§7p§;
         while(_loc2_)
         {
            if(_loc2_.§"x§ != 0)
            {
               _loc4_ = _loc2_.§!I§();
               this.§+!U§ += _loc4_.§3!^§;
               _loc1_.x += _loc4_.center.x * _loc4_.§3!^§;
               _loc1_.y += _loc4_.center.y * _loc4_.§3!^§;
               this.§8!7§ += _loc4_.§=!'§;
            }
            _loc2_ = _loc2_.§ <§;
         }
         if(this.§+!U§ > 0)
         {
            this.§7!?§ = 1 / this.§+!U§;
            _loc1_.x *= this.§7!?§;
            _loc1_.y *= this.§7!?§;
         }
         else
         {
            this.§+!U§ = 1;
            this.§7!?§ = 1;
         }
         if(this.§8!7§ > 0 && (this.§;!n§ & b2internal::3!%) == 0)
         {
            this.§8!7§ -= this.§+!U§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§8!7§ *= this.§5$§;
            b2Settings.b2Assert(this.§8!7§ > 0);
            this.§`d§ = 1 / this.§8!7§;
         }
         else
         {
            this.§8!7§ = 0;
            this.§`d§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§#!N§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§<&§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§<&§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §=d§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`!"§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§42§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#Z§(this.m_xf.R,param1);
      }
      
      public function § w§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§<&§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§<&§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §3!9§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§<&§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§<&§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §?q§() : Number
      {
         return this.§+i§;
      }
      
      public function §!!!§(param1:Number) : void
      {
         this.§+i§ = param1;
      }
      
      public function §>"§() : Number
      {
         return this.§5!p§;
      }
      
      public function §[!E§(param1:Number) : void
      {
         this.§5!p§ = param1;
      }
      
      public function §4!@§(param1:uint) : void
      {
         if(this.§5!Z§ == param1)
         {
            return;
         }
         this.§5!Z§ = param1;
         this.§@M§();
         if(this.§5!Z§ == b2_staticBody)
         {
            this.§<&§.§22§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§"!F§.§22§();
         this.§&a§ = 0;
         var _loc2_:b2ContactEdge = this.§<!T§;
         while(_loc2_)
         {
            _loc2_.§12§.§%!h§();
            _loc2_ = _loc2_.§1!U§;
         }
      }
      
      public function §"!j§() : uint
      {
         return this.§5!Z§;
      }
      
      public function §7!h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!n§ |= b2internal::+l;
         }
         else
         {
            this.§;!n§ &= ~b2internal::+l;
         }
      }
      
      public function § v§() : Boolean
      {
         return (this.§;!n§ & b2internal::+l) == b2internal::+l;
      }
      
      public function §#q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!n§ |= b2internal::!o;
         }
         else
         {
            this.§;!n§ &= ~b2internal::!o;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!n§ |= b2internal::`b;
            this.§0o§ = 0;
         }
         else
         {
            this.§;!n§ &= ~b2internal::`b;
            this.§0o§ = 0;
            this.§<&§.§22§();
            this.m_angularVelocity = 0;
            this.§"!F§.§22§();
            this.§&a§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§;!n§ & b2internal::`b) == b2internal::`b;
      }
      
      public function §&'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!n§ |= b2internal::3!%;
         }
         else
         {
            this.§;!n§ &= ~b2internal::3!%;
         }
         this.§@M§();
      }
      
      public function §6!R§() : Boolean
      {
         return (this.§;!n§ & b2internal::3!%) == b2internal::3!%;
      }
      
      public function §9!u§(param1:Boolean) : void
      {
         var _loc2_:§1!p§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§,!t§())
         {
            return;
         }
         if(param1)
         {
            this.§;!n§ |= b2internal::4G;
            _loc2_ = this.m_world.§,!o§.§3!C§;
            _loc3_ = this.§7p§;
            while(_loc3_)
            {
               _loc3_.§<!U§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§ <§;
            }
         }
         else
         {
            this.§;!n§ &= ~b2internal::4G;
            _loc2_ = this.m_world.§,!o§.§3!C§;
            _loc3_ = this.§7p§;
            while(_loc3_)
            {
               _loc3_.§`!A§(_loc2_);
               _loc3_ = _loc3_.§ <§;
            }
            _loc4_ = this.§<!T§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§1!U§;
               this.m_world.§,!o§.§;!#§(_loc5_.§12§);
            }
            this.§<!T§ = null;
         }
      }
      
      public function §,!t§() : Boolean
      {
         return (this.§;!n§ & b2internal::4G) == b2internal::4G;
      }
      
      public function §&!7§() : Boolean
      {
         return (this.§;!n§ & b2internal::!o) == b2internal::!o;
      }
      
      public function §7!Y§() : b2Fixture
      {
         return this.§7p§;
      }
      
      public function §8$§() : b2JointEdge
      {
         return this.§"!7§;
      }
      
      public function §>!F§() : b2ControllerEdge
      {
         return this.§`7§;
      }
      
      public function §>!U§() : b2ContactEdge
      {
         return this.§<!T§;
      }
      
      public function §4!j§() : b2Body
      {
         return this.§ <§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!2§;
      }
      
      public function §[!X§(param1:*) : void
      {
         this.§>!2§ = param1;
      }
      
      public function §[j§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §1X§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §=5§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§1!p§ = this.m_world.§,!o§.§3!C§;
         _loc4_ = this.§7p§;
         while(_loc4_)
         {
            _loc4_.§=!J§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§ <§;
         }
      }
      
      b2internal function §<=§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §`t§(param1:b2Body) : Boolean
      {
         if(this.§5!Z§ != b2_dynamicBody && param1.§5!Z§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§"!7§;
         while(_loc2_)
         {
            if(_loc2_.§'q§ == param1)
            {
               if(_loc2_.§[y§.§4!2§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§1!U§;
         }
         return true;
      }
      
      b2internal function §@!+§(param1:Number) : void
      {
         this.m_sweep.§@!+§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§<=§();
      }
   }
}
