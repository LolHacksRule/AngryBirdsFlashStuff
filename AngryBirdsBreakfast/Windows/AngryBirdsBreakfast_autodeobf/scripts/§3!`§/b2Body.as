package §3!`§
{
   import §"y§.b2EdgeShape;
   import §"y§.b2MassData;
   import §"y§.b2Shape;
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §+C§.b2JointEdge;
   import §-"&§.b2Contact;
   import §-"&§.b2ContactEdge;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Sweep;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §@0§.b2ControllerEdge;
   import §^9§.§`c§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §1!=§:b2Transform = new b2Transform();
      
      b2internal static var §24§:uint = 1;
      
      b2internal static var § !]§:uint = 2;
      
      b2internal static var §2!H§:uint = 4;
      
      b2internal static var §<"+§:uint = 8;
      
      b2internal static var §1!?§:uint = 16;
      
      b2internal static var §6!Q§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §,[§:uint;
      
      b2internal var §6m§:int;
      
      b2internal var §6d§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §?!^§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §-[§:b2Vec2;
      
      b2internal var §#!K§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §0!^§:b2Body;
      
      b2internal var §0!>§:b2Body;
      
      b2internal var §'e§:b2Fixture;
      
      b2internal var §]! §:int;
      
      b2internal var §9"&§:b2ControllerEdge;
      
      b2internal var §,!l§:int;
      
      b2internal var §4!Z§:b2JointEdge;
      
      b2internal var §]J§:b2ContactEdge;
      
      b2internal var §6!L§:Number;
      
      b2internal var §4!&§:Number;
      
      b2internal var §`!k§:Number;
      
      b2internal var §`!`§:Number;
      
      b2internal var §+c§:Number;
      
      b2internal var §8!a§:Number;
      
      b2internal var §]!`§:Number;
      
      b2internal var §'L§:Number;
      
      b2internal var §!!T§:Number;
      
      private var § D§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§?!^§ = new b2Vec2();
         this.§-[§ = new b2Vec2();
         super();
         this.§,[§ = 0;
         if(param1.§6!D§)
         {
            this.§,[§ |= b2internal::<"+;
         }
         if(param1.§6"-§)
         {
            this.§,[§ |= b2internal::1!?;
         }
         if(param1.§?!n§)
         {
            this.§,[§ |= b2internal::2!H;
         }
         if(param1.§5!5§)
         {
            this.§,[§ |= b2internal:: !];
         }
         if(param1.active)
         {
            this.§,[§ |= b2internal::6!Q;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§5!H§();
         this.m_sweep.§+%§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§4!Z§ = null;
         this.§9"&§ = null;
         this.§]J§ = null;
         this.§,!l§ = 0;
         this.§0!^§ = null;
         this.§0!>§ = null;
         this.§?!^§.SetV(param1.§`'§);
         this.m_angularVelocity = param1.§>!f§;
         this.§8!a§ = param1.§94§;
         this.§]!`§ = param1.§&!&§;
         this.§!!T§ = param1.§3]§;
         this.§-[§.Set(0,0);
         this.§#!K§ = 0;
         this.§'L§ = 0;
         this.§6m§ = param1.type;
         if(this.§6m§ == b2_dynamicBody)
         {
            this.§6!L§ = 1;
            this.§4!&§ = 1;
         }
         else
         {
            this.§6!L§ = 0;
            this.§4!&§ = 0;
         }
         this.§`!k§ = 0;
         this.§`!`§ = 0;
         this.§+c§ = param1.§<!x§;
         this.§ D§ = param1.userData;
         this.§'e§ = null;
         this.§]! § = 0;
      }
      
      private function §!!g§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§8@§().y,param2.§8@§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§0!o§(_loc5_,param2.§8@§());
         _loc6_ = b2Math.§";§(_loc6_,param2.§,!E§());
         _loc6_ = b2Math.§0!o§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§&!Z§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§&!Z§(param1.§8@§(),param2.§8@§())).Normalize();
         var _loc8_:* = b2Math.§7!c§(param1.§8@§(),param2.§,!E§()) > 0;
         param1.§+9§(param2,_loc6_,_loc7_,_loc8_);
         param2.§=!p§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§`c§ = null;
         if(this.m_world.§6"+§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§2#§(this,this.m_xf,param1);
         if(this.§,[§ & b2internal::6!Q)
         {
            _loc3_ = this.m_world.§1C§.§9!V§;
            _loc2_.§]!J§(_loc3_,this.m_xf);
         }
         _loc2_.§0!>§ = this.§'e§;
         this.§'e§ = _loc2_;
         ++this.§]! §;
         _loc2_.m_body = this;
         if(_loc2_.§;h§ > 0)
         {
            this.§5!Z§();
         }
         this.m_world.§,[§ |= b2World.§+!P§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §7H§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§`c§ = null;
         if(this.m_world.§6"+§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§'e§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§0!>§ = param1.§0!>§;
               }
               else
               {
                  this.§'e§ = param1.§0!>§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§0!>§;
         }
         var _loc5_:b2ContactEdge = this.§]J§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§;%§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§&R§();
            _loc8_ = _loc6_.§@!,§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§1C§.§5f§(_loc6_);
            }
         }
         if(this.§,[§ & b2internal::6!Q)
         {
            _loc9_ = this.m_world.§1C§.§9!V§;
            param1.§5!k§(_loc9_);
         }
         param1.§5f§();
         param1.m_body = null;
         param1.§0!>§ = null;
         --this.§]! §;
         this.§5!Z§();
      }
      
      public function §[!@§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§6"+§() == true)
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
         var _loc6_:§`c§ = this.m_world.§1C§.§9!V§;
         _loc3_ = this.§'e§;
         while(_loc3_)
         {
            _loc3_.§[!$§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§0!>§;
         }
         this.m_world.§1C§.§>"+§();
      }
      
      public function §9!Z§(param1:b2Transform) : void
      {
         this.§[!@§(param1.position,param1.GetAngle());
      }
      
      public function §#%§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§[!@§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§[!@§(this.GetPosition(),param1);
      }
      
      public function §#!0§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §8!H§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§6m§ == b2_staticBody)
         {
            return;
         }
         this.§?!^§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§?!^§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§6m§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §47§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§<!A§();
         _loc1_.§?!n§ = (this.§,[§ & b2internal::2!H) == b2internal::2!H;
         _loc1_.angle = this.GetAngle();
         _loc1_.§&!&§ = this.§]!`§;
         _loc1_.§>!f§ = this.m_angularVelocity;
         _loc1_.§6"-§ = (this.§,[§ & b2internal::1!?) == b2internal::1!?;
         _loc1_.§6!D§ = (this.§,[§ & b2internal::<"+) == b2internal::<"+;
         _loc1_.§5!5§ = (this.§,[§ & b2internal:: !]) == b2internal:: !];
         _loc1_.§94§ = this.§8!a§;
         _loc1_.§`'§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §@]§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§6m§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§-[§.x += param1.x;
         this.§-[§.y += param1.y;
         this.§#!K§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §?7§(param1:Number) : void
      {
         if(this.§6m§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#!K§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§6m§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?!^§.x += this.§4!&§ * param1.x;
         this.§?!^§.y += this.§4!&§ * param1.y;
         this.m_angularVelocity += this.§`!`§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §`W§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§#!0§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§47§());
         var _loc8_:b2Fixture = _loc5_.§'e§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§0!>§;
               if(_loc7_)
               {
                  _loc7_.§0!>§ = _loc13_;
               }
               else
               {
                  _loc5_.§'e§ = _loc13_;
               }
               --_loc5_.§]! §;
               _loc8_.§0!>§ = _loc6_.§'e§;
               _loc6_.§'e§ = _loc8_;
               ++_loc6_.§]! §;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§0!>§;
            }
         }
         _loc5_.§5!Z§();
         _loc6_.§5!Z§();
         var _loc9_:b2Vec2 = _loc5_.§#!0§();
         var _loc10_:b2Vec2 = _loc6_.§#!0§();
         var _loc11_:b2Vec2 = b2Math.§&!Z§(_loc2_,b2Math.§6"%§(_loc3_,b2Math.§";§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§&!Z§(_loc2_,b2Math.§6"%§(_loc3_,b2Math.§";§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§[!r§();
         _loc6_.§[!r§();
         return _loc6_;
      }
      
      public function §[!R§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§'e§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§0!>§;
            --param1.§]! §;
            _loc2_.§0!>§ = this.§'e§;
            this.§'e§ = _loc2_;
            ++this.§]! §;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§]! § = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§#!0§();
         var _loc6_:b2Vec2 = _loc4_.§#!0§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§5!Z§();
         this.§[!r§();
      }
      
      public function GetMass() : Number
      {
         return this.§6!L§;
      }
      
      public function §7"'§() : Number
      {
         return this.§`!k§;
      }
      
      public function §9!p§(param1:b2MassData) : void
      {
         param1.§#!5§ = this.§6!L§;
         param1.I = this.§`!k§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §!j§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§6"+§() == false);
         if(this.m_world.§6"+§() == true)
         {
            return;
         }
         if(this.§6m§ != b2_dynamicBody)
         {
            return;
         }
         this.§4!&§ = 0;
         this.§`!k§ = 0;
         this.§`!`§ = 0;
         this.§6!L§ = param1.§#!5§;
         if(this.§6!L§ <= 0)
         {
            this.§6!L§ = 1;
         }
         this.§4!&§ = 1 / this.§6!L§;
         if(param1.I > 0 && (this.§,[§ & b2internal::1!?) == 0)
         {
            this.§`!k§ = param1.I - this.§6!L§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§`!`§ = 1 / this.§`!k§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§!v§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!^§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§?!^§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §5!Z§() : void
      {
         var _loc4_:b2MassData = null;
         this.§6!L§ = 0;
         this.§4!&§ = 0;
         this.§`!k§ = 0;
         this.§`!`§ = 0;
         this.m_sweep.localCenter.§5!H§();
         if(this.§6m§ == b2_staticBody || this.§6m§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§0"0§(0,0);
         var _loc2_:b2Fixture = this.§'e§;
         while(_loc2_)
         {
            if(_loc2_.§;h§ != 0)
            {
               _loc4_ = _loc2_.§9!p§();
               this.§6!L§ += _loc4_.§#!5§;
               _loc1_.x += _loc4_.center.x * _loc4_.§#!5§;
               _loc1_.y += _loc4_.center.y * _loc4_.§#!5§;
               this.§`!k§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§0!>§;
         }
         if(this.§6!L§ > 0)
         {
            this.§4!&§ = 1 / this.§6!L§;
            _loc1_.x *= this.§4!&§;
            _loc1_.y *= this.§4!&§;
         }
         else
         {
            this.§6!L§ = 1;
            this.§4!&§ = 1;
         }
         if(this.§`!k§ > 0 && (this.§,[§ & b2internal::1!?) == 0)
         {
            this.§`!k§ -= this.§6!L§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§`!k§ *= this.§+c§;
            b2Settings.b2Assert(this.§`!k§ > 0);
            this.§`!`§ = 1 / this.§`!k§;
         }
         else
         {
            this.§`!k§ = 0;
            this.§`!`§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§!v§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!^§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§?!^§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §3!D§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"]§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5F§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3r§(this.m_xf.R,param1);
      }
      
      public function §,$§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§?!^§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§?!^§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §<M§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§?!^§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§?!^§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §@!F§() : Number
      {
         return this.§8!a§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§8!a§ = param1;
      }
      
      public function §^"$§() : Number
      {
         return this.§]!`§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§]!`§ = param1;
      }
      
      public function §6u§() : Number
      {
         return this.§!!T§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§!!T§ = param1;
      }
      
      public function §6!f§(param1:uint) : void
      {
         if(this.§6m§ == param1)
         {
            return;
         }
         this.§6m§ = param1;
         this.§5!Z§();
         if(this.§6m§ == b2_staticBody)
         {
            this.§?!^§.§5!H§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§-[§.§5!H§();
         this.§#!K§ = 0;
         var _loc2_:b2ContactEdge = this.§]J§;
         while(_loc2_)
         {
            _loc2_.§;%§.§<t§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §<!A§() : uint
      {
         return this.§6m§;
      }
      
      public function §6t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,[§ |= b2internal::<"+;
         }
         else
         {
            this.§,[§ &= ~b2internal::<"+;
         }
      }
      
      public function §@V§() : Boolean
      {
         return (this.§,[§ & b2internal::<"+) == b2internal::<"+;
      }
      
      public function §^F§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,[§ |= b2internal::2!H;
         }
         else
         {
            this.§,[§ &= ~b2internal::2!H;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,[§ |= b2internal:: !];
            this.§'L§ = 0;
         }
         else
         {
            this.§,[§ &= ~b2internal:: !];
            this.§'L§ = 0;
            this.§?!^§.§5!H§();
            this.m_angularVelocity = 0;
            this.§-[§.§5!H§();
            this.§#!K§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§,[§ & b2internal:: !]) == b2internal:: !];
      }
      
      public function §'!N§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,[§ |= b2internal::1!?;
         }
         else
         {
            this.§,[§ &= ~b2internal::1!?;
         }
         this.§5!Z§();
      }
      
      public function §#a§() : Boolean
      {
         return (this.§,[§ & b2internal::1!?) == b2internal::1!?;
      }
      
      public function §+E§(param1:Boolean) : void
      {
         var _loc2_:§`c§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§3!z§())
         {
            return;
         }
         if(param1)
         {
            this.§,[§ |= b2internal::6!Q;
            _loc2_ = this.m_world.§1C§.§9!V§;
            _loc3_ = this.§'e§;
            while(_loc3_)
            {
               _loc3_.§]!J§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§0!>§;
            }
         }
         else
         {
            this.§,[§ &= ~b2internal::6!Q;
            _loc2_ = this.m_world.§1C§.§9!V§;
            _loc3_ = this.§'e§;
            while(_loc3_)
            {
               _loc3_.§5!k§(_loc2_);
               _loc3_ = _loc3_.§0!>§;
            }
            _loc4_ = this.§]J§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§1C§.§5f§(_loc5_.§;%§);
            }
            this.§]J§ = null;
         }
      }
      
      public function §3!z§() : Boolean
      {
         return (this.§,[§ & b2internal::6!Q) == b2internal::6!Q;
      }
      
      public function §1![§() : Boolean
      {
         return (this.§,[§ & b2internal::2!H) == b2internal::2!H;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§'e§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§4!Z§;
      }
      
      public function §[!^§() : b2ControllerEdge
      {
         return this.§9"&§;
      }
      
      public function §9'§() : b2ContactEdge
      {
         return this.§]J§;
      }
      
      public function §>X§() : b2Body
      {
         return this.§0!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§ D§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§ D§ = param1;
      }
      
      public function §7!$§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §[!r§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §1!=§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§`c§ = this.m_world.§1C§.§9!V§;
         _loc4_ = this.§'e§;
         while(_loc4_)
         {
            _loc4_.§[!$§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§0!>§;
         }
      }
      
      b2internal function §-F§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §%g§(param1:b2Body) : Boolean
      {
         if(this.§6m§ != b2_dynamicBody && param1.§6m§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§4!Z§;
         while(_loc2_)
         {
            if(_loc2_.§-!3§ == param1)
            {
               if(_loc2_.§`!g§.§>!!§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function §#!§(param1:Number) : void
      {
         this.m_sweep.§#!§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§-F§();
      }
   }
}
