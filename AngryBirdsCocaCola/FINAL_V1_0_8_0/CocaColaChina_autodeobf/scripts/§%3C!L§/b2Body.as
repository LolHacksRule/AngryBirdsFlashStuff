package §<!L§
{
   import § Y§.b2EdgeShape;
   import § Y§.b2MassData;
   import § Y§.b2Shape;
   import §1z§.b2Contact;
   import §1z§.b2ContactEdge;
   import §3!^§.b2ControllerEdge;
   import §4!J§.b2JointEdge;
   import §6V§.b2Mat22;
   import §6V§.b2Math;
   import §6V§.b2Sweep;
   import §6V§.b2Transform;
   import §6V§.b2Vec2;
   import §?F§.§"l§;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §'J§:b2Transform = new b2Transform();
      
      b2internal static var §1!E§:uint = 1;
      
      b2internal static var § 5§:uint = 2;
      
      b2internal static var §,8§:uint = 4;
      
      b2internal static var § 6§:uint = 8;
      
      b2internal static var §"a§:uint = 16;
      
      b2internal static var §=!^§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §0=§:uint;
      
      b2internal var §2M§:int;
      
      b2internal var §6!Q§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §1!K§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var § !U§:b2Vec2;
      
      b2internal var §@!A§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §4=§:b2Body;
      
      b2internal var §!!U§:b2Body;
      
      b2internal var §[R§:b2Fixture;
      
      b2internal var §[l§:int;
      
      b2internal var §;a§:b2ControllerEdge;
      
      b2internal var §6?§:int;
      
      b2internal var §4!Y§:b2JointEdge;
      
      b2internal var §<k§:b2ContactEdge;
      
      b2internal var §&!§:Number;
      
      b2internal var §;z§:Number;
      
      b2internal var §4;§:Number;
      
      b2internal var §?C§:Number;
      
      b2internal var §0!F§:Number;
      
      b2internal var §[!D§:Number;
      
      b2internal var §>n§:Number;
      
      b2internal var §2o§:Number;
      
      private var §8d§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§1!K§ = new b2Vec2();
         this.§ !U§ = new b2Vec2();
         super();
         this.§0=§ = 0;
         if(param1.§0!8§)
         {
            this.§0=§ |= b2internal:: 6;
         }
         if(param1.§%M§)
         {
            this.§0=§ |= b2internal::"a;
         }
         if(param1.§]%§)
         {
            this.§0=§ |= b2internal::,8;
         }
         if(param1.§45§)
         {
            this.§0=§ |= b2internal:: 5;
         }
         if(param1.§]X§)
         {
            this.§0=§ |= b2internal::=!^;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§;@§();
         this.m_sweep.§-^§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§4!Y§ = null;
         this.§;a§ = null;
         this.§<k§ = null;
         this.§6?§ = 0;
         this.§4=§ = null;
         this.§!!U§ = null;
         this.§1!K§.SetV(param1.§'2§);
         this.m_angularVelocity = param1.§<!-§;
         this.§[!D§ = param1.§!A§;
         this.§>n§ = param1.§<u§;
         this.§ !U§.Set(0,0);
         this.§@!A§ = 0;
         this.§2o§ = 0;
         this.§2M§ = param1.type;
         if(this.§2M§ == b2_dynamicBody)
         {
            this.§&!§ = 1;
            this.§;z§ = 1;
         }
         else
         {
            this.§&!§ = 0;
            this.§;z§ = 0;
         }
         this.§4;§ = 0;
         this.§?C§ = 0;
         this.§0!F§ = param1.§ !S§;
         this.§8d§ = param1.§`P§;
         this.§[R§ = null;
         this.§[l§ = 0;
      }
      
      private function §@!H§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§"1§().y,param2.§"1§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§=!d§(_loc5_,param2.§"1§());
         _loc6_ = b2Math.§`"§(_loc6_,param2.§1![§());
         _loc6_ = b2Math.§=!d§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§5p§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§5p§(param1.§"1§(),param2.§"1§())).Normalize();
         var _loc8_:* = b2Math.§9O§(param1.§"1§(),param2.§1![§()) > 0;
         param1.§`!M§(param2,_loc6_,_loc7_,_loc8_);
         param2.§>!0§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §;! §(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§"l§ = null;
         if(this.m_world.§3M§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§8y§(this,this.m_xf,param1);
         if(this.§0=§ & b2internal::=!^)
         {
            _loc3_ = this.m_world.§3-§.§0T§;
            _loc2_.§0A§(_loc3_,this.m_xf);
         }
         _loc2_.§!!U§ = this.§[R§;
         this.§[R§ = _loc2_;
         ++this.§[l§;
         _loc2_.m_body = this;
         if(_loc2_.§&-§ > 0)
         {
            this.§3>§();
         }
         this.m_world.§0=§ |= b2World.§#c§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§;! §(_loc3_);
      }
      
      public function §?!Z§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§"l§ = null;
         if(this.m_world.§3M§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§[R§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§!!U§ = param1.§!!U§;
               }
               else
               {
                  this.§[R§ = param1.§!!U§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§!!U§;
         }
         var _loc5_:b2ContactEdge = this.§<k§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§'4§;
            _loc5_ = _loc5_.§+!P§;
            _loc7_ = _loc6_.§&+§();
            _loc8_ = _loc6_.§0!!§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§3-§.§#2§(_loc6_);
            }
         }
         if(this.§0=§ & b2internal::=!^)
         {
            _loc9_ = this.m_world.§3-§.§0T§;
            param1.§7T§(_loc9_);
         }
         param1.§#2§();
         param1.m_body = null;
         param1.§!!U§ = null;
         --this.§[l§;
         this.§3>§();
      }
      
      public function §"4§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§3M§() == true)
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
         var _loc6_:§"l§ = this.m_world.§3-§.§0T§;
         _loc3_ = this.§[R§;
         while(_loc3_)
         {
            _loc3_.§8!5§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§!!U§;
         }
         this.m_world.§3-§.§>!^§();
      }
      
      public function §2z§(param1:b2Transform) : void
      {
         this.§"4§(param1.position,param1.GetAngle());
      }
      
      public function §`!E§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function § l§(param1:b2Vec2) : void
      {
         this.§"4§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §%X§(param1:Number) : void
      {
         this.§"4§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §&!`§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§2M§ == b2_staticBody)
         {
            return;
         }
         this.§1!K§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§1!K§;
      }
      
      public function §[!!§(param1:Number) : void
      {
         if(this.§2M§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §=!8§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §^!N§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§1k§();
         _loc1_.§]%§ = (this.§0=§ & b2internal::,8) == b2internal::,8;
         _loc1_.angle = this.GetAngle();
         _loc1_.§<u§ = this.§>n§;
         _loc1_.§<!-§ = this.m_angularVelocity;
         _loc1_.§%M§ = (this.§0=§ & b2internal::"a) == b2internal::"a;
         _loc1_.§0!8§ = (this.§0=§ & b2internal:: 6) == b2internal:: 6;
         _loc1_.§45§ = (this.§0=§ & b2internal:: 5) == b2internal:: 5;
         _loc1_.§!A§ = this.§[!D§;
         _loc1_.§'2§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§`P§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §9!4§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2M§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§ !U§.x += param1.x;
         this.§ !U§.y += param1.y;
         this.§@!A§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function § <§(param1:Number) : void
      {
         if(this.§2M§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§@!A§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2M§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1!K§.x += this.§;z§ * param1.x;
         this.§1!K§.y += this.§;z§ * param1.y;
         this.m_angularVelocity += this.§?C§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §0B§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§=!8§();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§[z§(this.§^!N§());
         var _loc8_:b2Fixture = _loc5_.§[R§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§!!U§;
               if(_loc7_)
               {
                  _loc7_.§!!U§ = _loc13_;
               }
               else
               {
                  _loc5_.§[R§ = _loc13_;
               }
               --_loc5_.§[l§;
               _loc8_.§!!U§ = _loc6_.§[R§;
               _loc6_.§[R§ = _loc8_;
               ++_loc6_.§[l§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§!!U§;
            }
         }
         _loc5_.§3>§();
         _loc6_.§3>§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§5p§(_loc2_,b2Math.§"!X§(_loc3_,b2Math.§`"§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§5p§(_loc2_,b2Math.§"!X§(_loc3_,b2Math.§`"§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§[!!§(_loc3_);
         _loc6_.§[!!§(_loc3_);
         _loc5_.§@!L§();
         _loc6_.§@!L§();
         return _loc6_;
      }
      
      public function §?c§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§[R§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§!!U§;
            --param1.§[l§;
            _loc2_.§!!U§ = this.§[R§;
            this.§[R§ = _loc2_;
            ++this.§[l§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§[l§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§=!8§();
         var _loc10_:Number = _loc4_.§=!8§();
         _loc3_.§3>§();
         this.§@!L§();
      }
      
      public function GetMass() : Number
      {
         return this.§&!§;
      }
      
      public function §9!"§() : Number
      {
         return this.§4;§;
      }
      
      public function §7u§(param1:b2MassData) : void
      {
         param1.§7Q§ = this.§&!§;
         param1.§3`§ = this.§4;§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §7e§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§3M§() == false);
         if(this.m_world.§3M§() == true)
         {
            return;
         }
         if(this.§2M§ != b2_dynamicBody)
         {
            return;
         }
         this.§;z§ = 0;
         this.§4;§ = 0;
         this.§?C§ = 0;
         this.§&!§ = param1.§7Q§;
         if(this.§&!§ <= 0)
         {
            this.§&!§ = 1;
         }
         this.§;z§ = 1 / this.§&!§;
         if(param1.§3`§ > 0 && (this.§0=§ & b2internal::"a) == 0)
         {
            this.§4;§ = param1.§3`§ - this.§&!§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§?C§ = 1 / this.§4;§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§;!P§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§1!K§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§1!K§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §3>§() : void
      {
         var _loc4_:b2MassData = null;
         this.§&!§ = 0;
         this.§;z§ = 0;
         this.§4;§ = 0;
         this.§?C§ = 0;
         this.m_sweep.localCenter.§;@§();
         if(this.§2M§ == b2_staticBody || this.§2M§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§5w§(0,0);
         var _loc2_:b2Fixture = this.§[R§;
         while(_loc2_)
         {
            if(_loc2_.§&-§ != 0)
            {
               _loc4_ = _loc2_.§7u§();
               this.§&!§ += _loc4_.§7Q§;
               _loc1_.x += _loc4_.center.x * _loc4_.§7Q§;
               _loc1_.y += _loc4_.center.y * _loc4_.§7Q§;
               this.§4;§ += _loc4_.§3`§;
            }
            _loc2_ = _loc2_.§!!U§;
         }
         if(this.§&!§ > 0)
         {
            this.§;z§ = 1 / this.§&!§;
            _loc1_.x *= this.§;z§;
            _loc1_.y *= this.§;z§;
         }
         else
         {
            this.§&!§ = 1;
            this.§;z§ = 1;
         }
         if(this.§4;§ > 0 && (this.§0=§ & b2internal::"a) == 0)
         {
            this.§4;§ -= this.§&!§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§4;§ *= this.§0!F§;
            b2Settings.b2Assert(this.§4;§ > 0);
            this.§?C§ = 1 / this.§4;§;
         }
         else
         {
            this.§4;§ = 0;
            this.§?C§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§;!P§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§1!K§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§1!K§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §default§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#t§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§<!$§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6i§(this.m_xf.R,param1);
      }
      
      public function §<!E§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§1!K§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§1!K§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §6X§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§1!K§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§1!K§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §+!]§() : Number
      {
         return this.§[!D§;
      }
      
      public function §!e§(param1:Number) : void
      {
         this.§[!D§ = param1;
      }
      
      public function §%!S§() : Number
      {
         return this.§>n§;
      }
      
      public function §!Z§(param1:Number) : void
      {
         this.§>n§ = param1;
      }
      
      public function §86§(param1:uint) : void
      {
         if(this.§2M§ == param1)
         {
            return;
         }
         this.§2M§ = param1;
         this.§3>§();
         if(this.§2M§ == b2_staticBody)
         {
            this.§1!K§.§;@§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§ !U§.§;@§();
         this.§@!A§ = 0;
         var _loc2_:b2ContactEdge = this.§<k§;
         while(_loc2_)
         {
            _loc2_.§'4§.§2H§();
            _loc2_ = _loc2_.§+!P§;
         }
      }
      
      public function §1k§() : uint
      {
         return this.§2M§;
      }
      
      public function §0J§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0=§ |= b2internal:: 6;
         }
         else
         {
            this.§0=§ &= ~b2internal:: 6;
         }
      }
      
      public function §3!?§() : Boolean
      {
         return (this.§0=§ & b2internal:: 6) == b2internal:: 6;
      }
      
      public function §&1§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0=§ |= b2internal::,8;
         }
         else
         {
            this.§0=§ &= ~b2internal::,8;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0=§ |= b2internal:: 5;
            this.§2o§ = 0;
         }
         else
         {
            this.§0=§ &= ~b2internal:: 5;
            this.§2o§ = 0;
            this.§1!K§.§;@§();
            this.m_angularVelocity = 0;
            this.§ !U§.§;@§();
            this.§@!A§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§0=§ & b2internal:: 5) == b2internal:: 5;
      }
      
      public function §&^§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0=§ |= b2internal::"a;
         }
         else
         {
            this.§0=§ &= ~b2internal::"a;
         }
         this.§3>§();
      }
      
      public function §%j§() : Boolean
      {
         return (this.§0=§ & b2internal::"a) == b2internal::"a;
      }
      
      public function §?!H§(param1:Boolean) : void
      {
         var _loc2_:§"l§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§^+§())
         {
            return;
         }
         if(param1)
         {
            this.§0=§ |= b2internal::=!^;
            _loc2_ = this.m_world.§3-§.§0T§;
            _loc3_ = this.§[R§;
            while(_loc3_)
            {
               _loc3_.§0A§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§!!U§;
            }
         }
         else
         {
            this.§0=§ &= ~b2internal::=!^;
            _loc2_ = this.m_world.§3-§.§0T§;
            _loc3_ = this.§[R§;
            while(_loc3_)
            {
               _loc3_.§7T§(_loc2_);
               _loc3_ = _loc3_.§!!U§;
            }
            _loc4_ = this.§<k§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§+!P§;
               this.m_world.§3-§.§#2§(_loc5_.§'4§);
            }
            this.§<k§ = null;
         }
      }
      
      public function §^+§() : Boolean
      {
         return (this.§0=§ & b2internal::=!^) == b2internal::=!^;
      }
      
      public function §`m§() : Boolean
      {
         return (this.§0=§ & b2internal::,8) == b2internal::,8;
      }
      
      public function §"w§() : b2Fixture
      {
         return this.§[R§;
      }
      
      public function §]!=§() : b2JointEdge
      {
         return this.§4!Y§;
      }
      
      public function §@C§() : b2ControllerEdge
      {
         return this.§;a§;
      }
      
      public function §2e§() : b2ContactEdge
      {
         return this.§<k§;
      }
      
      public function §4"§() : b2Body
      {
         return this.§!!U§;
      }
      
      public function GetUserData() : *
      {
         return this.§8d§;
      }
      
      public function §9$§(param1:*) : void
      {
         this.§8d§ = param1;
      }
      
      public function §]!I§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §@!L§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §'J§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§"l§ = this.m_world.§3-§.§0T§;
         _loc4_ = this.§[R§;
         while(_loc4_)
         {
            _loc4_.§8!5§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§!!U§;
         }
      }
      
      b2internal function §>u§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §!#§(param1:b2Body) : Boolean
      {
         if(this.§2M§ != b2_dynamicBody && param1.§2M§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§4!Y§;
         while(_loc2_)
         {
            if(_loc2_.§5n§ == param1)
            {
               if(_loc2_.§^!0§.§?!+§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§+!P§;
         }
         return true;
      }
      
      b2internal function §]_§(param1:Number) : void
      {
         this.m_sweep.§]_§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§>u§();
      }
   }
}
