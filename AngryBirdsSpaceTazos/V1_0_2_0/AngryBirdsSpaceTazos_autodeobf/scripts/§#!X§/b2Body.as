package §#!X§
{
   import §&!S§.b2Mat22;
   import §&!S§.b2Math;
   import §&!S§.b2Sweep;
   import §&!S§.b2Transform;
   import §&!S§.b2Vec2;
   import §+D§.b2JointEdge;
   import §3!1§.b2Contact;
   import §3!1§.b2ContactEdge;
   import §3m§.§+!q§;
   import §?f§.b2EdgeShape;
   import §?f§.b2MassData;
   import §?f§.b2Shape;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   import §^!8§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §]!_§:b2Transform = new b2Transform();
      
      b2internal static var §-y§:uint = 1;
      
      b2internal static var §&!F§:uint = 2;
      
      b2internal static var §=!!§:uint = 4;
      
      b2internal static var §8!§:uint = 8;
      
      b2internal static var §0j§:uint = 16;
      
      b2internal static var §%M§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §2!K§:uint;
      
      b2internal var §5!q§:int;
      
      b2internal var §+"$§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §>w§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §=!E§:b2Vec2;
      
      b2internal var §^![§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §%4§:b2Body;
      
      b2internal var §`!s§:b2Body;
      
      b2internal var §"N§:b2Fixture;
      
      b2internal var §>!7§:int;
      
      b2internal var §<!4§:b2ControllerEdge;
      
      b2internal var §4V§:int;
      
      b2internal var §2!c§:b2JointEdge;
      
      b2internal var §7!^§:b2ContactEdge;
      
      b2internal var §!!F§:Number;
      
      b2internal var §]!T§:Number;
      
      b2internal var §"!Q§:Number;
      
      b2internal var §@#§:Number;
      
      b2internal var §3"'§:Number;
      
      b2internal var §[!W§:Number;
      
      b2internal var §'!T§:Number;
      
      b2internal var §[!A§:Number;
      
      private var §#@§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§>w§ = new b2Vec2();
         this.§=!E§ = new b2Vec2();
         super();
         this.§2!K§ = 0;
         if(param1.§-!G§)
         {
            this.§2!K§ |= b2internal::8!;
         }
         if(param1.§#!C§)
         {
            this.§2!K§ |= b2internal::0j;
         }
         if(param1.§=%§)
         {
            this.§2!K§ |= b2internal::=!!;
         }
         if(param1.§!F§)
         {
            this.§2!K§ |= b2internal::&!F;
         }
         if(param1.§0!!§)
         {
            this.§2!K§ |= b2internal::%M;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§ "2§();
         this.m_sweep.§^%§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§2!c§ = null;
         this.§<!4§ = null;
         this.§7!^§ = null;
         this.§4V§ = 0;
         this.§%4§ = null;
         this.§`!s§ = null;
         this.§>w§.SetV(param1.§^!S§);
         this.m_angularVelocity = param1.§ A§;
         this.§[!W§ = param1.§%R§;
         this.§'!T§ = param1.§9!Q§;
         this.§=!E§.Set(0,0);
         this.§^![§ = 0;
         this.§[!A§ = 0;
         this.§5!q§ = param1.type;
         if(this.§5!q§ == b2_dynamicBody)
         {
            this.§!!F§ = 1;
            this.§]!T§ = 1;
         }
         else
         {
            this.§!!F§ = 0;
            this.§]!T§ = 0;
         }
         this.§"!Q§ = 0;
         this.§@#§ = 0;
         this.§3"'§ = param1.§5!t§;
         this.§#@§ = param1.§]"6§;
         this.§"N§ = null;
         this.§>!7§ = 0;
      }
      
      private function §""0§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§#""§().y,param2.§#""§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§5!Z§(_loc5_,param2.§#""§());
         _loc6_ = b2Math.§2"=§(_loc6_,param2.§;3§());
         _loc6_ = b2Math.§5!Z§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§>%§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§>%§(param1.§#""§(),param2.§#""§())).Normalize();
         var _loc8_:* = b2Math.§"!<§(param1.§#""§(),param2.§;3§()) > 0;
         param1.§'";§(param2,_loc6_,_loc7_,_loc8_);
         param2.§;C§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§+!q§ = null;
         if(this.m_world.§7"@§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§;8§(this,this.m_xf,param1);
         if(this.§2!K§ & b2internal::%M)
         {
            _loc3_ = this.m_world.§=p§.§!"7§;
            _loc2_.§`!D§(_loc3_,this.m_xf);
         }
         _loc2_.§`!s§ = this.§"N§;
         this.§"N§ = _loc2_;
         ++this.§>!7§;
         _loc2_.m_body = this;
         if(_loc2_.§"5§ > 0)
         {
            this.§2!]§();
         }
         this.m_world.§2!K§ |= b2World.§86§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §,0§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§+!q§ = null;
         if(this.m_world.§7"@§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§"N§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§`!s§ = param1.§`!s§;
               }
               else
               {
                  this.§"N§ = param1.§`!s§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§`!s§;
         }
         var _loc5_:b2ContactEdge = this.§7!^§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§9p§;
            _loc5_ = _loc5_.§+!R§;
            _loc7_ = _loc6_.§4!`§();
            _loc8_ = _loc6_.§?!y§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§=p§.§5[§(_loc6_);
            }
         }
         if(this.§2!K§ & b2internal::%M)
         {
            _loc9_ = this.m_world.§=p§.§!"7§;
            param1.§'!d§(_loc9_);
         }
         param1.§5[§();
         param1.m_body = null;
         param1.§`!s§ = null;
         --this.§>!7§;
         this.§2!]§();
      }
      
      public function §20§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§7"@§() == true)
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
         var _loc6_:§+!q§ = this.m_world.§=p§.§!"7§;
         _loc3_ = this.§"N§;
         while(_loc3_)
         {
            _loc3_.§!f§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§`!s§;
         }
         this.m_world.§=p§.§0!S§();
      }
      
      public function §8N§(param1:b2Transform) : void
      {
         this.§20§(param1.position,param1.GetAngle());
      }
      
      public function §+!T§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§20§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§20§(this.GetPosition(),param1);
      }
      
      public function §6P§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function § `§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5!q§ == b2_staticBody)
         {
            return;
         }
         this.§>w§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§>w§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§5!q§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §6!$§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§,!k§();
         _loc1_.§=%§ = (this.§2!K§ & b2internal::=!!) == b2internal::=!!;
         _loc1_.angle = this.GetAngle();
         _loc1_.§9!Q§ = this.§'!T§;
         _loc1_.§ A§ = this.m_angularVelocity;
         _loc1_.§#!C§ = (this.§2!K§ & b2internal::0j) == b2internal::0j;
         _loc1_.§-!G§ = (this.§2!K§ & b2internal::8!) == b2internal::8!;
         _loc1_.§!F§ = (this.§2!K§ & b2internal::&!F) == b2internal::&!F;
         _loc1_.§%R§ = this.§[!W§;
         _loc1_.§^!S§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§]"6§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!q§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=!E§.x += param1.x;
         this.§=!E§.y += param1.y;
         this.§^![§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §&"G§(param1:Number) : void
      {
         if(this.§5!q§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^![§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!q§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§>w§.x += this.§]!T§ * param1.x;
         this.§>w§.y += this.§]!T§ * param1.y;
         this.m_angularVelocity += this.§@#§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §?!c§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§6P§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§6!$§());
         var _loc8_:b2Fixture = _loc5_.§"N§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§`!s§;
               if(_loc7_)
               {
                  _loc7_.§`!s§ = _loc13_;
               }
               else
               {
                  _loc5_.§"N§ = _loc13_;
               }
               --_loc5_.§>!7§;
               _loc8_.§`!s§ = _loc6_.§"N§;
               _loc6_.§"N§ = _loc8_;
               ++_loc6_.§>!7§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§`!s§;
            }
         }
         _loc5_.§2!]§();
         _loc6_.§2!]§();
         var _loc9_:b2Vec2 = _loc5_.§6P§();
         var _loc10_:b2Vec2 = _loc6_.§6P§();
         var _loc11_:b2Vec2 = b2Math.§>%§(_loc2_,b2Math.§9!8§(_loc3_,b2Math.§2"=§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§>%§(_loc2_,b2Math.§9!8§(_loc3_,b2Math.§2"=§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§3B§();
         _loc6_.§3B§();
         return _loc6_;
      }
      
      public function §!!§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§"N§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§`!s§;
            --param1.§>!7§;
            _loc2_.§`!s§ = this.§"N§;
            this.§"N§ = _loc2_;
            ++this.§>!7§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§>!7§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§6P§();
         var _loc6_:b2Vec2 = _loc4_.§6P§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§2!]§();
         this.§3B§();
      }
      
      public function GetMass() : Number
      {
         return this.§!!F§;
      }
      
      public function §!!b§() : Number
      {
         return this.§"!Q§;
      }
      
      public function §['§(param1:b2MassData) : void
      {
         param1.§-W§ = this.§!!F§;
         param1.I = this.§"!Q§;
         param1.§""F§.SetV(this.m_sweep.localCenter);
      }
      
      public function §?!x§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§7"@§() == false);
         if(this.m_world.§7"@§() == true)
         {
            return;
         }
         if(this.§5!q§ != b2_dynamicBody)
         {
            return;
         }
         this.§]!T§ = 0;
         this.§"!Q§ = 0;
         this.§@#§ = 0;
         this.§!!F§ = param1.§-W§;
         if(this.§!!F§ <= 0)
         {
            this.§!!F§ = 1;
         }
         this.§]!T§ = 1 / this.§!!F§;
         if(param1.I > 0 && (this.§2!K§ & b2internal::0j) == 0)
         {
            this.§"!Q§ = param1.I - this.§!!F§ * (param1.§""F§.x * param1.§""F§.x + param1.§""F§.y * param1.§""F§.y);
            this.§@#§ = 1 / this.§"!Q§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§""F§);
         this.m_sweep.c0.SetV(b2Math.§53§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§>w§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§>w§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §2!]§() : void
      {
         var _loc4_:b2MassData = null;
         this.§!!F§ = 0;
         this.§]!T§ = 0;
         this.§"!Q§ = 0;
         this.§@#§ = 0;
         this.m_sweep.localCenter.§ "2§();
         if(this.§5!q§ == b2_staticBody || this.§5!q§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§5!b§(0,0);
         var _loc2_:b2Fixture = this.§"N§;
         while(_loc2_)
         {
            if(_loc2_.§"5§ != 0)
            {
               _loc4_ = _loc2_.§['§();
               this.§!!F§ += _loc4_.§-W§;
               _loc1_.x += _loc4_.§""F§.x * _loc4_.§-W§;
               _loc1_.y += _loc4_.§""F§.y * _loc4_.§-W§;
               this.§"!Q§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§`!s§;
         }
         if(this.§!!F§ > 0)
         {
            this.§]!T§ = 1 / this.§!!F§;
            _loc1_.x *= this.§]!T§;
            _loc1_.y *= this.§]!T§;
         }
         else
         {
            this.§!!F§ = 1;
            this.§]!T§ = 1;
         }
         if(this.§"!Q§ > 0 && (this.§2!K§ & b2internal::0j) == 0)
         {
            this.§"!Q§ -= this.§!!F§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§"!Q§ *= this.§3"'§;
            b2Settings.b2Assert(this.§"!Q§ > 0);
            this.§@#§ = 1 / this.§"!Q§;
         }
         else
         {
            this.§"!Q§ = 0;
            this.§@#§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§53§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§>w§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§>w§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §>!%§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%r§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§8!5§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@^§(this.m_xf.R,param1);
      }
      
      public function §`8§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§>w§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§>w§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §4"=§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§>w§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§>w§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §-g§() : Number
      {
         return this.§[!W§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§[!W§ = param1;
      }
      
      public function §3s§() : Number
      {
         return this.§'!T§;
      }
      
      public function §const§(param1:Number) : void
      {
         this.§'!T§ = param1;
      }
      
      public function §"!0§(param1:uint) : void
      {
         if(this.§5!q§ == param1)
         {
            return;
         }
         this.§5!q§ = param1;
         this.§2!]§();
         if(this.§5!q§ == b2_staticBody)
         {
            this.§>w§.§ "2§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§=!E§.§ "2§();
         this.§^![§ = 0;
         var _loc2_:b2ContactEdge = this.§7!^§;
         while(_loc2_)
         {
            _loc2_.§9p§.§0&§();
            _loc2_ = _loc2_.§+!R§;
         }
      }
      
      public function §,!k§() : uint
      {
         return this.§5!q§;
      }
      
      public function §6!w§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2!K§ |= b2internal::8!;
         }
         else
         {
            this.§2!K§ &= ~b2internal::8!;
         }
      }
      
      public function §7M§() : Boolean
      {
         return (this.§2!K§ & b2internal::8!) == b2internal::8!;
      }
      
      public function §4!k§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2!K§ |= b2internal::=!!;
         }
         else
         {
            this.§2!K§ &= ~b2internal::=!!;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2!K§ |= b2internal::&!F;
            this.§[!A§ = 0;
         }
         else
         {
            this.§2!K§ &= ~b2internal::&!F;
            this.§[!A§ = 0;
            this.§>w§.§ "2§();
            this.m_angularVelocity = 0;
            this.§=!E§.§ "2§();
            this.§^![§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§2!K§ & b2internal::&!F) == b2internal::&!F;
      }
      
      public function §&h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2!K§ |= b2internal::0j;
         }
         else
         {
            this.§2!K§ &= ~b2internal::0j;
         }
         this.§2!]§();
      }
      
      public function §%";§() : Boolean
      {
         return (this.§2!K§ & b2internal::0j) == b2internal::0j;
      }
      
      public function §4!=§(param1:Boolean) : void
      {
         var _loc2_:§+!q§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§@!m§())
         {
            return;
         }
         if(param1)
         {
            this.§2!K§ |= b2internal::%M;
            _loc2_ = this.m_world.§=p§.§!"7§;
            _loc3_ = this.§"N§;
            while(_loc3_)
            {
               _loc3_.§`!D§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§`!s§;
            }
         }
         else
         {
            this.§2!K§ &= ~b2internal::%M;
            _loc2_ = this.m_world.§=p§.§!"7§;
            _loc3_ = this.§"N§;
            while(_loc3_)
            {
               _loc3_.§'!d§(_loc2_);
               _loc3_ = _loc3_.§`!s§;
            }
            _loc4_ = this.§7!^§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§+!R§;
               this.m_world.§=p§.§5[§(_loc5_.§9p§);
            }
            this.§7!^§ = null;
         }
      }
      
      public function §@!m§() : Boolean
      {
         return (this.§2!K§ & b2internal::%M) == b2internal::%M;
      }
      
      public function §^!u§() : Boolean
      {
         return (this.§2!K§ & b2internal::=!!) == b2internal::=!!;
      }
      
      public function §;!G§() : b2Fixture
      {
         return this.§"N§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§2!c§;
      }
      
      public function §-!M§() : b2ControllerEdge
      {
         return this.§<!4§;
      }
      
      public function §!I§() : b2ContactEdge
      {
         return this.§7!^§;
      }
      
      public function §6!4§() : b2Body
      {
         return this.§`!s§;
      }
      
      public function GetUserData() : *
      {
         return this.§#@§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§#@§ = param1;
      }
      
      public function §@!l§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §3B§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §]!_§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§+!q§ = this.m_world.§=p§.§!"7§;
         _loc4_ = this.§"N§;
         while(_loc4_)
         {
            _loc4_.§!f§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§`!s§;
         }
      }
      
      b2internal function §;!E§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §&e§(param1:b2Body) : Boolean
      {
         if(this.§5!q§ != b2_dynamicBody && param1.§5!q§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§2!c§;
         while(_loc2_)
         {
            if(_loc2_.§&!7§ == param1)
            {
               if(_loc2_.§>v§.§!!Z§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§+!R§;
         }
         return true;
      }
      
      b2internal function §"!&§(param1:Number) : void
      {
         this.m_sweep.§"!&§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§;!E§();
      }
   }
}
