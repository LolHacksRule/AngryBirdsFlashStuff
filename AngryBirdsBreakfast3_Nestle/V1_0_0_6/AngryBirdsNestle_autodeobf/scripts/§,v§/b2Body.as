package §,v§
{
   import §!;§.§;!`§;
   import §&!g§.b2ControllerEdge;
   import §-!A§.b2Mat22;
   import §-!A§.b2Math;
   import §-!A§.b2Sweep;
   import §-!A§.b2Transform;
   import §-!A§.b2Vec2;
   import §3!4§.b2EdgeShape;
   import §3!4§.b2MassData;
   import §3!4§.b2Shape;
   import §5t§.b2Contact;
   import §5t§.b2ContactEdge;
   import §;!r§.b2JointEdge;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §]%§:b2Transform = new b2Transform();
      
      b2internal static var §;B§:uint = 1;
      
      b2internal static var §[i§:uint = 2;
      
      b2internal static var §?!3§:uint = 4;
      
      b2internal static var §9"2§:uint = 8;
      
      b2internal static var §7"$§:uint = 16;
      
      b2internal static var §"i§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §@!5§:uint;
      
      b2internal var §0"§:int;
      
      b2internal var §5!f§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §4!"§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §'I§:b2Vec2;
      
      b2internal var §;!'§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §true§:b2Body;
      
      b2internal var §7!+§:b2Body;
      
      b2internal var §[!t§:b2Fixture;
      
      b2internal var §<!@§:int;
      
      b2internal var §8!J§:b2ControllerEdge;
      
      b2internal var §]!f§:int;
      
      b2internal var §@!g§:b2JointEdge;
      
      b2internal var §&!]§:b2ContactEdge;
      
      b2internal var §-X§:Number;
      
      b2internal var §3!o§:Number;
      
      b2internal var §9!s§:Number;
      
      b2internal var §%!^§:Number;
      
      b2internal var §;F§:Number;
      
      b2internal var §+I§:Number;
      
      b2internal var §-x§:Number;
      
      b2internal var §<!H§:Number;
      
      b2internal var §,!1§:Number;
      
      private var §8X§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§4!"§ = new b2Vec2();
         this.§'I§ = new b2Vec2();
         super();
         this.§@!5§ = 0;
         if(param1.§#!6§)
         {
            this.§@!5§ |= b2internal::9"2;
         }
         if(param1.§<!l§)
         {
            this.§@!5§ |= b2internal::7"$;
         }
         if(param1.§6p§)
         {
            this.§@!5§ |= b2internal::?!3;
         }
         if(param1.§@W§)
         {
            this.§@!5§ |= b2internal::[i;
         }
         if(param1.active)
         {
            this.§@!5§ |= b2internal::"i;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§9N§();
         this.m_sweep.§?!m§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§@!g§ = null;
         this.§8!J§ = null;
         this.§&!]§ = null;
         this.§]!f§ = 0;
         this.§true§ = null;
         this.§7!+§ = null;
         this.§4!"§.SetV(param1.§#q§);
         this.m_angularVelocity = param1.§9!"§;
         this.§+I§ = param1.§'D§;
         this.§-x§ = param1.§8!H§;
         this.§,!1§ = param1.§`!_§;
         this.§'I§.Set(0,0);
         this.§;!'§ = 0;
         this.§<!H§ = 0;
         this.§0"§ = param1.type;
         if(this.§0"§ == b2_dynamicBody)
         {
            this.§-X§ = 1;
            this.§3!o§ = 1;
         }
         else
         {
            this.§-X§ = 0;
            this.§3!o§ = 0;
         }
         this.§9!s§ = 0;
         this.§%!^§ = 0;
         this.§;F§ = param1.§'!§;
         this.§8X§ = param1.userData;
         this.§[!t§ = null;
         this.§<!@§ = 0;
      }
      
      private function §@!k§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§@!t§().y,param2.§@!t§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§-!g§(_loc5_,param2.§@!t§());
         _loc6_ = b2Math.§[I§(_loc6_,param2.§"!e§());
         _loc6_ = b2Math.§-!g§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§<!T§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§<!T§(param1.§@!t§(),param2.§@!t§())).Normalize();
         var _loc8_:* = b2Math.§6§(param1.§@!t§(),param2.§"!e§()) > 0;
         param1.§+5§(param2,_loc6_,_loc7_,_loc8_);
         param2.§%b§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§;!`§ = null;
         if(this.m_world.§,!v§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§@Q§(this,this.m_xf,param1);
         if(this.§@!5§ & b2internal::"i)
         {
            _loc3_ = this.m_world.§^!b§.§]!6§;
            _loc2_.§'"!§(_loc3_,this.m_xf);
         }
         _loc2_.§7!+§ = this.§[!t§;
         this.§[!t§ = _loc2_;
         ++this.§<!@§;
         _loc2_.m_body = this;
         if(_loc2_.§^N§ > 0)
         {
            this.§#!B§();
         }
         this.m_world.§@!5§ |= b2World.§-!L§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §2P§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§;!`§ = null;
         if(this.m_world.§,!v§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§[!t§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§7!+§ = param1.§7!+§;
               }
               else
               {
                  this.§[!t§ = param1.§7!+§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§7!+§;
         }
         var _loc5_:b2ContactEdge = this.§&!]§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§@!"§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§=q§();
            _loc8_ = _loc6_.§^!z§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§^!b§.§#!N§(_loc6_);
            }
         }
         if(this.§@!5§ & b2internal::"i)
         {
            _loc9_ = this.m_world.§^!b§.§]!6§;
            param1.§'",§(_loc9_);
         }
         param1.§#!N§();
         param1.m_body = null;
         param1.§7!+§ = null;
         --this.§<!@§;
         this.§#!B§();
      }
      
      public function §]v§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§,!v§() == true)
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
         var _loc6_:§;!`§ = this.m_world.§^!b§.§]!6§;
         _loc3_ = this.§[!t§;
         while(_loc3_)
         {
            _loc3_.§-"§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§7!+§;
         }
         this.m_world.§^!b§.§9!G§();
      }
      
      public function §>I§(param1:b2Transform) : void
      {
         this.§]v§(param1.position,param1.GetAngle());
      }
      
      public function §^!G§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§]v§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§]v§(this.GetPosition(),param1);
      }
      
      public function §9!#§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §%!L§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§0"§ == b2_staticBody)
         {
            return;
         }
         this.§4!"§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§4!"§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§0"§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §5"+§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§@!D§();
         _loc1_.§6p§ = (this.§@!5§ & b2internal::?!3) == b2internal::?!3;
         _loc1_.angle = this.GetAngle();
         _loc1_.§8!H§ = this.§-x§;
         _loc1_.§9!"§ = this.m_angularVelocity;
         _loc1_.§<!l§ = (this.§@!5§ & b2internal::7"$) == b2internal::7"$;
         _loc1_.§#!6§ = (this.§@!5§ & b2internal::9"2) == b2internal::9"2;
         _loc1_.§@W§ = (this.§@!5§ & b2internal::[i) == b2internal::[i;
         _loc1_.§'D§ = this.§+I§;
         _loc1_.§#q§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §7!r§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§0"§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'I§.x += param1.x;
         this.§'I§.y += param1.y;
         this.§;!'§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §#s§(param1:Number) : void
      {
         if(this.§0"§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;!'§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§0"§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4!"§.x += this.§3!o§ * param1.x;
         this.§4!"§.y += this.§3!o§ * param1.y;
         this.m_angularVelocity += this.§%!^§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §2!C§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§9!#§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§5"+§());
         var _loc8_:b2Fixture = _loc5_.§[!t§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§7!+§;
               if(_loc7_)
               {
                  _loc7_.§7!+§ = _loc13_;
               }
               else
               {
                  _loc5_.§[!t§ = _loc13_;
               }
               --_loc5_.§<!@§;
               _loc8_.§7!+§ = _loc6_.§[!t§;
               _loc6_.§[!t§ = _loc8_;
               ++_loc6_.§<!@§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§7!+§;
            }
         }
         _loc5_.§#!B§();
         _loc6_.§#!B§();
         var _loc9_:b2Vec2 = _loc5_.§9!#§();
         var _loc10_:b2Vec2 = _loc6_.§9!#§();
         var _loc11_:b2Vec2 = b2Math.§<!T§(_loc2_,b2Math.§9y§(_loc3_,b2Math.§[I§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§<!T§(_loc2_,b2Math.§9y§(_loc3_,b2Math.§[I§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§"p§();
         _loc6_.§"p§();
         return _loc6_;
      }
      
      public function §9;§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§[!t§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§7!+§;
            --param1.§<!@§;
            _loc2_.§7!+§ = this.§[!t§;
            this.§[!t§ = _loc2_;
            ++this.§<!@§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§<!@§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§9!#§();
         var _loc6_:b2Vec2 = _loc4_.§9!#§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§#!B§();
         this.§"p§();
      }
      
      public function GetMass() : Number
      {
         return this.§-X§;
      }
      
      public function §&!N§() : Number
      {
         return this.§9!s§;
      }
      
      public function §;l§(param1:b2MassData) : void
      {
         param1.§var § = this.§-X§;
         param1.I = this.§9!s§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §0F§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§,!v§() == false);
         if(this.m_world.§,!v§() == true)
         {
            return;
         }
         if(this.§0"§ != b2_dynamicBody)
         {
            return;
         }
         this.§3!o§ = 0;
         this.§9!s§ = 0;
         this.§%!^§ = 0;
         this.§-X§ = param1.§var §;
         if(this.§-X§ <= 0)
         {
            this.§-X§ = 1;
         }
         this.§3!o§ = 1 / this.§-X§;
         if(param1.I > 0 && (this.§@!5§ & b2internal::7"$) == 0)
         {
            this.§9!s§ = param1.I - this.§-X§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§%!^§ = 1 / this.§9!s§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§6!D§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4!"§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§4!"§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §#!B§() : void
      {
         var _loc4_:b2MassData = null;
         this.§-X§ = 0;
         this.§3!o§ = 0;
         this.§9!s§ = 0;
         this.§%!^§ = 0;
         this.m_sweep.localCenter.§9N§();
         if(this.§0"§ == b2_staticBody || this.§0"§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§#K§(0,0);
         var _loc2_:b2Fixture = this.§[!t§;
         while(_loc2_)
         {
            if(_loc2_.§^N§ != 0)
            {
               _loc4_ = _loc2_.§;l§();
               this.§-X§ += _loc4_.§var §;
               _loc1_.x += _loc4_.center.x * _loc4_.§var §;
               _loc1_.y += _loc4_.center.y * _loc4_.§var §;
               this.§9!s§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§7!+§;
         }
         if(this.§-X§ > 0)
         {
            this.§3!o§ = 1 / this.§-X§;
            _loc1_.x *= this.§3!o§;
            _loc1_.y *= this.§3!o§;
         }
         else
         {
            this.§-X§ = 1;
            this.§3!o§ = 1;
         }
         if(this.§9!s§ > 0 && (this.§@!5§ & b2internal::7"$) == 0)
         {
            this.§9!s§ -= this.§-X§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§9!s§ *= this.§;F§;
            b2Settings.b2Assert(this.§9!s§ > 0);
            this.§%!^§ = 1 / this.§9!s§;
         }
         else
         {
            this.§9!s§ = 0;
            this.§%!^§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§6!D§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4!"§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§4!"§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §#!T§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§+n§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§^[§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?!@§(this.m_xf.R,param1);
      }
      
      public function §<q§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§4!"§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§4!"§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §`!a§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§4!"§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§4!"§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §[!6§() : Number
      {
         return this.§+I§;
      }
      
      public function §""1§(param1:Number) : void
      {
         this.§+I§ = param1;
      }
      
      public function §?!g§() : Number
      {
         return this.§-x§;
      }
      
      public function §`! §(param1:Number) : void
      {
         this.§-x§ = param1;
      }
      
      public function § [§() : Number
      {
         return this.§,!1§;
      }
      
      public function §>x§(param1:Number) : void
      {
         this.§,!1§ = param1;
      }
      
      public function §7!V§(param1:uint) : void
      {
         if(this.§0"§ == param1)
         {
            return;
         }
         this.§0"§ = param1;
         this.§#!B§();
         if(this.§0"§ == b2_staticBody)
         {
            this.§4!"§.§9N§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§'I§.§9N§();
         this.§;!'§ = 0;
         var _loc2_:b2ContactEdge = this.§&!]§;
         while(_loc2_)
         {
            _loc2_.§@!"§.§<d§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §@!D§() : uint
      {
         return this.§0"§;
      }
      
      public function §,<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!5§ |= b2internal::9"2;
         }
         else
         {
            this.§@!5§ &= ~b2internal::9"2;
         }
      }
      
      public function § M§() : Boolean
      {
         return (this.§@!5§ & b2internal::9"2) == b2internal::9"2;
      }
      
      public function §'h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!5§ |= b2internal::?!3;
         }
         else
         {
            this.§@!5§ &= ~b2internal::?!3;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!5§ |= b2internal::[i;
            this.§<!H§ = 0;
         }
         else
         {
            this.§@!5§ &= ~b2internal::[i;
            this.§<!H§ = 0;
            this.§4!"§.§9N§();
            this.m_angularVelocity = 0;
            this.§'I§.§9N§();
            this.§;!'§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§@!5§ & b2internal::[i) == b2internal::[i;
      }
      
      public function include(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!5§ |= b2internal::7"$;
         }
         else
         {
            this.§@!5§ &= ~b2internal::7"$;
         }
         this.§#!B§();
      }
      
      public function §#H§() : Boolean
      {
         return (this.§@!5§ & b2internal::7"$) == b2internal::7"$;
      }
      
      public function §[",§(param1:Boolean) : void
      {
         var _loc2_:§;!`§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§<!#§())
         {
            return;
         }
         if(param1)
         {
            this.§@!5§ |= b2internal::"i;
            _loc2_ = this.m_world.§^!b§.§]!6§;
            _loc3_ = this.§[!t§;
            while(_loc3_)
            {
               _loc3_.§'"!§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§7!+§;
            }
         }
         else
         {
            this.§@!5§ &= ~b2internal::"i;
            _loc2_ = this.m_world.§^!b§.§]!6§;
            _loc3_ = this.§[!t§;
            while(_loc3_)
            {
               _loc3_.§'",§(_loc2_);
               _loc3_ = _loc3_.§7!+§;
            }
            _loc4_ = this.§&!]§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§^!b§.§#!N§(_loc5_.§@!"§);
            }
            this.§&!]§ = null;
         }
      }
      
      public function §<!#§() : Boolean
      {
         return (this.§@!5§ & b2internal::"i) == b2internal::"i;
      }
      
      public function §&"%§() : Boolean
      {
         return (this.§@!5§ & b2internal::?!3) == b2internal::?!3;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§[!t§;
      }
      
      public function §]!h§() : b2JointEdge
      {
         return this.§@!g§;
      }
      
      public function §+" §() : b2ControllerEdge
      {
         return this.§8!J§;
      }
      
      public function §<]§() : b2ContactEdge
      {
         return this.§&!]§;
      }
      
      public function §,h§() : b2Body
      {
         return this.§7!+§;
      }
      
      public function GetUserData() : *
      {
         return this.§8X§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§8X§ = param1;
      }
      
      public function §^6§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §"p§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §]%§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§;!`§ = this.m_world.§^!b§.§]!6§;
         _loc4_ = this.§[!t§;
         while(_loc4_)
         {
            _loc4_.§-"§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§7!+§;
         }
      }
      
      b2internal function §+!S§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §;!+§(param1:b2Body) : Boolean
      {
         if(this.§0"§ != b2_dynamicBody && param1.§0"§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§@!g§;
         while(_loc2_)
         {
            if(_loc2_.§+!J§ == param1)
            {
               if(_loc2_.§-q§.§;a§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function §;!m§(param1:Number) : void
      {
         this.m_sweep.§;!m§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§+!S§();
      }
   }
}
