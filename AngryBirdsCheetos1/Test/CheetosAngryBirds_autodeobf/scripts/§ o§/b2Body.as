package § o§
{
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §#-§.b2ControllerEdge;
   import §-r§.§@C§;
   import §30§.b2Contact;
   import §30§.b2ContactEdge;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Sweep;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import §;!#§.b2JointEdge;
   import §]!S§.b2EdgeShape;
   import §]!S§.b2MassData;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var § r§:b2Transform = new b2Transform();
      
      b2internal static var §[!6§:uint = 1;
      
      b2internal static var §8!!§:uint = 2;
      
      b2internal static var §"!Z§:uint = 4;
      
      b2internal static var §;!Z§:uint = 8;
      
      b2internal static var §for §:uint = 16;
      
      b2internal static var §1!R§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §0b§:uint;
      
      b2internal var §#!&§:int;
      
      b2internal var §-_§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §2!@§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §']§:b2Vec2;
      
      b2internal var §'!$§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §`D§:b2Body;
      
      b2internal var §-![§:b2Body;
      
      b2internal var §>0§:b2Fixture;
      
      b2internal var § !2§:int;
      
      b2internal var §3j§:b2ControllerEdge;
      
      b2internal var §7!"§:int;
      
      b2internal var §-!&§:b2JointEdge;
      
      b2internal var §4!]§:b2ContactEdge;
      
      b2internal var §>§:Number;
      
      b2internal var §+5§:Number;
      
      b2internal var §,!<§:Number;
      
      b2internal var §%L§:Number;
      
      b2internal var §8@§:Number;
      
      b2internal var §;K§:Number;
      
      b2internal var §^,§:Number;
      
      b2internal var §3!E§:Number;
      
      private var §&!i§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§2!@§ = new b2Vec2();
         this.§']§ = new b2Vec2();
         super();
         this.§0b§ = 0;
         if(param1.§7N§)
         {
            this.§0b§ |= b2internal::;!Z;
         }
         if(param1.§'r§)
         {
            this.§0b§ |= b2internal::for ;
         }
         if(param1.§,!E§)
         {
            this.§0b§ |= b2internal::"!Z;
         }
         if(param1.§>!`§)
         {
            this.§0b§ |= b2internal::8!!;
         }
         if(param1.§-[§)
         {
            this.§0b§ |= b2internal::1!R;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§7_§();
         this.m_sweep.§^Q§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§-!&§ = null;
         this.§3j§ = null;
         this.§4!]§ = null;
         this.§7!"§ = 0;
         this.§`D§ = null;
         this.§-![§ = null;
         this.§2!@§.SetV(param1.§8w§);
         this.m_angularVelocity = param1.§3!I§;
         this.§;K§ = param1.§?!,§;
         this.§^,§ = param1.§60§;
         this.§']§.Set(0,0);
         this.§'!$§ = 0;
         this.§3!E§ = 0;
         this.§#!&§ = param1.type;
         if(this.§#!&§ == b2_dynamicBody)
         {
            this.§>§ = 1;
            this.§+5§ = 1;
         }
         else
         {
            this.§>§ = 0;
            this.§+5§ = 0;
         }
         this.§,!<§ = 0;
         this.§%L§ = 0;
         this.§8@§ = param1.§6§;
         this.§&!i§ = param1.§["§;
         this.§>0§ = null;
         this.§ !2§ = 0;
      }
      
      private function §=x§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§=!4§().y,param2.§=!4§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§[!Z§(_loc5_,param2.§=!4§());
         _loc6_ = b2Math.§=_§(_loc6_,param2.§@!Q§());
         _loc6_ = b2Math.§[!Z§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'w§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'w§(param1.§=!4§(),param2.§=!4§())).Normalize();
         var _loc8_:* = b2Math.§%!a§(param1.§=!4§(),param2.§@!Q§()) > 0;
         param1.§[!V§(param2,_loc6_,_loc7_,_loc8_);
         param2.§'!h§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §0!h§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§@C§ = null;
         if(this.m_world.§5Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§#!M§(this,this.m_xf,param1);
         if(this.§0b§ & b2internal::1!R)
         {
            _loc3_ = this.m_world.§-!-§.§<x§;
            _loc2_.§1<§(_loc3_,this.m_xf);
         }
         _loc2_.§-![§ = this.§>0§;
         this.§>0§ = _loc2_;
         ++this.§ !2§;
         _loc2_.m_body = this;
         if(_loc2_.§!n§ > 0)
         {
            this.§2!<§();
         }
         this.m_world.§0b§ |= b2World.§[=§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§0!h§(_loc3_);
      }
      
      public function §[m§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§@C§ = null;
         if(this.m_world.§5Y§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§>0§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§-![§ = param1.§-![§;
               }
               else
               {
                  this.§>0§ = param1.§-![§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§-![§;
         }
         var _loc5_:b2ContactEdge = this.§4!]§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§4§;
            _loc5_ = _loc5_.§23§;
            _loc7_ = _loc6_.§`u§();
            _loc8_ = _loc6_.§7t§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§-!-§.§[!$§(_loc6_);
            }
         }
         if(this.§0b§ & b2internal::1!R)
         {
            _loc9_ = this.m_world.§-!-§.§<x§;
            param1.§%!4§(_loc9_);
         }
         param1.§[!$§();
         param1.m_body = null;
         param1.§-![§ = null;
         --this.§ !2§;
         this.§2!<§();
      }
      
      public function §2Z§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§5Y§() == true)
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
         var _loc6_:§@C§ = this.m_world.§-!-§.§<x§;
         _loc3_ = this.§>0§;
         while(_loc3_)
         {
            _loc3_.§,N§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§-![§;
         }
         this.m_world.§-!-§.§!c§();
      }
      
      public function §`d§(param1:b2Transform) : void
      {
         this.§2Z§(param1.position,param1.GetAngle());
      }
      
      public function §2!i§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §;!1§(param1:b2Vec2) : void
      {
         this.§2Z§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §@o§(param1:Number) : void
      {
         this.§2Z§(this.GetPosition(),param1);
      }
      
      public function §with§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §<O§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§#!&§ == b2_staticBody)
         {
            return;
         }
         this.§2!@§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§2!@§;
      }
      
      public function §,!d§(param1:Number) : void
      {
         if(this.§#!&§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §[H§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §0!`§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§7!_§();
         _loc1_.§,!E§ = (this.§0b§ & b2internal::"!Z) == b2internal::"!Z;
         _loc1_.angle = this.GetAngle();
         _loc1_.§60§ = this.§^,§;
         _loc1_.§3!I§ = this.m_angularVelocity;
         _loc1_.§'r§ = (this.§0b§ & b2internal::for ) == b2internal::for ;
         _loc1_.§7N§ = (this.§0b§ & b2internal::;!Z) == b2internal::;!Z;
         _loc1_.§>!`§ = (this.§0b§ & b2internal::8!!) == b2internal::8!!;
         _loc1_.§?!,§ = this.§;K§;
         _loc1_.§8w§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§["§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §>!#§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§#!&§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§']§.x += param1.x;
         this.§']§.y += param1.y;
         this.§'!$§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §;R§(param1:Number) : void
      {
         if(this.§#!&§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'!$§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§#!&§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§2!@§.x += this.§+5§ * param1.x;
         this.§2!@§.y += this.§+5§ * param1.y;
         this.m_angularVelocity += this.§%L§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §%f§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§[H§();
         var _loc4_:b2Vec2 = this.§with§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§<s§(this.§0!`§());
         var _loc8_:b2Fixture = _loc5_.§>0§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§-![§;
               if(_loc7_)
               {
                  _loc7_.§-![§ = _loc13_;
               }
               else
               {
                  _loc5_.§>0§ = _loc13_;
               }
               --_loc5_.§ !2§;
               _loc8_.§-![§ = _loc6_.§>0§;
               _loc6_.§>0§ = _loc8_;
               ++_loc6_.§ !2§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§-![§;
            }
         }
         _loc5_.§2!<§();
         _loc6_.§2!<§();
         var _loc9_:b2Vec2 = _loc5_.§with§();
         var _loc10_:b2Vec2 = _loc6_.§with§();
         var _loc11_:b2Vec2 = b2Math.§'w§(_loc2_,b2Math.§;!G§(_loc3_,b2Math.§=_§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§'w§(_loc2_,b2Math.§;!G§(_loc3_,b2Math.§=_§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§,!d§(_loc3_);
         _loc6_.§,!d§(_loc3_);
         _loc5_.§2#§();
         _loc6_.§2#§();
         return _loc6_;
      }
      
      public function §3h§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§>0§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§-![§;
            --param1.§ !2§;
            _loc2_.§-![§ = this.§>0§;
            this.§>0§ = _loc2_;
            ++this.§ !2§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§ !2§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§with§();
         var _loc6_:b2Vec2 = _loc4_.§with§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§[H§();
         var _loc10_:Number = _loc4_.§[H§();
         _loc3_.§2!<§();
         this.§2#§();
      }
      
      public function GetMass() : Number
      {
         return this.§>§;
      }
      
      public function §`!+§() : Number
      {
         return this.§,!<§;
      }
      
      public function §6Y§(param1:b2MassData) : void
      {
         param1.§>A§ = this.§>§;
         param1.§[8§ = this.§,!<§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §8!R§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§5Y§() == false);
         if(this.m_world.§5Y§() == true)
         {
            return;
         }
         if(this.§#!&§ != b2_dynamicBody)
         {
            return;
         }
         this.§+5§ = 0;
         this.§,!<§ = 0;
         this.§%L§ = 0;
         this.§>§ = param1.§>A§;
         if(this.§>§ <= 0)
         {
            this.§>§ = 1;
         }
         this.§+5§ = 1 / this.§>§;
         if(param1.§[8§ > 0 && (this.§0b§ & b2internal::for ) == 0)
         {
            this.§,!<§ = param1.§[8§ - this.§>§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§%L§ = 1 / this.§,!<§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§=!!§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§2!@§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§2!@§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §2!<§() : void
      {
         var _loc4_:b2MassData = null;
         this.§>§ = 0;
         this.§+5§ = 0;
         this.§,!<§ = 0;
         this.§%L§ = 0;
         this.m_sweep.localCenter.§7_§();
         if(this.§#!&§ == b2_staticBody || this.§#!&§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§6^§(0,0);
         var _loc2_:b2Fixture = this.§>0§;
         while(_loc2_)
         {
            if(_loc2_.§!n§ != 0)
            {
               _loc4_ = _loc2_.§6Y§();
               this.§>§ += _loc4_.§>A§;
               _loc1_.x += _loc4_.center.x * _loc4_.§>A§;
               _loc1_.y += _loc4_.center.y * _loc4_.§>A§;
               this.§,!<§ += _loc4_.§[8§;
            }
            _loc2_ = _loc2_.§-![§;
         }
         if(this.§>§ > 0)
         {
            this.§+5§ = 1 / this.§>§;
            _loc1_.x *= this.§+5§;
            _loc1_.y *= this.§+5§;
         }
         else
         {
            this.§>§ = 1;
            this.§+5§ = 1;
         }
         if(this.§,!<§ > 0 && (this.§0b§ & b2internal::for ) == 0)
         {
            this.§,!<§ -= this.§>§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§,!<§ *= this.§8@§;
            b2Settings.b2Assert(this.§,!<§ > 0);
            this.§%L§ = 1 / this.§,!<§;
         }
         else
         {
            this.§,!<§ = 0;
            this.§%L§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§=!!§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§2!@§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§2!@§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §?!4§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&W§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&!h§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§=!X§(this.m_xf.R,param1);
      }
      
      public function §?!K§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§2!@§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§2!@§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §6h§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§2!@§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§2!@§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §+u§() : Number
      {
         return this.§;K§;
      }
      
      public function §!v§(param1:Number) : void
      {
         this.§;K§ = param1;
      }
      
      public function §3[§() : Number
      {
         return this.§^,§;
      }
      
      public function §^G§(param1:Number) : void
      {
         this.§^,§ = param1;
      }
      
      public function §in§(param1:uint) : void
      {
         if(this.§#!&§ == param1)
         {
            return;
         }
         this.§#!&§ = param1;
         this.§2!<§();
         if(this.§#!&§ == b2_staticBody)
         {
            this.§2!@§.§7_§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§']§.§7_§();
         this.§'!$§ = 0;
         var _loc2_:b2ContactEdge = this.§4!]§;
         while(_loc2_)
         {
            _loc2_.§4§.§[]§();
            _loc2_ = _loc2_.§23§;
         }
      }
      
      public function §7!_§() : uint
      {
         return this.§#!&§;
      }
      
      public function §8d§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0b§ |= b2internal::;!Z;
         }
         else
         {
            this.§0b§ &= ~b2internal::;!Z;
         }
      }
      
      public function §9L§() : Boolean
      {
         return (this.§0b§ & b2internal::;!Z) == b2internal::;!Z;
      }
      
      public function §&t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0b§ |= b2internal::"!Z;
         }
         else
         {
            this.§0b§ &= ~b2internal::"!Z;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0b§ |= b2internal::8!!;
            this.§3!E§ = 0;
         }
         else
         {
            this.§0b§ &= ~b2internal::8!!;
            this.§3!E§ = 0;
            this.§2!@§.§7_§();
            this.m_angularVelocity = 0;
            this.§']§.§7_§();
            this.§'!$§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§0b§ & b2internal::8!!) == b2internal::8!!;
      }
      
      public function §=G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0b§ |= b2internal::for ;
         }
         else
         {
            this.§0b§ &= ~b2internal::for ;
         }
         this.§2!<§();
      }
      
      public function §]!Z§() : Boolean
      {
         return (this.§0b§ & b2internal::for ) == b2internal::for ;
      }
      
      public function §,u§(param1:Boolean) : void
      {
         var _loc2_:§@C§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§5f§())
         {
            return;
         }
         if(param1)
         {
            this.§0b§ |= b2internal::1!R;
            _loc2_ = this.m_world.§-!-§.§<x§;
            _loc3_ = this.§>0§;
            while(_loc3_)
            {
               _loc3_.§1<§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§-![§;
            }
         }
         else
         {
            this.§0b§ &= ~b2internal::1!R;
            _loc2_ = this.m_world.§-!-§.§<x§;
            _loc3_ = this.§>0§;
            while(_loc3_)
            {
               _loc3_.§%!4§(_loc2_);
               _loc3_ = _loc3_.§-![§;
            }
            _loc4_ = this.§4!]§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§23§;
               this.m_world.§-!-§.§[!$§(_loc5_.§4§);
            }
            this.§4!]§ = null;
         }
      }
      
      public function §5f§() : Boolean
      {
         return (this.§0b§ & b2internal::1!R) == b2internal::1!R;
      }
      
      public function §[!"§() : Boolean
      {
         return (this.§0b§ & b2internal::"!Z) == b2internal::"!Z;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§>0§;
      }
      
      public function §>N§() : b2JointEdge
      {
         return this.§-!&§;
      }
      
      public function §6!4§() : b2ControllerEdge
      {
         return this.§3j§;
      }
      
      public function §!!R§() : b2ContactEdge
      {
         return this.§4!]§;
      }
      
      public function §;!B§() : b2Body
      {
         return this.§-![§;
      }
      
      public function GetUserData() : *
      {
         return this.§&!i§;
      }
      
      public function §-!8§(param1:*) : void
      {
         this.§&!i§ = param1;
      }
      
      public function §5h§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §2#§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = § r§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§@C§ = this.m_world.§-!-§.§<x§;
         _loc4_ = this.§>0§;
         while(_loc4_)
         {
            _loc4_.§,N§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§-![§;
         }
      }
      
      b2internal function §&I§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §#!7§(param1:b2Body) : Boolean
      {
         if(this.§#!&§ != b2_dynamicBody && param1.§#!&§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§-!&§;
         while(_loc2_)
         {
            if(_loc2_.§'!4§ == param1)
            {
               if(_loc2_.§>!&§.§+4§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§23§;
         }
         return true;
      }
      
      b2internal function §8!3§(param1:Number) : void
      {
         this.m_sweep.§8!3§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§&I§();
      }
   }
}
