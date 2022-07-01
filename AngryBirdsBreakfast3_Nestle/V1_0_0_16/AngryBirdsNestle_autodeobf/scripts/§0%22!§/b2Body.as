package §0"!§
{
   import §!§.§5!u§;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §23§.b2Contact;
   import §23§.b2ContactEdge;
   import §=!!§.b2EdgeShape;
   import §=!!§.b2MassData;
   import §=!!§.b2Shape;
   import §?!V§.b2ControllerEdge;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Sweep;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   import §@h§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §+V§:b2Transform = new b2Transform();
      
      b2internal static var §@F§:uint = 1;
      
      b2internal static var §?l§:uint = 2;
      
      b2internal static var §5"4§:uint = 4;
      
      b2internal static var §#!<§:uint = 8;
      
      b2internal static var §5h§:uint = 16;
      
      b2internal static var §5! §:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §1!h§:uint;
      
      b2internal var §5Q§:int;
      
      b2internal var §[!b§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §;!A§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §6",§:b2Vec2;
      
      b2internal var §?!u§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §,!>§:b2Body;
      
      b2internal var §6!c§:b2Body;
      
      b2internal var §%!y§:b2Fixture;
      
      b2internal var §3s§:int;
      
      b2internal var §8!@§:b2ControllerEdge;
      
      b2internal var §#k§:int;
      
      b2internal var §=!U§:b2JointEdge;
      
      b2internal var § if§:b2ContactEdge;
      
      b2internal var §'q§:Number;
      
      b2internal var § c§:Number;
      
      b2internal var §&S§:Number;
      
      b2internal var §"k§:Number;
      
      b2internal var §3X§:Number;
      
      b2internal var §!4§:Number;
      
      b2internal var §?I§:Number;
      
      b2internal var §9!I§:Number;
      
      b2internal var §@?§:Number;
      
      b2internal var §&!;§:Boolean;
      
      private var §finally§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§;!A§ = new b2Vec2();
         this.§6",§ = new b2Vec2();
         super();
         this.§1!h§ = 0;
         if(param1.§5!J§)
         {
            this.§1!h§ |= b2internal::#!<;
         }
         if(param1.§3"2§)
         {
            this.§1!h§ |= b2internal::5h;
         }
         if(param1.§`",§)
         {
            this.§1!h§ |= b2internal::5"4;
         }
         if(param1.§0!z§)
         {
            this.§1!h§ |= b2internal::?l;
         }
         if(param1.active)
         {
            this.§1!h§ |= b2internal::5! ;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§>![§();
         this.m_sweep.§+!U§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§=!U§ = null;
         this.§8!@§ = null;
         this.§ if§ = null;
         this.§#k§ = 0;
         this.§,!>§ = null;
         this.§6!c§ = null;
         this.§;!A§.SetV(param1.§%!7§);
         this.m_angularVelocity = param1.§9!A§;
         this.§!4§ = param1.§>"#§;
         this.§?I§ = param1.§7e§;
         this.§@?§ = param1.§,?§;
         this.§6",§.Set(0,0);
         this.§?!u§ = 0;
         this.§9!I§ = 0;
         this.§5Q§ = param1.type;
         if(this.§5Q§ == b2_dynamicBody)
         {
            this.§'q§ = 1;
            this.§ c§ = 1;
         }
         else
         {
            this.§'q§ = 0;
            this.§ c§ = 0;
         }
         this.§&S§ = 0;
         this.§"k§ = 0;
         this.§3X§ = param1.§#!A§;
         this.§finally§ = param1.userData;
         this.§%!y§ = null;
         this.§3s§ = 0;
      }
      
      private function §+x§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§ t§().y,param2.§ t§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§6!H§(_loc5_,param2.§ t§());
         _loc6_ = b2Math.§1"5§(_loc6_,param2.§+!_§());
         _loc6_ = b2Math.§6!H§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§%!5§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§%!5§(param1.§ t§(),param2.§ t§())).Normalize();
         var _loc8_:* = b2Math.§,w§(param1.§ t§(),param2.§+!_§()) > 0;
         param1.§=<§(param2,_loc6_,_loc7_,_loc8_);
         param2.§0!=§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§5!u§ = null;
         if(this.m_world.§8=§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§'!D§(this,this.m_xf,param1);
         if(this.§1!h§ & b2internal::5! )
         {
            _loc3_ = this.m_world.§`Q§.§"V§;
            _loc2_.§=!b§(_loc3_,this.m_xf);
         }
         _loc2_.§6!c§ = this.§%!y§;
         this.§%!y§ = _loc2_;
         ++this.§3s§;
         _loc2_.m_body = this;
         if(_loc2_.§^"'§ > 0)
         {
            this.§&!g§();
         }
         this.m_world.§1!h§ |= b2World.§&i§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §'!T§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§5!u§ = null;
         if(this.m_world.§8=§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§%!y§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§6!c§ = param1.§6!c§;
               }
               else
               {
                  this.§%!y§ = param1.§6!c§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§6!c§;
         }
         var _loc5_:b2ContactEdge = this.§ if§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§@"6§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§6!'§();
            _loc8_ = _loc6_.§]O§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§`Q§.§7!d§(_loc6_);
            }
         }
         if(this.§1!h§ & b2internal::5! )
         {
            _loc9_ = this.m_world.§`Q§.§"V§;
            param1.§4d§(_loc9_);
         }
         param1.§7!d§();
         param1.m_body = null;
         param1.§6!c§ = null;
         --this.§3s§;
         this.§&!g§();
      }
      
      public function §@0§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§8=§() == true)
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
         var _loc6_:§5!u§ = this.m_world.§`Q§.§"V§;
         _loc3_ = this.§%!y§;
         while(_loc3_)
         {
            _loc3_.§3g§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§6!c§;
         }
         this.m_world.§`Q§.§+!`§();
      }
      
      public function §#n§(param1:b2Transform) : void
      {
         this.§@0§(param1.position,param1.GetAngle());
      }
      
      public function §%X§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§@0§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§@0§(this.GetPosition(),param1);
      }
      
      public function §#!Y§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6_§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5Q§ == b2_staticBody)
         {
            return;
         }
         this.§;!A§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§;!A§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§5Q§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §9!;§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§4!v§();
         _loc1_.§`",§ = (this.§1!h§ & b2internal::5"4) == b2internal::5"4;
         _loc1_.angle = this.GetAngle();
         _loc1_.§7e§ = this.§?I§;
         _loc1_.§9!A§ = this.m_angularVelocity;
         _loc1_.§3"2§ = (this.§1!h§ & b2internal::5h) == b2internal::5h;
         _loc1_.§5!J§ = (this.§1!h§ & b2internal::#!<) == b2internal::#!<;
         _loc1_.§0!z§ = (this.§1!h§ & b2internal::?l) == b2internal::?l;
         _loc1_.§>"#§ = this.§!4§;
         _loc1_.§%!7§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §@!C§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5Q§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§6",§.x += param1.x;
         this.§6",§.y += param1.y;
         this.§?!u§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §3!T§(param1:Number) : void
      {
         if(this.§5Q§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?!u§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5Q§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;!A§.x += this.§ c§ * param1.x;
         this.§;!A§.y += this.§ c§ * param1.y;
         this.m_angularVelocity += this.§"k§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function § "&§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§#!Y§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§9!;§());
         var _loc8_:b2Fixture = _loc5_.§%!y§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§6!c§;
               if(_loc7_)
               {
                  _loc7_.§6!c§ = _loc13_;
               }
               else
               {
                  _loc5_.§%!y§ = _loc13_;
               }
               --_loc5_.§3s§;
               _loc8_.§6!c§ = _loc6_.§%!y§;
               _loc6_.§%!y§ = _loc8_;
               ++_loc6_.§3s§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§6!c§;
            }
         }
         _loc5_.§&!g§();
         _loc6_.§&!g§();
         var _loc9_:b2Vec2 = _loc5_.§#!Y§();
         var _loc10_:b2Vec2 = _loc6_.§#!Y§();
         var _loc11_:b2Vec2 = b2Math.§%!5§(_loc2_,b2Math.§0!p§(_loc3_,b2Math.§1"5§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§%!5§(_loc2_,b2Math.§0!p§(_loc3_,b2Math.§1"5§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§+!c§();
         _loc6_.§+!c§();
         return _loc6_;
      }
      
      public function §4!x§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%!y§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§6!c§;
            --param1.§3s§;
            _loc2_.§6!c§ = this.§%!y§;
            this.§%!y§ = _loc2_;
            ++this.§3s§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§3s§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§#!Y§();
         var _loc6_:b2Vec2 = _loc4_.§#!Y§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§&!g§();
         this.§+!c§();
      }
      
      public function GetMass() : Number
      {
         return this.§'q§;
      }
      
      public function §?9§() : Number
      {
         return this.§&S§;
      }
      
      public function §&D§(param1:b2MassData) : void
      {
         param1.§#!3§ = this.§'q§;
         param1.I = this.§&S§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §4!W§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§8=§() == false);
         if(this.m_world.§8=§() == true)
         {
            return;
         }
         if(this.§5Q§ != b2_dynamicBody)
         {
            return;
         }
         this.§ c§ = 0;
         this.§&S§ = 0;
         this.§"k§ = 0;
         this.§'q§ = param1.§#!3§;
         if(this.§'q§ <= 0)
         {
            this.§'q§ = 1;
         }
         this.§ c§ = 1 / this.§'q§;
         if(param1.I > 0 && (this.§1!h§ & b2internal::5h) == 0)
         {
            this.§&S§ = param1.I - this.§'q§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§"k§ = 1 / this.§&S§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§#@§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;!A§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§;!A§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §&!g§() : void
      {
         var _loc4_:b2MassData = null;
         this.§'q§ = 0;
         this.§ c§ = 0;
         this.§&S§ = 0;
         this.§"k§ = 0;
         this.m_sweep.localCenter.§>![§();
         if(this.§5Q§ == b2_staticBody || this.§5Q§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§7!R§(0,0);
         var _loc2_:b2Fixture = this.§%!y§;
         while(_loc2_)
         {
            if(_loc2_.§^"'§ != 0)
            {
               _loc4_ = _loc2_.§&D§();
               this.§'q§ += _loc4_.§#!3§;
               _loc1_.x += _loc4_.center.x * _loc4_.§#!3§;
               _loc1_.y += _loc4_.center.y * _loc4_.§#!3§;
               this.§&S§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§6!c§;
         }
         if(this.§'q§ > 0)
         {
            this.§ c§ = 1 / this.§'q§;
            _loc1_.x *= this.§ c§;
            _loc1_.y *= this.§ c§;
         }
         else
         {
            this.§'q§ = 1;
            this.§ c§ = 1;
         }
         if(this.§&S§ > 0 && (this.§1!h§ & b2internal::5h) == 0)
         {
            this.§&S§ -= this.§'q§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§&S§ *= this.§3X§;
            b2Settings.b2Assert(this.§&S§ > 0);
            this.§"k§ = 1 / this.§&S§;
         }
         else
         {
            this.§&S§ = 0;
            this.§"k§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§#@§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;!A§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§;!A§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §>!O§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§-!u§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§for §(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`!C§(this.m_xf.R,param1);
      }
      
      public function §%!#§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§;!A§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§;!A§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function § case§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§;!A§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§;!A§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §"t§() : Number
      {
         return this.§!4§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§!4§ = param1;
      }
      
      public function §""1§() : Number
      {
         return this.§?I§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§?I§ = param1;
      }
      
      public function §@!@§() : Number
      {
         return this.§@?§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§@?§ = param1;
      }
      
      public function §@" §(param1:uint) : void
      {
         if(this.§5Q§ == param1)
         {
            return;
         }
         this.§5Q§ = param1;
         this.§&!g§();
         if(this.§5Q§ == b2_staticBody)
         {
            this.§;!A§.§>![§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§6",§.§>![§();
         this.§?!u§ = 0;
         var _loc2_:b2ContactEdge = this.§ if§;
         while(_loc2_)
         {
            _loc2_.§@"6§.§]!V§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §4!v§() : uint
      {
         return this.§5Q§;
      }
      
      public function §;Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!h§ |= b2internal::#!<;
         }
         else
         {
            this.§1!h§ &= ~b2internal::#!<;
         }
      }
      
      public function §^F§() : Boolean
      {
         return (this.§1!h§ & b2internal::#!<) == b2internal::#!<;
      }
      
      public function §3c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!h§ |= b2internal::5"4;
         }
         else
         {
            this.§1!h§ &= ~b2internal::5"4;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!h§ |= b2internal::?l;
            this.§9!I§ = 0;
         }
         else
         {
            this.§1!h§ &= ~b2internal::?l;
            this.§9!I§ = 0;
            this.§;!A§.§>![§();
            this.m_angularVelocity = 0;
            this.§6",§.§>![§();
            this.§?!u§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§1!h§ & b2internal::?l) == b2internal::?l;
      }
      
      public function §+!x§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!h§ |= b2internal::5h;
         }
         else
         {
            this.§1!h§ &= ~b2internal::5h;
         }
         this.§&!g§();
      }
      
      public function §;H§() : Boolean
      {
         return (this.§1!h§ & b2internal::5h) == b2internal::5h;
      }
      
      public function §=C§(param1:Boolean) : void
      {
         var _loc2_:§5!u§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§>!-§())
         {
            return;
         }
         if(param1)
         {
            this.§1!h§ |= b2internal::5! ;
            _loc2_ = this.m_world.§`Q§.§"V§;
            _loc3_ = this.§%!y§;
            while(_loc3_)
            {
               _loc3_.§=!b§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§6!c§;
            }
         }
         else
         {
            this.§1!h§ &= ~b2internal::5! ;
            _loc2_ = this.m_world.§`Q§.§"V§;
            _loc3_ = this.§%!y§;
            while(_loc3_)
            {
               _loc3_.§4d§(_loc2_);
               _loc3_ = _loc3_.§6!c§;
            }
            _loc4_ = this.§ if§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§`Q§.§7!d§(_loc5_.§@"6§);
            }
            this.§ if§ = null;
         }
      }
      
      public function §>!-§() : Boolean
      {
         return (this.§1!h§ & b2internal::5! ) == b2internal::5! ;
      }
      
      public function §8!<§() : Boolean
      {
         return (this.§1!h§ & b2internal::5"4) == b2internal::5"4;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§%!y§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§=!U§;
      }
      
      public function §-!t§() : b2ControllerEdge
      {
         return this.§8!@§;
      }
      
      public function §@d§() : b2ContactEdge
      {
         return this.§ if§;
      }
      
      public function §2!9§() : b2Body
      {
         return this.§6!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§finally§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§finally§ = param1;
      }
      
      public function §#G§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §+!c§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §+V§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§5!u§ = this.m_world.§`Q§.§"V§;
         _loc4_ = this.§%!y§;
         while(_loc4_)
         {
            _loc4_.§3g§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§6!c§;
         }
      }
      
      b2internal function §+!X§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §^m§(param1:b2Body) : Boolean
      {
         if(this.§5Q§ != b2_dynamicBody && param1.§5Q§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§=!U§;
         while(_loc2_)
         {
            if(_loc2_.§"l§ == param1)
            {
               if(_loc2_.§@P§.§ !,§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      public function §4!&§(param1:Boolean) : void
      {
         this.§&!;§ = param1;
      }
      
      b2internal function §!&§(param1:Number) : void
      {
         this.m_sweep.§!&§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§+!X§();
      }
   }
}
