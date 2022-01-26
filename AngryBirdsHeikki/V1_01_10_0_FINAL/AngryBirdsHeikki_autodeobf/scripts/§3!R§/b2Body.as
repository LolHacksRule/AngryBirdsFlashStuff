package §3!R§
{
   import §!4§.§!s§;
   import §"d§.b2JointEdge;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Sweep;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §7q§.b2EdgeShape;
   import §7q§.b2MassData;
   import §7q§.b2Shape;
   import §=0§.b2Contact;
   import §=0§.b2ContactEdge;
   import §]!8§.b2ControllerEdge;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §?!Y§:b2Transform = new b2Transform();
      
      b2internal static var §!3§:uint = 1;
      
      b2internal static var §7<§:uint = 2;
      
      b2internal static var §8"§:uint = 4;
      
      b2internal static var §^&§:uint = 8;
      
      b2internal static var §"u§:uint = 16;
      
      b2internal static var §,!a§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §5!5§:uint;
      
      b2internal var §2!]§:int;
      
      b2internal var §]4§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §@S§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §5l§:b2Vec2;
      
      b2internal var §'!K§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §8s§:b2Body;
      
      b2internal var §>W§:b2Body;
      
      b2internal var §%c§:b2Fixture;
      
      b2internal var §]>§:int;
      
      b2internal var §2w§:b2ControllerEdge;
      
      b2internal var §'D§:int;
      
      b2internal var §4b§:b2JointEdge;
      
      b2internal var §`W§:b2ContactEdge;
      
      b2internal var §`!6§:Number;
      
      b2internal var §",§:Number;
      
      b2internal var §0!K§:Number;
      
      b2internal var §-2§:Number;
      
      b2internal var §4!,§:Number;
      
      b2internal var §0N§:Number;
      
      b2internal var §"!V§:Number;
      
      b2internal var §^!`§:Number;
      
      private var §,!&§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§@S§ = new b2Vec2();
         this.§5l§ = new b2Vec2();
         super();
         this.§5!5§ = 0;
         if(param1.§,r§)
         {
            this.§5!5§ |= b2internal::^&;
         }
         if(param1.§[! §)
         {
            this.§5!5§ |= b2internal::"u;
         }
         if(param1.§>6§)
         {
            this.§5!5§ |= b2internal::8";
         }
         if(param1.§?L§)
         {
            this.§5!5§ |= b2internal::7<;
         }
         if(param1.§40§)
         {
            this.§5!5§ |= b2internal::,!a;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§^!,§();
         this.m_sweep.§#z§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§4b§ = null;
         this.§2w§ = null;
         this.§`W§ = null;
         this.§'D§ = 0;
         this.§8s§ = null;
         this.§>W§ = null;
         this.§@S§.SetV(param1.§ ;§);
         this.m_angularVelocity = param1.§ ![§;
         this.§0N§ = param1.§8,§;
         this.§"!V§ = param1.§5!T§;
         this.§5l§.Set(0,0);
         this.§'!K§ = 0;
         this.§^!`§ = 0;
         this.§2!]§ = param1.type;
         if(this.§2!]§ == b2_dynamicBody)
         {
            this.§`!6§ = 1;
            this.§",§ = 1;
         }
         else
         {
            this.§`!6§ = 0;
            this.§",§ = 0;
         }
         this.§0!K§ = 0;
         this.§-2§ = 0;
         this.§4!,§ = param1.§`d§;
         this.§,!&§ = param1.§<!B§;
         this.§%c§ = null;
         this.§]>§ = 0;
      }
      
      private function §%^§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§#!%§().y,param2.§#!%§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'!J§(_loc5_,param2.§#!%§());
         _loc6_ = b2Math.§8!Y§(_loc6_,param2.§3>§());
         _loc6_ = b2Math.§'!J§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§>>§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§>>§(param1.§#!%§(),param2.§#!%§())).Normalize();
         var _loc8_:* = b2Math.§[!N§(param1.§#!%§(),param2.§3>§()) > 0;
         param1.§!n§(param2,_loc6_,_loc7_,_loc8_);
         param2.§?$§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §!l§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§!s§ = null;
         if(this.m_world.§-!§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§;O§(this,this.m_xf,param1);
         if(this.§5!5§ & b2internal::,!a)
         {
            _loc3_ = this.m_world.§"s§.§-E§;
            _loc2_.§+!#§(_loc3_,this.m_xf);
         }
         _loc2_.§>W§ = this.§%c§;
         this.§%c§ = _loc2_;
         ++this.§]>§;
         _loc2_.m_body = this;
         if(_loc2_.§6!A§ > 0)
         {
            this.§,q§();
         }
         this.m_world.§5!5§ |= b2World.§ z§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§!l§(_loc3_);
      }
      
      public function §&!D§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§!s§ = null;
         if(this.m_world.§-!§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§%c§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§>W§ = param1.§>W§;
               }
               else
               {
                  this.§%c§ = param1.§>W§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§>W§;
         }
         var _loc5_:b2ContactEdge = this.§`W§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§-!$§;
            _loc5_ = _loc5_.§+m§;
            _loc7_ = _loc6_.§#!D§();
            _loc8_ = _loc6_.§''§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§"s§.§;!^§(_loc6_);
            }
         }
         if(this.§5!5§ & b2internal::,!a)
         {
            _loc9_ = this.m_world.§"s§.§-E§;
            param1.§&R§(_loc9_);
         }
         param1.§;!^§();
         param1.m_body = null;
         param1.§>W§ = null;
         --this.§]>§;
         this.§,q§();
      }
      
      public function § !a§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§-!§() == true)
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
         var _loc6_:§!s§ = this.m_world.§"s§.§-E§;
         _loc3_ = this.§%c§;
         while(_loc3_)
         {
            _loc3_.§8!6§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§>W§;
         }
         this.m_world.§"s§.§<o§();
      }
      
      public function §&!$§(param1:b2Transform) : void
      {
         this.§ !a§(param1.position,param1.GetAngle());
      }
      
      public function §6V§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §5!@§(param1:b2Vec2) : void
      {
         this.§ !a§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §7&§(param1:Number) : void
      {
         this.§ !a§(this.GetPosition(),param1);
      }
      
      public function § g§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §?N§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§2!]§ == b2_staticBody)
         {
            return;
         }
         this.§@S§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§@S§;
      }
      
      public function §"l§(param1:Number) : void
      {
         if(this.§2!]§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §4^§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §%f§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§0i§();
         _loc1_.§>6§ = (this.§5!5§ & b2internal::8") == b2internal::8";
         _loc1_.angle = this.GetAngle();
         _loc1_.§5!T§ = this.§"!V§;
         _loc1_.§ ![§ = this.m_angularVelocity;
         _loc1_.§[! § = (this.§5!5§ & b2internal::"u) == b2internal::"u;
         _loc1_.§,r§ = (this.§5!5§ & b2internal::^&) == b2internal::^&;
         _loc1_.§?L§ = (this.§5!5§ & b2internal::7<) == b2internal::7<;
         _loc1_.§8,§ = this.§0N§;
         _loc1_.§ ;§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§<!B§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §>!c§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2!]§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5l§.x += param1.x;
         this.§5l§.y += param1.y;
         this.§'!K§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §;P§(param1:Number) : void
      {
         if(this.§2!]§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'!K§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2!]§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§@S§.x += this.§",§ * param1.x;
         this.§@S§.y += this.§",§ * param1.y;
         this.m_angularVelocity += this.§-2§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §<`§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§4^§();
         var _loc4_:b2Vec2 = this.§ g§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§#m§(this.§%f§());
         var _loc8_:b2Fixture = _loc5_.§%c§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§>W§;
               if(_loc7_)
               {
                  _loc7_.§>W§ = _loc13_;
               }
               else
               {
                  _loc5_.§%c§ = _loc13_;
               }
               --_loc5_.§]>§;
               _loc8_.§>W§ = _loc6_.§%c§;
               _loc6_.§%c§ = _loc8_;
               ++_loc6_.§]>§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>W§;
            }
         }
         _loc5_.§,q§();
         _loc6_.§,q§();
         var _loc9_:b2Vec2 = _loc5_.§ g§();
         var _loc10_:b2Vec2 = _loc6_.§ g§();
         var _loc11_:b2Vec2 = b2Math.§>>§(_loc2_,b2Math.§8V§(_loc3_,b2Math.§8!Y§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§>>§(_loc2_,b2Math.§8V§(_loc3_,b2Math.§8!Y§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§"l§(_loc3_);
         _loc6_.§"l§(_loc3_);
         _loc5_.§@i§();
         _loc6_.§@i§();
         return _loc6_;
      }
      
      public function §3!P§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%c§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§>W§;
            --param1.§]>§;
            _loc2_.§>W§ = this.§%c§;
            this.§%c§ = _loc2_;
            ++this.§]>§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§]>§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§ g§();
         var _loc6_:b2Vec2 = _loc4_.§ g§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§4^§();
         var _loc10_:Number = _loc4_.§4^§();
         _loc3_.§,q§();
         this.§@i§();
      }
      
      public function GetMass() : Number
      {
         return this.§`!6§;
      }
      
      public function § !K§() : Number
      {
         return this.§0!K§;
      }
      
      public function §3_§(param1:b2MassData) : void
      {
         param1.§9h§ = this.§`!6§;
         param1.§5!W§ = this.§0!K§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §4!d§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§-!§() == false);
         if(this.m_world.§-!§() == true)
         {
            return;
         }
         if(this.§2!]§ != b2_dynamicBody)
         {
            return;
         }
         this.§",§ = 0;
         this.§0!K§ = 0;
         this.§-2§ = 0;
         this.§`!6§ = param1.§9h§;
         if(this.§`!6§ <= 0)
         {
            this.§`!6§ = 1;
         }
         this.§",§ = 1 / this.§`!6§;
         if(param1.§5!W§ > 0 && (this.§5!5§ & b2internal::"u) == 0)
         {
            this.§0!K§ = param1.§5!W§ - this.§`!6§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§-2§ = 1 / this.§0!K§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§,p§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§@S§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§@S§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §,q§() : void
      {
         var _loc4_:b2MassData = null;
         this.§`!6§ = 0;
         this.§",§ = 0;
         this.§0!K§ = 0;
         this.§-2§ = 0;
         this.m_sweep.localCenter.§^!,§();
         if(this.§2!]§ == b2_staticBody || this.§2!]§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§ !Q§(0,0);
         var _loc2_:b2Fixture = this.§%c§;
         while(_loc2_)
         {
            if(_loc2_.§6!A§ != 0)
            {
               _loc4_ = _loc2_.§3_§();
               this.§`!6§ += _loc4_.§9h§;
               _loc1_.x += _loc4_.center.x * _loc4_.§9h§;
               _loc1_.y += _loc4_.center.y * _loc4_.§9h§;
               this.§0!K§ += _loc4_.§5!W§;
            }
            _loc2_ = _loc2_.§>W§;
         }
         if(this.§`!6§ > 0)
         {
            this.§",§ = 1 / this.§`!6§;
            _loc1_.x *= this.§",§;
            _loc1_.y *= this.§",§;
         }
         else
         {
            this.§`!6§ = 1;
            this.§",§ = 1;
         }
         if(this.§0!K§ > 0 && (this.§5!5§ & b2internal::"u) == 0)
         {
            this.§0!K§ -= this.§`!6§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§0!K§ *= this.§4!,§;
            b2Settings.b2Assert(this.§0!K§ > 0);
            this.§-2§ = 1 / this.§0!K§;
         }
         else
         {
            this.§0!K§ = 0;
            this.§-2§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§,p§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§@S§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§@S§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §7c§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ !$§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ U§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`q§(this.m_xf.R,param1);
      }
      
      public function §8X§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§@S§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§@S§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §5&§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§@S§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§@S§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §`c§() : Number
      {
         return this.§0N§;
      }
      
      public function §;k§(param1:Number) : void
      {
         this.§0N§ = param1;
      }
      
      public function §4h§() : Number
      {
         return this.§"!V§;
      }
      
      public function §,y§(param1:Number) : void
      {
         this.§"!V§ = param1;
      }
      
      public function §4!#§(param1:uint) : void
      {
         if(this.§2!]§ == param1)
         {
            return;
         }
         this.§2!]§ = param1;
         this.§,q§();
         if(this.§2!]§ == b2_staticBody)
         {
            this.§@S§.§^!,§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§5l§.§^!,§();
         this.§'!K§ = 0;
         var _loc2_:b2ContactEdge = this.§`W§;
         while(_loc2_)
         {
            _loc2_.§-!$§.§[!R§();
            _loc2_ = _loc2_.§+m§;
         }
      }
      
      public function §0i§() : uint
      {
         return this.§2!]§;
      }
      
      public function §97§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!5§ |= b2internal::^&;
         }
         else
         {
            this.§5!5§ &= ~b2internal::^&;
         }
      }
      
      public function §,!Q§() : Boolean
      {
         return (this.§5!5§ & b2internal::^&) == b2internal::^&;
      }
      
      public function §1W§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!5§ |= b2internal::8";
         }
         else
         {
            this.§5!5§ &= ~b2internal::8";
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!5§ |= b2internal::7<;
            this.§^!`§ = 0;
         }
         else
         {
            this.§5!5§ &= ~b2internal::7<;
            this.§^!`§ = 0;
            this.§@S§.§^!,§();
            this.m_angularVelocity = 0;
            this.§5l§.§^!,§();
            this.§'!K§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§5!5§ & b2internal::7<) == b2internal::7<;
      }
      
      public function §,o§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!5§ |= b2internal::"u;
         }
         else
         {
            this.§5!5§ &= ~b2internal::"u;
         }
         this.§,q§();
      }
      
      public function §-§() : Boolean
      {
         return (this.§5!5§ & b2internal::"u) == b2internal::"u;
      }
      
      public function §'!^§(param1:Boolean) : void
      {
         var _loc2_:§!s§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§5!B§())
         {
            return;
         }
         if(param1)
         {
            this.§5!5§ |= b2internal::,!a;
            _loc2_ = this.m_world.§"s§.§-E§;
            _loc3_ = this.§%c§;
            while(_loc3_)
            {
               _loc3_.§+!#§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§>W§;
            }
         }
         else
         {
            this.§5!5§ &= ~b2internal::,!a;
            _loc2_ = this.m_world.§"s§.§-E§;
            _loc3_ = this.§%c§;
            while(_loc3_)
            {
               _loc3_.§&R§(_loc2_);
               _loc3_ = _loc3_.§>W§;
            }
            _loc4_ = this.§`W§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§+m§;
               this.m_world.§"s§.§;!^§(_loc5_.§-!$§);
            }
            this.§`W§ = null;
         }
      }
      
      public function §5!B§() : Boolean
      {
         return (this.§5!5§ & b2internal::,!a) == b2internal::,!a;
      }
      
      public function §0!d§() : Boolean
      {
         return (this.§5!5§ & b2internal::8") == b2internal::8";
      }
      
      public function §=!?§() : b2Fixture
      {
         return this.§%c§;
      }
      
      public function §!O§() : b2JointEdge
      {
         return this.§4b§;
      }
      
      public function § !#§() : b2ControllerEdge
      {
         return this.§2w§;
      }
      
      public function §!+§() : b2ContactEdge
      {
         return this.§`W§;
      }
      
      public function §5!J§() : b2Body
      {
         return this.§>W§;
      }
      
      public function GetUserData() : *
      {
         return this.§,!&§;
      }
      
      public function §-N§(param1:*) : void
      {
         this.§,!&§ = param1;
      }
      
      public function §+&§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §@i§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §?!Y§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§!s§ = this.m_world.§"s§.§-E§;
         _loc4_ = this.§%c§;
         while(_loc4_)
         {
            _loc4_.§8!6§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§>W§;
         }
      }
      
      b2internal function §-W§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §3!C§(param1:b2Body) : Boolean
      {
         if(this.§2!]§ != b2_dynamicBody && param1.§2!]§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§4b§;
         while(_loc2_)
         {
            if(_loc2_.§=!"§ == param1)
            {
               if(_loc2_.dynamic.§1S§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§+m§;
         }
         return true;
      }
      
      b2internal function §3!Z§(param1:Number) : void
      {
         this.m_sweep.§3!Z§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§-W§();
      }
   }
}
