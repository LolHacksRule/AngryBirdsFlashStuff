package §]=§
{
   import §"!G§.b2ControllerEdge;
   import §#!"§.b2EdgeShape;
   import §#!"§.b2MassData;
   import §#!"§.b2Shape;
   import §%t§.b2JointEdge;
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Sweep;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.§8!b§;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §6!9§.b2Contact;
   import §6!9§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §7!2§:b2Transform = new b2Transform();
      
      b2internal static var §'v§:uint = 1;
      
      b2internal static var §6e§:uint = 2;
      
      b2internal static var §,!f§:uint = 4;
      
      b2internal static var §`t§:uint = 8;
      
      b2internal static var §%"§:uint = 16;
      
      b2internal static var §;I§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §3! §:uint;
      
      b2internal var §32§:int;
      
      b2internal var §=!R§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §45§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §=q§:b2Vec2;
      
      b2internal var §0e§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §7!Q§:b2Body;
      
      b2internal var §,1§:b2Body;
      
      b2internal var §7!d§:b2Fixture;
      
      b2internal var §;!F§:int;
      
      b2internal var §%!V§:b2ControllerEdge;
      
      b2internal var §2Z§:int;
      
      b2internal var §8>§:b2JointEdge;
      
      b2internal var §2!4§:b2ContactEdge;
      
      b2internal var §&v§:Number;
      
      b2internal var §8[§:Number;
      
      b2internal var §%!5§:Number;
      
      b2internal var §&f§:Number;
      
      b2internal var §9!'§:Number;
      
      b2internal var §?k§:Number;
      
      b2internal var §"!X§:Number;
      
      b2internal var §`!5§:Number;
      
      private var §8!B§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§45§ = new b2Vec2();
         this.§=q§ = new b2Vec2();
         super();
         this.§3! § = 0;
         if(param1.§3^§)
         {
            this.§3! § |= §`t§;
         }
         if(param1.§>m§)
         {
            this.§3! § |= §%"§;
         }
         if(param1.§3!E§)
         {
            this.§3! § |= §,!f§;
         }
         if(param1.§,!e§)
         {
            this.§3! § |= §6e§;
         }
         if(param1.§]!%§)
         {
            this.§3! § |= §;I§;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§5b§();
         this.m_sweep.§<!2§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§8>§ = null;
         this.§%!V§ = null;
         this.§2!4§ = null;
         this.§2Z§ = 0;
         this.§7!Q§ = null;
         this.§,1§ = null;
         this.§45§.SetV(param1.§5p§);
         this.m_angularVelocity = param1.§;-§;
         this.§?k§ = param1.§3j§;
         this.§"!X§ = param1.§=!8§;
         this.§=q§.Set(0,0);
         this.§0e§ = 0;
         this.§`!5§ = 0;
         this.§32§ = param1.type;
         if(this.§32§ == b2_dynamicBody)
         {
            this.§&v§ = 1;
            this.§8[§ = 1;
         }
         else
         {
            this.§&v§ = 0;
            this.§8[§ = 0;
         }
         this.§%!5§ = 0;
         this.§&f§ = 0;
         this.§9!'§ = param1.§%!"§;
         this.§8!B§ = param1.§?!X§;
         this.§7!d§ = null;
         this.§;!F§ = 0;
      }
      
      private function §<!V§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§09§().y,param2.§09§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@'§(_loc5_,param2.§09§());
         _loc6_ = b2Math.§;v§(_loc6_,param2.§1!6§());
         _loc6_ = b2Math.§@'§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§4-§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2 = b2Math.§4-§(param1.§09§(),param2.§09§());
         _loc7_.Normalize();
         var _loc8_:Boolean = b2Math.§2&§(param1.§09§(),param2.§1!6§()) > 0;
         param1.§#e§(param2,_loc6_,_loc7_,_loc8_);
         param2.§=C§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §[p§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§8!b§ = null;
         if(this.m_world.§+!`§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§]!U§(this,this.m_xf,param1);
         if(this.§3! § & §;I§)
         {
            _loc3_ = this.m_world.§?l§.§'<§;
            _loc2_.§6K§(_loc3_,this.m_xf);
         }
         _loc2_.§,1§ = this.§7!d§;
         this.§7!d§ = _loc2_;
         ++this.§;!F§;
         _loc2_.m_body = this;
         if(_loc2_.§5!2§ > 0)
         {
            this.§&!`§();
         }
         this.m_world.§3! § |= b2World.§+!-§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§[p§(_loc3_);
      }
      
      public function §-T§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§8!b§ = null;
         if(this.m_world.§+!`§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§7!d§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§,1§ = param1.§,1§;
               }
               else
               {
                  this.§7!d§ = param1.§,1§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§,1§;
         }
         var _loc5_:b2ContactEdge = this.§2!4§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§4! §;
            _loc5_ = _loc5_.§2B§;
            _loc7_ = _loc6_.§2!N§();
            _loc8_ = _loc6_.§`!Q§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§?l§.§"P§(_loc6_);
            }
         }
         if(this.§3! § & §;I§)
         {
            _loc9_ = this.m_world.§?l§.§'<§;
            param1.§[!3§(_loc9_);
         }
         param1.§"P§();
         param1.m_body = null;
         param1.§,1§ = null;
         --this.§;!F§;
         this.§&!`§();
      }
      
      public function §3s§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§+!`§() == true)
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
         var _loc6_:§8!b§ = this.m_world.§?l§.§'<§;
         _loc3_ = this.§7!d§;
         while(_loc3_)
         {
            _loc3_.§5X§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§,1§;
         }
         this.m_world.§?l§.§8!<§();
      }
      
      public function §34§(param1:b2Transform) : void
      {
         this.§3s§(param1.position,param1.GetAngle());
      }
      
      public function §%!B§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §4Q§(param1:b2Vec2) : void
      {
         this.§3s§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §,&§(param1:Number) : void
      {
         this.§3s§(this.GetPosition(),param1);
      }
      
      public function §]!8§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §>!4§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§32§ == b2_staticBody)
         {
            return;
         }
         this.§45§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§45§;
      }
      
      public function §<O§(param1:Number) : void
      {
         if(this.§32§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §@!I§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§-V§();
         _loc1_.§3!E§ = (this.§3! § & §,!f§) == §,!f§;
         _loc1_.angle = this.GetAngle();
         _loc1_.§=!8§ = this.§"!X§;
         _loc1_.§;-§ = this.m_angularVelocity;
         _loc1_.§>m§ = (this.§3! § & §%"§) == §%"§;
         _loc1_.§3^§ = (this.§3! § & §`t§) == §`t§;
         _loc1_.§,!e§ = (this.§3! § & §6e§) == §6e§;
         _loc1_.§3j§ = this.§?k§;
         _loc1_.§5p§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§?!X§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §^!>§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§32§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=q§.x += param1.x;
         this.§=q§.y += param1.y;
         this.§0e§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §&S§(param1:Number) : void
      {
         if(this.§32§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§0e§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§32§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§45§.x += this.§8[§ * param1.x;
         this.§45§.y += this.§8[§ * param1.y;
         this.m_angularVelocity += this.§&f§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function § !b§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§]!8§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§=[§(this.§@!I§());
         var _loc8_:b2Fixture = _loc5_.§7!d§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§,1§;
               if(_loc7_)
               {
                  _loc7_.§,1§ = _loc13_;
               }
               else
               {
                  _loc5_.§7!d§ = _loc13_;
               }
               --_loc5_.§;!F§;
               _loc8_.§,1§ = _loc6_.§7!d§;
               _loc6_.§7!d§ = _loc8_;
               ++_loc6_.§;!F§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§,1§;
            }
         }
         _loc5_.§&!`§();
         _loc6_.§&!`§();
         var _loc9_:b2Vec2 = _loc5_.§]!8§();
         var _loc10_:b2Vec2 = _loc6_.§]!8§();
         var _loc11_:b2Vec2 = b2Math.§4-§(_loc2_,b2Math.§2E§(_loc3_,b2Math.§;v§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§4-§(_loc2_,b2Math.§2E§(_loc3_,b2Math.§;v§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§<O§(_loc3_);
         _loc6_.§<O§(_loc3_);
         _loc5_.§3§();
         _loc6_.§3§();
         return _loc6_;
      }
      
      public function §7!1§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§7!d§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§,1§;
            --param1.§;!F§;
            _loc2_.§,1§ = this.§7!d§;
            this.§7!d§ = _loc2_;
            ++this.§;!F§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§;!F§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§]!8§();
         var _loc6_:b2Vec2 = _loc4_.§]!8§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§&!`§();
         this.§3§();
      }
      
      public function GetMass() : Number
      {
         return this.§&v§;
      }
      
      public function §#m§() : Number
      {
         return this.§%!5§;
      }
      
      public function §2!6§(param1:b2MassData) : void
      {
         param1.§7_§ = this.§&v§;
         param1.§8D§ = this.§%!5§;
         param1.§>r§.SetV(this.m_sweep.localCenter);
      }
      
      public function §'y§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§+!`§() == false);
         if(this.m_world.§+!`§() == true)
         {
            return;
         }
         if(this.§32§ != b2_dynamicBody)
         {
            return;
         }
         this.§8[§ = 0;
         this.§%!5§ = 0;
         this.§&f§ = 0;
         this.§&v§ = param1.§7_§;
         if(this.§&v§ <= 0)
         {
            this.§&v§ = 1;
         }
         this.§8[§ = 1 / this.§&v§;
         if(param1.§8D§ > 0 && (this.§3! § & §%"§) == 0)
         {
            this.§%!5§ = param1.§8D§ - this.§&v§ * (param1.§>r§.x * param1.§>r§.x + param1.§>r§.y * param1.§>r§.y);
            this.§&f§ = 1 / this.§%!5§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§>r§);
         this.m_sweep.c0.SetV(b2Math.§?!L§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§45§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§45§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §&!`§() : void
      {
         var _loc4_:b2MassData = null;
         this.§&v§ = 0;
         this.§8[§ = 0;
         this.§%!5§ = 0;
         this.§&f§ = 0;
         this.m_sweep.localCenter.§5b§();
         if(this.§32§ == b2_staticBody || this.§32§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§;!+§(0,0);
         var _loc2_:b2Fixture = this.§7!d§;
         while(_loc2_)
         {
            if(_loc2_.§5!2§ != 0)
            {
               _loc4_ = _loc2_.§2!6§();
               this.§&v§ += _loc4_.§7_§;
               _loc1_.x += _loc4_.§>r§.x * _loc4_.§7_§;
               _loc1_.y += _loc4_.§>r§.y * _loc4_.§7_§;
               this.§%!5§ += _loc4_.§8D§;
            }
            _loc2_ = _loc2_.§,1§;
         }
         if(this.§&v§ > 0)
         {
            this.§8[§ = 1 / this.§&v§;
            _loc1_.x *= this.§8[§;
            _loc1_.y *= this.§8[§;
         }
         else
         {
            this.§&v§ = 1;
            this.§8[§ = 1;
         }
         if(this.§%!5§ > 0 && (this.§3! § & §%"§) == 0)
         {
            this.§%!5§ -= this.§&v§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§%!5§ *= this.§9!'§;
            b2Settings.b2Assert(this.§%!5§ > 0);
            this.§&f§ = 1 / this.§%!5§;
         }
         else
         {
            this.§%!5§ = 0;
            this.§&f§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§?!L§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§45§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§45§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §6y§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!b§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!'§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?a§(this.m_xf.R,param1);
      }
      
      public function §5!E§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§45§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§45§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §73§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§45§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§45§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §2!2§() : Number
      {
         return this.§?k§;
      }
      
      public function §<J§(param1:Number) : void
      {
         this.§?k§ = param1;
      }
      
      public function §<!c§() : Number
      {
         return this.§"!X§;
      }
      
      public function §[H§(param1:Number) : void
      {
         this.§"!X§ = param1;
      }
      
      public function §6!R§(param1:uint) : void
      {
         if(this.§32§ == param1)
         {
            return;
         }
         this.§32§ = param1;
         this.§&!`§();
         if(this.§32§ == b2_staticBody)
         {
            this.§45§.§5b§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§=q§.§5b§();
         this.§0e§ = 0;
         var _loc2_:b2ContactEdge = this.§2!4§;
         while(_loc2_)
         {
            _loc2_.§4! §.§>0§();
            _loc2_ = _loc2_.§2B§;
         }
      }
      
      public function §-V§() : uint
      {
         return this.§32§;
      }
      
      public function §&B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3! § |= §`t§;
         }
         else
         {
            this.§3! § &= ~§`t§;
         }
      }
      
      public function §]^§() : Boolean
      {
         return (this.§3! § & §`t§) == §`t§;
      }
      
      public function §;8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3! § |= §,!f§;
         }
         else
         {
            this.§3! § &= ~§,!f§;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3! § |= §6e§;
            this.§`!5§ = 0;
         }
         else
         {
            this.§3! § &= ~§6e§;
            this.§`!5§ = 0;
            this.§45§.§5b§();
            this.m_angularVelocity = 0;
            this.§=q§.§5b§();
            this.§0e§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§3! § & §6e§) == §6e§;
      }
      
      public function §0E§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3! § |= §%"§;
         }
         else
         {
            this.§3! § &= ~§%"§;
         }
         this.§&!`§();
      }
      
      public function §05§() : Boolean
      {
         return (this.§3! § & §%"§) == §%"§;
      }
      
      public function §<!>§(param1:Boolean) : void
      {
         var _loc2_:§8!b§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§-<§())
         {
            return;
         }
         if(param1)
         {
            this.§3! § |= §;I§;
            _loc2_ = this.m_world.§?l§.§'<§;
            _loc3_ = this.§7!d§;
            while(_loc3_)
            {
               _loc3_.§6K§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§,1§;
            }
         }
         else
         {
            this.§3! § &= ~§;I§;
            _loc2_ = this.m_world.§?l§.§'<§;
            _loc3_ = this.§7!d§;
            while(_loc3_)
            {
               _loc3_.§[!3§(_loc2_);
               _loc3_ = _loc3_.§,1§;
            }
            _loc4_ = this.§2!4§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§2B§;
               this.m_world.§?l§.§"P§(_loc5_.§4! §);
            }
            this.§2!4§ = null;
         }
      }
      
      public function §-<§() : Boolean
      {
         return (this.§3! § & §;I§) == §;I§;
      }
      
      public function §,$§() : Boolean
      {
         return (this.§3! § & §,!f§) == §,!f§;
      }
      
      public function §5g§() : b2Fixture
      {
         return this.§7!d§;
      }
      
      public function §&§() : b2JointEdge
      {
         return this.§8>§;
      }
      
      public function §8!O§() : b2ControllerEdge
      {
         return this.§%!V§;
      }
      
      public function §[7§() : b2ContactEdge
      {
         return this.§2!4§;
      }
      
      public function §70§() : b2Body
      {
         return this.§,1§;
      }
      
      public function GetUserData() : *
      {
         return this.§8!B§;
      }
      
      public function §-!M§(param1:*) : void
      {
         this.§8!B§ = param1;
      }
      
      public function §[Y§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §3§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §7!2§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§8!b§ = this.m_world.§?l§.§'<§;
         _loc4_ = this.§7!d§;
         while(_loc4_)
         {
            _loc4_.§5X§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§,1§;
         }
      }
      
      b2internal function §`!e§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §>b§(param1:b2Body) : Boolean
      {
         if(this.§32§ != b2_dynamicBody && param1.§32§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§8>§;
         while(_loc2_)
         {
            if(_loc2_.§3z§ == param1)
            {
               if(_loc2_.§7-§.§1s§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§2B§;
         }
         return true;
      }
      
      b2internal function §6!V§(param1:Number) : void
      {
         this.m_sweep.§6!V§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§`!e§();
      }
   }
}
