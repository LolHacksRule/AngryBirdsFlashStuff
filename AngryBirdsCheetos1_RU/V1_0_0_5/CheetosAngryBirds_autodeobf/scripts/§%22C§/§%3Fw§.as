package §"C§
{
   import § !5§.b2Settings;
   import §!4§.§=!Z§;
   import §%b§.§0!Z§;
   import §%b§.§?0§;
   import §+,§.b2Vec2;
   import §-!$§.b2PolygonShape;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §;C§.§5!O§;
   import §?!H§.§!h§;
   import §?!H§.§+e§;
   import §?!H§.§=!D§;
   import §?!H§.§?U§;
   import §?!H§.§]!H§;
   import §[W§.b2Body;
   import §[W§.b2BodyDef;
   import §[W§.b2FilterData;
   import §[W§.b2Fixture;
   import §[W§.b2World;
   import flash.geom.Point;
   import §null §.Sprite;
   
   public class §?w§
   {
      
      public static const §-!2§:uint = 1 << 1;
      
      public static const §!!J§:uint = 1 << 2;
      
      public static const §`D§:uint = 1 << 3;
      
      public static const §=!&§:uint = 1 << 4;
      
      public static const §>!"§:Boolean = true;
      
      public static const §!d§:Number = 5;
      
      public static const §?!L§:Number = 10;
       
      
      private var §==§:String;
      
      private var §3!!§:int;
      
      private var §7$§:int;
      
      public var §]!W§:String;
      
      public var §<l§:int;
      
      private var §5u§:§]!H§;
      
      private var §5X§:§7s§;
      
      private var mWorld:b2World;
      
      protected var §"&§:String = "";
      
      protected var §1N§:int = 1;
      
      private var §`!L§:b2Fixture;
      
      private var §`K§:b2Body;
      
      private var §2!&§:b2Vec2;
      
      public var §;&§:Number;
      
      public var §-#§:Number;
      
      private var § Q§:Number;
      
      private var §[!3§:Boolean = false;
      
      private var §3P§:Number;
      
      private var §8W§:Number;
      
      private var §;!F§:Number;
      
      private var §%7§:Number;
      
      private var §0!C§:Number;
      
      private var §0$§:Number;
      
      public var §8!Q§:Number = 1;
      
      private var §+!#§:Boolean = false;
      
      public var §5![§:Number = 0;
      
      public var §,e§:Number = 0;
      
      protected var §!t§:Boolean = false;
      
      public var §9X§:§]y§;
      
      private var §&!C§:Sprite;
      
      private var §+!L§:Number = 0;
      
      private var §!;§:Number = 0;
      
      private var §71§:Number = 0;
      
      private var §-§:Number = 1.0;
      
      private var §-!8§:Boolean = false;
      
      protected var §<!&§:§?f§;
      
      private var §,B§:Boolean = true;
      
      public function §?w§(param1:§7s§, param2:Sprite, param3:b2World, param4:§0!Z§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§]!W§ = param6;
         this.§5u§ = §!h§.§2M§(param6);
         this.§5X§ = param1;
         this.§&!C§ = param2;
         this.§-§ = param10;
         this.§-!8§ = param11;
         this.§3!!§ = param5;
         this.§<l§ = this.§5u§.§<l§;
         this.§7$§ = this.§5u§.§#S§();
         this.§<!&§ = new §?f§(§!d§,§?!L§);
         this.§9X§ = new §]y§(this,param2,param4);
         if(!this.§9X§.§=@§(param1.§]!8§.§%!P§))
         {
            this.§9X§.§%^§(this.§7$§,this.§5u§.§6!P§(),this.§5u§.§=d§() / §0!Z§.§+n§,this.§5u§.§+q§() / §0!Z§.§+n§);
         }
         this.§9X§.§,T§(this.§7$§ == §?U§.§"H§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§`K§ = this.mWorld.§?s§(_loc12_);
         this.§`K§.§0!R§(this);
         if(this.§7$§ == §?U§.§9Z§)
         {
            _loc14_ = b2PolygonShape.§6!U§(this.§5u§.shape.§`!S§ * param10,this.§5u§.shape.§]n§ * param10);
            this.§`!L§ = this.§`K§.CreateFixture2(_loc14_,this.§5u§.§5!G§());
         }
         else if(this.§7$§ == §?U§.§"H§ || this.§7$§ == §?U§.§&u§)
         {
            this.§`!L§ = this.§`K§.CreateFixture2(this.§5u§.shape.§;@§(param10),this.§5u§.§5!G§());
         }
         this.§`!L§.§9T§(this.§5u§.§'b§());
         this.§`!L§.§>,§(this.§5u§.§,! §());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§<-§())
         {
            _loc13_.§+Q§ = §-!2§;
            _loc13_.§!v§ = 65535 & ~§!!J§;
         }
         else if(this.§]!W§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§]!W§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§+Q§ = §!!J§;
            _loc13_.§!v§ = 65535 & ~§-!2§;
         }
         this.§`!L§.§8r§(_loc13_);
         this.§ Q§ = this.§5u§.§6!%§();
         if(this.§5u§.§-#§ > 0)
         {
            this.§;&§ = this.§-#§ = this.§5u§.§-#§;
         }
         else
         {
            this.§;&§ = this.§-#§ = Math.round(this.§?Q§(true) * this.§5u§.§1!E§());
            if(this.§;&§ < 1)
            {
               this.§;&§ = this.§-#§ = 1;
            }
         }
         if(this.§5u§.§<l§ == §]!H§.§ !-§)
         {
            this.§&!C§.visible = false;
         }
         else
         {
            this.§9X§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§-I§(param9);
         }
         this.§@%§();
         this.§%!K§(0,1);
         this.§9X§.§#!L§(this.§5u§.shape);
      }
      
      public static function §[O§(param1:int, param2:§=!D§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§[D§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§`!J§;
            }
            §5!O§.§7!5§(_loc4_,param3);
         }
      }
      
      public static function §@4§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §2b§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§&!C§;
      }
      
      public function get x() : Number
      {
         return this.§+!L§;
      }
      
      public function get y() : Number
      {
         return this.§!;§;
      }
      
      public function get scale() : Number
      {
         return this.§-§;
      }
      
      public function get front() : Boolean
      {
         return this.§-!8§;
      }
      
      public function get §"!Z§() : Number
      {
         return this.§`K§.GetPosition().x;
      }
      
      public function get §]!=§() : Number
      {
         return this.§`K§.GetPosition().y;
      }
      
      public function get §;M§() : §]!H§
      {
         return this.§5u§;
      }
      
      public function get §^o§() : Boolean
      {
         return this.§ Q§ >= 0;
      }
      
      public function get container() : §7s§
      {
         return this.§5X§;
      }
      
      public function get §2!G§() : Boolean
      {
         return this.§,B§;
      }
      
      public function set §2!G§(param1:Boolean) : void
      {
         this.§,B§ = param1;
      }
      
      public function set §@9§(param1:Boolean) : void
      {
         this.§[!3§ = param1;
      }
      
      public function set §+%§(param1:uint) : void
      {
         this.§<!&§.§+%§ = param1;
      }
      
      public function get §+%§() : uint
      {
         return this.§<!&§.§+%§;
      }
      
      public function get §]7§() : Boolean
      {
         return this.§+!#§;
      }
      
      public function set §]7§(param1:Boolean) : void
      {
         this.§+!#§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function get uniqueID() : String
      {
         return this.§==§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§==§ = param1;
      }
      
      public function §>Y§(param1:b2FilterData) : void
      {
         if(this.§`!L§)
         {
            this.§`!L§.§8r§(param1);
         }
      }
      
      protected function §2T§(param1:String) : int
      {
         return §=!F§.§2T§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§5u§.§[!]§();
         _loc3_.§""§ = true;
         _loc3_.§2!1§ = true;
         _loc3_.§ _§ = true;
         _loc3_.§11§ = 1;
         _loc3_.§"!E§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§13§(this.§?@§());
            this.mWorld = null;
         }
         this.§9X§.dispose();
         if(this.§&!C§)
         {
            this.§&!C§.dispose();
            this.§&!C§ = null;
         }
         this.§`!L§ = null;
         this.§2!&§ = null;
         this.§5u§ = null;
      }
      
      public function §-I§(param1:Number) : void
      {
         this.§?@§().§&!B§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function § !^§() : Number
      {
         return (360 - this.§?@§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function § I§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§?@§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§!!<§();
         }
         if(param3)
         {
            this.§=5§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§`!L§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?@§().GetPosition().x >= param3 && this.§?@§().GetPosition().x <= param4 && this.§?@§().GetPosition().y >= param1 && this.§?@§().GetPosition().y <= param2;
      }
      
      public function §8"§(param1:b2Vec2) : void
      {
         this.§2!&§ = param1;
      }
      
      public function §<L§() : void
      {
         if(this.§2!&§)
         {
            this.§ I§(this.§2!&§,false);
            this.§2!&§ = null;
         }
      }
      
      public function §!!<§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?@§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§?@§().§5p§(0);
         }
         else
         {
            this.§?@§().§5p§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §=5§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?@§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§-I§(_loc2_);
      }
      
      public function §@!?§(param1:Number) : void
      {
         this.§?@§().§5p§(param1);
      }
      
      public function §?@§() : b2Body
      {
         if(this.§`!L§ != null)
         {
            return this.§`!L§.GetBody();
         }
         return null;
      }
      
      public function §9!9§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§+!L§ = param1;
            this.§!;§ = param2;
         }
         this.§?@§().GetPosition().x = this.§+!L§ * §0!Z§.§+n§;
         this.§?@§().GetPosition().y = this.§!;§ * §0!Z§.§+n§;
      }
      
      public function §%!K§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§!t§)
         {
            _loc3_ = true;
            this.§!t§ = false;
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
            this.§9X§.§2!Y§();
         }
         if(this.§8!Q§ > 1 && this.§9X§.§;x§)
         {
            _loc4_ = 4 + (this.§9X§.§;x§.blurX - 4 + param2 / 20) % 28;
            this.§9X§.§;x§.blurX = _loc4_;
            this.§9X§.§;x§.blurY = _loc4_;
         }
         this.§9X§.§0&§(param2);
         if(§>!"§)
         {
            this.§%X§(param1);
         }
         else
         {
            this.§71§ = this.§;!F§;
            this.§+!L§ = this.§3P§;
            this.§!;§ = this.§8W§;
         }
         this.§&!C§.x = Math.round(this.§+!L§);
         this.§&!C§.y = Math.round(this.§!;§);
         this.§&!C§.rotation = this.§71§ / 180 * Math.PI;
      }
      
      public function §@%§() : void
      {
         var _loc1_:Number = this.§?@§().GetPosition().x;
         var _loc2_:Number = this.§?@§().GetPosition().y;
         this.§0$§ = this.§;!F§;
         this.§%7§ = this.§3P§;
         this.§0!C§ = this.§8W§;
         this.§;!F§ = this.§?@§().GetAngle() * (180 / Math.PI) % 360;
         this.§3P§ = _loc1_ / §0!Z§.§+n§;
         this.§8W§ = _loc2_ / §0!Z§.§+n§;
         this.§<!&§.§+L§();
         this.§<!&§.§5I§(this.§?@§());
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
      
      public function §%X§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §=!Z§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§5X§.§]!8§.mLevelEngine.§4!X§ * 1000;
         }
         param1 *= -1;
         if(this.§3P§ == this.§%7§ || param1 == 0)
         {
            this.§5![§ = 0;
            this.§+!L§ = this.§3P§;
         }
         else
         {
            this.§5![§ = param1 * (this.§%7§ - this.§3P§) / param2;
            this.§+!L§ = this.§3P§ + this.§5![§;
         }
         if(this.§8W§ == this.§0!C§ || param1 == 0)
         {
            this.§,e§ = 0;
            this.§!;§ = this.§8W§;
         }
         else
         {
            this.§,e§ = param1 * (this.§0!C§ - this.§8W§) / param2;
            this.§!;§ = this.§8W§ + this.§,e§;
         }
         if(this.§;!F§ == this.§0$§ || param1 == 0)
         {
            this.§71§ = this.§;!F§;
         }
         else if(this.§0$§ > this.§;!F§ && this.§0$§ - this.§;!F§ <= 180)
         {
            this.§71§ = this.§;!F§ + param1 * (this.§0$§ - this.§;!F§) / param2;
         }
         else if(this.§0$§ > this.§;!F§ && this.§0$§ - this.§;!F§ > 180)
         {
            this.§71§ = this.§;!F§ + param1 * (this.§0$§ - 360 - this.§;!F§) / param2;
         }
         else if(this.§0$§ < this.§;!F§ && this.§;!F§ - this.§0$§ <= 180)
         {
            this.§71§ = this.§;!F§ + param1 * (this.§0$§ - this.§;!F§) / param2;
         }
         else if(this.§0$§ < this.§;!F§ && this.§;!F§ - this.§0$§ > 180)
         {
            this.§71§ = this.§;!F§ + param1 * (this.§0$§ + 360 - this.§;!F§) / param2;
         }
      }
      
      public function get §8!-§() : Point
      {
         if(!§>!"§)
         {
         }
         return null;
      }
      
      public function §<-§() : Boolean
      {
         return this.§<l§ == §]!H§.§=!$§ || this.§<l§ == §]!H§.§3]§;
      }
      
      public function §4V§() : Boolean
      {
         return this.§<l§ == §]!H§.§7!?§;
      }
      
      public function §?!0§() : Boolean
      {
         return this.§<l§ == §]!H§.§?P§;
      }
      
      public function §'&§() : Boolean
      {
         return this.§<l§ == §]!H§.§3]§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§<l§ == §]!H§.§'"§;
      }
      
      public function isGround() : Boolean
      {
         return this.§<l§ == §]!H§.§ !-§;
      }
      
      public function §8E§() : Boolean
      {
         return this.§<l§ == §]!H§.§6!K§;
      }
      
      public function §#!<§() : Boolean
      {
         return this.§<l§ == §]!H§.§>!;§;
      }
      
      public function §8!E§() : Boolean
      {
         if(this.§]!W§ == "MISC_EXPLOSIVE_TNT" || this.§]!W§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §-u§() : Boolean
      {
         return (this.§4V§() || this.§8E§() || this.§#!<§()) && !this.§]7§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §7!Z§() : Number
      {
         return Number(Math.sqrt(this.§?@§().GetLinearVelocity().x * this.§?@§().GetLinearVelocity().x + this.§?@§().GetLinearVelocity().y * this.§?@§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§?!0§())
         {
            return this.§;&§;
         }
         if(!this.§5X§.§,t§())
         {
            return this.§;&§;
         }
         if(this.§ Q§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§1!A§(§=!D§.§@y§);
            }
            else if(param1 > 12)
            {
               this.§1!A§(§=!D§.§'!5§);
            }
            else if(param1 > 3)
            {
               this.§1!A§(§=!D§.§^;§);
            }
            return this.§;&§;
         }
         if(param1 <= this.§ Q§)
         {
            if(param1 >= this.§ Q§ / 2)
            {
               this.§1!A§(§=!D§.§^;§);
            }
            if(this.§<-§() && this.§;&§ == this.§-#§)
            {
               this.§;&§ = this.§-#§ - 1;
            }
            return this.§;&§;
         }
         param1 -= this.§ Q§;
         if(param2 && this.§-u§())
         {
            _loc7_ = Math.min(this.§;&§,int(param1));
            _loc8_ = §0!Z§.§76§.getValue() * _loc7_;
            this.§5X§.§]!8§.addScore(_loc8_,§?0§.§`!2§,this.§;&§ > param1 && param3,this.§?@§().GetPosition().x,this.§?@§().GetPosition().y,§=!F§.§4#§(this.§]!W§));
         }
         if(!(param5 && this.§[!3§))
         {
            this.§;&§ -= param1;
         }
         if(this.§;&§ < 1 && this.§<-§())
         {
            this.§;&§ = 1;
         }
         if(this.§;&§ < 1)
         {
            this.§;&§ = 0;
            §?w§.§[O§(§=!D§.§@y§,this.§5u§.§[x§,"ChannelDestroyed");
         }
         else
         {
            this.§1!A§(§=!D§.§'!5§);
            this.addDamageParticles(this.§5X§.§]!8§.particles,param1);
         }
         this.§9X§.setDamagedFrame();
         return this.§;&§;
      }
      
      public function §1!A§(param1:int) : void
      {
         §?w§.§[O§(param1,this.§5u§.§[x§);
      }
      
      public function §4!#§(param1:String) : Number
      {
         return this.§5u§.material.§&v§(param1) * this.§8!Q§;
      }
      
      public function §4w§(param1:String) : Number
      {
         return this.§5u§.material.§=4§(param1);
      }
      
      public function § !$§() : String
      {
         return this.§5u§.material.mName;
      }
      
      public function §3&§() : Number
      {
         return this.§5u§.§1!E§();
      }
      
      public function §'!O§() : int
      {
         return this.§5u§.§4K§();
      }
      
      public function §`!3§() : Boolean
      {
         return this.§?@§().IsAwake() && (this.§<-§() && this.§;&§ == this.§-#§ || Math.abs(this.§?@§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?@§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?@§().§"h§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §]!;§() : Boolean
      {
         if(!this.§?@§().IsAwake())
         {
            return true;
         }
         return !this.§"!!§();
      }
      
      protected function §"!!§() : Boolean
      {
         return this.§<!&§.§"!!§();
      }
      
      public function §]!X§(param1:Number = 3) : void
      {
         this.§8!Q§ = param1;
         if(this.§8!Q§ > 1)
         {
            this.§9X§.§<u§();
         }
         else
         {
            this.§9X§.§;x§ = null;
         }
      }
      
      public function §?Q§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§5u§.§[!]§() == §+e§.§!5§)
         {
            _loc2_ = this.§9X§.mW * this.§9X§.mH * (§0!Z§.§+n§ * §0!Z§.§+n§);
         }
         else
         {
            _loc2_ = this.§?@§().GetMass() / this.§`!L§.§^?§();
            if(param1)
            {
               _loc2_ *= this.§@!B§();
            }
            _loc2_ /= this.§-§ * this.§-§;
         }
         return _loc2_;
      }
      
      public function §@!B§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§9X§.§6!]§ - 1) / 10);
      }
      
      public function §^v§(param1:Number) : void
      {
         var _loc2_:Number = this.§?@§().GetLinearVelocity().x;
         var _loc3_:Number = this.§?@§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§?@§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§7s§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§;m§) : void
      {
      }
      
      public function addDamageParticles(param1:§;m§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §'l§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§?@§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§?@§().§>!P§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§ !^§()) + 360) % 360;
            _loc4_ = Math.round(_loc4_ / 22.5) * 22.5;
            _loc5_ = 0;
            if(param1 != 0)
            {
               _loc5_ = _loc4_ % param1;
            }
            if(_loc5_ < param1 / 2)
            {
               _loc4_ -= _loc5_;
            }
            else
            {
               _loc4_ += param1 - _loc5_;
            }
            this.§-I§(_loc4_);
         }
         var _loc3_:Number = this.§ !^§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§-I§(_loc3_);
      }
      
      public function §,!%§(param1:Number) : void
      {
         var _loc2_:Number = §@4§(this.§?@§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §2b§(_loc2_);
         this.§?@§().§&!B§(_loc2_);
      }
      
      public function §&F§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§?@§().GetPosition().Copy();
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
         this.§?@§().§>!P§(_loc13_);
      }
   }
}
