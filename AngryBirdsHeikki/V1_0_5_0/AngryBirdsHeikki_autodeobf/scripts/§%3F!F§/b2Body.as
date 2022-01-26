package §?!F§
{
   import §%]§.§4!6§;
   import §,!3§.b2Mat22;
   import §,!3§.b2Math;
   import §,!3§.b2Sweep;
   import §,!3§.b2Transform;
   import §,!3§.b2Vec2;
   import §2!@§.b2ControllerEdge;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §=u§.b2EdgeShape;
   import §=u§.b2MassData;
   import §=u§.b2Shape;
   import §@!]§.b2JointEdge;
   import §@^§.b2Contact;
   import §@^§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §2!;§:b2Transform = new b2Transform();
      
      b2internal static var §?j§:uint = 1;
      
      b2internal static var §,9§:uint = 2;
      
      b2internal static var §,!T§:uint = 4;
      
      b2internal static var §@m§:uint = 8;
      
      b2internal static var §2!V§:uint = 16;
      
      b2internal static var §[2§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §+o§:uint;
      
      b2internal var §?S§:int;
      
      b2internal var §"!9§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §#A§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §,q§:b2Vec2;
      
      b2internal var §3!'§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §8§:b2Body;
      
      b2internal var §+[§:b2Body;
      
      b2internal var §?M§:b2Fixture;
      
      b2internal var §!!2§:int;
      
      b2internal var §2!4§:b2ControllerEdge;
      
      b2internal var §>b§:int;
      
      b2internal var §]!'§:b2JointEdge;
      
      b2internal var §+!Z§:b2ContactEdge;
      
      b2internal var §8!#§:Number;
      
      b2internal var §;!E§:Number;
      
      b2internal var §+!Y§:Number;
      
      b2internal var §8z§:Number;
      
      b2internal var §#!9§:Number;
      
      b2internal var §0[§:Number;
      
      b2internal var §8!]§:Number;
      
      b2internal var §[v§:Number;
      
      private var §?!I§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§#A§ = new b2Vec2();
         this.§,q§ = new b2Vec2();
         super();
         this.§+o§ = 0;
         if(param1.§+l§)
         {
            this.§+o§ |= b2internal::@m;
         }
         if(param1.§%t§)
         {
            this.§+o§ |= b2internal::2!V;
         }
         if(param1.§ !G§)
         {
            this.§+o§ |= b2internal::,!T;
         }
         if(param1.§=!1§)
         {
            this.§+o§ |= b2internal::,9;
         }
         if(param1.§8d§)
         {
            this.§+o§ |= b2internal::[2;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§#!d§();
         this.m_sweep.§`5§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§]!'§ = null;
         this.§2!4§ = null;
         this.§+!Z§ = null;
         this.§>b§ = 0;
         this.§8§ = null;
         this.§+[§ = null;
         this.§#A§.SetV(param1.§=!3§);
         this.m_angularVelocity = param1.§'C§;
         this.§0[§ = param1.§`!9§;
         this.§8!]§ = param1.§;!%§;
         this.§,q§.Set(0,0);
         this.§3!'§ = 0;
         this.§[v§ = 0;
         this.§?S§ = param1.type;
         if(this.§?S§ == b2_dynamicBody)
         {
            this.§8!#§ = 1;
            this.§;!E§ = 1;
         }
         else
         {
            this.§8!#§ = 0;
            this.§;!E§ = 0;
         }
         this.§+!Y§ = 0;
         this.§8z§ = 0;
         this.§#!9§ = param1.§6!`§;
         this.§?!I§ = param1.§!Q§;
         this.§?M§ = null;
         this.§!!2§ = 0;
      }
      
      private function §6g§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§<!8§().y,param2.§<!8§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'y§(_loc5_,param2.§<!8§());
         _loc6_ = b2Math.§#!G§(_loc6_,param2.§,!!§());
         _loc6_ = b2Math.§'y§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§4d§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§4d§(param1.§<!8§(),param2.§<!8§())).Normalize();
         var _loc8_:* = b2Math.§8b§(param1.§<!8§(),param2.§,!!§()) > 0;
         param1.§-<§(param2,_loc6_,_loc7_,_loc8_);
         param2.§=4§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §9!"§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§4!6§ = null;
         if(this.m_world.§&F§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§<!E§(this,this.m_xf,param1);
         if(this.§+o§ & b2internal::[2)
         {
            _loc3_ = this.m_world.§@!C§.§%Z§;
            _loc2_.§]!G§(_loc3_,this.m_xf);
         }
         _loc2_.§+[§ = this.§?M§;
         this.§?M§ = _loc2_;
         ++this.§!!2§;
         _loc2_.m_body = this;
         if(_loc2_.§^S§ > 0)
         {
            this.§-w§();
         }
         this.m_world.§+o§ |= b2World.§9!#§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§9!"§(_loc3_);
      }
      
      public function §;!U§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§4!6§ = null;
         if(this.m_world.§&F§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§?M§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§+[§ = param1.§+[§;
               }
               else
               {
                  this.§?M§ = param1.§+[§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§+[§;
         }
         var _loc5_:b2ContactEdge = this.§+!Z§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§;![§;
            _loc5_ = _loc5_.§"R§;
            _loc7_ = _loc6_.§@!$§();
            _loc8_ = _loc6_.§1!+§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§@!C§.§[!,§(_loc6_);
            }
         }
         if(this.§+o§ & b2internal::[2)
         {
            _loc9_ = this.m_world.§@!C§.§%Z§;
            param1.§&=§(_loc9_);
         }
         param1.§[!,§();
         param1.m_body = null;
         param1.§+[§ = null;
         --this.§!!2§;
         this.§-w§();
      }
      
      public function §;i§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§&F§() == true)
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
         var _loc6_:§4!6§ = this.m_world.§@!C§.§%Z§;
         _loc3_ = this.§?M§;
         while(_loc3_)
         {
            _loc3_.§4!V§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§+[§;
         }
         this.m_world.§@!C§.§4!8§();
      }
      
      public function §@%§(param1:b2Transform) : void
      {
         this.§;i§(param1.position,param1.GetAngle());
      }
      
      public function §50§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §<F§(param1:b2Vec2) : void
      {
         this.§;i§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §!r§(param1:Number) : void
      {
         this.§;i§(this.GetPosition(),param1);
      }
      
      public function §`g§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §7!A§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§?S§ == b2_staticBody)
         {
            return;
         }
         this.§#A§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§#A§;
      }
      
      public function §;w§(param1:Number) : void
      {
         if(this.§?S§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §2^§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§[!H§();
         _loc1_.§ !G§ = (this.§+o§ & b2internal::,!T) == b2internal::,!T;
         _loc1_.angle = this.GetAngle();
         _loc1_.§;!%§ = this.§8!]§;
         _loc1_.§'C§ = this.m_angularVelocity;
         _loc1_.§%t§ = (this.§+o§ & b2internal::2!V) == b2internal::2!V;
         _loc1_.§+l§ = (this.§+o§ & b2internal::@m) == b2internal::@m;
         _loc1_.§=!1§ = (this.§+o§ & b2internal::,9) == b2internal::,9;
         _loc1_.§`!9§ = this.§0[§;
         _loc1_.§=!3§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§!Q§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §3%§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§?S§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,q§.x += param1.x;
         this.§,q§.y += param1.y;
         this.§3!'§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §;!Y§(param1:Number) : void
      {
         if(this.§?S§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§3!'§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§?S§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#A§.x += this.§;!E§ * param1.x;
         this.§#A§.y += this.§;!E§ * param1.y;
         this.m_angularVelocity += this.§8z§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §+-§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§`g§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§7!c§(this.§2^§());
         var _loc8_:b2Fixture = _loc5_.§?M§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§+[§;
               if(_loc7_)
               {
                  _loc7_.§+[§ = _loc13_;
               }
               else
               {
                  _loc5_.§?M§ = _loc13_;
               }
               --_loc5_.§!!2§;
               _loc8_.§+[§ = _loc6_.§?M§;
               _loc6_.§?M§ = _loc8_;
               ++_loc6_.§!!2§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§+[§;
            }
         }
         _loc5_.§-w§();
         _loc6_.§-w§();
         var _loc9_:b2Vec2 = _loc5_.§`g§();
         var _loc10_:b2Vec2 = _loc6_.§`g§();
         var _loc11_:b2Vec2 = b2Math.§4d§(_loc2_,b2Math.§!!E§(_loc3_,b2Math.§#!G§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§4d§(_loc2_,b2Math.§!!E§(_loc3_,b2Math.§#!G§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§;w§(_loc3_);
         _loc6_.§;w§(_loc3_);
         _loc5_.§5!F§();
         _loc6_.§5!F§();
         return _loc6_;
      }
      
      public function §[&§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§?M§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§+[§;
            --param1.§!!2§;
            _loc2_.§+[§ = this.§?M§;
            this.§?M§ = _loc2_;
            ++this.§!!2§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§!!2§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§`g§();
         var _loc6_:b2Vec2 = _loc4_.§`g§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§-w§();
         this.§5!F§();
      }
      
      public function GetMass() : Number
      {
         return this.§8!#§;
      }
      
      public function §3<§() : Number
      {
         return this.§+!Y§;
      }
      
      public function §0u§(param1:b2MassData) : void
      {
         param1.§1!8§ = this.§8!#§;
         param1.§<!D§ = this.§+!Y§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §-l§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§&F§() == false);
         if(this.m_world.§&F§() == true)
         {
            return;
         }
         if(this.§?S§ != b2_dynamicBody)
         {
            return;
         }
         this.§;!E§ = 0;
         this.§+!Y§ = 0;
         this.§8z§ = 0;
         this.§8!#§ = param1.§1!8§;
         if(this.§8!#§ <= 0)
         {
            this.§8!#§ = 1;
         }
         this.§;!E§ = 1 / this.§8!#§;
         if(param1.§<!D§ > 0 && (this.§+o§ & b2internal::2!V) == 0)
         {
            this.§+!Y§ = param1.§<!D§ - this.§8!#§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§8z§ = 1 / this.§+!Y§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§8j§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#A§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§#A§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §-w§() : void
      {
         var _loc4_:b2MassData = null;
         this.§8!#§ = 0;
         this.§;!E§ = 0;
         this.§+!Y§ = 0;
         this.§8z§ = 0;
         this.m_sweep.localCenter.§#!d§();
         if(this.§?S§ == b2_staticBody || this.§?S§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§,V§(0,0);
         var _loc2_:b2Fixture = this.§?M§;
         while(_loc2_)
         {
            if(_loc2_.§^S§ != 0)
            {
               _loc4_ = _loc2_.§0u§();
               this.§8!#§ += _loc4_.§1!8§;
               _loc1_.x += _loc4_.center.x * _loc4_.§1!8§;
               _loc1_.y += _loc4_.center.y * _loc4_.§1!8§;
               this.§+!Y§ += _loc4_.§<!D§;
            }
            _loc2_ = _loc2_.§+[§;
         }
         if(this.§8!#§ > 0)
         {
            this.§;!E§ = 1 / this.§8!#§;
            _loc1_.x *= this.§;!E§;
            _loc1_.y *= this.§;!E§;
         }
         else
         {
            this.§8!#§ = 1;
            this.§;!E§ = 1;
         }
         if(this.§+!Y§ > 0 && (this.§+o§ & b2internal::2!V) == 0)
         {
            this.§+!Y§ -= this.§8!#§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§+!Y§ *= this.§#!9§;
            b2Settings.b2Assert(this.§+!Y§ > 0);
            this.§8z§ = 1 / this.§+!Y§;
         }
         else
         {
            this.§+!Y§ = 0;
            this.§8z§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§8j§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#A§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§#A§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §=S§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§8]§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§1;§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"![§(this.m_xf.R,param1);
      }
      
      public function §`-§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§#A§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§#A§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §@v§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§#A§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§#A§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §#Q§() : Number
      {
         return this.§0[§;
      }
      
      public function §<!?§(param1:Number) : void
      {
         this.§0[§ = param1;
      }
      
      public function §[!2§() : Number
      {
         return this.§8!]§;
      }
      
      public function §?!R§(param1:Number) : void
      {
         this.§8!]§ = param1;
      }
      
      public function §0a§(param1:uint) : void
      {
         if(this.§?S§ == param1)
         {
            return;
         }
         this.§?S§ = param1;
         this.§-w§();
         if(this.§?S§ == b2_staticBody)
         {
            this.§#A§.§#!d§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§,q§.§#!d§();
         this.§3!'§ = 0;
         var _loc2_:b2ContactEdge = this.§+!Z§;
         while(_loc2_)
         {
            _loc2_.§;![§.§,!'§();
            _loc2_ = _loc2_.§"R§;
         }
      }
      
      public function §[!H§() : uint
      {
         return this.§?S§;
      }
      
      public function §4e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+o§ |= b2internal::@m;
         }
         else
         {
            this.§+o§ &= ~b2internal::@m;
         }
      }
      
      public function §try §() : Boolean
      {
         return (this.§+o§ & b2internal::@m) == b2internal::@m;
      }
      
      public function §!!%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+o§ |= b2internal::,!T;
         }
         else
         {
            this.§+o§ &= ~b2internal::,!T;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+o§ |= b2internal::,9;
            this.§[v§ = 0;
         }
         else
         {
            this.§+o§ &= ~b2internal::,9;
            this.§[v§ = 0;
            this.§#A§.§#!d§();
            this.m_angularVelocity = 0;
            this.§,q§.§#!d§();
            this.§3!'§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§+o§ & b2internal::,9) == b2internal::,9;
      }
      
      public function §1!X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+o§ |= b2internal::2!V;
         }
         else
         {
            this.§+o§ &= ~b2internal::2!V;
         }
         this.§-w§();
      }
      
      public function §,!$§() : Boolean
      {
         return (this.§+o§ & b2internal::2!V) == b2internal::2!V;
      }
      
      public function §3!7§(param1:Boolean) : void
      {
         var _loc2_:§4!6§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§5!$§())
         {
            return;
         }
         if(param1)
         {
            this.§+o§ |= b2internal::[2;
            _loc2_ = this.m_world.§@!C§.§%Z§;
            _loc3_ = this.§?M§;
            while(_loc3_)
            {
               _loc3_.§]!G§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§+[§;
            }
         }
         else
         {
            this.§+o§ &= ~b2internal::[2;
            _loc2_ = this.m_world.§@!C§.§%Z§;
            _loc3_ = this.§?M§;
            while(_loc3_)
            {
               _loc3_.§&=§(_loc2_);
               _loc3_ = _loc3_.§+[§;
            }
            _loc4_ = this.§+!Z§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§"R§;
               this.m_world.§@!C§.§[!,§(_loc5_.§;![§);
            }
            this.§+!Z§ = null;
         }
      }
      
      public function §5!$§() : Boolean
      {
         return (this.§+o§ & b2internal::[2) == b2internal::[2;
      }
      
      public function §9!M§() : Boolean
      {
         return (this.§+o§ & b2internal::,!T) == b2internal::,!T;
      }
      
      public function §?O§() : b2Fixture
      {
         return this.§?M§;
      }
      
      public function §9W§() : b2JointEdge
      {
         return this.§]!'§;
      }
      
      public function §"a§() : b2ControllerEdge
      {
         return this.§2!4§;
      }
      
      public function §!q§() : b2ContactEdge
      {
         return this.§+!Z§;
      }
      
      public function §'Q§() : b2Body
      {
         return this.§+[§;
      }
      
      public function GetUserData() : *
      {
         return this.§?!I§;
      }
      
      public function §0%§(param1:*) : void
      {
         this.§?!I§ = param1;
      }
      
      public function §&K§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §5!F§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §2!;§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§4!6§ = this.m_world.§@!C§.§%Z§;
         _loc4_ = this.§?M§;
         while(_loc4_)
         {
            _loc4_.§4!V§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§+[§;
         }
      }
      
      b2internal function §+?§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §6!-§(param1:b2Body) : Boolean
      {
         if(this.§?S§ != b2_dynamicBody && param1.§?S§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§]!'§;
         while(_loc2_)
         {
            if(_loc2_.§%!R§ == param1)
            {
               if(_loc2_.§!!F§.§8p§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§"R§;
         }
         return true;
      }
      
      b2internal function §#I§(param1:Number) : void
      {
         this.m_sweep.§#I§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§+?§();
      }
   }
}
