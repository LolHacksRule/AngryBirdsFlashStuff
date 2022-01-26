package §4U§
{
   import § Y§.§=!!§;
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §#U§.b2ControllerEdge;
   import §6$§.b2JointEdge;
   import §<!8§.b2Mat22;
   import §<!8§.b2Math;
   import §<!8§.b2Sweep;
   import §<!8§.b2Transform;
   import §<!8§.b2Vec2;
   import §>![§.b2EdgeShape;
   import §>![§.b2MassData;
   import §>![§.b2Shape;
   import §`!O§.b2Contact;
   import §`!O§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#j§:b2Transform = new b2Transform();
      
      b2internal static var §5&§:uint = 1;
      
      b2internal static var §=4§:uint = 2;
      
      b2internal static var §4a§:uint = 4;
      
      b2internal static var §!! §:uint = 8;
      
      b2internal static var §84§:uint = 16;
      
      b2internal static var §,O§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §^!J§:uint;
      
      b2internal var §'!c§:int;
      
      b2internal var §6!H§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §3s§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §9!a§:b2Vec2;
      
      b2internal var §#V§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §4d§:b2Body;
      
      b2internal var §^!B§:b2Body;
      
      b2internal var §4B§:b2Fixture;
      
      b2internal var §<!7§:int;
      
      b2internal var §1N§:b2ControllerEdge;
      
      b2internal var §>!a§:int;
      
      b2internal var §'b§:b2JointEdge;
      
      b2internal var §3J§:b2ContactEdge;
      
      b2internal var § !4§:Number;
      
      b2internal var §0,§:Number;
      
      b2internal var §9!Q§:Number;
      
      b2internal var §'!=§:Number;
      
      b2internal var set:Number;
      
      b2internal var §'!1§:Number;
      
      b2internal var §>!A§:Number;
      
      b2internal var §3!`§:Number;
      
      private var §]%§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§3s§ = new b2Vec2();
         this.§9!a§ = new b2Vec2();
         super();
         this.§^!J§ = 0;
         if(param1.§`!]§)
         {
            this.§^!J§ |= b2internal::!! ;
         }
         if(param1.§ !0§)
         {
            this.§^!J§ |= b2internal::84;
         }
         if(param1.§2h§)
         {
            this.§^!J§ |= b2internal::4a;
         }
         if(param1.§1M§)
         {
            this.§^!J§ |= b2internal::=4;
         }
         if(param1.§const§)
         {
            this.§^!J§ |= b2internal::,O;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§`§();
         this.m_sweep.§9#§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§'b§ = null;
         this.§1N§ = null;
         this.§3J§ = null;
         this.§>!a§ = 0;
         this.§4d§ = null;
         this.§^!B§ = null;
         this.§3s§.SetV(param1.§<i§);
         this.m_angularVelocity = param1.§&7§;
         this.§'!1§ = param1.§=k§;
         this.§>!A§ = param1.§ o§;
         this.§9!a§.Set(0,0);
         this.§#V§ = 0;
         this.§3!`§ = 0;
         this.§'!c§ = param1.type;
         if(this.§'!c§ == b2_dynamicBody)
         {
            this.§ !4§ = 1;
            this.§0,§ = 1;
         }
         else
         {
            this.§ !4§ = 0;
            this.§0,§ = 0;
         }
         this.§9!Q§ = 0;
         this.§'!=§ = 0;
         this.set = param1.§,!&§;
         this.§]%§ = param1.§6!6§;
         this.§4B§ = null;
         this.§<!7§ = 0;
      }
      
      private function §#!<§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§-!#§().y,param2.§-!#§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§[u§(_loc5_,param2.§-!#§());
         _loc6_ = b2Math.§2!+§(_loc6_,param2.§9!D§());
         _loc6_ = b2Math.§[u§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§%!`§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§%!`§(param1.§-!#§(),param2.§-!#§())).Normalize();
         var _loc8_:* = b2Math.§0p§(param1.§-!#§(),param2.§9!D§()) > 0;
         param1.§;!R§(param2,_loc6_,_loc7_,_loc8_);
         param2.§#!W§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §7>§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§=!!§ = null;
         if(this.m_world.§ $§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§&!W§(this,this.m_xf,param1);
         if(this.§^!J§ & b2internal::,O)
         {
            _loc3_ = this.m_world.§!u§.§4X§;
            _loc2_.§7N§(_loc3_,this.m_xf);
         }
         _loc2_.§^!B§ = this.§4B§;
         this.§4B§ = _loc2_;
         ++this.§<!7§;
         _loc2_.m_body = this;
         if(_loc2_.§-!G§ > 0)
         {
            this.§5O§();
         }
         this.m_world.§^!J§ |= b2World.§9>§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§7>§(_loc3_);
      }
      
      public function §6!^§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§=!!§ = null;
         if(this.m_world.§ $§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§4B§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§^!B§ = param1.§^!B§;
               }
               else
               {
                  this.§4B§ = param1.§^!B§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§^!B§;
         }
         var _loc5_:b2ContactEdge = this.§3J§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§<l§;
            _loc5_ = _loc5_.§+!Q§;
            _loc7_ = _loc6_.§7#§();
            _loc8_ = _loc6_.§ O§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§!u§.§'D§(_loc6_);
            }
         }
         if(this.§^!J§ & b2internal::,O)
         {
            _loc9_ = this.m_world.§!u§.§4X§;
            param1.§9!"§(_loc9_);
         }
         param1.§'D§();
         param1.m_body = null;
         param1.§^!B§ = null;
         --this.§<!7§;
         this.§5O§();
      }
      
      public function §1!6§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§ $§() == true)
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
         var _loc6_:§=!!§ = this.m_world.§!u§.§4X§;
         _loc3_ = this.§4B§;
         while(_loc3_)
         {
            _loc3_.§'?§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§^!B§;
         }
         this.m_world.§!u§.§@=§();
      }
      
      public function §@[§(param1:b2Transform) : void
      {
         this.§1!6§(param1.position,param1.GetAngle());
      }
      
      public function §1!J§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §%r§(param1:b2Vec2) : void
      {
         this.§1!6§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §'!'§(param1:Number) : void
      {
         this.§1!6§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §"!E§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§'!c§ == b2_staticBody)
         {
            return;
         }
         this.§3s§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§3s§;
      }
      
      public function §>!-§(param1:Number) : void
      {
         if(this.§'!c§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §0!V§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§6`§();
         _loc1_.§2h§ = (this.§^!J§ & b2internal::4a) == b2internal::4a;
         _loc1_.angle = this.GetAngle();
         _loc1_.§ o§ = this.§>!A§;
         _loc1_.§&7§ = this.m_angularVelocity;
         _loc1_.§ !0§ = (this.§^!J§ & b2internal::84) == b2internal::84;
         _loc1_.§`!]§ = (this.§^!J§ & b2internal::!! ) == b2internal::!! ;
         _loc1_.§1M§ = (this.§^!J§ & b2internal::=4) == b2internal::=4;
         _loc1_.§=k§ = this.§'!1§;
         _loc1_.§<i§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§6!6§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §@!H§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§9!a§.x += param1.x;
         this.§9!a§.y += param1.y;
         this.§#V§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §>!1§(param1:Number) : void
      {
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#V§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§3s§.x += this.§0,§ * param1.x;
         this.§3s§.y += this.§0,§ * param1.y;
         this.m_angularVelocity += this.§'!=§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §8z§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§!1§(this.§0!V§());
         var _loc8_:b2Fixture = _loc5_.§4B§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§^!B§;
               if(_loc7_)
               {
                  _loc7_.§^!B§ = _loc13_;
               }
               else
               {
                  _loc5_.§4B§ = _loc13_;
               }
               --_loc5_.§<!7§;
               _loc8_.§^!B§ = _loc6_.§4B§;
               _loc6_.§4B§ = _loc8_;
               ++_loc6_.§<!7§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§^!B§;
            }
         }
         _loc5_.§5O§();
         _loc6_.§5O§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§%!`§(_loc2_,b2Math.§&!8§(_loc3_,b2Math.§2!+§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§%!`§(_loc2_,b2Math.§&!8§(_loc3_,b2Math.§2!+§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§>!-§(_loc3_);
         _loc6_.§>!-§(_loc3_);
         _loc5_.§ !Y§();
         _loc6_.§ !Y§();
         return _loc6_;
      }
      
      public function §#!!§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§4B§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§^!B§;
            --param1.§<!7§;
            _loc2_.§^!B§ = this.§4B§;
            this.§4B§ = _loc2_;
            ++this.§<!7§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§<!7§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§5O§();
         this.§ !Y§();
      }
      
      public function GetMass() : Number
      {
         return this.§ !4§;
      }
      
      public function §%! §() : Number
      {
         return this.§9!Q§;
      }
      
      public function §]0§(param1:b2MassData) : void
      {
         param1.§7!>§ = this.§ !4§;
         param1.§;!4§ = this.§9!Q§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §"!5§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§ $§() == false);
         if(this.m_world.§ $§() == true)
         {
            return;
         }
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         this.§0,§ = 0;
         this.§9!Q§ = 0;
         this.§'!=§ = 0;
         this.§ !4§ = param1.§7!>§;
         if(this.§ !4§ <= 0)
         {
            this.§ !4§ = 1;
         }
         this.§0,§ = 1 / this.§ !4§;
         if(param1.§;!4§ > 0 && (this.§^!J§ & b2internal::84) == 0)
         {
            this.§9!Q§ = param1.§;!4§ - this.§ !4§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§'!=§ = 1 / this.§9!Q§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§8L§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§3s§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§3s§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §5O§() : void
      {
         var _loc4_:b2MassData = null;
         this.§ !4§ = 0;
         this.§0,§ = 0;
         this.§9!Q§ = 0;
         this.§'!=§ = 0;
         this.m_sweep.localCenter.§`§();
         if(this.§'!c§ == b2_staticBody || this.§'!c§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§[§(0,0);
         var _loc2_:b2Fixture = this.§4B§;
         while(_loc2_)
         {
            if(_loc2_.§-!G§ != 0)
            {
               _loc4_ = _loc2_.§]0§();
               this.§ !4§ += _loc4_.§7!>§;
               _loc1_.x += _loc4_.center.x * _loc4_.§7!>§;
               _loc1_.y += _loc4_.center.y * _loc4_.§7!>§;
               this.§9!Q§ += _loc4_.§;!4§;
            }
            _loc2_ = _loc2_.§^!B§;
         }
         if(this.§ !4§ > 0)
         {
            this.§0,§ = 1 / this.§ !4§;
            _loc1_.x *= this.§0,§;
            _loc1_.y *= this.§0,§;
         }
         else
         {
            this.§ !4§ = 1;
            this.§0,§ = 1;
         }
         if(this.§9!Q§ > 0 && (this.§^!J§ & b2internal::84) == 0)
         {
            this.§9!Q§ -= this.§ !4§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§9!Q§ *= this.set;
            b2Settings.b2Assert(this.§9!Q§ > 0);
            this.§'!=§ = 1 / this.§9!Q§;
         }
         else
         {
            this.§9!Q§ = 0;
            this.§'!=§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§8L§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§3s§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§3s§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §=!]§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5y§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@W§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§=!I§(this.m_xf.R,param1);
      }
      
      public function §1_§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§3s§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§3s§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §0>§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§3s§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§3s§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §9!-§() : Number
      {
         return this.§'!1§;
      }
      
      public function §%`§(param1:Number) : void
      {
         this.§'!1§ = param1;
      }
      
      public function §!d§() : Number
      {
         return this.§>!A§;
      }
      
      public function §%x§(param1:Number) : void
      {
         this.§>!A§ = param1;
      }
      
      public function §"?§(param1:uint) : void
      {
         if(this.§'!c§ == param1)
         {
            return;
         }
         this.§'!c§ = param1;
         this.§5O§();
         if(this.§'!c§ == b2_staticBody)
         {
            this.§3s§.§`§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§9!a§.§`§();
         this.§#V§ = 0;
         var _loc2_:b2ContactEdge = this.§3J§;
         while(_loc2_)
         {
            _loc2_.§<l§.§'+§();
            _loc2_ = _loc2_.§+!Q§;
         }
      }
      
      public function §6`§() : uint
      {
         return this.§'!c§;
      }
      
      public function §2t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!J§ |= b2internal::!! ;
         }
         else
         {
            this.§^!J§ &= ~b2internal::!! ;
         }
      }
      
      public function §"K§() : Boolean
      {
         return (this.§^!J§ & b2internal::!! ) == b2internal::!! ;
      }
      
      public function §^!c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!J§ |= b2internal::4a;
         }
         else
         {
            this.§^!J§ &= ~b2internal::4a;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!J§ |= b2internal::=4;
            this.§3!`§ = 0;
         }
         else
         {
            this.§^!J§ &= ~b2internal::=4;
            this.§3!`§ = 0;
            this.§3s§.§`§();
            this.m_angularVelocity = 0;
            this.§9!a§.§`§();
            this.§#V§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§^!J§ & b2internal::=4) == b2internal::=4;
      }
      
      public function § #§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!J§ |= b2internal::84;
         }
         else
         {
            this.§^!J§ &= ~b2internal::84;
         }
         this.§5O§();
      }
      
      public function §"9§() : Boolean
      {
         return (this.§^!J§ & b2internal::84) == b2internal::84;
      }
      
      public function §8J§(param1:Boolean) : void
      {
         var _loc2_:§=!!§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§1t§())
         {
            return;
         }
         if(param1)
         {
            this.§^!J§ |= b2internal::,O;
            _loc2_ = this.m_world.§!u§.§4X§;
            _loc3_ = this.§4B§;
            while(_loc3_)
            {
               _loc3_.§7N§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§^!B§;
            }
         }
         else
         {
            this.§^!J§ &= ~b2internal::,O;
            _loc2_ = this.m_world.§!u§.§4X§;
            _loc3_ = this.§4B§;
            while(_loc3_)
            {
               _loc3_.§9!"§(_loc2_);
               _loc3_ = _loc3_.§^!B§;
            }
            _loc4_ = this.§3J§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§+!Q§;
               this.m_world.§!u§.§'D§(_loc5_.§<l§);
            }
            this.§3J§ = null;
         }
      }
      
      public function §1t§() : Boolean
      {
         return (this.§^!J§ & b2internal::,O) == b2internal::,O;
      }
      
      public function §?d§() : Boolean
      {
         return (this.§^!J§ & b2internal::4a) == b2internal::4a;
      }
      
      public function §<!9§() : b2Fixture
      {
         return this.§4B§;
      }
      
      public function §do§() : b2JointEdge
      {
         return this.§'b§;
      }
      
      public function §"!%§() : b2ControllerEdge
      {
         return this.§1N§;
      }
      
      public function §5!N§() : b2ContactEdge
      {
         return this.§3J§;
      }
      
      public function §#!3§() : b2Body
      {
         return this.§^!B§;
      }
      
      public function GetUserData() : *
      {
         return this.§]%§;
      }
      
      public function §3!Z§(param1:*) : void
      {
         this.§]%§ = param1;
      }
      
      public function §,!$§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function § !Y§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#j§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§=!!§ = this.m_world.§!u§.§4X§;
         _loc4_ = this.§4B§;
         while(_loc4_)
         {
            _loc4_.§'?§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§^!B§;
         }
      }
      
      b2internal function §4!O§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function § else§(param1:b2Body) : Boolean
      {
         if(this.§'!c§ != b2_dynamicBody && param1.§'!c§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§'b§;
         while(_loc2_)
         {
            if(_loc2_.§<!H§ == param1)
            {
               if(_loc2_.§=!<§.§;!b§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§+!Q§;
         }
         return true;
      }
      
      b2internal function §;8§(param1:Number) : void
      {
         this.m_sweep.§;8§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§4!O§();
      }
   }
}
