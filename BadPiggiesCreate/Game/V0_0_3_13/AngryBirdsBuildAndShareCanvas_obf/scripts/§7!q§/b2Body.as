package §7!q§
{
   import §,";§.b2ControllerEdge;
   import §,k§.b2Contact;
   import §,k§.b2ContactEdge;
   import §-g§.§<!D§;
   import §1!z§.b2Mat22;
   import §1!z§.b2Math;
   import §1!z§.b2Sweep;
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §5!]§.b2EdgeShape;
   import §5!]§.b2MassData;
   import §5!]§.b2Shape;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   import §^%§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §7B§:b2Transform = new b2Transform();
      
      b2internal static var §9P§:uint = 1;
      
      b2internal static var §5!g§:uint = 2;
      
      b2internal static var §`"9§:uint = 4;
      
      b2internal static var §=!t§:uint = 8;
      
      b2internal static var §+!k§:uint = 16;
      
      b2internal static var §3"7§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §["0§:uint;
      
      b2internal var §&"9§:int;
      
      b2internal var §2Z§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §4X§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §8!t§:b2Vec2;
      
      b2internal var §=!Z§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §5!M§:b2Body;
      
      b2internal var §,"!§:b2Body;
      
      b2internal var §'!J§:b2Fixture;
      
      b2internal var §>!N§:int;
      
      b2internal var §true§:b2ControllerEdge;
      
      b2internal var §'>§:int;
      
      b2internal var §=l§:b2JointEdge;
      
      b2internal var §,!1§:b2ContactEdge;
      
      b2internal var §'!4§:Number;
      
      b2internal var §"!O§:Number;
      
      b2internal var §=!z§:Number;
      
      b2internal var §6""§:Number;
      
      b2internal var §^!d§:Number;
      
      b2internal var §@$§:Number;
      
      b2internal var §1!T§:Number;
      
      b2internal var §=!T§:Number;
      
      private var §]!_§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§4X§ = new b2Vec2();
         this.§8!t§ = new b2Vec2();
         super();
         this.§["0§ = 0;
         if(param1.§!!s§)
         {
            this.§["0§ |= b2internal::=!t;
         }
         if(param1.§@!v§)
         {
            this.§["0§ |= b2internal::+!k;
         }
         if(param1.§'2§)
         {
            this.§["0§ |= b2internal::`"9;
         }
         if(param1.§-C§)
         {
            this.§["0§ |= b2internal::5!g;
         }
         if(param1.§^O§)
         {
            this.§["0§ |= b2internal::3"7;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§4e§();
         this.m_sweep.§72§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§=l§ = null;
         this.§true§ = null;
         this.§,!1§ = null;
         this.§'>§ = 0;
         this.§5!M§ = null;
         this.§,"!§ = null;
         this.§4X§.SetV(param1.§[b§);
         this.m_angularVelocity = param1.§@!M§;
         this.§@$§ = param1.§9W§;
         this.§1!T§ = param1.§%!G§;
         this.§8!t§.Set(0,0);
         this.§=!Z§ = 0;
         this.§=!T§ = 0;
         this.§&"9§ = param1.type;
         if(this.§&"9§ == b2_dynamicBody)
         {
            this.§'!4§ = 1;
            this.§"!O§ = 1;
         }
         else
         {
            this.§'!4§ = 0;
            this.§"!O§ = 0;
         }
         this.§=!z§ = 0;
         this.§6""§ = 0;
         this.§^!d§ = param1.§ !l§;
         this.§]!_§ = param1.§>T§;
         this.§'!J§ = null;
         this.§>!N§ = 0;
      }
      
      private function §+!?§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§[D§().y,param2.§[D§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§ "&§(_loc5_,param2.§[D§());
         _loc6_ = b2Math.§8"<§(_loc6_,param2.§0t§());
         _loc6_ = b2Math.§ "&§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§+!§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§+!§(param1.§[D§(),param2.§[D§())).Normalize();
         var _loc8_:* = b2Math.§9!%§(param1.§[D§(),param2.§0t§()) > 0;
         param1.§9S§(param2,_loc6_,_loc7_,_loc8_);
         param2.§ e§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §-!c§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§<!D§ = null;
         if(this.m_world.§3o§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§="1§(this,this.m_xf,param1);
         if(this.§["0§ & b2internal::3"7)
         {
            _loc3_ = this.m_world.§<!y§.§-!R§;
            _loc2_.§3p§(_loc3_,this.m_xf);
         }
         _loc2_.§,"!§ = this.§'!J§;
         this.§'!J§ = _loc2_;
         ++this.§>!N§;
         _loc2_.m_body = this;
         if(_loc2_.§#!e§ > 0)
         {
            this.§3`§();
         }
         this.m_world.§["0§ |= b2World.§"![§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§-!c§(_loc3_);
      }
      
      public function §^!V§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<!D§ = null;
         if(this.m_world.§3o§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§'!J§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§,"!§ = param1.§,"!§;
               }
               else
               {
                  this.§'!J§ = param1.§,"!§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§,"!§;
         }
         var _loc5_:b2ContactEdge = this.§,!1§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§9"6§;
            _loc5_ = _loc5_.§!",§;
            _loc7_ = _loc6_.§[u§();
            _loc8_ = _loc6_.§<j§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§<!y§.§,"0§(_loc6_);
            }
         }
         if(this.§["0§ & b2internal::3"7)
         {
            _loc9_ = this.m_world.§<!y§.§-!R§;
            param1.§1k§(_loc9_);
         }
         param1.§,"0§();
         param1.m_body = null;
         param1.§,"!§ = null;
         --this.§>!N§;
         this.§3`§();
      }
      
      public function §14§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§3o§() == true)
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
         var _loc6_:§<!D§ = this.m_world.§<!y§.§-!R§;
         _loc3_ = this.§'!J§;
         while(_loc3_)
         {
            _loc3_.§ g§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§,"!§;
         }
         this.m_world.§<!y§.§-!T§();
      }
      
      public function §"G§(param1:b2Transform) : void
      {
         this.§14§(param1.position,param1.GetAngle());
      }
      
      public function §4!f§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §"!2§(param1:b2Vec2) : void
      {
         this.§14§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §4z§(param1:Number) : void
      {
         this.§14§(this.GetPosition(),param1);
      }
      
      public function §<t§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §<!q§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§&"9§ == b2_staticBody)
         {
            return;
         }
         this.§4X§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§4X§;
      }
      
      public function §9J§(param1:Number) : void
      {
         if(this.§&"9§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §9%§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §0O§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§7!r§();
         _loc1_.§'2§ = (this.§["0§ & b2internal::`"9) == b2internal::`"9;
         _loc1_.angle = this.GetAngle();
         _loc1_.§%!G§ = this.§1!T§;
         _loc1_.§@!M§ = this.m_angularVelocity;
         _loc1_.§@!v§ = (this.§["0§ & b2internal::+!k) == b2internal::+!k;
         _loc1_.§!!s§ = (this.§["0§ & b2internal::=!t) == b2internal::=!t;
         _loc1_.§-C§ = (this.§["0§ & b2internal::5!g) == b2internal::5!g;
         _loc1_.§9W§ = this.§@$§;
         _loc1_.§[b§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§>T§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §7Z§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§&"9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§8!t§.x += param1.x;
         this.§8!t§.y += param1.y;
         this.§=!Z§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §20§(param1:Number) : void
      {
         if(this.§&"9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=!Z§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§&"9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4X§.x += this.§"!O§ * param1.x;
         this.§4X§.y += this.§"!O§ * param1.y;
         this.m_angularVelocity += this.§6""§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §>!8§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§9%§();
         var _loc4_:b2Vec2 = this.§<t§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§+!q§(this.§0O§());
         var _loc8_:b2Fixture = _loc5_.§'!J§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§,"!§;
               if(_loc7_)
               {
                  _loc7_.§,"!§ = _loc13_;
               }
               else
               {
                  _loc5_.§'!J§ = _loc13_;
               }
               --_loc5_.§>!N§;
               _loc8_.§,"!§ = _loc6_.§'!J§;
               _loc6_.§'!J§ = _loc8_;
               ++_loc6_.§>!N§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§,"!§;
            }
         }
         _loc5_.§3`§();
         _loc6_.§3`§();
         var _loc9_:b2Vec2 = _loc5_.§<t§();
         var _loc10_:b2Vec2 = _loc6_.§<t§();
         var _loc11_:b2Vec2 = b2Math.§+!§(_loc2_,b2Math.§`f§(_loc3_,b2Math.§8"<§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§+!§(_loc2_,b2Math.§`f§(_loc3_,b2Math.§8"<§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§9J§(_loc3_);
         _loc6_.§9J§(_loc3_);
         _loc5_.§ <§();
         _loc6_.§ <§();
         return _loc6_;
      }
      
      public function §3"$§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§'!J§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§,"!§;
            --param1.§>!N§;
            _loc2_.§,"!§ = this.§'!J§;
            this.§'!J§ = _loc2_;
            ++this.§>!N§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§>!N§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§<t§();
         var _loc6_:b2Vec2 = _loc4_.§<t§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§9%§();
         var _loc10_:Number = _loc4_.§9%§();
         _loc3_.§3`§();
         this.§ <§();
      }
      
      public function GetMass() : Number
      {
         return this.§'!4§;
      }
      
      public function §,c§() : Number
      {
         return this.§=!z§;
      }
      
      public function §%!'§(param1:b2MassData) : void
      {
         param1.§&!q§ = this.§'!4§;
         param1.I = this.§=!z§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §<P§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§3o§() == false);
         if(this.m_world.§3o§() == true)
         {
            return;
         }
         if(this.§&"9§ != b2_dynamicBody)
         {
            return;
         }
         this.§"!O§ = 0;
         this.§=!z§ = 0;
         this.§6""§ = 0;
         this.§'!4§ = param1.§&!q§;
         if(this.§'!4§ <= 0)
         {
            this.§'!4§ = 1;
         }
         this.§"!O§ = 1 / this.§'!4§;
         if(param1.I > 0 && (this.§["0§ & b2internal::+!k) == 0)
         {
            this.§=!z§ = param1.I - this.§'!4§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§6""§ = 1 / this.§=!z§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§5!V§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4X§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§4X§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §3`§() : void
      {
         var _loc4_:b2MassData = null;
         this.§'!4§ = 0;
         this.§"!O§ = 0;
         this.§=!z§ = 0;
         this.§6""§ = 0;
         this.m_sweep.localCenter.§4e§();
         if(this.§&"9§ == b2_staticBody || this.§&"9§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§^;§(0,0);
         var _loc2_:b2Fixture = this.§'!J§;
         while(_loc2_)
         {
            if(_loc2_.§#!e§ != 0)
            {
               _loc4_ = _loc2_.§%!'§();
               this.§'!4§ += _loc4_.§&!q§;
               _loc1_.x += _loc4_.center.x * _loc4_.§&!q§;
               _loc1_.y += _loc4_.center.y * _loc4_.§&!q§;
               this.§=!z§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§,"!§;
         }
         if(this.§'!4§ > 0)
         {
            this.§"!O§ = 1 / this.§'!4§;
            _loc1_.x *= this.§"!O§;
            _loc1_.y *= this.§"!O§;
         }
         else
         {
            this.§'!4§ = 1;
            this.§"!O§ = 1;
         }
         if(this.§=!z§ > 0 && (this.§["0§ & b2internal::+!k) == 0)
         {
            this.§=!z§ -= this.§'!4§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§=!z§ *= this.§^!d§;
            b2Settings.b2Assert(this.§=!z§ > 0);
            this.§6""§ = 1 / this.§=!z§;
         }
         else
         {
            this.§=!z§ = 0;
            this.§6""§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§5!V§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4X§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§4X§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §4"#§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%!T§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5"%§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§1j§(this.m_xf.R,param1);
      }
      
      public function §["6§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§4X§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§4X§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §!!u§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§4X§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§4X§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §+!m§() : Number
      {
         return this.§@$§;
      }
      
      public function §4!t§(param1:Number) : void
      {
         this.§@$§ = param1;
      }
      
      public function §9!<§() : Number
      {
         return this.§1!T§;
      }
      
      public function §[r§(param1:Number) : void
      {
         this.§1!T§ = param1;
      }
      
      public function §`H§(param1:uint) : void
      {
         if(this.§&"9§ == param1)
         {
            return;
         }
         this.§&"9§ = param1;
         this.§3`§();
         if(this.§&"9§ == b2_staticBody)
         {
            this.§4X§.§4e§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§8!t§.§4e§();
         this.§=!Z§ = 0;
         var _loc2_:b2ContactEdge = this.§,!1§;
         while(_loc2_)
         {
            _loc2_.§9"6§.§!!§();
            _loc2_ = _loc2_.§!",§;
         }
      }
      
      public function §7!r§() : uint
      {
         return this.§&"9§;
      }
      
      public function §&!C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§["0§ |= b2internal::=!t;
         }
         else
         {
            this.§["0§ &= ~b2internal::=!t;
         }
      }
      
      public function §6+§() : Boolean
      {
         return (this.§["0§ & b2internal::=!t) == b2internal::=!t;
      }
      
      public function §8!w§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§["0§ |= b2internal::`"9;
         }
         else
         {
            this.§["0§ &= ~b2internal::`"9;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§["0§ |= b2internal::5!g;
            this.§=!T§ = 0;
         }
         else
         {
            this.§["0§ &= ~b2internal::5!g;
            this.§=!T§ = 0;
            this.§4X§.§4e§();
            this.m_angularVelocity = 0;
            this.§8!t§.§4e§();
            this.§=!Z§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§["0§ & b2internal::5!g) == b2internal::5!g;
      }
      
      public function §`!Q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§["0§ |= b2internal::+!k;
         }
         else
         {
            this.§["0§ &= ~b2internal::+!k;
         }
         this.§3`§();
      }
      
      public function §4"%§() : Boolean
      {
         return (this.§["0§ & b2internal::+!k) == b2internal::+!k;
      }
      
      public function §8!<§(param1:Boolean) : void
      {
         var _loc2_:§<!D§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§"?§())
         {
            return;
         }
         if(param1)
         {
            this.§["0§ |= b2internal::3"7;
            _loc2_ = this.m_world.§<!y§.§-!R§;
            _loc3_ = this.§'!J§;
            while(_loc3_)
            {
               _loc3_.§3p§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§,"!§;
            }
         }
         else
         {
            this.§["0§ &= ~b2internal::3"7;
            _loc2_ = this.m_world.§<!y§.§-!R§;
            _loc3_ = this.§'!J§;
            while(_loc3_)
            {
               _loc3_.§1k§(_loc2_);
               _loc3_ = _loc3_.§,"!§;
            }
            _loc4_ = this.§,!1§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§!",§;
               this.m_world.§<!y§.§,"0§(_loc5_.§9"6§);
            }
            this.§,!1§ = null;
         }
      }
      
      public function §"?§() : Boolean
      {
         return (this.§["0§ & b2internal::3"7) == b2internal::3"7;
      }
      
      public function §4!Y§() : Boolean
      {
         return (this.§["0§ & b2internal::`"9) == b2internal::`"9;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§'!J§;
      }
      
      public function §5! §() : b2JointEdge
      {
         return this.§=l§;
      }
      
      public function §'g§() : b2ControllerEdge
      {
         return this.§true§;
      }
      
      public function §2H§() : b2ContactEdge
      {
         return this.§,!1§;
      }
      
      public function §5!`§() : b2Body
      {
         return this.§,"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!_§;
      }
      
      public function §?!5§(param1:*) : void
      {
         this.§]!_§ = param1;
      }
      
      public function §7! §() : b2World
      {
         return this.m_world;
      }
      
      b2internal function § <§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §7B§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§<!D§ = this.m_world.§<!y§.§-!R§;
         _loc4_ = this.§'!J§;
         while(_loc4_)
         {
            _loc4_.§ g§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§,"!§;
         }
      }
      
      b2internal function §<!S§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §]!R§(param1:b2Body) : Boolean
      {
         if(this.§&"9§ != b2_dynamicBody && param1.§&"9§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§=l§;
         while(_loc2_)
         {
            if(_loc2_.§#!l§ == param1)
            {
               if(_loc2_.§2<§.§ "<§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§!",§;
         }
         return true;
      }
      
      b2internal function §1I§(param1:Number) : void
      {
         this.m_sweep.§1I§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§<!S§();
      }
   }
}
