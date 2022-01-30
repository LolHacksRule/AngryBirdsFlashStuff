package §0!j§
{
   import §!!o§.§>"#§;
   import §!r§.b2Settings;
   import §!r§.b2internal;
   import §'!^§.b2Contact;
   import §'!^§.b2ContactEdge;
   import §-!2§.b2Mat22;
   import §-!2§.b2Math;
   import §-!2§.b2Sweep;
   import §-!2§.b2Transform;
   import §-!2§.b2Vec2;
   import §2!5§.b2ControllerEdge;
   import §8!K§.b2EdgeShape;
   import §8!K§.b2MassData;
   import §8!K§.b2Shape;
   import §<!?§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §!!t§:b2Transform = new b2Transform();
      
      b2internal static var §"=§:uint = 1;
      
      b2internal static var §0l§:uint = 2;
      
      b2internal static var §!!6§:uint = 4;
      
      b2internal static var §@Q§:uint = 8;
      
      b2internal static var §^g§:uint = 16;
      
      b2internal static var §#" §:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §<!3§:uint;
      
      b2internal var §%"+§:int;
      
      b2internal var §+"!§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §3N§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §8"+§:b2Vec2;
      
      b2internal var §,!§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §9"4§:b2Body;
      
      b2internal var §0!&§:b2Body;
      
      b2internal var §7!=§:b2Fixture;
      
      b2internal var §5!R§:int;
      
      b2internal var §!!1§:b2ControllerEdge;
      
      b2internal var §6!0§:int;
      
      b2internal var §2!#§:b2JointEdge;
      
      b2internal var §1&§:b2ContactEdge;
      
      b2internal var §+s§:Number;
      
      b2internal var §2![§:Number;
      
      b2internal var §]J§:Number;
      
      b2internal var §2s§:Number;
      
      b2internal var §3"!§:Number;
      
      b2internal var §2!X§:Number;
      
      b2internal var §^c§:Number;
      
      b2internal var §#!1§:Number;
      
      b2internal var §[o§:Number;
      
      private var §2N§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§3N§ = new b2Vec2();
         this.§8"+§ = new b2Vec2();
         super();
         this.§<!3§ = 0;
         if(param1.§8!O§)
         {
            this.§<!3§ |= b2internal::@Q;
         }
         if(param1.§;t§)
         {
            this.§<!3§ |= b2internal::^g;
         }
         if(param1.§<!+§)
         {
            this.§<!3§ |= b2internal::!!6;
         }
         if(param1.§<" §)
         {
            this.§<!3§ |= b2internal::0l;
         }
         if(param1.active)
         {
            this.§<!3§ |= b2internal::#" ;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§`5§();
         this.m_sweep.§try § = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§2!#§ = null;
         this.§!!1§ = null;
         this.§1&§ = null;
         this.§6!0§ = 0;
         this.§9"4§ = null;
         this.§0!&§ = null;
         this.§3N§.SetV(param1.§<J§);
         this.m_angularVelocity = param1.§8Q§;
         this.§2!X§ = param1.§?!s§;
         this.§^c§ = param1.§?r§;
         this.§[o§ = param1.§^d§;
         this.§8"+§.Set(0,0);
         this.§,!§ = 0;
         this.§#!1§ = 0;
         this.§%"+§ = param1.type;
         if(this.§%"+§ == b2_dynamicBody)
         {
            this.§+s§ = 1;
            this.§2![§ = 1;
         }
         else
         {
            this.§+s§ = 0;
            this.§2![§ = 0;
         }
         this.§]J§ = 0;
         this.§2s§ = 0;
         this.§3"!§ = param1.§<!U§;
         this.§2N§ = param1.userData;
         this.§7!=§ = null;
         this.§5!R§ = 0;
      }
      
      private function §6!?§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§0c§().y,param2.§0c§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§?"#§(_loc5_,param2.§0c§());
         _loc6_ = b2Math.§"H§(_loc6_,param2.§7;§());
         _loc6_ = b2Math.§?"#§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'s§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'s§(param1.§0c§(),param2.§0c§())).Normalize();
         var _loc8_:* = b2Math.§`1§(param1.§0c§(),param2.§7;§()) > 0;
         param1.§7E§(param2,_loc6_,_loc7_,_loc8_);
         param2.§[S§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§>"#§ = null;
         if(this.m_world.§4!<§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§6!#§(this,this.m_xf,param1);
         if(this.§<!3§ & b2internal::#" )
         {
            _loc3_ = this.m_world.§ d§.§!"+§;
            _loc2_.§,!G§(_loc3_,this.m_xf);
         }
         _loc2_.§0!&§ = this.§7!=§;
         this.§7!=§ = _loc2_;
         ++this.§5!R§;
         _loc2_.m_body = this;
         if(_loc2_.§ !o§ > 0)
         {
            this.§]!Z§();
         }
         this.m_world.§<!3§ |= b2World.§8!T§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §7!V§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>"#§ = null;
         if(this.m_world.§4!<§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§7!=§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§0!&§ = param1.§0!&§;
               }
               else
               {
                  this.§7!=§ = param1.§0!&§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§0!&§;
         }
         var _loc5_:b2ContactEdge = this.§1&§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§ ;§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§01§();
            _loc8_ = _loc6_.§9!,§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§ d§.§,b§(_loc6_);
            }
         }
         if(this.§<!3§ & b2internal::#" )
         {
            _loc9_ = this.m_world.§ d§.§!"+§;
            param1.§4!i§(_loc9_);
         }
         param1.§,b§();
         param1.m_body = null;
         param1.§0!&§ = null;
         --this.§5!R§;
         this.§]!Z§();
      }
      
      public function §8`§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§4!<§() == true)
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
         var _loc6_:§>"#§ = this.m_world.§ d§.§!"+§;
         _loc3_ = this.§7!=§;
         while(_loc3_)
         {
            _loc3_.§5e§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§0!&§;
         }
         this.m_world.§ d§.§@!b§();
      }
      
      public function §+!U§(param1:b2Transform) : void
      {
         this.§8`§(param1.position,param1.GetAngle());
      }
      
      public function §;b§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§8`§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§8`§(this.GetPosition(),param1);
      }
      
      public function §-]§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §3!y§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§%"+§ == b2_staticBody)
         {
            return;
         }
         this.§3N§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§3N§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§%"+§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §];§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§6`§();
         _loc1_.§<!+§ = (this.§<!3§ & b2internal::!!6) == b2internal::!!6;
         _loc1_.angle = this.GetAngle();
         _loc1_.§?r§ = this.§^c§;
         _loc1_.§8Q§ = this.m_angularVelocity;
         _loc1_.§;t§ = (this.§<!3§ & b2internal::^g) == b2internal::^g;
         _loc1_.§8!O§ = (this.§<!3§ & b2internal::@Q) == b2internal::@Q;
         _loc1_.§<" § = (this.§<!3§ & b2internal::0l) == b2internal::0l;
         _loc1_.§?!s§ = this.§2!X§;
         _loc1_.§<J§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §]!&§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%"+§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§8"+§.x += param1.x;
         this.§8"+§.y += param1.y;
         this.§,!§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §9!G§(param1:Number) : void
      {
         if(this.§%"+§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,!§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%"+§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§3N§.x += this.§2![§ * param1.x;
         this.§3N§.y += this.§2![§ * param1.y;
         this.m_angularVelocity += this.§2s§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §<!6§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§-]§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§];§());
         var _loc8_:b2Fixture = _loc5_.§7!=§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§0!&§;
               if(_loc7_)
               {
                  _loc7_.§0!&§ = _loc13_;
               }
               else
               {
                  _loc5_.§7!=§ = _loc13_;
               }
               --_loc5_.§5!R§;
               _loc8_.§0!&§ = _loc6_.§7!=§;
               _loc6_.§7!=§ = _loc8_;
               ++_loc6_.§5!R§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§0!&§;
            }
         }
         _loc5_.§]!Z§();
         _loc6_.§]!Z§();
         var _loc9_:b2Vec2 = _loc5_.§-]§();
         var _loc10_:b2Vec2 = _loc6_.§-]§();
         var _loc11_:b2Vec2 = b2Math.§'s§(_loc2_,b2Math.§8c§(_loc3_,b2Math.§"H§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§'s§(_loc2_,b2Math.§8c§(_loc3_,b2Math.§"H§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§1!q§();
         _loc6_.§1!q§();
         return _loc6_;
      }
      
      public function §!m§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§7!=§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§0!&§;
            --param1.§5!R§;
            _loc2_.§0!&§ = this.§7!=§;
            this.§7!=§ = _loc2_;
            ++this.§5!R§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§5!R§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§-]§();
         var _loc6_:b2Vec2 = _loc4_.§-]§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§]!Z§();
         this.§1!q§();
      }
      
      public function GetMass() : Number
      {
         return this.§+s§;
      }
      
      public function §<o§() : Number
      {
         return this.§]J§;
      }
      
      public function §!!?§(param1:b2MassData) : void
      {
         param1.§#e§ = this.§+s§;
         param1.I = this.§]J§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §%"$§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§4!<§() == false);
         if(this.m_world.§4!<§() == true)
         {
            return;
         }
         if(this.§%"+§ != b2_dynamicBody)
         {
            return;
         }
         this.§2![§ = 0;
         this.§]J§ = 0;
         this.§2s§ = 0;
         this.§+s§ = param1.§#e§;
         if(this.§+s§ <= 0)
         {
            this.§+s§ = 1;
         }
         this.§2![§ = 1 / this.§+s§;
         if(param1.I > 0 && (this.§<!3§ & b2internal::^g) == 0)
         {
            this.§]J§ = param1.I - this.§+s§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§2s§ = 1 / this.§]J§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§!!b§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§3N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§3N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §]!Z§() : void
      {
         var _loc4_:b2MassData = null;
         this.§+s§ = 0;
         this.§2![§ = 0;
         this.§]J§ = 0;
         this.§2s§ = 0;
         this.m_sweep.localCenter.§`5§();
         if(this.§%"+§ == b2_staticBody || this.§%"+§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§!d§(0,0);
         var _loc2_:b2Fixture = this.§7!=§;
         while(_loc2_)
         {
            if(_loc2_.§ !o§ != 0)
            {
               _loc4_ = _loc2_.§!!?§();
               this.§+s§ += _loc4_.§#e§;
               _loc1_.x += _loc4_.center.x * _loc4_.§#e§;
               _loc1_.y += _loc4_.center.y * _loc4_.§#e§;
               this.§]J§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§0!&§;
         }
         if(this.§+s§ > 0)
         {
            this.§2![§ = 1 / this.§+s§;
            _loc1_.x *= this.§2![§;
            _loc1_.y *= this.§2![§;
         }
         else
         {
            this.§+s§ = 1;
            this.§2![§ = 1;
         }
         if(this.§]J§ > 0 && (this.§<!3§ & b2internal::^g) == 0)
         {
            this.§]J§ -= this.§+s§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§]J§ *= this.§3"!§;
            b2Settings.b2Assert(this.§]J§ > 0);
            this.§2s§ = 1 / this.§]J§;
         }
         else
         {
            this.§]J§ = 0;
            this.§2s§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§!!b§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§3N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§3N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §9!A§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]!%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0!l§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§+!X§(this.m_xf.R,param1);
      }
      
      public function §&!_§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§3N§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§3N§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §"!-§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§3N§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§3N§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §>!M§() : Number
      {
         return this.§2!X§;
      }
      
      public function §=n§(param1:Number) : void
      {
         this.§2!X§ = param1;
      }
      
      public function §7j§() : Number
      {
         return this.§^c§;
      }
      
      public function §[!W§(param1:Number) : void
      {
         this.§^c§ = param1;
      }
      
      public function §<!]§() : Number
      {
         return this.§[o§;
      }
      
      public function §]<§(param1:Number) : void
      {
         this.§[o§ = param1;
      }
      
      public function §3M§(param1:uint) : void
      {
         if(this.§%"+§ == param1)
         {
            return;
         }
         this.§%"+§ = param1;
         this.§]!Z§();
         if(this.§%"+§ == b2_staticBody)
         {
            this.§3N§.§`5§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§8"+§.§`5§();
         this.§,!§ = 0;
         var _loc2_:b2ContactEdge = this.§1&§;
         while(_loc2_)
         {
            _loc2_.§ ;§.§7!I§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §6`§() : uint
      {
         return this.§%"+§;
      }
      
      public function §0!=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!3§ |= b2internal::@Q;
         }
         else
         {
            this.§<!3§ &= ~b2internal::@Q;
         }
      }
      
      public function §3U§() : Boolean
      {
         return (this.§<!3§ & b2internal::@Q) == b2internal::@Q;
      }
      
      public function §%!0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!3§ |= b2internal::!!6;
         }
         else
         {
            this.§<!3§ &= ~b2internal::!!6;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!3§ |= b2internal::0l;
            this.§#!1§ = 0;
         }
         else
         {
            this.§<!3§ &= ~b2internal::0l;
            this.§#!1§ = 0;
            this.§3N§.§`5§();
            this.m_angularVelocity = 0;
            this.§8"+§.§`5§();
            this.§,!§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§<!3§ & b2internal::0l) == b2internal::0l;
      }
      
      public function §5!&§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!3§ |= b2internal::^g;
         }
         else
         {
            this.§<!3§ &= ~b2internal::^g;
         }
         this.§]!Z§();
      }
      
      public function §1m§() : Boolean
      {
         return (this.§<!3§ & b2internal::^g) == b2internal::^g;
      }
      
      public function §,C§(param1:Boolean) : void
      {
         var _loc2_:§>"#§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§&!K§())
         {
            return;
         }
         if(param1)
         {
            this.§<!3§ |= b2internal::#" ;
            _loc2_ = this.m_world.§ d§.§!"+§;
            _loc3_ = this.§7!=§;
            while(_loc3_)
            {
               _loc3_.§,!G§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§0!&§;
            }
         }
         else
         {
            this.§<!3§ &= ~b2internal::#" ;
            _loc2_ = this.m_world.§ d§.§!"+§;
            _loc3_ = this.§7!=§;
            while(_loc3_)
            {
               _loc3_.§4!i§(_loc2_);
               _loc3_ = _loc3_.§0!&§;
            }
            _loc4_ = this.§1&§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§ d§.§,b§(_loc5_.§ ;§);
            }
            this.§1&§ = null;
         }
      }
      
      public function §&!K§() : Boolean
      {
         return (this.§<!3§ & b2internal::#" ) == b2internal::#" ;
      }
      
      public function §"!U§() : Boolean
      {
         return (this.§<!3§ & b2internal::!!6) == b2internal::!!6;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§7!=§;
      }
      
      public function §%!I§() : b2JointEdge
      {
         return this.§2!#§;
      }
      
      public function §7!c§() : b2ControllerEdge
      {
         return this.§!!1§;
      }
      
      public function §9n§() : b2ContactEdge
      {
         return this.§1&§;
      }
      
      public function §+!E§() : b2Body
      {
         return this.§0!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§2N§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§2N§ = param1;
      }
      
      public function §;"#§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §1!q§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §!!t§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§>"#§ = this.m_world.§ d§.§!"+§;
         _loc4_ = this.§7!=§;
         while(_loc4_)
         {
            _loc4_.§5e§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§0!&§;
         }
      }
      
      b2internal function §+!8§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §!S§(param1:b2Body) : Boolean
      {
         if(this.§%"+§ != b2_dynamicBody && param1.§%"+§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§2!#§;
         while(_loc2_)
         {
            if(_loc2_.§5"-§ == param1)
            {
               if(_loc2_.§0!'§.§&!y§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function §^!f§(param1:Number) : void
      {
         this.m_sweep.§^!f§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§+!8§();
      }
   }
}
