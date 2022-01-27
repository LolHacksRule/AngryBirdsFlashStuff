package §9!K§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §4!W§.b2EdgeShape;
   import §4!W§.b2MassData;
   import §4!W§.b2Shape;
   import §6!n§.b2Mat22;
   import §6!n§.b2Math;
   import §6!n§.b2Sweep;
   import §6!n§.b2Transform;
   import §6!n§.b2Vec2;
   import §;!Z§.§#"D§;
   import §=-§.b2ControllerEdge;
   import §>6§.b2Contact;
   import §>6§.b2ContactEdge;
   import §[9§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §'"B§:b2Transform = new b2Transform();
      
      b2internal static var §^!4§:uint = 1;
      
      b2internal static var §>H§:uint = 2;
      
      b2internal static var §--§:uint = 4;
      
      b2internal static var §="-§:uint = 8;
      
      b2internal static var §9!b§:uint = 16;
      
      b2internal static var §8!C§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §true§:uint;
      
      b2internal var §`K§:int;
      
      b2internal var §[T§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §9e§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §1"$§:b2Vec2;
      
      b2internal var §4!N§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §9!§:b2Body;
      
      b2internal var §&!6§:b2Body;
      
      b2internal var §9G§:b2Fixture;
      
      b2internal var §-H§:int;
      
      b2internal var §5T§:b2ControllerEdge;
      
      b2internal var §4!a§:int;
      
      b2internal var §]!G§:b2JointEdge;
      
      b2internal var §7!X§:b2ContactEdge;
      
      b2internal var §7g§:Number;
      
      b2internal var §var §:Number;
      
      b2internal var §@!n§:Number;
      
      b2internal var §,"!§:Number;
      
      b2internal var §`!6§:Number;
      
      b2internal var §1!Q§:Number;
      
      b2internal var §8I§:Number;
      
      b2internal var §0!-§:Number;
      
      private var §9=§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§9e§ = new b2Vec2();
         this.§1"$§ = new b2Vec2();
         super();
         this.§true§ = 0;
         if(param1.§=!l§)
         {
            this.§true§ |= b2internal::="-;
         }
         if(param1.§?b§)
         {
            this.§true§ |= b2internal::9!b;
         }
         if(param1.§@!X§)
         {
            this.§true§ |= b2internal::--;
         }
         if(param1.§>5§)
         {
            this.§true§ |= b2internal::>H;
         }
         if(param1.§]K§)
         {
            this.§true§ |= b2internal::8!C;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§58§();
         this.m_sweep.§0!F§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§]!G§ = null;
         this.§5T§ = null;
         this.§7!X§ = null;
         this.§4!a§ = 0;
         this.§9!§ = null;
         this.§&!6§ = null;
         this.§9e§.SetV(param1.§`!N§);
         this.m_angularVelocity = param1.§9!C§;
         this.§1!Q§ = param1.§=]§;
         this.§8I§ = param1.§+!H§;
         this.§1"$§.Set(0,0);
         this.§4!N§ = 0;
         this.§0!-§ = 0;
         this.§`K§ = param1.type;
         if(this.§`K§ == b2_dynamicBody)
         {
            this.§7g§ = 1;
            this.§var § = 1;
         }
         else
         {
            this.§7g§ = 0;
            this.§var § = 0;
         }
         this.§@!n§ = 0;
         this.§,"!§ = 0;
         this.§`!6§ = param1.§<!,§;
         this.§9=§ = param1.§??§;
         this.§9G§ = null;
         this.§-H§ = 0;
      }
      
      private function §=!x§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§"$§().y,param2.§"$§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§1![§(_loc5_,param2.§"$§());
         _loc6_ = b2Math.§%!q§(_loc6_,param2.§0"§());
         _loc6_ = b2Math.§1![§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§1"§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§1"§(param1.§"$§(),param2.§"$§())).Normalize();
         var _loc8_:* = b2Math.§>P§(param1.§"$§(),param2.§0"§()) > 0;
         param1.§0!§(param2,_loc6_,_loc7_,_loc8_);
         param2.§<";§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§#"D§ = null;
         if(this.m_world.§,!s§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§7;§(this,this.m_xf,param1);
         if(this.§true§ & b2internal::8!C)
         {
            _loc3_ = this.m_world.§-`§.§8!1§;
            _loc2_.§0!E§(_loc3_,this.m_xf);
         }
         _loc2_.§&!6§ = this.§9G§;
         this.§9G§ = _loc2_;
         ++this.§-H§;
         _loc2_.m_body = this;
         if(_loc2_.§"!9§ > 0)
         {
            this.§6&§();
         }
         this.m_world.§true§ |= b2World.§,"2§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §2!1§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§#"D§ = null;
         if(this.m_world.§,!s§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§9G§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§&!6§ = param1.§&!6§;
               }
               else
               {
                  this.§9G§ = param1.§&!6§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§&!6§;
         }
         var _loc5_:b2ContactEdge = this.§7!X§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§ 5§;
            _loc5_ = _loc5_.§7$§;
            _loc7_ = _loc6_.§[!_§();
            _loc8_ = _loc6_.§6!6§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§-`§.§7"'§(_loc6_);
            }
         }
         if(this.§true§ & b2internal::8!C)
         {
            _loc9_ = this.m_world.§-`§.§8!1§;
            param1.§>!u§(_loc9_);
         }
         param1.§7"'§();
         param1.m_body = null;
         param1.§&!6§ = null;
         --this.§-H§;
         this.§6&§();
      }
      
      public function §>q§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§,!s§() == true)
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
         var _loc6_:§#"D§ = this.m_world.§-`§.§8!1§;
         _loc3_ = this.§9G§;
         while(_loc3_)
         {
            _loc3_.§+!x§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§&!6§;
         }
         this.m_world.§-`§.§9!^§();
      }
      
      public function §%"6§(param1:b2Transform) : void
      {
         this.§>q§(param1.position,param1.GetAngle());
      }
      
      public function §]!>§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§>q§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§>q§(this.GetPosition(),param1);
      }
      
      public function §2=§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §!"!§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§`K§ == b2_staticBody)
         {
            return;
         }
         this.§9e§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§9e§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§`K§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §[R§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§finally§();
         _loc1_.§@!X§ = (this.§true§ & b2internal::--) == b2internal::--;
         _loc1_.angle = this.GetAngle();
         _loc1_.§+!H§ = this.§8I§;
         _loc1_.§9!C§ = this.m_angularVelocity;
         _loc1_.§?b§ = (this.§true§ & b2internal::9!b) == b2internal::9!b;
         _loc1_.§=!l§ = (this.§true§ & b2internal::="-) == b2internal::="-;
         _loc1_.§>5§ = (this.§true§ & b2internal::>H) == b2internal::>H;
         _loc1_.§=]§ = this.§1!Q§;
         _loc1_.§`!N§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§??§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§`K§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1"$§.x += param1.x;
         this.§1"$§.y += param1.y;
         this.§4!N§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §[y§(param1:Number) : void
      {
         if(this.§`K§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4!N§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§`K§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§9e§.x += this.§var § * param1.x;
         this.§9e§.y += this.§var § * param1.y;
         this.m_angularVelocity += this.§,"!§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §-!+§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§2=§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§[R§());
         var _loc8_:b2Fixture = _loc5_.§9G§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§&!6§;
               if(_loc7_)
               {
                  _loc7_.§&!6§ = _loc13_;
               }
               else
               {
                  _loc5_.§9G§ = _loc13_;
               }
               --_loc5_.§-H§;
               _loc8_.§&!6§ = _loc6_.§9G§;
               _loc6_.§9G§ = _loc8_;
               ++_loc6_.§-H§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§&!6§;
            }
         }
         _loc5_.§6&§();
         _loc6_.§6&§();
         var _loc9_:b2Vec2 = _loc5_.§2=§();
         var _loc10_:b2Vec2 = _loc6_.§2=§();
         var _loc11_:b2Vec2 = b2Math.§1"§(_loc2_,b2Math.§""C§(_loc3_,b2Math.§%!q§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§1"§(_loc2_,b2Math.§""C§(_loc3_,b2Math.§%!q§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§9>§();
         _loc6_.§9>§();
         return _loc6_;
      }
      
      public function §2!>§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§9G§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§&!6§;
            --param1.§-H§;
            _loc2_.§&!6§ = this.§9G§;
            this.§9G§ = _loc2_;
            ++this.§-H§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§-H§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§2=§();
         var _loc6_:b2Vec2 = _loc4_.§2=§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§6&§();
         this.§9>§();
      }
      
      public function GetMass() : Number
      {
         return this.§7g§;
      }
      
      public function §+"C§() : Number
      {
         return this.§@!n§;
      }
      
      public function §try§(param1:b2MassData) : void
      {
         param1.§`"3§ = this.§7g§;
         param1.I = this.§@!n§;
         param1.§>!4§.SetV(this.m_sweep.localCenter);
      }
      
      public function §1!r§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§,!s§() == false);
         if(this.m_world.§,!s§() == true)
         {
            return;
         }
         if(this.§`K§ != b2_dynamicBody)
         {
            return;
         }
         this.§var § = 0;
         this.§@!n§ = 0;
         this.§,"!§ = 0;
         this.§7g§ = param1.§`"3§;
         if(this.§7g§ <= 0)
         {
            this.§7g§ = 1;
         }
         this.§var § = 1 / this.§7g§;
         if(param1.I > 0 && (this.§true§ & b2internal::9!b) == 0)
         {
            this.§@!n§ = param1.I - this.§7g§ * (param1.§>!4§.x * param1.§>!4§.x + param1.§>!4§.y * param1.§>!4§.y);
            this.§,"!§ = 1 / this.§@!n§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§>!4§);
         this.m_sweep.c0.SetV(b2Math.§<!-§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9e§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§9e§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §6&§() : void
      {
         var _loc4_:b2MassData = null;
         this.§7g§ = 0;
         this.§var § = 0;
         this.§@!n§ = 0;
         this.§,"!§ = 0;
         this.m_sweep.localCenter.§58§();
         if(this.§`K§ == b2_staticBody || this.§`K§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§?"G§(0,0);
         var _loc2_:b2Fixture = this.§9G§;
         while(_loc2_)
         {
            if(_loc2_.§"!9§ != 0)
            {
               _loc4_ = _loc2_.§try§();
               this.§7g§ += _loc4_.§`"3§;
               _loc1_.x += _loc4_.§>!4§.x * _loc4_.§`"3§;
               _loc1_.y += _loc4_.§>!4§.y * _loc4_.§`"3§;
               this.§@!n§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§&!6§;
         }
         if(this.§7g§ > 0)
         {
            this.§var § = 1 / this.§7g§;
            _loc1_.x *= this.§var §;
            _loc1_.y *= this.§var §;
         }
         else
         {
            this.§7g§ = 1;
            this.§var § = 1;
         }
         if(this.§@!n§ > 0 && (this.§true§ & b2internal::9!b) == 0)
         {
            this.§@!n§ -= this.§7g§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§@!n§ *= this.§`!6§;
            b2Settings.b2Assert(this.§@!n§ > 0);
            this.§,"!§ = 1 / this.§@!n§;
         }
         else
         {
            this.§@!n§ = 0;
            this.§,"!§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§<!-§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9e§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§9e§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §'";§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;!q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'!c§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6s§(this.m_xf.R,param1);
      }
      
      public function §,v§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§9e§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§9e§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §<G§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§9e§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§9e§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §=!w§() : Number
      {
         return this.§1!Q§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§1!Q§ = param1;
      }
      
      public function §0"&§() : Number
      {
         return this.§8I§;
      }
      
      public function §7!g§(param1:Number) : void
      {
         this.§8I§ = param1;
      }
      
      public function §3"C§(param1:uint) : void
      {
         if(this.§`K§ == param1)
         {
            return;
         }
         this.§`K§ = param1;
         this.§6&§();
         if(this.§`K§ == b2_staticBody)
         {
            this.§9e§.§58§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§1"$§.§58§();
         this.§4!N§ = 0;
         var _loc2_:b2ContactEdge = this.§7!X§;
         while(_loc2_)
         {
            _loc2_.§ 5§.§="1§();
            _loc2_ = _loc2_.§7$§;
         }
      }
      
      public function §finally§() : uint
      {
         return this.§`K§;
      }
      
      public function §'L§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§true§ |= b2internal::="-;
         }
         else
         {
            this.§true§ &= ~b2internal::="-;
         }
      }
      
      public function §?!Z§() : Boolean
      {
         return (this.§true§ & b2internal::="-) == b2internal::="-;
      }
      
      public function §&!O§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§true§ |= b2internal::--;
         }
         else
         {
            this.§true§ &= ~b2internal::--;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§true§ |= b2internal::>H;
            this.§0!-§ = 0;
         }
         else
         {
            this.§true§ &= ~b2internal::>H;
            this.§0!-§ = 0;
            this.§9e§.§58§();
            this.m_angularVelocity = 0;
            this.§1"$§.§58§();
            this.§4!N§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§true§ & b2internal::>H) == b2internal::>H;
      }
      
      public function §^!T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§true§ |= b2internal::9!b;
         }
         else
         {
            this.§true§ &= ~b2internal::9!b;
         }
         this.§6&§();
      }
      
      public function § !f§() : Boolean
      {
         return (this.§true§ & b2internal::9!b) == b2internal::9!b;
      }
      
      public function §7!`§(param1:Boolean) : void
      {
         var _loc2_:§#"D§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§`H§())
         {
            return;
         }
         if(param1)
         {
            this.§true§ |= b2internal::8!C;
            _loc2_ = this.m_world.§-`§.§8!1§;
            _loc3_ = this.§9G§;
            while(_loc3_)
            {
               _loc3_.§0!E§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§&!6§;
            }
         }
         else
         {
            this.§true§ &= ~b2internal::8!C;
            _loc2_ = this.m_world.§-`§.§8!1§;
            _loc3_ = this.§9G§;
            while(_loc3_)
            {
               _loc3_.§>!u§(_loc2_);
               _loc3_ = _loc3_.§&!6§;
            }
            _loc4_ = this.§7!X§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§7$§;
               this.m_world.§-`§.§7"'§(_loc5_.§ 5§);
            }
            this.§7!X§ = null;
         }
      }
      
      public function §`H§() : Boolean
      {
         return (this.§true§ & b2internal::8!C) == b2internal::8!C;
      }
      
      public function §""8§() : Boolean
      {
         return (this.§true§ & b2internal::--) == b2internal::--;
      }
      
      public function §!Y§() : b2Fixture
      {
         return this.§9G§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§]!G§;
      }
      
      public function §#G§() : b2ControllerEdge
      {
         return this.§5T§;
      }
      
      public function §6!o§() : b2ContactEdge
      {
         return this.§7!X§;
      }
      
      public function §1§() : b2Body
      {
         return this.§&!6§;
      }
      
      public function GetUserData() : *
      {
         return this.§9=§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§9=§ = param1;
      }
      
      public function §'!w§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §9>§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §'"B§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§#"D§ = this.m_world.§-`§.§8!1§;
         _loc4_ = this.§9G§;
         while(_loc4_)
         {
            _loc4_.§+!x§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§&!6§;
         }
      }
      
      b2internal function §>!b§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §?g§(param1:b2Body) : Boolean
      {
         if(this.§`K§ != b2_dynamicBody && param1.§`K§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§]!G§;
         while(_loc2_)
         {
            if(_loc2_.§]9§ == param1)
            {
               if(_loc2_.§+q§.§"=§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§7$§;
         }
         return true;
      }
      
      b2internal function §4i§(param1:Number) : void
      {
         this.m_sweep.§4i§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§>!b§();
      }
   }
}
