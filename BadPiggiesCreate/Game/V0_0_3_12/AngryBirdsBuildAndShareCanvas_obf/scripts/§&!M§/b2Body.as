package §&!M§
{
   import §'!z§.b2ControllerEdge;
   import §,Y§.b2EdgeShape;
   import §,Y§.b2MassData;
   import §,Y§.b2Shape;
   import §3!t§.b2Mat22;
   import §3!t§.b2Math;
   import §3!t§.b2Sweep;
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §4"$§.b2JointEdge;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   import §;"0§.§,;§;
   import §?!D§.b2Contact;
   import §?!D§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §2!$§:b2Transform = new b2Transform();
      
      b2internal static var §8!E§:uint = 1;
      
      b2internal static var §^!c§:uint = 2;
      
      b2internal static var §'!n§:uint = 4;
      
      b2internal static var §!J§:uint = 8;
      
      b2internal static var §+!q§:uint = 16;
      
      b2internal static var §;H§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §[d§:uint;
      
      b2internal var §+V§:int;
      
      b2internal var §5"7§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §[!m§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §+4§:b2Vec2;
      
      b2internal var §^E§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §]!9§:b2Body;
      
      b2internal var §'!@§:b2Body;
      
      b2internal var §@!H§:b2Fixture;
      
      b2internal var §,t§:int;
      
      b2internal var §2!t§:b2ControllerEdge;
      
      b2internal var §8+§:int;
      
      b2internal var §<!@§:b2JointEdge;
      
      b2internal var §,^§:b2ContactEdge;
      
      b2internal var §=!i§:Number;
      
      b2internal var §+!O§:Number;
      
      b2internal var §`K§:Number;
      
      b2internal var §#f§:Number;
      
      b2internal var §4!7§:Number;
      
      b2internal var §4!K§:Number;
      
      b2internal var §["§:Number;
      
      b2internal var §;7§:Number;
      
      private var §4!e§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§[!m§ = new b2Vec2();
         this.§+4§ = new b2Vec2();
         super();
         this.§[d§ = 0;
         if(param1.§2"#§)
         {
            this.§[d§ |= b2internal::!J;
         }
         if(param1.§'">§)
         {
            this.§[d§ |= b2internal::+!q;
         }
         if(param1.§3!f§)
         {
            this.§[d§ |= b2internal::'!n;
         }
         if(param1.§;d§)
         {
            this.§[d§ |= b2internal::^!c;
         }
         if(param1.§,!R§)
         {
            this.§[d§ |= b2internal::;H;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§ 4§();
         this.m_sweep.§3""§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§<!@§ = null;
         this.§2!t§ = null;
         this.§,^§ = null;
         this.§8+§ = 0;
         this.§]!9§ = null;
         this.§'!@§ = null;
         this.§[!m§.SetV(param1.§[F§);
         this.m_angularVelocity = param1.§?!Z§;
         this.§4!K§ = param1.§`O§;
         this.§["§ = param1.§@c§;
         this.§+4§.Set(0,0);
         this.§^E§ = 0;
         this.§;7§ = 0;
         this.§+V§ = param1.type;
         if(this.§+V§ == b2_dynamicBody)
         {
            this.§=!i§ = 1;
            this.§+!O§ = 1;
         }
         else
         {
            this.§=!i§ = 0;
            this.§+!O§ = 0;
         }
         this.§`K§ = 0;
         this.§#f§ = 0;
         this.§4!7§ = param1.§`!b§;
         this.§4!e§ = param1.§7!_§;
         this.§@!H§ = null;
         this.§,t§ = 0;
      }
      
      private function §%X§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§>4§().y,param2.§>4§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§#!r§(_loc5_,param2.§>4§());
         _loc6_ = b2Math.§'T§(_loc6_,param2.§=!c§());
         _loc6_ = b2Math.§#!r§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§`!8§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§`!8§(param1.§>4§(),param2.§>4§())).Normalize();
         var _loc8_:* = b2Math.§"!o§(param1.§>4§(),param2.§=!c§()) > 0;
         param1.§`T§(param2,_loc6_,_loc7_,_loc8_);
         param2.§;"+§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §3" §(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§,;§ = null;
         if(this.m_world.§-!Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§[,§(this,this.m_xf,param1);
         if(this.§[d§ & b2internal::;H)
         {
            _loc3_ = this.m_world.§?!7§.§>K§;
            _loc2_.§'K§(_loc3_,this.m_xf);
         }
         _loc2_.§'!@§ = this.§@!H§;
         this.§@!H§ = _loc2_;
         ++this.§,t§;
         _loc2_.m_body = this;
         if(_loc2_.§=!5§ > 0)
         {
            this.§!L§();
         }
         this.m_world.§[d§ |= b2World.§+X§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§3" §(_loc3_);
      }
      
      public function §7X§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§,;§ = null;
         if(this.m_world.§-!Y§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§@!H§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§'!@§ = param1.§'!@§;
               }
               else
               {
                  this.§@!H§ = param1.§'!@§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§'!@§;
         }
         var _loc5_:b2ContactEdge = this.§,^§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§?!S§;
            _loc5_ = _loc5_.§^!Q§;
            _loc7_ = _loc6_.§]§();
            _loc8_ = _loc6_.§@!^§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§?!7§.§3"8§(_loc6_);
            }
         }
         if(this.§[d§ & b2internal::;H)
         {
            _loc9_ = this.m_world.§?!7§.§>K§;
            param1.§1!`§(_loc9_);
         }
         param1.§3"8§();
         param1.m_body = null;
         param1.§'!@§ = null;
         --this.§,t§;
         this.§!L§();
      }
      
      public function §?O§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§-!Y§() == true)
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
         var _loc6_:§,;§ = this.m_world.§?!7§.§>K§;
         _loc3_ = this.§@!H§;
         while(_loc3_)
         {
            _loc3_.§&!f§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§'!@§;
         }
         this.m_world.§?!7§.§,!"§();
      }
      
      public function §#d§(param1:b2Transform) : void
      {
         this.§?O§(param1.position,param1.GetAngle());
      }
      
      public function §=!y§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §8!A§(param1:b2Vec2) : void
      {
         this.§?O§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §["5§(param1:Number) : void
      {
         this.§?O§(this.GetPosition(),param1);
      }
      
      public function §5G§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §9",§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§+V§ == b2_staticBody)
         {
            return;
         }
         this.§[!m§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§[!m§;
      }
      
      public function §7"5§(param1:Number) : void
      {
         if(this.§+V§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §1!'§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §9!l§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§6!Q§();
         _loc1_.§3!f§ = (this.§[d§ & b2internal::'!n) == b2internal::'!n;
         _loc1_.angle = this.GetAngle();
         _loc1_.§@c§ = this.§["§;
         _loc1_.§?!Z§ = this.m_angularVelocity;
         _loc1_.§'">§ = (this.§[d§ & b2internal::+!q) == b2internal::+!q;
         _loc1_.§2"#§ = (this.§[d§ & b2internal::!J) == b2internal::!J;
         _loc1_.§;d§ = (this.§[d§ & b2internal::^!c) == b2internal::^!c;
         _loc1_.§`O§ = this.§4!K§;
         _loc1_.§[F§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§7!_§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §"!"§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§+4§.x += param1.x;
         this.§+4§.y += param1.y;
         this.§^E§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §4!'§(param1:Number) : void
      {
         if(this.§+V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^E§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§[!m§.x += this.§+!O§ * param1.x;
         this.§[!m§.y += this.§+!O§ * param1.y;
         this.m_angularVelocity += this.§#f§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §>v§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§1!'§();
         var _loc4_:b2Vec2 = this.§5G§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§function§(this.§9!l§());
         var _loc8_:b2Fixture = _loc5_.§@!H§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§'!@§;
               if(_loc7_)
               {
                  _loc7_.§'!@§ = _loc13_;
               }
               else
               {
                  _loc5_.§@!H§ = _loc13_;
               }
               --_loc5_.§,t§;
               _loc8_.§'!@§ = _loc6_.§@!H§;
               _loc6_.§@!H§ = _loc8_;
               ++_loc6_.§,t§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§'!@§;
            }
         }
         _loc5_.§!L§();
         _loc6_.§!L§();
         var _loc9_:b2Vec2 = _loc5_.§5G§();
         var _loc10_:b2Vec2 = _loc6_.§5G§();
         var _loc11_:b2Vec2 = b2Math.§`!8§(_loc2_,b2Math.§>!J§(_loc3_,b2Math.§'T§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§`!8§(_loc2_,b2Math.§>!J§(_loc3_,b2Math.§'T§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§7"5§(_loc3_);
         _loc6_.§7"5§(_loc3_);
         _loc5_.§6!m§();
         _loc6_.§6!m§();
         return _loc6_;
      }
      
      public function §9!e§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§@!H§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§'!@§;
            --param1.§,t§;
            _loc2_.§'!@§ = this.§@!H§;
            this.§@!H§ = _loc2_;
            ++this.§,t§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§,t§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§5G§();
         var _loc6_:b2Vec2 = _loc4_.§5G§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§1!'§();
         var _loc10_:Number = _loc4_.§1!'§();
         _loc3_.§!L§();
         this.§6!m§();
      }
      
      public function GetMass() : Number
      {
         return this.§=!i§;
      }
      
      public function §7!,§() : Number
      {
         return this.§`K§;
      }
      
      public function §+^§(param1:b2MassData) : void
      {
         param1.§&!H§ = this.§=!i§;
         param1.I = this.§`K§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §7!z§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§-!Y§() == false);
         if(this.m_world.§-!Y§() == true)
         {
            return;
         }
         if(this.§+V§ != b2_dynamicBody)
         {
            return;
         }
         this.§+!O§ = 0;
         this.§`K§ = 0;
         this.§#f§ = 0;
         this.§=!i§ = param1.§&!H§;
         if(this.§=!i§ <= 0)
         {
            this.§=!i§ = 1;
         }
         this.§+!O§ = 1 / this.§=!i§;
         if(param1.I > 0 && (this.§[d§ & b2internal::+!q) == 0)
         {
            this.§`K§ = param1.I - this.§=!i§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§#f§ = 1 / this.§`K§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§9!q§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§[!m§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§[!m§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §!L§() : void
      {
         var _loc4_:b2MassData = null;
         this.§=!i§ = 0;
         this.§+!O§ = 0;
         this.§`K§ = 0;
         this.§#f§ = 0;
         this.m_sweep.localCenter.§ 4§();
         if(this.§+V§ == b2_staticBody || this.§+V§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§83§(0,0);
         var _loc2_:b2Fixture = this.§@!H§;
         while(_loc2_)
         {
            if(_loc2_.§=!5§ != 0)
            {
               _loc4_ = _loc2_.§+^§();
               this.§=!i§ += _loc4_.§&!H§;
               _loc1_.x += _loc4_.center.x * _loc4_.§&!H§;
               _loc1_.y += _loc4_.center.y * _loc4_.§&!H§;
               this.§`K§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§'!@§;
         }
         if(this.§=!i§ > 0)
         {
            this.§+!O§ = 1 / this.§=!i§;
            _loc1_.x *= this.§+!O§;
            _loc1_.y *= this.§+!O§;
         }
         else
         {
            this.§=!i§ = 1;
            this.§+!O§ = 1;
         }
         if(this.§`K§ > 0 && (this.§[d§ & b2internal::+!q) == 0)
         {
            this.§`K§ -= this.§=!i§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§`K§ *= this.§4!7§;
            b2Settings.b2Assert(this.§`K§ > 0);
            this.§#f§ = 1 / this.§`K§;
         }
         else
         {
            this.§`K§ = 0;
            this.§#f§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§9!q§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§[!m§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§[!m§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §#!3§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§!!7§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`^§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'S§(this.m_xf.R,param1);
      }
      
      public function §!"4§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§[!m§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§[!m§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §`Q§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§[!m§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§[!m§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §;!n§() : Number
      {
         return this.§4!K§;
      }
      
      public function §-"5§(param1:Number) : void
      {
         this.§4!K§ = param1;
      }
      
      public function §8!h§() : Number
      {
         return this.§["§;
      }
      
      public function §<"3§(param1:Number) : void
      {
         this.§["§ = param1;
      }
      
      public function §2"=§(param1:uint) : void
      {
         if(this.§+V§ == param1)
         {
            return;
         }
         this.§+V§ = param1;
         this.§!L§();
         if(this.§+V§ == b2_staticBody)
         {
            this.§[!m§.§ 4§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§+4§.§ 4§();
         this.§^E§ = 0;
         var _loc2_:b2ContactEdge = this.§,^§;
         while(_loc2_)
         {
            _loc2_.§?!S§.§?">§();
            _loc2_ = _loc2_.§^!Q§;
         }
      }
      
      public function §6!Q§() : uint
      {
         return this.§+V§;
      }
      
      public function §6!+§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[d§ |= b2internal::!J;
         }
         else
         {
            this.§[d§ &= ~b2internal::!J;
         }
      }
      
      public function §<f§() : Boolean
      {
         return (this.§[d§ & b2internal::!J) == b2internal::!J;
      }
      
      public function §%3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[d§ |= b2internal::'!n;
         }
         else
         {
            this.§[d§ &= ~b2internal::'!n;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[d§ |= b2internal::^!c;
            this.§;7§ = 0;
         }
         else
         {
            this.§[d§ &= ~b2internal::^!c;
            this.§;7§ = 0;
            this.§[!m§.§ 4§();
            this.m_angularVelocity = 0;
            this.§+4§.§ 4§();
            this.§^E§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§[d§ & b2internal::^!c) == b2internal::^!c;
      }
      
      public function §'r§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[d§ |= b2internal::+!q;
         }
         else
         {
            this.§[d§ &= ~b2internal::+!q;
         }
         this.§!L§();
      }
      
      public function §"+§() : Boolean
      {
         return (this.§[d§ & b2internal::+!q) == b2internal::+!q;
      }
      
      public function §-H§(param1:Boolean) : void
      {
         var _loc2_:§,;§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§8!m§())
         {
            return;
         }
         if(param1)
         {
            this.§[d§ |= b2internal::;H;
            _loc2_ = this.m_world.§?!7§.§>K§;
            _loc3_ = this.§@!H§;
            while(_loc3_)
            {
               _loc3_.§'K§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§'!@§;
            }
         }
         else
         {
            this.§[d§ &= ~b2internal::;H;
            _loc2_ = this.m_world.§?!7§.§>K§;
            _loc3_ = this.§@!H§;
            while(_loc3_)
            {
               _loc3_.§1!`§(_loc2_);
               _loc3_ = _loc3_.§'!@§;
            }
            _loc4_ = this.§,^§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§^!Q§;
               this.m_world.§?!7§.§3"8§(_loc5_.§?!S§);
            }
            this.§,^§ = null;
         }
      }
      
      public function §8!m§() : Boolean
      {
         return (this.§[d§ & b2internal::;H) == b2internal::;H;
      }
      
      public function §2i§() : Boolean
      {
         return (this.§[d§ & b2internal::'!n) == b2internal::'!n;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§@!H§;
      }
      
      public function §+,§() : b2JointEdge
      {
         return this.§<!@§;
      }
      
      public function §2k§() : b2ControllerEdge
      {
         return this.§2!t§;
      }
      
      public function §#E§() : b2ContactEdge
      {
         return this.§,^§;
      }
      
      public function §`!u§() : b2Body
      {
         return this.§'!@§;
      }
      
      public function GetUserData() : *
      {
         return this.§4!e§;
      }
      
      public function §="-§(param1:*) : void
      {
         this.§4!e§ = param1;
      }
      
      public function §&Q§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §6!m§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §2!$§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§,;§ = this.m_world.§?!7§.§>K§;
         _loc4_ = this.§@!H§;
         while(_loc4_)
         {
            _loc4_.§&!f§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§'!@§;
         }
      }
      
      b2internal function §=!z§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §`!-§(param1:b2Body) : Boolean
      {
         if(this.§+V§ != b2_dynamicBody && param1.§+V§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§<!@§;
         while(_loc2_)
         {
            if(_loc2_.§[s§ == param1)
            {
               if(_loc2_.§`"&§.§8k§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§^!Q§;
         }
         return true;
      }
      
      b2internal function §?S§(param1:Number) : void
      {
         this.m_sweep.§?S§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§=!z§();
      }
   }
}
