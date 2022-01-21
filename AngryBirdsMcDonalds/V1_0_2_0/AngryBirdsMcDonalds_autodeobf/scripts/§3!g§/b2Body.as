package §3!g§
{
   import §"U§.b2Mat22;
   import §"U§.b2Math;
   import §"U§.b2Sweep;
   import §"U§.b2Transform;
   import §"U§.b2Vec2;
   import §'!9§.b2Contact;
   import §'!9§.b2ContactEdge;
   import §,7§.b2EdgeShape;
   import §,7§.b2MassData;
   import §,7§.b2Shape;
   import §<!!§.§]!H§;
   import §=!X§.b2Settings;
   import §=!X§.b2internal;
   import §]!?§.b2ControllerEdge;
   import §`!Z§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §0!m§:b2Transform = new b2Transform();
      
      b2internal static var §'!J§:uint = 1;
      
      b2internal static var §3!W§:uint = 2;
      
      b2internal static var §]Q§:uint = 4;
      
      b2internal static var §37§:uint = 8;
      
      b2internal static var §#!p§:uint = 16;
      
      b2internal static var §>V§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §9!U§:uint;
      
      b2internal var §+k§:int;
      
      b2internal var §"k§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §'R§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §0!-§:b2Vec2;
      
      b2internal var §+!N§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §4W§:b2Body;
      
      b2internal var § set§:b2Body;
      
      b2internal var § !A§:b2Fixture;
      
      b2internal var §`!<§:int;
      
      b2internal var §6! §:b2ControllerEdge;
      
      b2internal var §9Y§:int;
      
      b2internal var §9P§:b2JointEdge;
      
      b2internal var §`!K§:b2ContactEdge;
      
      b2internal var §9!M§:Number;
      
      b2internal var §>w§:Number;
      
      b2internal var §8k§:Number;
      
      b2internal var §#R§:Number;
      
      b2internal var §%!D§:Number;
      
      b2internal var §;!M§:Number;
      
      b2internal var § r§:Number;
      
      b2internal var §5O§:Number;
      
      private var §;!O§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§'R§ = new b2Vec2();
         this.§0!-§ = new b2Vec2();
         super();
         this.§9!U§ = 0;
         if(param1.§"?§)
         {
            this.§9!U§ |= b2internal::37;
         }
         if(param1.§1O§)
         {
            this.§9!U§ |= b2internal::#!p;
         }
         if(param1.§+b§)
         {
            this.§9!U§ |= b2internal::]Q;
         }
         if(param1.§7D§)
         {
            this.§9!U§ |= b2internal::3!W;
         }
         if(param1.§0!`§)
         {
            this.§9!U§ |= b2internal::>V;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§1!=§();
         this.m_sweep.§throw§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§9P§ = null;
         this.§6! § = null;
         this.§`!K§ = null;
         this.§9Y§ = 0;
         this.§4W§ = null;
         this.§ set§ = null;
         this.§'R§.SetV(param1.§>!3§);
         this.m_angularVelocity = param1.§>!C§;
         this.§;!M§ = param1.§16§;
         this.§ r§ = param1.§@R§;
         this.§0!-§.Set(0,0);
         this.§+!N§ = 0;
         this.§5O§ = 0;
         this.§+k§ = param1.type;
         if(this.§+k§ == b2_dynamicBody)
         {
            this.§9!M§ = 1;
            this.§>w§ = 1;
         }
         else
         {
            this.§9!M§ = 0;
            this.§>w§ = 0;
         }
         this.§8k§ = 0;
         this.§#R§ = 0;
         this.§%!D§ = param1.§`1§;
         this.§;!O§ = param1.§,3§;
         this.§ !A§ = null;
         this.§`!<§ = 0;
      }
      
      private function §+!C§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§>n§().y,param2.§>n§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§%!1§(_loc5_,param2.§>n§());
         _loc6_ = b2Math.§^!Y§(_loc6_,param2.§%!#§());
         _loc6_ = b2Math.§%!1§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§[!L§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§[!L§(param1.§>n§(),param2.§>n§())).Normalize();
         var _loc8_:* = b2Math.§`z§(param1.§>n§(),param2.§%!#§()) > 0;
         param1.§<!=§(param2,_loc6_,_loc7_,_loc8_);
         param2.§;!E§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §1!I§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§]!H§ = null;
         if(this.m_world.§,m§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§ 9§(this,this.m_xf,param1);
         if(this.§9!U§ & b2internal::>V)
         {
            _loc3_ = this.m_world.§%X§.§`!!§;
            _loc2_.§4f§(_loc3_,this.m_xf);
         }
         _loc2_.§ set§ = this.§ !A§;
         this.§ !A§ = _loc2_;
         ++this.§`!<§;
         _loc2_.m_body = this;
         if(_loc2_.§&!;§ > 0)
         {
            this.§'6§();
         }
         this.m_world.§9!U§ |= b2World.§=§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§1!I§(_loc3_);
      }
      
      public function §"!O§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§]!H§ = null;
         if(this.m_world.§,m§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§ !A§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§ set§ = param1.§ set§;
               }
               else
               {
                  this.§ !A§ = param1.§ set§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§ set§;
         }
         var _loc5_:b2ContactEdge = this.§`!K§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§!R§;
            _loc5_ = _loc5_.§[8§;
            _loc7_ = _loc6_.§'C§();
            _loc8_ = _loc6_.§<!n§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§%X§.§+$§(_loc6_);
            }
         }
         if(this.§9!U§ & b2internal::>V)
         {
            _loc9_ = this.m_world.§%X§.§`!!§;
            param1.§+!g§(_loc9_);
         }
         param1.§+$§();
         param1.m_body = null;
         param1.§ set§ = null;
         --this.§`!<§;
         this.§'6§();
      }
      
      public function §<7§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§,m§() == true)
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
         var _loc6_:§]!H§ = this.m_world.§%X§.§`!!§;
         _loc3_ = this.§ !A§;
         while(_loc3_)
         {
            _loc3_.§8!§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§ set§;
         }
         this.m_world.§%X§.§,!U§();
      }
      
      public function §-h§(param1:b2Transform) : void
      {
         this.§<7§(param1.position,param1.GetAngle());
      }
      
      public function §=q§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §!!;§(param1:b2Vec2) : void
      {
         this.§<7§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §2!>§(param1:Number) : void
      {
         this.§<7§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §%;§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§+k§ == b2_staticBody)
         {
            return;
         }
         this.§'R§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§'R§;
      }
      
      public function §2!a§(param1:Number) : void
      {
         if(this.§+k§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §"!4§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §5!R§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§^!A§();
         _loc1_.§+b§ = (this.§9!U§ & b2internal::]Q) == b2internal::]Q;
         _loc1_.angle = this.GetAngle();
         _loc1_.§@R§ = this.§ r§;
         _loc1_.§>!C§ = this.m_angularVelocity;
         _loc1_.§1O§ = (this.§9!U§ & b2internal::#!p) == b2internal::#!p;
         _loc1_.§"?§ = (this.§9!U§ & b2internal::37) == b2internal::37;
         _loc1_.§7D§ = (this.§9!U§ & b2internal::3!W) == b2internal::3!W;
         _loc1_.§16§ = this.§;!M§;
         _loc1_.§>!3§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§,3§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §<l§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+k§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§0!-§.x += param1.x;
         this.§0!-§.y += param1.y;
         this.§+!N§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §<d§(param1:Number) : void
      {
         if(this.§+k§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§+!N§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+k§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'R§.x += this.§>w§ * param1.x;
         this.§'R§.y += this.§>w§ * param1.y;
         this.m_angularVelocity += this.§#R§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §8!D§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§"!4§();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§&!7§(this.§5!R§());
         var _loc8_:b2Fixture = _loc5_.§ !A§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§ set§;
               if(_loc7_)
               {
                  _loc7_.§ set§ = _loc13_;
               }
               else
               {
                  _loc5_.§ !A§ = _loc13_;
               }
               --_loc5_.§`!<§;
               _loc8_.§ set§ = _loc6_.§ !A§;
               _loc6_.§ !A§ = _loc8_;
               ++_loc6_.§`!<§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§ set§;
            }
         }
         _loc5_.§'6§();
         _loc6_.§'6§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§[!L§(_loc2_,b2Math.§%!p§(_loc3_,b2Math.§^!Y§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§[!L§(_loc2_,b2Math.§%!p§(_loc3_,b2Math.§^!Y§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§2!a§(_loc3_);
         _loc6_.§2!a§(_loc3_);
         _loc5_.§+![§();
         _loc6_.§+![§();
         return _loc6_;
      }
      
      public function §-b§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§ !A§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§ set§;
            --param1.§`!<§;
            _loc2_.§ set§ = this.§ !A§;
            this.§ !A§ = _loc2_;
            ++this.§`!<§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§`!<§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§"!4§();
         var _loc10_:Number = _loc4_.§"!4§();
         _loc3_.§'6§();
         this.§+![§();
      }
      
      public function GetMass() : Number
      {
         return this.§9!M§;
      }
      
      public function §'n§() : Number
      {
         return this.§8k§;
      }
      
      public function §5G§(param1:b2MassData) : void
      {
         param1.§,q§ = this.§9!M§;
         param1.§#!M§ = this.§8k§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §6!!§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§,m§() == false);
         if(this.m_world.§,m§() == true)
         {
            return;
         }
         if(this.§+k§ != b2_dynamicBody)
         {
            return;
         }
         this.§>w§ = 0;
         this.§8k§ = 0;
         this.§#R§ = 0;
         this.§9!M§ = param1.§,q§;
         if(this.§9!M§ <= 0)
         {
            this.§9!M§ = 1;
         }
         this.§>w§ = 1 / this.§9!M§;
         if(param1.§#!M§ > 0 && (this.§9!U§ & b2internal::#!p) == 0)
         {
            this.§8k§ = param1.§#!M§ - this.§9!M§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§#R§ = 1 / this.§8k§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§<!E§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§'R§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§'R§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §'6§() : void
      {
         var _loc4_:b2MassData = null;
         this.§9!M§ = 0;
         this.§>w§ = 0;
         this.§8k§ = 0;
         this.§#R§ = 0;
         this.m_sweep.localCenter.§1!=§();
         if(this.§+k§ == b2_staticBody || this.§+k§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§>!B§(0,0);
         var _loc2_:b2Fixture = this.§ !A§;
         while(_loc2_)
         {
            if(_loc2_.§&!;§ != 0)
            {
               _loc4_ = _loc2_.§5G§();
               this.§9!M§ += _loc4_.§,q§;
               _loc1_.x += _loc4_.center.x * _loc4_.§,q§;
               _loc1_.y += _loc4_.center.y * _loc4_.§,q§;
               this.§8k§ += _loc4_.§#!M§;
            }
            _loc2_ = _loc2_.§ set§;
         }
         if(this.§9!M§ > 0)
         {
            this.§>w§ = 1 / this.§9!M§;
            _loc1_.x *= this.§>w§;
            _loc1_.y *= this.§>w§;
         }
         else
         {
            this.§9!M§ = 1;
            this.§>w§ = 1;
         }
         if(this.§8k§ > 0 && (this.§9!U§ & b2internal::#!p) == 0)
         {
            this.§8k§ -= this.§9!M§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§8k§ *= this.§%!D§;
            b2Settings.b2Assert(this.§8k§ > 0);
            this.§#R§ = 1 / this.§8k§;
         }
         else
         {
            this.§8k§ = 0;
            this.§#R§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§<!E§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§'R§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§'R§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §^0§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§+!T§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,!Z§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#!G§(this.m_xf.R,param1);
      }
      
      public function §6#§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§'R§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§'R§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §#!U§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§'R§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§'R§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §,d§() : Number
      {
         return this.§;!M§;
      }
      
      public function §@!B§(param1:Number) : void
      {
         this.§;!M§ = param1;
      }
      
      public function §5!n§() : Number
      {
         return this.§ r§;
      }
      
      public function §-I§(param1:Number) : void
      {
         this.§ r§ = param1;
      }
      
      public function §'A§(param1:uint) : void
      {
         if(this.§+k§ == param1)
         {
            return;
         }
         this.§+k§ = param1;
         this.§'6§();
         if(this.§+k§ == b2_staticBody)
         {
            this.§'R§.§1!=§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§0!-§.§1!=§();
         this.§+!N§ = 0;
         var _loc2_:b2ContactEdge = this.§`!K§;
         while(_loc2_)
         {
            _loc2_.§!R§.§2s§();
            _loc2_ = _loc2_.§[8§;
         }
      }
      
      public function §^!A§() : uint
      {
         return this.§+k§;
      }
      
      public function §>!#§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9!U§ |= b2internal::37;
         }
         else
         {
            this.§9!U§ &= ~b2internal::37;
         }
      }
      
      public function §?>§() : Boolean
      {
         return (this.§9!U§ & b2internal::37) == b2internal::37;
      }
      
      public function §]T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9!U§ |= b2internal::]Q;
         }
         else
         {
            this.§9!U§ &= ~b2internal::]Q;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9!U§ |= b2internal::3!W;
            this.§5O§ = 0;
         }
         else
         {
            this.§9!U§ &= ~b2internal::3!W;
            this.§5O§ = 0;
            this.§'R§.§1!=§();
            this.m_angularVelocity = 0;
            this.§0!-§.§1!=§();
            this.§+!N§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§9!U§ & b2internal::3!W) == b2internal::3!W;
      }
      
      public function §<!M§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9!U§ |= b2internal::#!p;
         }
         else
         {
            this.§9!U§ &= ~b2internal::#!p;
         }
         this.§'6§();
      }
      
      public function §9H§() : Boolean
      {
         return (this.§9!U§ & b2internal::#!p) == b2internal::#!p;
      }
      
      public function §<<§(param1:Boolean) : void
      {
         var _loc2_:§]!H§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§9!U§ |= b2internal::>V;
            _loc2_ = this.m_world.§%X§.§`!!§;
            _loc3_ = this.§ !A§;
            while(_loc3_)
            {
               _loc3_.§4f§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§ set§;
            }
         }
         else
         {
            this.§9!U§ &= ~b2internal::>V;
            _loc2_ = this.m_world.§%X§.§`!!§;
            _loc3_ = this.§ !A§;
            while(_loc3_)
            {
               _loc3_.§+!g§(_loc2_);
               _loc3_ = _loc3_.§ set§;
            }
            _loc4_ = this.§`!K§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§[8§;
               this.m_world.§%X§.§+$§(_loc5_.§!R§);
            }
            this.§`!K§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§9!U§ & b2internal::>V) == b2internal::>V;
      }
      
      public function §+!P§() : Boolean
      {
         return (this.§9!U§ & b2internal::]Q) == b2internal::]Q;
      }
      
      public function each() : b2Fixture
      {
         return this.§ !A§;
      }
      
      public function § c§() : b2JointEdge
      {
         return this.§9P§;
      }
      
      public function §%!A§() : b2ControllerEdge
      {
         return this.§6! §;
      }
      
      public function §]!@§() : b2ContactEdge
      {
         return this.§`!K§;
      }
      
      public function §%H§() : b2Body
      {
         return this.§ set§;
      }
      
      public function GetUserData() : *
      {
         return this.§;!O§;
      }
      
      public function §-1§(param1:*) : void
      {
         this.§;!O§ = param1;
      }
      
      public function §0_§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §+![§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §0!m§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§]!H§ = this.m_world.§%X§.§`!!§;
         _loc4_ = this.§ !A§;
         while(_loc4_)
         {
            _loc4_.§8!§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§ set§;
         }
      }
      
      b2internal function §4j§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §;!6§(param1:b2Body) : Boolean
      {
         if(this.§+k§ != b2_dynamicBody && param1.§+k§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§9P§;
         while(_loc2_)
         {
            if(_loc2_.§ O§ == param1)
            {
               if(_loc2_.§+T§.§1D§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§[8§;
         }
         return true;
      }
      
      b2internal function §6>§(param1:Number) : void
      {
         this.m_sweep.§6>§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§4j§();
      }
   }
}
