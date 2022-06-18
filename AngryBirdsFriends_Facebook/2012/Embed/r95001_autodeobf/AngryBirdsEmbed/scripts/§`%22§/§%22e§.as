package §`"§
{
   import §!T§.§'2§;
   import §!T§.§2!!§;
   import §!T§.§9n§;
   import §!T§.§^^§;
   import §!T§.§`P§;
   import §0H§.§-V§;
   import §0H§.§2x§;
   import §1!?§.§7_§;
   import §9!?§.§%!+§;
   import §9!?§.§^]§;
   import §9H§.§@M§;
   import §<k§.Sprite;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §"e§
   {
      
      public static const §=!@§:uint = 1 << 1;
      
      public static const §7q§:uint = 1 << 2;
      
      public static const §+r§:uint = 1 << 3;
      
      public static const §0>§:uint = 1 << 4;
      
      public static const §@&§:Boolean = true;
       
      
      private var §1M§:int;
      
      private var §null§:int;
      
      public var §"]§:String;
      
      public var §8V§:int;
      
      private var §2!2§:§9n§;
      
      private var §?>§:§?!;§;
      
      private var §7U§:b2World;
      
      private var §&!D§:b2Fixture;
      
      private var §6!!§:b2Body;
      
      private var §&Q§:b2Vec2;
      
      public var §`h§:Number;
      
      public var §'R§:Number;
      
      private var §1k§:Number;
      
      private var §,p§:Boolean = false;
      
      private var §<! §:Number;
      
      private var §8j§:Number;
      
      private var §'!E§:Number;
      
      private var §=!<§:Number;
      
      private var §3E§:Number;
      
      private var §-"§:Number;
      
      public var §^!!§:Number = 1;
      
      private var §%! §:Boolean = false;
      
      public var §=!#§:Number = 0;
      
      public var §&+§:Number = 0;
      
      protected var §??§:Boolean = false;
      
      public var §>b§:§'q§;
      
      private var §8!!§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §&?§:Number = 0;
      
      private var §@]§:Number = 1.0;
      
      private var §3!!§:Boolean = false;
      
      private var § !8§:Boolean = true;
      
      public function §"e§(param1:§?!;§, param2:Sprite, param3:b2World, param4:§^]§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§"]§ = param6;
         this.§2!2§ = §2!!§.§2V§(param6);
         this.§?>§ = param1;
         this.§8!!§ = param2;
         this.§@]§ = param10;
         this.§3!!§ = param11;
         this.§1M§ = param5;
         this.§8V§ = this.§2!2§.§8V§;
         this.§null§ = this.§2!2§.§&!F§();
         this.§>b§ = new §'q§(this,param2,param4);
         if(!this.§>b§.§">§(param1.§]!9§.§[y§))
         {
            this.§>b§.§-B§(this.§null§,this.§2!2§.§<Q§(),this.§2!2§.§7]§() / §^]§.§ u§,this.§2!2§.§"o§() / §^]§.§ u§);
         }
         this.§>b§.§ =§(this.§null§ == §'2§.§?O§);
         this.§7U§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§6!!§ = this.§7U§.CreateBody(_loc12_);
         this.§6!!§.SetUserData(this);
         if(this.§null§ == §'2§.§+o§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§2!2§.shape.§!0§ * param10,this.§2!2§.shape.§+K§ * param10);
            this.§&!D§ = this.§6!!§.CreateFixture2(_loc14_,this.§2!2§.§+%§());
         }
         else if(this.§null§ == §'2§.§?O§ || this.§null§ == §'2§.§#!2§)
         {
            this.§&!D§ = this.§6!!§.CreateFixture2(this.§2!2§.shape.§&n§(param10),this.§2!2§.§+%§());
         }
         this.§&!D§.SetFriction(this.§2!2§.§6T§());
         this.§&!D§.SetRestitution(this.§2!2§.§;V§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§^C§())
         {
            _loc13_.categoryBits = §=!@§;
            _loc13_.maskBits = 65535 & ~§7q§;
         }
         else if(this.§"]§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§"]§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §7q§;
            _loc13_.maskBits = 65535 & ~§=!@§;
         }
         this.§&!D§.SetFilterData(_loc13_);
         this.§1k§ = this.§2!2§.§@6§();
         if(this.§2!2§.§'R§ > 0)
         {
            this.§`h§ = this.§'R§ = this.§2!2§.§'R§;
         }
         else
         {
            this.§`h§ = this.§'R§ = Math.round(this.§7V§(true) * this.§2!2§.§`<§());
            if(this.§`h§ < 1)
            {
               this.§`h§ = this.§'R§ = 1;
            }
         }
         if(this.§2!2§.§8V§ == §9n§.§9?§)
         {
            this.§8!!§.visible = false;
         }
         else
         {
            this.§>b§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§@;§(param9);
         }
         this.§1Q§();
         this.§,K§(0,1);
         this.§>b§.§8D§(this.§2!2§.shape);
      }
      
      public static function §@#§(param1:int, param2:§`P§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§87§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§0!8§;
            }
            §7_§.§"u§(_loc4_,param3);
         }
      }
      
      public static function §7$§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §'p§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!!§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get scale() : Number
      {
         return this.§@]§;
      }
      
      public function get front() : Boolean
      {
         return this.§3!!§;
      }
      
      public function get §`!!§() : Number
      {
         return this.§6!!§.GetPosition().x;
      }
      
      public function get §8t§() : Number
      {
         return this.§6!!§.GetPosition().y;
      }
      
      public function get §3-§() : §9n§
      {
         return this.§2!2§;
      }
      
      public function get §`!>§() : Boolean
      {
         return this.§1k§ >= 0;
      }
      
      protected function get container() : §?!;§
      {
         return this.§?>§;
      }
      
      public function get §"!§() : Boolean
      {
         return this.§ !8§;
      }
      
      public function set §"!§(param1:Boolean) : void
      {
         this.§ !8§ = param1;
      }
      
      public function set §,A§(param1:Boolean) : void
      {
         this.§,p§ = param1;
      }
      
      public function get §5!'§() : Boolean
      {
         return this.§%! §;
      }
      
      public function set §5!'§(param1:Boolean) : void
      {
         this.§%! § = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §`b§(param1:b2FilterData) : void
      {
         if(this.§&!D§)
         {
            this.§&!D§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§2!2§.§%e§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§7U§)
         {
            this.§7U§.DestroyBody(this.§]d§());
            this.§7U§ = null;
         }
         this.§>b§.dispose();
         if(this.§8!!§)
         {
            this.§8!!§.dispose();
            this.§8!!§ = null;
         }
         this.§&!D§ = null;
         this.§&Q§ = null;
         this.§2!2§ = null;
      }
      
      public function §@;§(param1:Number) : void
      {
         this.§]d§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §2c§() : Number
      {
         return (360 - this.§]d§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §5!@§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§]d§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§1Z§();
         }
         if(param3)
         {
            this.§8o§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§&!D§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§]d§().GetPosition().x >= param3 && this.§]d§().GetPosition().x <= param4 && this.§]d§().GetPosition().y >= param1 && this.§]d§().GetPosition().y <= param2;
      }
      
      public function §=! §(param1:b2Vec2) : void
      {
         this.§&Q§ = param1;
      }
      
      public function §]!,§() : void
      {
         if(this.§&Q§)
         {
            this.§5!@§(this.§&Q§,false);
            this.§&Q§ = null;
         }
      }
      
      public function §1Z§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§]d§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§]d§().SetAngularVelocity(0);
         }
         else
         {
            this.§]d§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §8o§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§]d§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§@;§(_loc2_);
      }
      
      public function §,! §(param1:Number) : void
      {
         this.§]d§().SetAngularVelocity(param1);
      }
      
      public function §]d§() : b2Body
      {
         if(this.§&!D§ != null)
         {
            return this.§&!D§.GetBody();
         }
         return null;
      }
      
      public function §06§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§]d§().GetPosition().x = this.mX * §^]§.§ u§;
         this.§]d§().GetPosition().y = this.mY * §^]§.§ u§;
      }
      
      public function §,K§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§??§)
         {
            _loc3_ = true;
            this.§??§ = false;
         }
         if(this.updateSpecialAnimation(param2))
         {
            _loc3_ = true;
         }
         if(this.updateFlyingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(this.updateScreamingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(this.updateBlinkingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(_loc3_)
         {
            this.§>b§.§0X§();
         }
         if(this.§^!!§ > 1 && this.§>b§.§8!B§)
         {
            _loc4_ = 4 + (this.§>b§.§8!B§.blurX - 4 + param2 / 20) % 28;
            this.§>b§.§8!B§.blurX = _loc4_;
            this.§>b§.§8!B§.blurY = _loc4_;
         }
         this.§>b§.§[`§(param2);
         if(§@&§)
         {
            this.§+m§(param1);
         }
         else
         {
            this.§&?§ = this.§'!E§;
            this.mX = this.§<! §;
            this.mY = this.§8j§;
         }
         this.§8!!§.x = Math.round(this.mX);
         this.§8!!§.y = Math.round(this.mY);
         this.§8!!§.rotation = this.§&?§ / 180 * Math.PI;
      }
      
      public function §1Q§() : void
      {
         var _loc1_:Number = this.§]d§().GetPosition().x;
         var _loc2_:Number = this.§]d§().GetPosition().y;
         this.§-"§ = this.§'!E§;
         this.§=!<§ = this.§<! §;
         this.§3E§ = this.§8j§;
         this.§'!E§ = this.§]d§().GetAngle() * (180 / Math.PI) % 360;
         this.§<! § = _loc1_ / §^]§.§ u§;
         this.§8j§ = _loc2_ / §^]§.§ u§;
      }
      
      protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §+m§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §@M§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§?>§.§]!9§.§@R§.§"y§ * 1000;
         }
         param1 *= -1;
         if(this.§<! § == this.§=!<§ || param1 == 0)
         {
            this.§=!#§ = 0;
            this.mX = this.§<! §;
         }
         else
         {
            this.§=!#§ = param1 * (this.§=!<§ - this.§<! §) / param2;
            this.mX = this.§<! § + this.§=!#§;
         }
         if(this.§8j§ == this.§3E§ || param1 == 0)
         {
            this.§&+§ = 0;
            this.mY = this.§8j§;
         }
         else
         {
            this.§&+§ = param1 * (this.§3E§ - this.§8j§) / param2;
            this.mY = this.§8j§ + this.§&+§;
         }
         if(this.§'!E§ == this.§-"§ || param1 == 0)
         {
            this.§&?§ = this.§'!E§;
         }
         else if(this.§-"§ > this.§'!E§ && this.§-"§ - this.§'!E§ <= 180)
         {
            this.§&?§ = this.§'!E§ + param1 * (this.§-"§ - this.§'!E§) / param2;
         }
         else if(this.§-"§ > this.§'!E§ && this.§-"§ - this.§'!E§ > 180)
         {
            this.§&?§ = this.§'!E§ + param1 * (this.§-"§ - 360 - this.§'!E§) / param2;
         }
         else if(this.§-"§ < this.§'!E§ && this.§'!E§ - this.§-"§ <= 180)
         {
            this.§&?§ = this.§'!E§ + param1 * (this.§-"§ - this.§'!E§) / param2;
         }
         else if(this.§-"§ < this.§'!E§ && this.§'!E§ - this.§-"§ > 180)
         {
            this.§&?§ = this.§'!E§ + param1 * (this.§-"§ + 360 - this.§'!E§) / param2;
         }
      }
      
      public function get §7h§() : Point
      {
         if(!§@&§)
         {
         }
         return null;
      }
      
      public function §^C§() : Boolean
      {
         return this.§8V§ == §9n§.§@!8§ || this.§8V§ == §9n§.§7L§;
      }
      
      public function §6D§() : Boolean
      {
         return this.§8V§ == §9n§.§<d§;
      }
      
      public function §6-§() : Boolean
      {
         return this.§8V§ == §9n§.§>!7§;
      }
      
      public function §8p§() : Boolean
      {
         return this.§8V§ == §9n§.§7L§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§8V§ == §9n§.§return§;
      }
      
      public function isGround() : Boolean
      {
         return this.§8V§ == §9n§.§9?§;
      }
      
      public function §,&§() : Boolean
      {
         return this.§8V§ == §9n§.§[P§;
      }
      
      public function §7n§() : Boolean
      {
         return this.§8V§ == §9n§.§`!&§;
      }
      
      public function §,z§() : Boolean
      {
         if(this.§"]§ == "MISC_EXPLOSIVE_TNT" || this.§"]§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function § +§() : Boolean
      {
         return (this.§6D§() || this.§,&§() || this.§7n§()) && !this.§5!'§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §>u§() : Number
      {
         return Number(Math.sqrt(this.§]d§().GetLinearVelocity().x * this.§]d§().GetLinearVelocity().x + this.§]d§().GetLinearVelocity().y * this.§]d§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§6-§())
         {
            return this.§`h§;
         }
         if(!this.§?>§.§'!&§())
         {
            return this.§`h§;
         }
         if(this.§1k§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§0Z§(§`P§.§6k§);
            }
            else if(param1 > 12)
            {
               this.§0Z§(§`P§.§9r§);
            }
            else if(param1 > 3)
            {
               this.§0Z§(§`P§.§%f§);
            }
            return this.§`h§;
         }
         if(param1 <= this.§1k§)
         {
            if(param1 >= this.§1k§ / 2)
            {
               this.§0Z§(§`P§.§%f§);
            }
            if(this.§^C§() && this.§`h§ == this.§'R§)
            {
               this.§`h§ = this.§'R§ - 1;
            }
            return this.§`h§;
         }
         param1 -= this.§1k§;
         if(param2 && this.§ +§())
         {
            _loc7_ = Math.min(this.§`h§,int(param1));
            _loc8_ = §^]§.§><§.getValue() * _loc7_;
            this.§?>§.§]!9§.addScore(_loc8_,§%!+§.§+]§,this.§`h§ > param1 && param3,this.§]d§().GetPosition().x,this.§]d§().GetPosition().y,§-V§.§-!2§(this.§"]§));
         }
         if(!(param5 && this.§,p§))
         {
            this.§`h§ -= param1;
         }
         if(this.§`h§ < 1 && this.§^C§())
         {
            this.§`h§ = 1;
         }
         if(this.§`h§ < 1)
         {
            this.§`h§ = 0;
            §"e§.§@#§(§`P§.§6k§,this.§2!2§.§8"§,"ChannelDestroyed");
         }
         else
         {
            this.§0Z§(§`P§.§9r§);
            this.addDamageParticles(this.§?>§.§]!9§.particles,param1);
         }
         this.§>b§.setDamagedFrame();
         return this.§`h§;
      }
      
      public function §0Z§(param1:int) : void
      {
         §"e§.§@#§(param1,this.§2!2§.§8"§);
      }
      
      public function §?7§(param1:String) : Number
      {
         return this.§2!2§.material.§6m§(param1) * this.§^!!§;
      }
      
      public function §;c§(param1:String) : Number
      {
         return this.§2!2§.material.§-`§(param1);
      }
      
      public function §`u§() : String
      {
         return this.§2!2§.material.mName;
      }
      
      public function §[2§() : Number
      {
         return this.§2!2§.§`<§();
      }
      
      public function § e§() : int
      {
         return this.§2!2§.§0P§();
      }
      
      public function §-G§() : Boolean
      {
         return this.§]d§().IsAwake() && (this.§^C§() && this.§`h§ == this.§'R§ || Math.abs(this.§]d§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§]d§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§]d§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §&c§() : Boolean
      {
         return !this.§]d§().IsAwake();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§]d§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§]d§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§]d§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §2S§(param1:Number = 3) : void
      {
         this.§^!!§ = param1;
         if(this.§^!!§ > 1)
         {
            this.§>b§.§1!%§();
         }
         else
         {
            this.§>b§.§8!B§ = null;
         }
      }
      
      public function §7V§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§2!2§.§%e§() == §^^§.§3i§)
         {
            _loc2_ = this.§>b§.mW * this.§>b§.mH * (§^]§.§ u§ * §^]§.§ u§);
         }
         else
         {
            _loc2_ = this.§]d§().GetMass() / this.§&!D§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§`v§();
            }
            _loc2_ /= this.§@]§ * this.§@]§;
         }
         return _loc2_;
      }
      
      public function §`v§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§>b§.§6F§ - 1) / 10);
      }
      
      public function §3L§(param1:Number) : void
      {
         var _loc2_:Number = this.§]d§().GetLinearVelocity().x;
         var _loc3_:Number = this.§]d§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§]d§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?!;§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§2x§) : void
      {
      }
      
      public function addDamageParticles(param1:§2x§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §^J§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§]d§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§]d§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§2c§();
            _loc3_ = (_loc3_ + 360) % 360;
            _loc4_ = 0;
            if(param1 != 0)
            {
               _loc4_ = _loc3_ % param1;
            }
            if(_loc4_ < param1 / 2)
            {
               _loc3_ -= _loc4_;
            }
            else
            {
               _loc3_ += param1 - _loc4_;
            }
            this.§@;§(_loc3_);
         }
         this.§@;§(this.§2c§() + param1);
      }
      
      public function § c§(param1:Number) : void
      {
         var _loc2_:Number = §7$§(this.§]d§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §'p§(_loc2_);
         this.§]d§().SetAngle(_loc2_);
      }
      
      public function §@!C§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§]d§().GetPosition().Copy();
         var _loc4_:Number = _loc3_.x - param2.x;
         var _loc5_:Number = _loc3_.y - param2.y;
         if(_loc4_ == 0 && _loc5_ == 0)
         {
            return;
         }
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = _loc4_ / _loc5_;
         var _loc8_:Number = Math.atan(_loc7_) * 180 / Math.PI;
         if(_loc5_ < 0)
         {
            _loc8_ += 180;
         }
         var _loc9_:Number;
         var _loc10_:Number = (_loc9_ = _loc8_ + param1) * Math.PI / 180;
         var _loc11_:Number = Math.sin(_loc10_) * _loc6_;
         var _loc12_:Number = Math.cos(_loc10_) * _loc6_;
         var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
         this.§]d§().SetPosition(_loc13_);
      }
   }
}
