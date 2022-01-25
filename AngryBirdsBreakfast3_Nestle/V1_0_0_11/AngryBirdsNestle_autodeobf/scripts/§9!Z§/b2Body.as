package §9!Z§
{
   import §!"2§.b2ControllerEdge;
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §,H§.b2JointEdge;
   import §7!&§.§;!p§;
   import §?"'§.b2Mat22;
   import §?"'§.b2Math;
   import §?"'§.b2Sweep;
   import §?"'§.b2Transform;
   import §?"'§.b2Vec2;
   import §[K§.b2Contact;
   import §[K§.b2ContactEdge;
   import §`!C§.b2EdgeShape;
   import §`!C§.b2MassData;
   import §`!C§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#!o§:b2Transform = new b2Transform();
      
      b2internal static var §6'§:uint = 1;
      
      b2internal static var §1R§:uint = 2;
      
      b2internal static var §9m§:uint = 4;
      
      b2internal static var §-[§:uint = 8;
      
      b2internal static var §#`§:uint = 16;
      
      b2internal static var §7!c§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var § !E§:uint;
      
      b2internal var §[!5§:int;
      
      b2internal var §<+§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var § Y§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §1"%§:b2Vec2;
      
      b2internal var §3",§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §<!u§:b2Body;
      
      b2internal var §>7§:b2Body;
      
      b2internal var §]"!§:b2Fixture;
      
      b2internal var §'"6§:int;
      
      b2internal var §,x§:b2ControllerEdge;
      
      b2internal var §,k§:int;
      
      b2internal var §1e§:b2JointEdge;
      
      b2internal var §-!x§:b2ContactEdge;
      
      b2internal var §<Q§:Number;
      
      b2internal var §;!R§:Number;
      
      b2internal var §'" §:Number;
      
      b2internal var §1!k§:Number;
      
      b2internal var §='§:Number;
      
      b2internal var §[!T§:Number;
      
      b2internal var §0!H§:Number;
      
      b2internal var §3!6§:Number;
      
      b2internal var §6K§:Number;
      
      b2internal var §^!-§:Boolean;
      
      private var §?!W§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§ Y§ = new b2Vec2();
         this.§1"%§ = new b2Vec2();
         super();
         this.§ !E§ = 0;
         if(param1.§`!$§)
         {
            this.§ !E§ |= b2internal::-[;
         }
         if(param1.§1I§)
         {
            this.§ !E§ |= b2internal::#`;
         }
         if(param1.§ !C§)
         {
            this.§ !E§ |= b2internal::9m;
         }
         if(param1.§'!^§)
         {
            this.§ !E§ |= b2internal::1R;
         }
         if(param1.active)
         {
            this.§ !E§ |= b2internal::7!c;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§6!c§();
         this.m_sweep.§'1§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§1e§ = null;
         this.§,x§ = null;
         this.§-!x§ = null;
         this.§,k§ = 0;
         this.§<!u§ = null;
         this.§>7§ = null;
         this.§ Y§.SetV(param1.§<!N§);
         this.m_angularVelocity = param1.§ !a§;
         this.§[!T§ = param1.§<!Q§;
         this.§0!H§ = param1.§]!c§;
         this.§6K§ = param1.§3"'§;
         this.§1"%§.Set(0,0);
         this.§3",§ = 0;
         this.§3!6§ = 0;
         this.§[!5§ = param1.type;
         if(this.§[!5§ == b2_dynamicBody)
         {
            this.§<Q§ = 1;
            this.§;!R§ = 1;
         }
         else
         {
            this.§<Q§ = 0;
            this.§;!R§ = 0;
         }
         this.§'" § = 0;
         this.§1!k§ = 0;
         this.§='§ = param1.§0!9§;
         this.§?!W§ = param1.userData;
         this.§]"!§ = null;
         this.§'"6§ = 0;
      }
      
      private function §]p§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§]!X§().y,param2.§]!X§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§^4§(_loc5_,param2.§]!X§());
         _loc6_ = b2Math.§?7§(_loc6_,param2.§4!e§());
         _loc6_ = b2Math.§^4§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§]!'§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§]!'§(param1.§]!X§(),param2.§]!X§())).Normalize();
         var _loc8_:* = b2Math.§>$§(param1.§]!X§(),param2.§4!e§()) > 0;
         param1.§ !@§(param2,_loc6_,_loc7_,_loc8_);
         param2.§7w§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§;!p§ = null;
         if(this.m_world.§ "4§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§&y§(this,this.m_xf,param1);
         if(this.§ !E§ & b2internal::7!c)
         {
            _loc3_ = this.m_world.§-!K§.§]"4§;
            _loc2_.§-$§(_loc3_,this.m_xf);
         }
         _loc2_.§>7§ = this.§]"!§;
         this.§]"!§ = _loc2_;
         ++this.§'"6§;
         _loc2_.m_body = this;
         if(_loc2_.§&!X§ > 0)
         {
            this.§5!p§();
         }
         this.m_world.§ !E§ |= b2World.§%i§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §try §(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§;!p§ = null;
         if(this.m_world.§ "4§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§]"!§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§>7§ = param1.§>7§;
               }
               else
               {
                  this.§]"!§ = param1.§>7§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§>7§;
         }
         var _loc5_:b2ContactEdge = this.§-!x§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§1!z§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§@"0§();
            _loc8_ = _loc6_.§!!Z§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§-!K§.§"!,§(_loc6_);
            }
         }
         if(this.§ !E§ & b2internal::7!c)
         {
            _loc9_ = this.m_world.§-!K§.§]"4§;
            param1.§=§(_loc9_);
         }
         param1.§"!,§();
         param1.m_body = null;
         param1.§>7§ = null;
         --this.§'"6§;
         this.§5!p§();
      }
      
      public function §3L§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§ "4§() == true)
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
         var _loc6_:§;!p§ = this.m_world.§-!K§.§]"4§;
         _loc3_ = this.§]"!§;
         while(_loc3_)
         {
            _loc3_.§3C§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§>7§;
         }
         this.m_world.§-!K§.§+[§();
      }
      
      public function §?!n§(param1:b2Transform) : void
      {
         this.§3L§(param1.position,param1.GetAngle());
      }
      
      public function §0!z§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§3L§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§3L§(this.GetPosition(),param1);
      }
      
      public function §`!z§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §%=§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§[!5§ == b2_staticBody)
         {
            return;
         }
         this.§ Y§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§ Y§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§[!5§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §&#§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§&r§();
         _loc1_.§ !C§ = (this.§ !E§ & b2internal::9m) == b2internal::9m;
         _loc1_.angle = this.GetAngle();
         _loc1_.§]!c§ = this.§0!H§;
         _loc1_.§ !a§ = this.m_angularVelocity;
         _loc1_.§1I§ = (this.§ !E§ & b2internal::#`) == b2internal::#`;
         _loc1_.§`!$§ = (this.§ !E§ & b2internal::-[) == b2internal::-[;
         _loc1_.§'!^§ = (this.§ !E§ & b2internal::1R) == b2internal::1R;
         _loc1_.§<!Q§ = this.§[!T§;
         _loc1_.§<!N§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §7",§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§[!5§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1"%§.x += param1.x;
         this.§1"%§.y += param1.y;
         this.§3",§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §@W§(param1:Number) : void
      {
         if(this.§[!5§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§3",§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§[!5§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§ Y§.x += this.§;!R§ * param1.x;
         this.§ Y§.y += this.§;!R§ * param1.y;
         this.m_angularVelocity += this.§1!k§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §#w§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§`!z§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§&#§());
         var _loc8_:b2Fixture = _loc5_.§]"!§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§>7§;
               if(_loc7_)
               {
                  _loc7_.§>7§ = _loc13_;
               }
               else
               {
                  _loc5_.§]"!§ = _loc13_;
               }
               --_loc5_.§'"6§;
               _loc8_.§>7§ = _loc6_.§]"!§;
               _loc6_.§]"!§ = _loc8_;
               ++_loc6_.§'"6§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>7§;
            }
         }
         _loc5_.§5!p§();
         _loc6_.§5!p§();
         var _loc9_:b2Vec2 = _loc5_.§`!z§();
         var _loc10_:b2Vec2 = _loc6_.§`!z§();
         var _loc11_:b2Vec2 = b2Math.§]!'§(_loc2_,b2Math.§<_§(_loc3_,b2Math.§?7§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§]!'§(_loc2_,b2Math.§<_§(_loc3_,b2Math.§?7§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§=<§();
         _loc6_.§=<§();
         return _loc6_;
      }
      
      public function §?"&§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§]"!§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§>7§;
            --param1.§'"6§;
            _loc2_.§>7§ = this.§]"!§;
            this.§]"!§ = _loc2_;
            ++this.§'"6§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§'"6§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§`!z§();
         var _loc6_:b2Vec2 = _loc4_.§`!z§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§5!p§();
         this.§=<§();
      }
      
      public function GetMass() : Number
      {
         return this.§<Q§;
      }
      
      public function §]!d§() : Number
      {
         return this.§'" §;
      }
      
      public function §'z§(param1:b2MassData) : void
      {
         param1.§`x§ = this.§<Q§;
         param1.I = this.§'" §;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §1!t§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§ "4§() == false);
         if(this.m_world.§ "4§() == true)
         {
            return;
         }
         if(this.§[!5§ != b2_dynamicBody)
         {
            return;
         }
         this.§;!R§ = 0;
         this.§'" § = 0;
         this.§1!k§ = 0;
         this.§<Q§ = param1.§`x§;
         if(this.§<Q§ <= 0)
         {
            this.§<Q§ = 1;
         }
         this.§;!R§ = 1 / this.§<Q§;
         if(param1.I > 0 && (this.§ !E§ & b2internal::#`) == 0)
         {
            this.§'" § = param1.I - this.§<Q§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§1!k§ = 1 / this.§'" §;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§2!]§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§ Y§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§ Y§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §5!p§() : void
      {
         var _loc4_:b2MassData = null;
         this.§<Q§ = 0;
         this.§;!R§ = 0;
         this.§'" § = 0;
         this.§1!k§ = 0;
         this.m_sweep.localCenter.§6!c§();
         if(this.§[!5§ == b2_staticBody || this.§[!5§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§+!W§(0,0);
         var _loc2_:b2Fixture = this.§]"!§;
         while(_loc2_)
         {
            if(_loc2_.§&!X§ != 0)
            {
               _loc4_ = _loc2_.§'z§();
               this.§<Q§ += _loc4_.§`x§;
               _loc1_.x += _loc4_.center.x * _loc4_.§`x§;
               _loc1_.y += _loc4_.center.y * _loc4_.§`x§;
               this.§'" § += _loc4_.I;
            }
            _loc2_ = _loc2_.§>7§;
         }
         if(this.§<Q§ > 0)
         {
            this.§;!R§ = 1 / this.§<Q§;
            _loc1_.x *= this.§;!R§;
            _loc1_.y *= this.§;!R§;
         }
         else
         {
            this.§<Q§ = 1;
            this.§;!R§ = 1;
         }
         if(this.§'" § > 0 && (this.§ !E§ & b2internal::#`) == 0)
         {
            this.§'" § -= this.§<Q§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§'" § *= this.§='§;
            b2Settings.b2Assert(this.§'" § > 0);
            this.§1!k§ = 1 / this.§'" §;
         }
         else
         {
            this.§'" § = 0;
            this.§1!k§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§2!]§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§ Y§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§ Y§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function § use§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2&§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#T§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@! §(this.m_xf.R,param1);
      }
      
      public function §#!e§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§ Y§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§ Y§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §!3§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§ Y§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§ Y§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §`V§() : Number
      {
         return this.§[!T§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§[!T§ = param1;
      }
      
      public function §7!D§() : Number
      {
         return this.§0!H§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§0!H§ = param1;
      }
      
      public function §<!`§() : Number
      {
         return this.§6K§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§6K§ = param1;
      }
      
      public function §61§(param1:uint) : void
      {
         if(this.§[!5§ == param1)
         {
            return;
         }
         this.§[!5§ = param1;
         this.§5!p§();
         if(this.§[!5§ == b2_staticBody)
         {
            this.§ Y§.§6!c§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§1"%§.§6!c§();
         this.§3",§ = 0;
         var _loc2_:b2ContactEdge = this.§-!x§;
         while(_loc2_)
         {
            _loc2_.§1!z§.§->§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §&r§() : uint
      {
         return this.§[!5§;
      }
      
      public function §'L§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !E§ |= b2internal::-[;
         }
         else
         {
            this.§ !E§ &= ~b2internal::-[;
         }
      }
      
      public function §"!C§() : Boolean
      {
         return (this.§ !E§ & b2internal::-[) == b2internal::-[;
      }
      
      public function §9![§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !E§ |= b2internal::9m;
         }
         else
         {
            this.§ !E§ &= ~b2internal::9m;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !E§ |= b2internal::1R;
            this.§3!6§ = 0;
         }
         else
         {
            this.§ !E§ &= ~b2internal::1R;
            this.§3!6§ = 0;
            this.§ Y§.§6!c§();
            this.m_angularVelocity = 0;
            this.§1"%§.§6!c§();
            this.§3",§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§ !E§ & b2internal::1R) == b2internal::1R;
      }
      
      public function §-A§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !E§ |= b2internal::#`;
         }
         else
         {
            this.§ !E§ &= ~b2internal::#`;
         }
         this.§5!p§();
      }
      
      public function §8l§() : Boolean
      {
         return (this.§ !E§ & b2internal::#`) == b2internal::#`;
      }
      
      public function §-s§(param1:Boolean) : void
      {
         var _loc2_:§;!p§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§]!@§())
         {
            return;
         }
         if(param1)
         {
            this.§ !E§ |= b2internal::7!c;
            _loc2_ = this.m_world.§-!K§.§]"4§;
            _loc3_ = this.§]"!§;
            while(_loc3_)
            {
               _loc3_.§-$§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§>7§;
            }
         }
         else
         {
            this.§ !E§ &= ~b2internal::7!c;
            _loc2_ = this.m_world.§-!K§.§]"4§;
            _loc3_ = this.§]"!§;
            while(_loc3_)
            {
               _loc3_.§=§(_loc2_);
               _loc3_ = _loc3_.§>7§;
            }
            _loc4_ = this.§-!x§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§-!K§.§"!,§(_loc5_.§1!z§);
            }
            this.§-!x§ = null;
         }
      }
      
      public function §]!@§() : Boolean
      {
         return (this.§ !E§ & b2internal::7!c) == b2internal::7!c;
      }
      
      public function §#z§() : Boolean
      {
         return (this.§ !E§ & b2internal::9m) == b2internal::9m;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§]"!§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§1e§;
      }
      
      public function §[j§() : b2ControllerEdge
      {
         return this.§,x§;
      }
      
      public function §+@§() : b2ContactEdge
      {
         return this.§-!x§;
      }
      
      public function §&!B§() : b2Body
      {
         return this.§>7§;
      }
      
      public function GetUserData() : *
      {
         return this.§?!W§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§?!W§ = param1;
      }
      
      public function §?!a§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §=<§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#!o§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§;!p§ = this.m_world.§-!K§.§]"4§;
         _loc4_ = this.§]"!§;
         while(_loc4_)
         {
            _loc4_.§3C§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§>7§;
         }
      }
      
      b2internal function §>#§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §3m§(param1:b2Body) : Boolean
      {
         if(this.§[!5§ != b2_dynamicBody && param1.§[!5§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§1e§;
         while(_loc2_)
         {
            if(_loc2_.§"!$§ == param1)
            {
               if(_loc2_.§^1§.§,T§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      public function §+!Y§(param1:Boolean) : void
      {
         this.§^!-§ = param1;
      }
      
      b2internal function §8H§(param1:Number) : void
      {
         this.m_sweep.§8H§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§>#§();
      }
   }
}
