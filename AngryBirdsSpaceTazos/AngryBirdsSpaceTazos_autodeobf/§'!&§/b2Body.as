package §'!&§
{
   import §,Z§.b2EdgeShape;
   import §,Z§.b2MassData;
   import §,Z§.b2Shape;
   import §3c§.§>!e§;
   import §6-§.b2ControllerEdge;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Sweep;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §=!n§.b2Contact;
   import §=!n§.b2ContactEdge;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   import §`X§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §&O§:b2Transform = new b2Transform();
      
      b2internal static var §]9§:uint = 1;
      
      b2internal static var §6k§:uint = 2;
      
      b2internal static var §!"B§:uint = 4;
      
      b2internal static var §,i§:uint = 8;
      
      b2internal static var §^]§:uint = 16;
      
      b2internal static var §%!@§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §0" §:uint;
      
      b2internal var §0w§:int;
      
      b2internal var §7V§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §?o§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §#!u§:b2Vec2;
      
      b2internal var §8<§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §20§:b2Body;
      
      b2internal var §+!o§:b2Body;
      
      b2internal var §&?§:b2Fixture;
      
      b2internal var §^!r§:int;
      
      b2internal var § <§:b2ControllerEdge;
      
      b2internal var §@!R§:int;
      
      b2internal var §5G§:b2JointEdge;
      
      b2internal var §1!Z§:b2ContactEdge;
      
      b2internal var §""$§:Number;
      
      b2internal var §6!W§:Number;
      
      b2internal var §!-§:Number;
      
      b2internal var §<!%§:Number;
      
      b2internal var §3;§:Number;
      
      b2internal var §[5§:Number;
      
      b2internal var §=!y§:Number;
      
      b2internal var §;",§:Number;
      
      private var §7R§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§?o§ = new b2Vec2();
         this.§#!u§ = new b2Vec2();
         super();
         this.§0" § = 0;
         if(param1.§<!F§)
         {
            this.§0" § |= b2internal::,i;
         }
         if(param1.§'!H§)
         {
            this.§0" § |= b2internal::^];
         }
         if(param1.§#6§)
         {
            this.§0" § |= b2internal::!"B;
         }
         if(param1.§"o§)
         {
            this.§0" § |= b2internal::6k;
         }
         if(param1.§`^§)
         {
            this.§0" § |= b2internal::%!@;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§@!d§();
         this.m_sweep.§8!L§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§5G§ = null;
         this.§ <§ = null;
         this.§1!Z§ = null;
         this.§@!R§ = 0;
         this.§20§ = null;
         this.§+!o§ = null;
         this.§?o§.SetV(param1.§&v§);
         this.m_angularVelocity = param1.§9!I§;
         this.§[5§ = param1.§?"'§;
         this.§=!y§ = param1.§@0§;
         this.§#!u§.Set(0,0);
         this.§8<§ = 0;
         this.§;",§ = 0;
         this.§0w§ = param1.type;
         if(this.§0w§ == b2_dynamicBody)
         {
            this.§""$§ = 1;
            this.§6!W§ = 1;
         }
         else
         {
            this.§""$§ = 0;
            this.§6!W§ = 0;
         }
         this.§!-§ = 0;
         this.§<!%§ = 0;
         this.§3;§ = param1.§,!^§;
         this.§7R§ = param1.§!!%§;
         this.§&?§ = null;
         this.§^!r§ = 0;
      }
      
      private function §7$§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§!"6§().y,param2.§!"6§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§5!1§(_loc5_,param2.§!"6§());
         _loc6_ = b2Math.§,!`§(_loc6_,param2.§0!V§());
         _loc6_ = b2Math.§5!1§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§6o§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§6o§(param1.§!"6§(),param2.§!"6§())).Normalize();
         var _loc8_:* = b2Math.§<"E§(param1.§!"6§(),param2.§0!V§()) > 0;
         param1.§'"-§(param2,_loc6_,_loc7_,_loc8_);
         param2.§`!P§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§>!e§ = null;
         if(this.m_world.§2F§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§]H§(this,this.m_xf,param1);
         if(this.§0" § & b2internal::%!@)
         {
            _loc3_ = this.m_world.§9>§.§2"$§;
            _loc2_.§'!C§(_loc3_,this.m_xf);
         }
         _loc2_.§+!o§ = this.§&?§;
         this.§&?§ = _loc2_;
         ++this.§^!r§;
         _loc2_.m_body = this;
         if(_loc2_.§"S§ > 0)
         {
            this.§0!^§();
         }
         this.m_world.§0" § |= b2World.§]=§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §#![§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>!e§ = null;
         if(this.m_world.§2F§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&?§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§+!o§ = param1.§+!o§;
               }
               else
               {
                  this.§&?§ = param1.§+!o§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§+!o§;
         }
         var _loc5_:b2ContactEdge = this.§1!Z§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§%!b§;
            _loc5_ = _loc5_.§ X§;
            _loc7_ = _loc6_.§'J§();
            _loc8_ = _loc6_.§#"%§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§9>§.§^!a§(_loc6_);
            }
         }
         if(this.§0" § & b2internal::%!@)
         {
            _loc9_ = this.m_world.§9>§.§2"$§;
            param1.§&1§(_loc9_);
         }
         param1.§^!a§();
         param1.m_body = null;
         param1.§+!o§ = null;
         --this.§^!r§;
         this.§0!^§();
      }
      
      public function §#"&§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§2F§() == true)
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
         var _loc6_:§>!e§ = this.m_world.§9>§.§2"$§;
         _loc3_ = this.§&?§;
         while(_loc3_)
         {
            _loc3_.§2$§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§+!o§;
         }
         this.m_world.§9>§.§^!A§();
      }
      
      public function §#"E§(param1:b2Transform) : void
      {
         this.§#"&§(param1.position,param1.GetAngle());
      }
      
      public function §>u§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§#"&§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§#"&§(this.GetPosition(),param1);
      }
      
      public function §%!;§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §4!p§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§0w§ == b2_staticBody)
         {
            return;
         }
         this.§?o§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§?o§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§0w§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §&r§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§@!N§();
         _loc1_.§#6§ = (this.§0" § & b2internal::!"B) == b2internal::!"B;
         _loc1_.angle = this.GetAngle();
         _loc1_.§@0§ = this.§=!y§;
         _loc1_.§9!I§ = this.m_angularVelocity;
         _loc1_.§'!H§ = (this.§0" § & b2internal::^]) == b2internal::^];
         _loc1_.§<!F§ = (this.§0" § & b2internal::,i) == b2internal::,i;
         _loc1_.§"o§ = (this.§0" § & b2internal::6k) == b2internal::6k;
         _loc1_.§?"'§ = this.§[5§;
         _loc1_.§&v§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§!!%§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§0w§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#!u§.x += param1.x;
         this.§#!u§.y += param1.y;
         this.§8<§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §]!]§(param1:Number) : void
      {
         if(this.§0w§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§8<§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§0w§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?o§.x += this.§6!W§ * param1.x;
         this.§?o§.y += this.§6!W§ * param1.y;
         this.m_angularVelocity += this.§<!%§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §^n§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§%!;§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§&r§());
         var _loc8_:b2Fixture = _loc5_.§&?§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§+!o§;
               if(_loc7_)
               {
                  _loc7_.§+!o§ = _loc13_;
               }
               else
               {
                  _loc5_.§&?§ = _loc13_;
               }
               --_loc5_.§^!r§;
               _loc8_.§+!o§ = _loc6_.§&?§;
               _loc6_.§&?§ = _loc8_;
               ++_loc6_.§^!r§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§+!o§;
            }
         }
         _loc5_.§0!^§();
         _loc6_.§0!^§();
         var _loc9_:b2Vec2 = _loc5_.§%!;§();
         var _loc10_:b2Vec2 = _loc6_.§%!;§();
         var _loc11_:b2Vec2 = b2Math.§6o§(_loc2_,b2Math.§@N§(_loc3_,b2Math.§,!`§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§6o§(_loc2_,b2Math.§@N§(_loc3_,b2Math.§,!`§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§null§();
         _loc6_.§null§();
         return _loc6_;
      }
      
      public function §!h§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&?§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§+!o§;
            --param1.§^!r§;
            _loc2_.§+!o§ = this.§&?§;
            this.§&?§ = _loc2_;
            ++this.§^!r§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§^!r§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§%!;§();
         var _loc6_:b2Vec2 = _loc4_.§%!;§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§0!^§();
         this.§null§();
      }
      
      public function GetMass() : Number
      {
         return this.§""$§;
      }
      
      public function §<"3§() : Number
      {
         return this.§!-§;
      }
      
      public function §7r§(param1:b2MassData) : void
      {
         param1.§[]§ = this.§""$§;
         param1.I = this.§!-§;
         param1.§`C§.SetV(this.m_sweep.localCenter);
      }
      
      public function §2I§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§2F§() == false);
         if(this.m_world.§2F§() == true)
         {
            return;
         }
         if(this.§0w§ != b2_dynamicBody)
         {
            return;
         }
         this.§6!W§ = 0;
         this.§!-§ = 0;
         this.§<!%§ = 0;
         this.§""$§ = param1.§[]§;
         if(this.§""$§ <= 0)
         {
            this.§""$§ = 1;
         }
         this.§6!W§ = 1 / this.§""$§;
         if(param1.I > 0 && (this.§0" § & b2internal::^]) == 0)
         {
            this.§!-§ = param1.I - this.§""$§ * (param1.§`C§.x * param1.§`C§.x + param1.§`C§.y * param1.§`C§.y);
            this.§<!%§ = 1 / this.§!-§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§`C§);
         this.m_sweep.c0.SetV(b2Math.§=&§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?o§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§?o§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §0!^§() : void
      {
         var _loc4_:b2MassData = null;
         this.§""$§ = 0;
         this.§6!W§ = 0;
         this.§!-§ = 0;
         this.§<!%§ = 0;
         this.m_sweep.localCenter.§@!d§();
         if(this.§0w§ == b2_staticBody || this.§0w§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§^!l§(0,0);
         var _loc2_:b2Fixture = this.§&?§;
         while(_loc2_)
         {
            if(_loc2_.§"S§ != 0)
            {
               _loc4_ = _loc2_.§7r§();
               this.§""$§ += _loc4_.§[]§;
               _loc1_.x += _loc4_.§`C§.x * _loc4_.§[]§;
               _loc1_.y += _loc4_.§`C§.y * _loc4_.§[]§;
               this.§!-§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§+!o§;
         }
         if(this.§""$§ > 0)
         {
            this.§6!W§ = 1 / this.§""$§;
            _loc1_.x *= this.§6!W§;
            _loc1_.y *= this.§6!W§;
         }
         else
         {
            this.§""$§ = 1;
            this.§6!W§ = 1;
         }
         if(this.§!-§ > 0 && (this.§0" § & b2internal::^]) == 0)
         {
            this.§!-§ -= this.§""$§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§!-§ *= this.§3;§;
            b2Settings.b2Assert(this.§!-§ > 0);
            this.§<!%§ = 1 / this.§!-§;
         }
         else
         {
            this.§!-§ = 0;
            this.§<!%§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§=&§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?o§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§?o§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §+!y§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,!s§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4!t§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§7!`§(this.m_xf.R,param1);
      }
      
      public function §7"C§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§?o§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§?o§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §6F§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§?o§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§?o§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §!;§() : Number
      {
         return this.§[5§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§[5§ = param1;
      }
      
      public function §+!1§() : Number
      {
         return this.§=!y§;
      }
      
      public function §"!l§(param1:Number) : void
      {
         this.§=!y§ = param1;
      }
      
      public function §1!D§(param1:uint) : void
      {
         if(this.§0w§ == param1)
         {
            return;
         }
         this.§0w§ = param1;
         this.§0!^§();
         if(this.§0w§ == b2_staticBody)
         {
            this.§?o§.§@!d§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§#!u§.§@!d§();
         this.§8<§ = 0;
         var _loc2_:b2ContactEdge = this.§1!Z§;
         while(_loc2_)
         {
            _loc2_.§%!b§.§0]§();
            _loc2_ = _loc2_.§ X§;
         }
      }
      
      public function §@!N§() : uint
      {
         return this.§0w§;
      }
      
      public function §&2§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0" § |= b2internal::,i;
         }
         else
         {
            this.§0" § &= ~b2internal::,i;
         }
      }
      
      public function §9!0§() : Boolean
      {
         return (this.§0" § & b2internal::,i) == b2internal::,i;
      }
      
      public function §9x§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0" § |= b2internal::!"B;
         }
         else
         {
            this.§0" § &= ~b2internal::!"B;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0" § |= b2internal::6k;
            this.§;",§ = 0;
         }
         else
         {
            this.§0" § &= ~b2internal::6k;
            this.§;",§ = 0;
            this.§?o§.§@!d§();
            this.m_angularVelocity = 0;
            this.§#!u§.§@!d§();
            this.§8<§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§0" § & b2internal::6k) == b2internal::6k;
      }
      
      public function §=!@§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0" § |= b2internal::^];
         }
         else
         {
            this.§0" § &= ~b2internal::^];
         }
         this.§0!^§();
      }
      
      public function §]!I§() : Boolean
      {
         return (this.§0" § & b2internal::^]) == b2internal::^];
      }
      
      public function §85§(param1:Boolean) : void
      {
         var _loc2_:§>!e§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§0!h§())
         {
            return;
         }
         if(param1)
         {
            this.§0" § |= b2internal::%!@;
            _loc2_ = this.m_world.§9>§.§2"$§;
            _loc3_ = this.§&?§;
            while(_loc3_)
            {
               _loc3_.§'!C§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§+!o§;
            }
         }
         else
         {
            this.§0" § &= ~b2internal::%!@;
            _loc2_ = this.m_world.§9>§.§2"$§;
            _loc3_ = this.§&?§;
            while(_loc3_)
            {
               _loc3_.§&1§(_loc2_);
               _loc3_ = _loc3_.§+!o§;
            }
            _loc4_ = this.§1!Z§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§ X§;
               this.m_world.§9>§.§^!a§(_loc5_.§%!b§);
            }
            this.§1!Z§ = null;
         }
      }
      
      public function §0!h§() : Boolean
      {
         return (this.§0" § & b2internal::%!@) == b2internal::%!@;
      }
      
      public function §^!S§() : Boolean
      {
         return (this.§0" § & b2internal::!"B) == b2internal::!"B;
      }
      
      public function §=s§() : b2Fixture
      {
         return this.§&?§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§5G§;
      }
      
      public function §+">§() : b2ControllerEdge
      {
         return this.§ <§;
      }
      
      public function §<!r§() : b2ContactEdge
      {
         return this.§1!Z§;
      }
      
      public function §`!y§() : b2Body
      {
         return this.§+!o§;
      }
      
      public function GetUserData() : *
      {
         return this.§7R§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§7R§ = param1;
      }
      
      public function §3"+§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §null§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §&O§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§>!e§ = this.m_world.§9>§.§2"$§;
         _loc4_ = this.§&?§;
         while(_loc4_)
         {
            _loc4_.§2$§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§+!o§;
         }
      }
      
      b2internal function §6!+§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §!!Z§(param1:b2Body) : Boolean
      {
         if(this.§0w§ != b2_dynamicBody && param1.§0w§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§5G§;
         while(_loc2_)
         {
            if(_loc2_.§1!>§ == param1)
            {
               if(_loc2_.§7!>§.§46§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§ X§;
         }
         return true;
      }
      
      b2internal function §,s§(param1:Number) : void
      {
         this.m_sweep.§,s§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§6!+§();
      }
   }
}
