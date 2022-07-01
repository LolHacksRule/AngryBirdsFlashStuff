package §7z§
{
   import § 6§.§7!&§;
   import § q§.b2JointEdge;
   import §+L§.b2Mat22;
   import §+L§.b2Math;
   import §+L§.b2Sweep;
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §1!3§.b2EdgeShape;
   import §1!3§.b2MassData;
   import §1!3§.b2Shape;
   import §6!>§.b2ControllerEdge;
   import §9![§.b2Contact;
   import §9![§.b2ContactEdge;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §9w§:b2Transform = new b2Transform();
      
      b2internal static var §9!N§:uint = 1;
      
      b2internal static var §6?§:uint = 2;
      
      b2internal static var §4"1§:uint = 4;
      
      b2internal static var §@!;§:uint = 8;
      
      b2internal static var §<"!§:uint = 16;
      
      b2internal static var §;!$§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §]!4§:uint;
      
      b2internal var §7!S§:int;
      
      b2internal var §?!§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §#"3§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var § !l§:b2Vec2;
      
      b2internal var §1!,§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §;!F§:b2Body;
      
      b2internal var §7t§:b2Body;
      
      b2internal var §`Z§:b2Fixture;
      
      b2internal var §#!-§:int;
      
      b2internal var §1u§:b2ControllerEdge;
      
      b2internal var §^!-§:int;
      
      b2internal var §2!z§:b2JointEdge;
      
      b2internal var §7!,§:b2ContactEdge;
      
      b2internal var §<"8§:Number;
      
      b2internal var §4`§:Number;
      
      b2internal var §+!e§:Number;
      
      b2internal var §^J§:Number;
      
      b2internal var §,!a§:Number;
      
      b2internal var §`!c§:Number;
      
      b2internal var §`"'§:Number;
      
      b2internal var §3""§:Number;
      
      private var §&M§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§#"3§ = new b2Vec2();
         this.§ !l§ = new b2Vec2();
         super();
         this.§]!4§ = 0;
         if(param1.§case§)
         {
            this.§]!4§ |= b2internal::@!;;
         }
         if(param1.§4R§)
         {
            this.§]!4§ |= b2internal::<"!;
         }
         if(param1.§3"4§)
         {
            this.§]!4§ |= b2internal::4"1;
         }
         if(param1.§^!u§)
         {
            this.§]!4§ |= b2internal::6?;
         }
         if(param1.§8Y§)
         {
            this.§]!4§ |= b2internal::;!$;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§>!!§();
         this.m_sweep.§8+§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§2!z§ = null;
         this.§1u§ = null;
         this.§7!,§ = null;
         this.§^!-§ = 0;
         this.§;!F§ = null;
         this.§7t§ = null;
         this.§#"3§.SetV(param1.§%!V§);
         this.m_angularVelocity = param1.§9a§;
         this.§`!c§ = param1.§4<§;
         this.§`"'§ = param1.§0!I§;
         this.§ !l§.Set(0,0);
         this.§1!,§ = 0;
         this.§3""§ = 0;
         this.§7!S§ = param1.type;
         if(this.§7!S§ == b2_dynamicBody)
         {
            this.§<"8§ = 1;
            this.§4`§ = 1;
         }
         else
         {
            this.§<"8§ = 0;
            this.§4`§ = 0;
         }
         this.§+!e§ = 0;
         this.§^J§ = 0;
         this.§,!a§ = param1.§`!S§;
         this.§&M§ = param1.§'!3§;
         this.§`Z§ = null;
         this.§#!-§ = 0;
      }
      
      private function §[!d§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§7!F§().y,param2.§7!F§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§%l§(_loc5_,param2.§7!F§());
         _loc6_ = b2Math.§8"!§(_loc6_,param2.§?"1§());
         _loc6_ = b2Math.§%l§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§ !g§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§ !g§(param1.§7!F§(),param2.§7!F§())).Normalize();
         var _loc8_:* = b2Math.§&"4§(param1.§7!F§(),param2.§?"1§()) > 0;
         param1.§=!^§(param2,_loc6_,_loc7_,_loc8_);
         param2.§3!r§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §[j§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§7!&§ = null;
         if(this.m_world.§`Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§7T§(this,this.m_xf,param1);
         if(this.§]!4§ & b2internal::;!$)
         {
            _loc3_ = this.m_world.§>m§.§9!]§;
            _loc2_.§8!9§(_loc3_,this.m_xf);
         }
         _loc2_.§7t§ = this.§`Z§;
         this.§`Z§ = _loc2_;
         ++this.§#!-§;
         _loc2_.m_body = this;
         if(_loc2_.§%"9§ > 0)
         {
            this.§0F§();
         }
         this.m_world.§]!4§ |= b2World.§`!x§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§[j§(_loc3_);
      }
      
      public function §1!V§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§7!&§ = null;
         if(this.m_world.§`Y§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§`Z§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§7t§ = param1.§7t§;
               }
               else
               {
                  this.§`Z§ = param1.§7t§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§7t§;
         }
         var _loc5_:b2ContactEdge = this.§7!,§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§["9§;
            _loc5_ = _loc5_.§1C§;
            _loc7_ = _loc6_.§^!U§();
            _loc8_ = _loc6_.§`[§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§>m§.§#"&§(_loc6_);
            }
         }
         if(this.§]!4§ & b2internal::;!$)
         {
            _loc9_ = this.m_world.§>m§.§9!]§;
            param1.§#!]§(_loc9_);
         }
         param1.§#"&§();
         param1.m_body = null;
         param1.§7t§ = null;
         --this.§#!-§;
         this.§0F§();
      }
      
      public function §7W§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§`Y§() == true)
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
         var _loc6_:§7!&§ = this.m_world.§>m§.§9!]§;
         _loc3_ = this.§`Z§;
         while(_loc3_)
         {
            _loc3_.§="&§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§7t§;
         }
         this.m_world.§>m§.§;!2§();
      }
      
      public function §@!3§(param1:b2Transform) : void
      {
         this.§7W§(param1.position,param1.GetAngle());
      }
      
      public function §7V§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §"1§(param1:b2Vec2) : void
      {
         this.§7W§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §@B§(param1:Number) : void
      {
         this.§7W§(this.GetPosition(),param1);
      }
      
      public function §&A§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §2"6§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§7!S§ == b2_staticBody)
         {
            return;
         }
         this.§#"3§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§#"3§;
      }
      
      public function §0!3§(param1:Number) : void
      {
         if(this.§7!S§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §,!4§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §4!8§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§,!B§();
         _loc1_.§3"4§ = (this.§]!4§ & b2internal::4"1) == b2internal::4"1;
         _loc1_.angle = this.GetAngle();
         _loc1_.§0!I§ = this.§`"'§;
         _loc1_.§9a§ = this.m_angularVelocity;
         _loc1_.§4R§ = (this.§]!4§ & b2internal::<"!) == b2internal::<"!;
         _loc1_.§case§ = (this.§]!4§ & b2internal::@!;) == b2internal::@!;;
         _loc1_.§^!u§ = (this.§]!4§ & b2internal::6?) == b2internal::6?;
         _loc1_.§4<§ = this.§`!c§;
         _loc1_.§%!V§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§'!3§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §[z§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§7!S§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§ !l§.x += param1.x;
         this.§ !l§.y += param1.y;
         this.§1!,§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §3O§(param1:Number) : void
      {
         if(this.§7!S§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1!,§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§7!S§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#"3§.x += this.§4`§ * param1.x;
         this.§#"3§.y += this.§4`§ * param1.y;
         this.m_angularVelocity += this.§^J§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §&"9§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§,!4§();
         var _loc4_:b2Vec2 = this.§&A§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§4^§(this.§4!8§());
         var _loc8_:b2Fixture = _loc5_.§`Z§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§7t§;
               if(_loc7_)
               {
                  _loc7_.§7t§ = _loc13_;
               }
               else
               {
                  _loc5_.§`Z§ = _loc13_;
               }
               --_loc5_.§#!-§;
               _loc8_.§7t§ = _loc6_.§`Z§;
               _loc6_.§`Z§ = _loc8_;
               ++_loc6_.§#!-§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§7t§;
            }
         }
         _loc5_.§0F§();
         _loc6_.§0F§();
         var _loc9_:b2Vec2 = _loc5_.§&A§();
         var _loc10_:b2Vec2 = _loc6_.§&A§();
         var _loc11_:b2Vec2 = b2Math.§ !g§(_loc2_,b2Math.§-8§(_loc3_,b2Math.§8"!§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§ !g§(_loc2_,b2Math.§-8§(_loc3_,b2Math.§8"!§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§0!3§(_loc3_);
         _loc6_.§0!3§(_loc3_);
         _loc5_.§-!;§();
         _loc6_.§-!;§();
         return _loc6_;
      }
      
      public function §#?§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§`Z§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§7t§;
            --param1.§#!-§;
            _loc2_.§7t§ = this.§`Z§;
            this.§`Z§ = _loc2_;
            ++this.§#!-§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§#!-§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§&A§();
         var _loc6_:b2Vec2 = _loc4_.§&A§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§,!4§();
         var _loc10_:Number = _loc4_.§,!4§();
         _loc3_.§0F§();
         this.§-!;§();
      }
      
      public function GetMass() : Number
      {
         return this.§<"8§;
      }
      
      public function §#!Q§() : Number
      {
         return this.§+!e§;
      }
      
      public function §3K§(param1:b2MassData) : void
      {
         param1.§82§ = this.§<"8§;
         param1.I = this.§+!e§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §%I§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§`Y§() == false);
         if(this.m_world.§`Y§() == true)
         {
            return;
         }
         if(this.§7!S§ != b2_dynamicBody)
         {
            return;
         }
         this.§4`§ = 0;
         this.§+!e§ = 0;
         this.§^J§ = 0;
         this.§<"8§ = param1.§82§;
         if(this.§<"8§ <= 0)
         {
            this.§<"8§ = 1;
         }
         this.§4`§ = 1 / this.§<"8§;
         if(param1.I > 0 && (this.§]!4§ & b2internal::<"!) == 0)
         {
            this.§+!e§ = param1.I - this.§<"8§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§^J§ = 1 / this.§+!e§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§3!o§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#"3§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§#"3§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §0F§() : void
      {
         var _loc4_:b2MassData = null;
         this.§<"8§ = 0;
         this.§4`§ = 0;
         this.§+!e§ = 0;
         this.§^J§ = 0;
         this.m_sweep.localCenter.§>!!§();
         if(this.§7!S§ == b2_staticBody || this.§7!S§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§]%§(0,0);
         var _loc2_:b2Fixture = this.§`Z§;
         while(_loc2_)
         {
            if(_loc2_.§%"9§ != 0)
            {
               _loc4_ = _loc2_.§3K§();
               this.§<"8§ += _loc4_.§82§;
               _loc1_.x += _loc4_.center.x * _loc4_.§82§;
               _loc1_.y += _loc4_.center.y * _loc4_.§82§;
               this.§+!e§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§7t§;
         }
         if(this.§<"8§ > 0)
         {
            this.§4`§ = 1 / this.§<"8§;
            _loc1_.x *= this.§4`§;
            _loc1_.y *= this.§4`§;
         }
         else
         {
            this.§<"8§ = 1;
            this.§4`§ = 1;
         }
         if(this.§+!e§ > 0 && (this.§]!4§ & b2internal::<"!) == 0)
         {
            this.§+!e§ -= this.§<"8§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§+!e§ *= this.§,!a§;
            b2Settings.b2Assert(this.§+!e§ > 0);
            this.§^J§ = 1 / this.§+!e§;
         }
         else
         {
            this.§+!e§ = 0;
            this.§^J§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§3!o§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#"3§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§#"3§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §=!j§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§9p§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§8<§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ !E§(this.m_xf.R,param1);
      }
      
      public function §&v§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§#"3§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§#"3§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function § L§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§#"3§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§#"3§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §^!b§() : Number
      {
         return this.§`!c§;
      }
      
      public function §9!G§(param1:Number) : void
      {
         this.§`!c§ = param1;
      }
      
      public function §]!X§() : Number
      {
         return this.§`"'§;
      }
      
      public function §]!s§(param1:Number) : void
      {
         this.§`"'§ = param1;
      }
      
      public function §"7§(param1:uint) : void
      {
         if(this.§7!S§ == param1)
         {
            return;
         }
         this.§7!S§ = param1;
         this.§0F§();
         if(this.§7!S§ == b2_staticBody)
         {
            this.§#"3§.§>!!§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§ !l§.§>!!§();
         this.§1!,§ = 0;
         var _loc2_:b2ContactEdge = this.§7!,§;
         while(_loc2_)
         {
            _loc2_.§["9§.§4n§();
            _loc2_ = _loc2_.§1C§;
         }
      }
      
      public function §,!B§() : uint
      {
         return this.§7!S§;
      }
      
      public function §[!8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!4§ |= b2internal::@!;;
         }
         else
         {
            this.§]!4§ &= ~b2internal::@!;;
         }
      }
      
      public function §>R§() : Boolean
      {
         return (this.§]!4§ & b2internal::@!;) == b2internal::@!;;
      }
      
      public function §#! §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!4§ |= b2internal::4"1;
         }
         else
         {
            this.§]!4§ &= ~b2internal::4"1;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!4§ |= b2internal::6?;
            this.§3""§ = 0;
         }
         else
         {
            this.§]!4§ &= ~b2internal::6?;
            this.§3""§ = 0;
            this.§#"3§.§>!!§();
            this.m_angularVelocity = 0;
            this.§ !l§.§>!!§();
            this.§1!,§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§]!4§ & b2internal::6?) == b2internal::6?;
      }
      
      public function §[U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!4§ |= b2internal::<"!;
         }
         else
         {
            this.§]!4§ &= ~b2internal::<"!;
         }
         this.§0F§();
      }
      
      public function §'!q§() : Boolean
      {
         return (this.§]!4§ & b2internal::<"!) == b2internal::<"!;
      }
      
      public function §0!2§(param1:Boolean) : void
      {
         var _loc2_:§7!&§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§7%§())
         {
            return;
         }
         if(param1)
         {
            this.§]!4§ |= b2internal::;!$;
            _loc2_ = this.m_world.§>m§.§9!]§;
            _loc3_ = this.§`Z§;
            while(_loc3_)
            {
               _loc3_.§8!9§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§7t§;
            }
         }
         else
         {
            this.§]!4§ &= ~b2internal::;!$;
            _loc2_ = this.m_world.§>m§.§9!]§;
            _loc3_ = this.§`Z§;
            while(_loc3_)
            {
               _loc3_.§#!]§(_loc2_);
               _loc3_ = _loc3_.§7t§;
            }
            _loc4_ = this.§7!,§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§1C§;
               this.m_world.§>m§.§#"&§(_loc5_.§["9§);
            }
            this.§7!,§ = null;
         }
      }
      
      public function §7%§() : Boolean
      {
         return (this.§]!4§ & b2internal::;!$) == b2internal::;!$;
      }
      
      public function §>!h§() : Boolean
      {
         return (this.§]!4§ & b2internal::4"1) == b2internal::4"1;
      }
      
      public function §2!r§() : b2Fixture
      {
         return this.§`Z§;
      }
      
      public function §3!z§() : b2JointEdge
      {
         return this.§2!z§;
      }
      
      public function §=z§() : b2ControllerEdge
      {
         return this.§1u§;
      }
      
      public function §+!S§() : b2ContactEdge
      {
         return this.§7!,§;
      }
      
      public function §9!P§() : b2Body
      {
         return this.§7t§;
      }
      
      public function GetUserData() : *
      {
         return this.§&M§;
      }
      
      public function §3T§(param1:*) : void
      {
         this.§&M§ = param1;
      }
      
      public function §%@§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-!;§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §9w§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§7!&§ = this.m_world.§>m§.§9!]§;
         _loc4_ = this.§`Z§;
         while(_loc4_)
         {
            _loc4_.§="&§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§7t§;
         }
      }
      
      b2internal function §-y§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §@!a§(param1:b2Body) : Boolean
      {
         if(this.§7!S§ != b2_dynamicBody && param1.§7!S§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§2!z§;
         while(_loc2_)
         {
            if(_loc2_.§1!D§ == param1)
            {
               if(_loc2_.§'!o§.§^"6§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§1C§;
         }
         return true;
      }
      
      b2internal function §4!,§(param1:Number) : void
      {
         this.m_sweep.§4!,§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§-y§();
      }
   }
}
