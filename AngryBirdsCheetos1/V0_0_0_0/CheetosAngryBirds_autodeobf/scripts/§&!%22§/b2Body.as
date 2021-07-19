package §&!"§
{
   import § G§.§3!>§;
   import §+I§.b2ControllerEdge;
   import §-!C§.b2EdgeShape;
   import §-!C§.b2MassData;
   import §-!C§.b2Shape;
   import §3g§.b2JointEdge;
   import §69§.b2Contact;
   import §69§.b2ContactEdge;
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Sweep;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §8w§:b2Transform = new b2Transform();
      
      b2internal static var §"!X§:uint = 1;
      
      b2internal static var §9t§:uint = 2;
      
      b2internal static var §5]§:uint = 4;
      
      b2internal static var §1n§:uint = 8;
      
      b2internal static var §8!D§:uint = 16;
      
      b2internal static var §?p§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §?z§:uint;
      
      b2internal var §3c§:int;
      
      b2internal var §0+§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%=§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §-U§:b2Vec2;
      
      b2internal var §&m§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §3U§:b2Body;
      
      b2internal var §0]§:b2Body;
      
      b2internal var §&!R§:b2Fixture;
      
      b2internal var §9g§:int;
      
      b2internal var §8r§:b2ControllerEdge;
      
      b2internal var §5&§:int;
      
      b2internal var §>9§:b2JointEdge;
      
      b2internal var §3!1§:b2ContactEdge;
      
      b2internal var §#!&§:Number;
      
      b2internal var §]m§:Number;
      
      b2internal var §8>§:Number;
      
      b2internal var §?0§:Number;
      
      b2internal var §@!N§:Number;
      
      b2internal var §>!Q§:Number;
      
      b2internal var §0R§:Number;
      
      b2internal var §"!?§:Number;
      
      private var § !O§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§%=§ = new b2Vec2();
         this.§-U§ = new b2Vec2();
         super();
         this.§?z§ = 0;
         if(param1.§ Q§)
         {
            this.§?z§ |= b2internal::1n;
         }
         if(param1.§ v§)
         {
            this.§?z§ |= b2internal::8!D;
         }
         if(param1.§=q§)
         {
            this.§?z§ |= b2internal::5];
         }
         if(param1.§8!T§)
         {
            this.§?z§ |= b2internal::9t;
         }
         if(param1.§?c§)
         {
            this.§?z§ |= b2internal::?p;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§^!#§();
         this.m_sweep.§2g§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§>9§ = null;
         this.§8r§ = null;
         this.§3!1§ = null;
         this.§5&§ = 0;
         this.§3U§ = null;
         this.§0]§ = null;
         this.§%=§.SetV(param1.§=!0§);
         this.m_angularVelocity = param1.§!t§;
         this.§>!Q§ = param1.§[!8§;
         this.§0R§ = param1.§='§;
         this.§-U§.Set(0,0);
         this.§&m§ = 0;
         this.§"!?§ = 0;
         this.§3c§ = param1.type;
         if(this.§3c§ == b2_dynamicBody)
         {
            this.§#!&§ = 1;
            this.§]m§ = 1;
         }
         else
         {
            this.§#!&§ = 0;
            this.§]m§ = 0;
         }
         this.§8>§ = 0;
         this.§?0§ = 0;
         this.§@!N§ = param1.§=T§;
         this.§ !O§ = param1.§7! §;
         this.§&!R§ = null;
         this.§9g§ = 0;
      }
      
      private function §=k§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§7!;§().y,param2.§7!;§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§"!!§(_loc5_,param2.§7!;§());
         _loc6_ = b2Math.§?d§(_loc6_,param2.§]!I§());
         _loc6_ = b2Math.§"!!§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§`#§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§`#§(param1.§7!;§(),param2.§7!;§())).Normalize();
         var _loc8_:* = b2Math.§9-§(param1.§7!;§(),param2.§]!I§()) > 0;
         param1.§'!L§(param2,_loc6_,_loc7_,_loc8_);
         param2.§,=§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §;i§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§3!>§ = null;
         if(this.m_world.§@-§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§?!@§(this,this.m_xf,param1);
         if(this.§?z§ & b2internal::?p)
         {
            _loc3_ = this.m_world.§ t§.§+o§;
            _loc2_.§7=§(_loc3_,this.m_xf);
         }
         _loc2_.§0]§ = this.§&!R§;
         this.§&!R§ = _loc2_;
         ++this.§9g§;
         _loc2_.m_body = this;
         if(_loc2_.§]V§ > 0)
         {
            this.§true §();
         }
         this.m_world.§?z§ |= b2World.§8$§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§;i§(_loc3_);
      }
      
      public function §!!>§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§3!>§ = null;
         if(this.m_world.§@-§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&!R§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§0]§ = param1.§0]§;
               }
               else
               {
                  this.§&!R§ = param1.§0]§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§0]§;
         }
         var _loc5_:b2ContactEdge = this.§3!1§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§^<§;
            _loc5_ = _loc5_.§8L§;
            _loc7_ = _loc6_.§"&§();
            _loc8_ = _loc6_.§7!Z§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§ t§.§4!L§(_loc6_);
            }
         }
         if(this.§?z§ & b2internal::?p)
         {
            _loc9_ = this.m_world.§ t§.§+o§;
            param1.§'!F§(_loc9_);
         }
         param1.§4!L§();
         param1.m_body = null;
         param1.§0]§ = null;
         --this.§9g§;
         this.§true §();
      }
      
      public function §%#§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§@-§() == true)
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
         var _loc6_:§3!>§ = this.m_world.§ t§.§+o§;
         _loc3_ = this.§&!R§;
         while(_loc3_)
         {
            _loc3_.§<i§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§0]§;
         }
         this.m_world.§ t§.§ b§();
      }
      
      public function §^!N§(param1:b2Transform) : void
      {
         this.§%#§(param1.position,param1.GetAngle());
      }
      
      public function §>B§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §0!%§(param1:b2Vec2) : void
      {
         this.§%#§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §!j§(param1:Number) : void
      {
         this.§%#§(this.GetPosition(),param1);
      }
      
      public function §05§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §if§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§3c§ == b2_staticBody)
         {
            return;
         }
         this.§%=§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%=§;
      }
      
      public function §;[§(param1:Number) : void
      {
         if(this.§3c§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §%z§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§0!$§();
         _loc1_.§=q§ = (this.§?z§ & b2internal::5]) == b2internal::5];
         _loc1_.angle = this.GetAngle();
         _loc1_.§='§ = this.§0R§;
         _loc1_.§!t§ = this.m_angularVelocity;
         _loc1_.§ v§ = (this.§?z§ & b2internal::8!D) == b2internal::8!D;
         _loc1_.§ Q§ = (this.§?z§ & b2internal::1n) == b2internal::1n;
         _loc1_.§8!T§ = (this.§?z§ & b2internal::9t) == b2internal::9t;
         _loc1_.§[!8§ = this.§>!Q§;
         _loc1_.§=!0§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§7! § = this.GetUserData();
         return _loc1_;
      }
      
      public function §^!,§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§-U§.x += param1.x;
         this.§-U§.y += param1.y;
         this.§&m§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §"Q§(param1:Number) : void
      {
         if(this.§3c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§&m§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%=§.x += this.§]m§ * param1.x;
         this.§%=§.y += this.§]m§ * param1.y;
         this.m_angularVelocity += this.§?0§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §%u§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§05§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§&!Y§(this.§%z§());
         var _loc8_:b2Fixture = _loc5_.§&!R§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§0]§;
               if(_loc7_)
               {
                  _loc7_.§0]§ = _loc13_;
               }
               else
               {
                  _loc5_.§&!R§ = _loc13_;
               }
               --_loc5_.§9g§;
               _loc8_.§0]§ = _loc6_.§&!R§;
               _loc6_.§&!R§ = _loc8_;
               ++_loc6_.§9g§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§0]§;
            }
         }
         _loc5_.§true §();
         _loc6_.§true §();
         var _loc9_:b2Vec2 = _loc5_.§05§();
         var _loc10_:b2Vec2 = _loc6_.§05§();
         var _loc11_:b2Vec2 = b2Math.§`#§(_loc2_,b2Math.§@!"§(_loc3_,b2Math.§?d§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§`#§(_loc2_,b2Math.§@!"§(_loc3_,b2Math.§?d§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§;[§(_loc3_);
         _loc6_.§;[§(_loc3_);
         _loc5_.§-D§();
         _loc6_.§-D§();
         return _loc6_;
      }
      
      public function §6S§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&!R§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§0]§;
            --param1.§9g§;
            _loc2_.§0]§ = this.§&!R§;
            this.§&!R§ = _loc2_;
            ++this.§9g§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§9g§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§05§();
         var _loc6_:b2Vec2 = _loc4_.§05§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§true §();
         this.§-D§();
      }
      
      public function GetMass() : Number
      {
         return this.§#!&§;
      }
      
      public function §^8§() : Number
      {
         return this.§8>§;
      }
      
      public function §-g§(param1:b2MassData) : void
      {
         param1.§@!V§ = this.§#!&§;
         param1.§9o§ = this.§8>§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function § in§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§@-§() == false);
         if(this.m_world.§@-§() == true)
         {
            return;
         }
         if(this.§3c§ != b2_dynamicBody)
         {
            return;
         }
         this.§]m§ = 0;
         this.§8>§ = 0;
         this.§?0§ = 0;
         this.§#!&§ = param1.§@!V§;
         if(this.§#!&§ <= 0)
         {
            this.§#!&§ = 1;
         }
         this.§]m§ = 1 / this.§#!&§;
         if(param1.§9o§ > 0 && (this.§?z§ & b2internal::8!D) == 0)
         {
            this.§8>§ = param1.§9o§ - this.§#!&§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§?0§ = 1 / this.§8>§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§&B§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%=§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§%=§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §true §() : void
      {
         var _loc4_:b2MassData = null;
         this.§#!&§ = 0;
         this.§]m§ = 0;
         this.§8>§ = 0;
         this.§?0§ = 0;
         this.m_sweep.localCenter.§^!#§();
         if(this.§3c§ == b2_staticBody || this.§3c§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§"!&§(0,0);
         var _loc2_:b2Fixture = this.§&!R§;
         while(_loc2_)
         {
            if(_loc2_.§]V§ != 0)
            {
               _loc4_ = _loc2_.§-g§();
               this.§#!&§ += _loc4_.§@!V§;
               _loc1_.x += _loc4_.center.x * _loc4_.§@!V§;
               _loc1_.y += _loc4_.center.y * _loc4_.§@!V§;
               this.§8>§ += _loc4_.§9o§;
            }
            _loc2_ = _loc2_.§0]§;
         }
         if(this.§#!&§ > 0)
         {
            this.§]m§ = 1 / this.§#!&§;
            _loc1_.x *= this.§]m§;
            _loc1_.y *= this.§]m§;
         }
         else
         {
            this.§#!&§ = 1;
            this.§]m§ = 1;
         }
         if(this.§8>§ > 0 && (this.§?z§ & b2internal::8!D) == 0)
         {
            this.§8>§ -= this.§#!&§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§8>§ *= this.§@!N§;
            b2Settings.b2Assert(this.§8>§ > 0);
            this.§?0§ = 1 / this.§8>§;
         }
         else
         {
            this.§8>§ = 0;
            this.§?0§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§&B§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%=§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§%=§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §^T§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ set§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3!F§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§1!F§(this.m_xf.R,param1);
      }
      
      public function §;!G§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§%=§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§%=§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §@!&§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§%=§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§%=§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §[!L§() : Number
      {
         return this.§>!Q§;
      }
      
      public function §`R§(param1:Number) : void
      {
         this.§>!Q§ = param1;
      }
      
      public function §#!W§() : Number
      {
         return this.§0R§;
      }
      
      public function §3%§(param1:Number) : void
      {
         this.§0R§ = param1;
      }
      
      public function §4i§(param1:uint) : void
      {
         if(this.§3c§ == param1)
         {
            return;
         }
         this.§3c§ = param1;
         this.§true §();
         if(this.§3c§ == b2_staticBody)
         {
            this.§%=§.§^!#§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§-U§.§^!#§();
         this.§&m§ = 0;
         var _loc2_:b2ContactEdge = this.§3!1§;
         while(_loc2_)
         {
            _loc2_.§^<§.§>!A§();
            _loc2_ = _loc2_.§8L§;
         }
      }
      
      public function §0!$§() : uint
      {
         return this.§3c§;
      }
      
      public function §!!"§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?z§ |= b2internal::1n;
         }
         else
         {
            this.§?z§ &= ~b2internal::1n;
         }
      }
      
      public function §&_§() : Boolean
      {
         return (this.§?z§ & b2internal::1n) == b2internal::1n;
      }
      
      public function §[o§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?z§ |= b2internal::5];
         }
         else
         {
            this.§?z§ &= ~b2internal::5];
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?z§ |= b2internal::9t;
            this.§"!?§ = 0;
         }
         else
         {
            this.§?z§ &= ~b2internal::9t;
            this.§"!?§ = 0;
            this.§%=§.§^!#§();
            this.m_angularVelocity = 0;
            this.§-U§.§^!#§();
            this.§&m§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§?z§ & b2internal::9t) == b2internal::9t;
      }
      
      public function §+!B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?z§ |= b2internal::8!D;
         }
         else
         {
            this.§?z§ &= ~b2internal::8!D;
         }
         this.§true §();
      }
      
      public function §;h§() : Boolean
      {
         return (this.§?z§ & b2internal::8!D) == b2internal::8!D;
      }
      
      public function §5!Z§(param1:Boolean) : void
      {
         var _loc2_:§3!>§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§7"§())
         {
            return;
         }
         if(param1)
         {
            this.§?z§ |= b2internal::?p;
            _loc2_ = this.m_world.§ t§.§+o§;
            _loc3_ = this.§&!R§;
            while(_loc3_)
            {
               _loc3_.§7=§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§0]§;
            }
         }
         else
         {
            this.§?z§ &= ~b2internal::?p;
            _loc2_ = this.m_world.§ t§.§+o§;
            _loc3_ = this.§&!R§;
            while(_loc3_)
            {
               _loc3_.§'!F§(_loc2_);
               _loc3_ = _loc3_.§0]§;
            }
            _loc4_ = this.§3!1§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§8L§;
               this.m_world.§ t§.§4!L§(_loc5_.§^<§);
            }
            this.§3!1§ = null;
         }
      }
      
      public function §7"§() : Boolean
      {
         return (this.§?z§ & b2internal::?p) == b2internal::?p;
      }
      
      public function §`A§() : Boolean
      {
         return (this.§?z§ & b2internal::5]) == b2internal::5];
      }
      
      public function §4!%§() : b2Fixture
      {
         return this.§&!R§;
      }
      
      public function §^V§() : b2JointEdge
      {
         return this.§>9§;
      }
      
      public function §4@§() : b2ControllerEdge
      {
         return this.§8r§;
      }
      
      public function §!-§() : b2ContactEdge
      {
         return this.§3!1§;
      }
      
      public function §`!R§() : b2Body
      {
         return this.§0]§;
      }
      
      public function GetUserData() : *
      {
         return this.§ !O§;
      }
      
      public function §,!P§(param1:*) : void
      {
         this.§ !O§ = param1;
      }
      
      public function §4!@§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-D§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §8w§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§3!>§ = this.m_world.§ t§.§+o§;
         _loc4_ = this.§&!R§;
         while(_loc4_)
         {
            _loc4_.§<i§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§0]§;
         }
      }
      
      b2internal function §,M§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §4!T§(param1:b2Body) : Boolean
      {
         if(this.§3c§ != b2_dynamicBody && param1.§3c§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§>9§;
         while(_loc2_)
         {
            if(_loc2_.§!!Y§ == param1)
            {
               if(_loc2_.§#y§.§"l§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§8L§;
         }
         return true;
      }
      
      b2internal function §[d§(param1:Number) : void
      {
         this.m_sweep.§[d§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§,M§();
      }
   }
}
