package §[x§
{
   import §#b§.b2EdgeShape;
   import §#b§.b2MassData;
   import §#b§.b2Shape;
   import §%!B§.§-!9§;
   import §&!B§.b2Mat22;
   import §&!B§.b2Math;
   import §&!B§.b2Sweep;
   import §&!B§.b2Transform;
   import §&!B§.b2Vec2;
   import §,!8§.b2JointEdge;
   import §43§.b2Contact;
   import §43§.b2ContactEdge;
   import §8!O§.b2ControllerEdge;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §=!5§:b2Transform = new b2Transform();
      
      b2internal static var §1!@§:uint = 1;
      
      b2internal static var §-!;§:uint = 2;
      
      b2internal static var §"§:uint = 4;
      
      b2internal static var §+!a§:uint = 8;
      
      b2internal static var §^;§:uint = 16;
      
      b2internal static var §[!T§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §`"§:uint;
      
      b2internal var §@9§:int;
      
      b2internal var §0!X§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%q§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §0!!§:b2Vec2;
      
      b2internal var §,!P§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §]h§:b2Body;
      
      b2internal var §83§:b2Body;
      
      b2internal var §1p§:b2Fixture;
      
      b2internal var §!"§:int;
      
      b2internal var §]+§:b2ControllerEdge;
      
      b2internal var §18§:int;
      
      b2internal var §6!Y§:b2JointEdge;
      
      b2internal var §5l§:b2ContactEdge;
      
      b2internal var §;^§:Number;
      
      b2internal var §6I§:Number;
      
      b2internal var §5!K§:Number;
      
      b2internal var §2!L§:Number;
      
      b2internal var §`!-§:Number;
      
      b2internal var §9!T§:Number;
      
      b2internal var §0z§:Number;
      
      b2internal var §2<§:Number;
      
      private var §%m§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§%q§ = new b2Vec2();
         this.§0!!§ = new b2Vec2();
         super();
         this.§`"§ = 0;
         if(param1.§>!R§)
         {
            this.§`"§ |= b2internal::+!a;
         }
         if(param1.§`6§)
         {
            this.§`"§ |= b2internal::^;;
         }
         if(param1.§'_§)
         {
            this.§`"§ |= b2internal::";
         }
         if(param1.§15§)
         {
            this.§`"§ |= b2internal::-!;;
         }
         if(param1.§3w§)
         {
            this.§`"§ |= b2internal::[!T;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§,!3§();
         this.m_sweep.§`!W§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§6!Y§ = null;
         this.§]+§ = null;
         this.§5l§ = null;
         this.§18§ = 0;
         this.§]h§ = null;
         this.§83§ = null;
         this.§%q§.SetV(param1.§%!#§);
         this.m_angularVelocity = param1.§7F§;
         this.§9!T§ = param1.§^!D§;
         this.§0z§ = param1.§!!M§;
         this.§0!!§.Set(0,0);
         this.§,!P§ = 0;
         this.§2<§ = 0;
         this.§@9§ = param1.type;
         if(this.§@9§ == b2_dynamicBody)
         {
            this.§;^§ = 1;
            this.§6I§ = 1;
         }
         else
         {
            this.§;^§ = 0;
            this.§6I§ = 0;
         }
         this.§5!K§ = 0;
         this.§2!L§ = 0;
         this.§`!-§ = param1.§6,§;
         this.§%m§ = param1.§ X§;
         this.§1p§ = null;
         this.§!"§ = 0;
      }
      
      private function §0W§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§>'§().y,param2.§>'§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§]S§(_loc5_,param2.§>'§());
         _loc6_ = b2Math.§12§(_loc6_,param2.§>!D§());
         _loc6_ = b2Math.§]S§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§<9§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§<9§(param1.§>'§(),param2.§>'§())).Normalize();
         var _loc8_:* = b2Math.§-m§(param1.§>'§(),param2.§>!D§()) > 0;
         param1.§!C§(param2,_loc6_,_loc7_,_loc8_);
         param2.§>!V§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §<!1§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§-!9§ = null;
         if(this.m_world.§1!T§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§[?§(this,this.m_xf,param1);
         if(this.§`"§ & b2internal::[!T)
         {
            _loc3_ = this.m_world.§1!Z§.§@W§;
            _loc2_.§0!^§(_loc3_,this.m_xf);
         }
         _loc2_.§83§ = this.§1p§;
         this.§1p§ = _loc2_;
         ++this.§!"§;
         _loc2_.m_body = this;
         if(_loc2_.§7!M§ > 0)
         {
            this.§&!4§();
         }
         this.m_world.§`"§ |= b2World.§`!5§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§<!1§(_loc3_);
      }
      
      public function §]!V§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§-!9§ = null;
         if(this.m_world.§1!T§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§1p§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§83§ = param1.§83§;
               }
               else
               {
                  this.§1p§ = param1.§83§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§83§;
         }
         var _loc5_:b2ContactEdge = this.§5l§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§#0§;
            _loc5_ = _loc5_.§;! §;
            _loc7_ = _loc6_.§31§();
            _loc8_ = _loc6_.§;!E§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§1!Z§.§58§(_loc6_);
            }
         }
         if(this.§`"§ & b2internal::[!T)
         {
            _loc9_ = this.m_world.§1!Z§.§@W§;
            param1.§@!@§(_loc9_);
         }
         param1.§58§();
         param1.m_body = null;
         param1.§83§ = null;
         --this.§!"§;
         this.§&!4§();
      }
      
      public function §,!R§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§1!T§() == true)
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
         var _loc6_:§-!9§ = this.m_world.§1!Z§.§@W§;
         _loc3_ = this.§1p§;
         while(_loc3_)
         {
            _loc3_.§"D§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§83§;
         }
         this.m_world.§1!Z§.§9W§();
      }
      
      public function §0!E§(param1:b2Transform) : void
      {
         this.§,!R§(param1.position,param1.GetAngle());
      }
      
      public function §4g§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §';§(param1:b2Vec2) : void
      {
         this.§,!R§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §^!"§(param1:Number) : void
      {
         this.§,!R§(this.GetPosition(),param1);
      }
      
      public function §9!H§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §]O§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§@9§ == b2_staticBody)
         {
            return;
         }
         this.§%q§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%q§;
      }
      
      public function §0!]§(param1:Number) : void
      {
         if(this.§@9§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §5!+§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §,!O§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§=!,§();
         _loc1_.§'_§ = (this.§`"§ & b2internal::") == b2internal::";
         _loc1_.angle = this.GetAngle();
         _loc1_.§!!M§ = this.§0z§;
         _loc1_.§7F§ = this.m_angularVelocity;
         _loc1_.§`6§ = (this.§`"§ & b2internal::^;) == b2internal::^;;
         _loc1_.§>!R§ = (this.§`"§ & b2internal::+!a) == b2internal::+!a;
         _loc1_.§15§ = (this.§`"§ & b2internal::-!;) == b2internal::-!;;
         _loc1_.§^!D§ = this.§9!T§;
         _loc1_.§%!#§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§ X§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §@!]§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§0!!§.x += param1.x;
         this.§0!!§.y += param1.y;
         this.§,!P§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §!!_§(param1:Number) : void
      {
         if(this.§@9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,!P§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%q§.x += this.§6I§ * param1.x;
         this.§%q§.y += this.§6I§ * param1.y;
         this.m_angularVelocity += this.§2!L§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §0O§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§5!+§();
         var _loc4_:b2Vec2 = this.§9!H§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§-y§(this.§,!O§());
         var _loc8_:b2Fixture = _loc5_.§1p§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§83§;
               if(_loc7_)
               {
                  _loc7_.§83§ = _loc13_;
               }
               else
               {
                  _loc5_.§1p§ = _loc13_;
               }
               --_loc5_.§!"§;
               _loc8_.§83§ = _loc6_.§1p§;
               _loc6_.§1p§ = _loc8_;
               ++_loc6_.§!"§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§83§;
            }
         }
         _loc5_.§&!4§();
         _loc6_.§&!4§();
         var _loc9_:b2Vec2 = _loc5_.§9!H§();
         var _loc10_:b2Vec2 = _loc6_.§9!H§();
         var _loc11_:b2Vec2 = b2Math.§<9§(_loc2_,b2Math.§+!?§(_loc3_,b2Math.§12§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§<9§(_loc2_,b2Math.§+!?§(_loc3_,b2Math.§12§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§0!]§(_loc3_);
         _loc6_.§0!]§(_loc3_);
         _loc5_.§5!_§();
         _loc6_.§5!_§();
         return _loc6_;
      }
      
      public function §`!"§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§1p§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§83§;
            --param1.§!"§;
            _loc2_.§83§ = this.§1p§;
            this.§1p§ = _loc2_;
            ++this.§!"§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§!"§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§9!H§();
         var _loc6_:b2Vec2 = _loc4_.§9!H§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§5!+§();
         var _loc10_:Number = _loc4_.§5!+§();
         _loc3_.§&!4§();
         this.§5!_§();
      }
      
      public function GetMass() : Number
      {
         return this.§;^§;
      }
      
      public function §`!Q§() : Number
      {
         return this.§5!K§;
      }
      
      public function §0x§(param1:b2MassData) : void
      {
         param1.§3O§ = this.§;^§;
         param1.§-!`§ = this.§5!K§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §;$§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§1!T§() == false);
         if(this.m_world.§1!T§() == true)
         {
            return;
         }
         if(this.§@9§ != b2_dynamicBody)
         {
            return;
         }
         this.§6I§ = 0;
         this.§5!K§ = 0;
         this.§2!L§ = 0;
         this.§;^§ = param1.§3O§;
         if(this.§;^§ <= 0)
         {
            this.§;^§ = 1;
         }
         this.§6I§ = 1 / this.§;^§;
         if(param1.§-!`§ > 0 && (this.§`"§ & b2internal::^;) == 0)
         {
            this.§5!K§ = param1.§-!`§ - this.§;^§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§2!L§ = 1 / this.§5!K§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§+Z§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%q§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§%q§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §&!4§() : void
      {
         var _loc4_:b2MassData = null;
         this.§;^§ = 0;
         this.§6I§ = 0;
         this.§5!K§ = 0;
         this.§2!L§ = 0;
         this.m_sweep.localCenter.§,!3§();
         if(this.§@9§ == b2_staticBody || this.§@9§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§4!K§(0,0);
         var _loc2_:b2Fixture = this.§1p§;
         while(_loc2_)
         {
            if(_loc2_.§7!M§ != 0)
            {
               _loc4_ = _loc2_.§0x§();
               this.§;^§ += _loc4_.§3O§;
               _loc1_.x += _loc4_.center.x * _loc4_.§3O§;
               _loc1_.y += _loc4_.center.y * _loc4_.§3O§;
               this.§5!K§ += _loc4_.§-!`§;
            }
            _loc2_ = _loc2_.§83§;
         }
         if(this.§;^§ > 0)
         {
            this.§6I§ = 1 / this.§;^§;
            _loc1_.x *= this.§6I§;
            _loc1_.y *= this.§6I§;
         }
         else
         {
            this.§;^§ = 1;
            this.§6I§ = 1;
         }
         if(this.§5!K§ > 0 && (this.§`"§ & b2internal::^;) == 0)
         {
            this.§5!K§ -= this.§;^§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§5!K§ *= this.§`!-§;
            b2Settings.b2Assert(this.§5!K§ > 0);
            this.§2!L§ = 1 / this.§5!K§;
         }
         else
         {
            this.§5!K§ = 0;
            this.§2!L§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§+Z§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%q§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§%q§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §+_§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§7U§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[l§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§=!I§(this.m_xf.R,param1);
      }
      
      public function §8![§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§%q§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§%q§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §'X§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§%q§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§%q§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §<I§() : Number
      {
         return this.§9!T§;
      }
      
      public function §]%§(param1:Number) : void
      {
         this.§9!T§ = param1;
      }
      
      public function §&2§() : Number
      {
         return this.§0z§;
      }
      
      public function §2I§(param1:Number) : void
      {
         this.§0z§ = param1;
      }
      
      public function § if§(param1:uint) : void
      {
         if(this.§@9§ == param1)
         {
            return;
         }
         this.§@9§ = param1;
         this.§&!4§();
         if(this.§@9§ == b2_staticBody)
         {
            this.§%q§.§,!3§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§0!!§.§,!3§();
         this.§,!P§ = 0;
         var _loc2_:b2ContactEdge = this.§5l§;
         while(_loc2_)
         {
            _loc2_.§#0§.§!!3§();
            _loc2_ = _loc2_.§;! §;
         }
      }
      
      public function §=!,§() : uint
      {
         return this.§@9§;
      }
      
      public function §#s§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"§ |= b2internal::+!a;
         }
         else
         {
            this.§`"§ &= ~b2internal::+!a;
         }
      }
      
      public function §4!F§() : Boolean
      {
         return (this.§`"§ & b2internal::+!a) == b2internal::+!a;
      }
      
      public function §>!,§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"§ |= b2internal::";
         }
         else
         {
            this.§`"§ &= ~b2internal::";
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"§ |= b2internal::-!;;
            this.§2<§ = 0;
         }
         else
         {
            this.§`"§ &= ~b2internal::-!;;
            this.§2<§ = 0;
            this.§%q§.§,!3§();
            this.m_angularVelocity = 0;
            this.§0!!§.§,!3§();
            this.§,!P§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§`"§ & b2internal::-!;) == b2internal::-!;;
      }
      
      public function §4[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"§ |= b2internal::^;;
         }
         else
         {
            this.§`"§ &= ~b2internal::^;;
         }
         this.§&!4§();
      }
      
      public function §&!7§() : Boolean
      {
         return (this.§`"§ & b2internal::^;) == b2internal::^;;
      }
      
      public function §!H§(param1:Boolean) : void
      {
         var _loc2_:§-!9§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§ "§())
         {
            return;
         }
         if(param1)
         {
            this.§`"§ |= b2internal::[!T;
            _loc2_ = this.m_world.§1!Z§.§@W§;
            _loc3_ = this.§1p§;
            while(_loc3_)
            {
               _loc3_.§0!^§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§83§;
            }
         }
         else
         {
            this.§`"§ &= ~b2internal::[!T;
            _loc2_ = this.m_world.§1!Z§.§@W§;
            _loc3_ = this.§1p§;
            while(_loc3_)
            {
               _loc3_.§@!@§(_loc2_);
               _loc3_ = _loc3_.§83§;
            }
            _loc4_ = this.§5l§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§;! §;
               this.m_world.§1!Z§.§58§(_loc5_.§#0§);
            }
            this.§5l§ = null;
         }
      }
      
      public function § "§() : Boolean
      {
         return (this.§`"§ & b2internal::[!T) == b2internal::[!T;
      }
      
      public function § !?§() : Boolean
      {
         return (this.§`"§ & b2internal::") == b2internal::";
      }
      
      public function §=_§() : b2Fixture
      {
         return this.§1p§;
      }
      
      public function §?z§() : b2JointEdge
      {
         return this.§6!Y§;
      }
      
      public function §`Z§() : b2ControllerEdge
      {
         return this.§]+§;
      }
      
      public function §-o§() : b2ContactEdge
      {
         return this.§5l§;
      }
      
      public function §&-§() : b2Body
      {
         return this.§83§;
      }
      
      public function GetUserData() : *
      {
         return this.§%m§;
      }
      
      public function §4R§(param1:*) : void
      {
         this.§%m§ = param1;
      }
      
      public function §8!'§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §5!_§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §=!5§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§-!9§ = this.m_world.§1!Z§.§@W§;
         _loc4_ = this.§1p§;
         while(_loc4_)
         {
            _loc4_.§"D§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§83§;
         }
      }
      
      b2internal function §[B§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §@@§(param1:b2Body) : Boolean
      {
         if(this.§@9§ != b2_dynamicBody && param1.§@9§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§6!Y§;
         while(_loc2_)
         {
            if(_loc2_.§]!P§ == param1)
            {
               if(_loc2_.§<;§.§6'§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§;! §;
         }
         return true;
      }
      
      b2internal function §^X§(param1:Number) : void
      {
         this.m_sweep.§^X§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§[B§();
      }
   }
}
