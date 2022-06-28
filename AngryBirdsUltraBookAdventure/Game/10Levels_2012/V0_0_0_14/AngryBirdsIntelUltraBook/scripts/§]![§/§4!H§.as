package §]![§
{
   import § D§.b2Body;
   import § D§.b2BodyDef;
   import § D§.b2FilterData;
   import § D§.b2Fixture;
   import § D§.b2World;
   import §+&§.§-!7§;
   import §+&§.§;!8§;
   import §0!'§.b2PolygonShape;
   import §1!T§.§6!H§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   import §9E§.Sprite;
   import §;u§.b2Settings;
   import §>o§.§"!e§;
   import §>o§.§'y§;
   import §>o§.§+!4§;
   import §>o§.§0!N§;
   import §>o§.§8!4§;
   import flash.geom.Point;
   
   public class §4!H§
   {
      
      public static const §"!q§:uint = 1 << 1;
      
      public static const §1!M§:uint = 1 << 2;
      
      public static const §<!g§:uint = 1 << 3;
      
      public static const §8!;§:uint = 1 << 4;
      
      public static const §,!L§:Boolean = true;
       
      
      private var §["§:String;
      
      private var §>!t§:int;
      
      private var §]!A§:int;
      
      public var §@!p§:String;
      
      public var § W§:int;
      
      private var §9!>§:§8!4§;
      
      private var §5M§:§[?§;
      
      private var mWorld:b2World;
      
      protected var §`r§:String = "";
      
      protected var §`!b§:int = 1;
      
      private var §]!B§:b2Fixture;
      
      private var §[;§:b2Body;
      
      private var §1!4§:b2Vec2;
      
      public var §%,§:Number;
      
      public var §0K§:Number;
      
      private var § !>§:Number;
      
      private var §2!Y§:Boolean = false;
      
      private var §!Y§:Number;
      
      private var §5`§:Number;
      
      private var §>![§:Number;
      
      private var §%n§:Number;
      
      private var §#!y§:Number;
      
      private var §`I§:Number;
      
      public var §-!9§:Number = 1;
      
      private var §#r§:Boolean = false;
      
      public var §"!s§:Number = 0;
      
      public var §5!2§:Number = 0;
      
      protected var §%m§:Boolean = false;
      
      public var §[!"§:§+s§;
      
      private var §8!9§:Sprite;
      
      private var §;!@§:Number = 0;
      
      private var §3L§:Number = 0;
      
      private var §3!f§:Number = 0;
      
      private var §!+§:Number = 1.0;
      
      private var § >§:Boolean = false;
      
      private var §4e§:Vector.<Vector.<Number>>;
      
      private var §4S§:int = 10;
      
      private var §5b§:Boolean = true;
      
      public function §4!H§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§4e§ = new Vector.<Vector.<Number>>();
         super();
         this.§@!p§ = param6;
         this.§9!>§ = §+!4§.§ !`§(param6);
         this.§5M§ = param1;
         this.§8!9§ = param2;
         this.§!+§ = param10;
         this.§ >§ = param11;
         this.§>!t§ = param5;
         this.§ W§ = this.§9!>§.§ W§;
         this.§]!A§ = this.§9!>§.§2g§();
         this.§4e§[0] = new Vector.<Number>();
         this.§4e§[1] = new Vector.<Number>();
         this.§4e§[2] = new Vector.<Number>();
         this.§[!"§ = new §+s§(this,param2,param4);
         if(!this.§[!"§.§7!2§(param1.§+!X§.animationManager))
         {
            this.§[!"§.§>m§(this.§]!A§,this.§9!>§.§6!V§(),this.§9!>§.§'!"§() / §-!7§.§8!r§,this.§9!>§.§3!9§() / §-!7§.§8!r§);
         }
         this.§[!"§.§2l§(this.§]!A§ == §0!N§.§0M§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§[;§ = this.mWorld.§?!I§(_loc12_);
         this.§[;§.§ A§(this);
         if(this.§]!A§ == §0!N§.§>6§)
         {
            _loc14_ = b2PolygonShape.§+!>§(this.§9!>§.shape.§>!D§ * param10,this.§9!>§.shape.§7!3§ * param10);
            this.§]!B§ = this.§[;§.CreateFixture2(_loc14_,this.§9!>§.§'a§());
         }
         else if(this.§]!A§ == §0!N§.§0M§ || this.§]!A§ == §0!N§.§#!`§)
         {
            this.§]!B§ = this.§[;§.CreateFixture2(this.§9!>§.shape.§ !o§(param10),this.§9!>§.§'a§());
         }
         this.§]!B§.§>!^§(this.§9!>§.§;!<§());
         this.§]!B§.§9D§(this.§9!>§.§#h§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§<=§())
         {
            _loc13_.§ H§ = §"!q§;
            _loc13_.§,9§ = 65535 & ~§1!M§;
         }
         else if(this.§@!p§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§@!p§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§ H§ = §1!M§;
            _loc13_.§,9§ = 65535 & ~§"!q§;
         }
         this.§]!B§.§]_§(_loc13_);
         this.§ !>§ = this.§9!>§.§3!T§();
         if(this.§9!>§.§0K§ > 0)
         {
            this.§%,§ = this.§0K§ = this.§9!>§.§0K§;
         }
         else
         {
            this.§%,§ = this.§0K§ = Math.round(this.§=U§(true) * this.§9!>§.§`!Q§());
            if(this.§%,§ < 1)
            {
               this.§%,§ = this.§0K§ = 1;
            }
         }
         if(this.§9!>§.§ W§ == §8!4§.§`!N§)
         {
            this.§8!9§.visible = false;
         }
         else
         {
            this.§[!"§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§3!7§(param9);
         }
         this.override();
         this.§4W§(0,1);
         this.§[!"§.§@j§(this.§9!>§.shape);
      }
      
      public static function §@,§(param1:int, param2:§'y§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§"%§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§+C§;
            }
            §6!H§.§;!M§(_loc4_,param3);
         }
      }
      
      public static function §6L§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §@S§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!9§;
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function get scale() : Number
      {
         return this.§!+§;
      }
      
      public function get front() : Boolean
      {
         return this.§ >§;
      }
      
      public function get §^K§() : Number
      {
         return this.§[;§.GetPosition().x;
      }
      
      public function get §!!L§() : Number
      {
         return this.§[;§.GetPosition().y;
      }
      
      public function get §&!'§() : §8!4§
      {
         return this.§9!>§;
      }
      
      public function get § !§() : Boolean
      {
         return this.§ !>§ >= 0;
      }
      
      protected function get §>&§() : §[?§
      {
         return this.§5M§;
      }
      
      public function get §#i§() : Boolean
      {
         return this.§5b§;
      }
      
      public function set §#i§(param1:Boolean) : void
      {
         this.§5b§ = param1;
      }
      
      public function set §"a§(param1:Boolean) : void
      {
         this.§2!Y§ = param1;
      }
      
      public function set §]s§(param1:uint) : void
      {
         this.§4S§ = param1;
      }
      
      public function get §]s§() : uint
      {
         return this.§4S§;
      }
      
      public function get §15§() : Boolean
      {
         return this.§#r§;
      }
      
      public function set §15§(param1:Boolean) : void
      {
         this.§#r§ = param1;
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
         return this.§["§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§["§ = param1;
      }
      
      public function §7!s§(param1:b2FilterData) : void
      {
         if(this.§]!B§)
         {
            this.§]!B§.§]_§(param1);
         }
      }
      
      protected function §5r§(param1:String) : int
      {
         return §6Q§.§5r§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§9!>§.§"5§();
         _loc3_.§+!&§ = true;
         _loc3_.§=r§ = true;
         _loc3_.§+!T§ = true;
         _loc3_.§"v§ = 1;
         _loc3_.§5!f§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§3!j§(this.§+$§());
            this.mWorld = null;
         }
         this.§[!"§.dispose();
         if(this.§8!9§)
         {
            this.§8!9§.dispose();
            this.§8!9§ = null;
         }
         this.§]!B§ = null;
         this.§1!4§ = null;
         this.§9!>§ = null;
      }
      
      public function §3!7§(param1:Number) : void
      {
         this.§+$§().§ !W§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §[!i§() : Number
      {
         return (360 - this.§+$§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §%!=§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§+$§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§%O§();
         }
         if(param3)
         {
            this.§?!s§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]!B§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§+$§().GetPosition().x >= param3 && this.§+$§().GetPosition().x <= param4 && this.§+$§().GetPosition().y >= param1 && this.§+$§().GetPosition().y <= param2;
      }
      
      public function §9§(param1:b2Vec2) : void
      {
         this.§1!4§ = param1;
      }
      
      public function §"!7§() : void
      {
         if(this.§1!4§)
         {
            this.§%!=§(this.§1!4§,false);
            this.§1!4§ = null;
         }
      }
      
      public function §%O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§+$§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§+$§().§09§(0);
         }
         else
         {
            this.§+$§().§09§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §?!s§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§+$§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§3!7§(_loc2_);
      }
      
      public function §!$§(param1:Number) : void
      {
         this.§+$§().§09§(param1);
      }
      
      public function §+$§() : b2Body
      {
         if(this.§]!B§ != null)
         {
            return this.§]!B§.GetBody();
         }
         return null;
      }
      
      public function §&!N§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§;!@§ = param1;
            this.§3L§ = param2;
         }
         this.§+$§().GetPosition().x = this.§;!@§ * §-!7§.§8!r§;
         this.§+$§().GetPosition().y = this.§3L§ * §-!7§.§8!r§;
      }
      
      public function §4W§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§%m§)
         {
            _loc3_ = true;
            this.§%m§ = false;
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
            this.§[!"§.§@F§();
         }
         if(this.§-!9§ > 1 && this.§[!"§.§ !Q§)
         {
            _loc4_ = 4 + (this.§[!"§.§ !Q§.blurX - 4 + param2 / 20) % 28;
            this.§[!"§.§ !Q§.blurX = _loc4_;
            this.§[!"§.§ !Q§.blurY = _loc4_;
         }
         this.§[!"§.§ ![§(param2);
         if(§,!L§)
         {
            this.§-k§(param1);
         }
         else
         {
            this.§3!f§ = this.§>![§;
            this.§;!@§ = this.§!Y§;
            this.§3L§ = this.§5`§;
         }
         this.§8!9§.x = Math.round(this.§;!@§);
         this.§8!9§.y = Math.round(this.§3L§);
         this.§8!9§.rotation = this.§3!f§ / 180 * Math.PI;
      }
      
      public function override() : void
      {
         var _loc1_:Number = this.§+$§().GetPosition().x;
         var _loc2_:Number = this.§+$§().GetPosition().y;
         this.§`I§ = this.§>![§;
         this.§%n§ = this.§!Y§;
         this.§#!y§ = this.§5`§;
         this.§>![§ = this.§+$§().GetAngle() * (180 / Math.PI) % 360;
         this.§!Y§ = _loc1_ / §-!7§.§8!r§;
         this.§5`§ = _loc2_ / §-!7§.§8!r§;
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
      
      public function §-k§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §[g§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§5M§.§+!X§.mLevelEngine.§"!w§ * 1000;
         }
         param1 *= -1;
         if(this.§!Y§ == this.§%n§ || param1 == 0)
         {
            this.§"!s§ = 0;
            this.§;!@§ = this.§!Y§;
         }
         else
         {
            this.§"!s§ = param1 * (this.§%n§ - this.§!Y§) / param2;
            this.§;!@§ = this.§!Y§ + this.§"!s§;
         }
         if(this.§5`§ == this.§#!y§ || param1 == 0)
         {
            this.§5!2§ = 0;
            this.§3L§ = this.§5`§;
         }
         else
         {
            this.§5!2§ = param1 * (this.§#!y§ - this.§5`§) / param2;
            this.§3L§ = this.§5`§ + this.§5!2§;
         }
         if(this.§>![§ == this.§`I§ || param1 == 0)
         {
            this.§3!f§ = this.§>![§;
         }
         else if(this.§`I§ > this.§>![§ && this.§`I§ - this.§>![§ <= 180)
         {
            this.§3!f§ = this.§>![§ + param1 * (this.§`I§ - this.§>![§) / param2;
         }
         else if(this.§`I§ > this.§>![§ && this.§`I§ - this.§>![§ > 180)
         {
            this.§3!f§ = this.§>![§ + param1 * (this.§`I§ - 360 - this.§>![§) / param2;
         }
         else if(this.§`I§ < this.§>![§ && this.§>![§ - this.§`I§ <= 180)
         {
            this.§3!f§ = this.§>![§ + param1 * (this.§`I§ - this.§>![§) / param2;
         }
         else if(this.§`I§ < this.§>![§ && this.§>![§ - this.§`I§ > 180)
         {
            this.§3!f§ = this.§>![§ + param1 * (this.§`I§ + 360 - this.§>![§) / param2;
         }
      }
      
      public function get §#!D§() : Point
      {
         if(!§,!L§)
         {
         }
         return null;
      }
      
      public function §<=§() : Boolean
      {
         return this.§ W§ == §8!4§.§0!1§ || this.§ W§ == §8!4§.§9!%§;
      }
      
      public function §'!e§() : Boolean
      {
         return this.§ W§ == §8!4§.§+!§;
      }
      
      public function §3!i§() : Boolean
      {
         return this.§ W§ == §8!4§.§%u§;
      }
      
      public function §=!P§() : Boolean
      {
         return this.§ W§ == §8!4§.§9!%§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§ W§ == §8!4§.§,!?§;
      }
      
      public function isGround() : Boolean
      {
         return this.§ W§ == §8!4§.§`!N§;
      }
      
      public function §'!#§() : Boolean
      {
         return this.§ W§ == §8!4§.§97§;
      }
      
      public function §[!<§() : Boolean
      {
         return this.§ W§ == §8!4§.§+!#§;
      }
      
      public function §=f§() : Boolean
      {
         if(this.§@!p§ == "MISC_EXPLOSIVE_TNT" || this.§@!p§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §8s§() : Boolean
      {
         return (this.§'!e§() || this.§'!#§() || this.§[!<§()) && !this.§15§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §7!e§() : Number
      {
         return Number(Math.sqrt(this.§+$§().GetLinearVelocity().x * this.§+$§().GetLinearVelocity().x + this.§+$§().GetLinearVelocity().y * this.§+$§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§3!i§())
         {
            return this.§%,§;
         }
         if(!this.§5M§.§<!9§())
         {
            return this.§%,§;
         }
         if(this.§ !>§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§;k§(§'y§.§+i§);
            }
            else if(param1 > 12)
            {
               this.§;k§(§'y§.§9V§);
            }
            else if(param1 > 3)
            {
               this.§;k§(§'y§.§%!;§);
            }
            return this.§%,§;
         }
         if(param1 <= this.§ !>§)
         {
            if(param1 >= this.§ !>§ / 2)
            {
               this.§;k§(§'y§.§%!;§);
            }
            if(this.§<=§() && this.§%,§ == this.§0K§)
            {
               this.§%,§ = this.§0K§ - 1;
            }
            return this.§%,§;
         }
         param1 -= this.§ !>§;
         if(param2 && this.§8s§())
         {
            _loc7_ = Math.min(this.§%,§,int(param1));
            _loc8_ = §-!7§.§>!%§.getValue() * _loc7_;
            this.§5M§.§+!X§.addScore(_loc8_,§;!8§.§>X§,this.§%,§ > param1 && param3,this.§+$§().GetPosition().x,this.§+$§().GetPosition().y,§6Q§.§>k§(this.§@!p§));
         }
         if(!(param5 && this.§2!Y§))
         {
            this.§%,§ -= param1;
         }
         if(this.§%,§ < 1 && this.§<=§())
         {
            this.§%,§ = 1;
         }
         if(this.§%,§ < 1)
         {
            this.§%,§ = 0;
            §4!H§.§@,§(§'y§.§+i§,this.§9!>§.§8!p§,"ChannelDestroyed");
         }
         else
         {
            this.§;k§(§'y§.§9V§);
            this.addDamageParticles(this.§5M§.§+!X§.particles,param1);
         }
         this.§[!"§.setDamagedFrame();
         return this.§%,§;
      }
      
      public function §;k§(param1:int) : void
      {
         §4!H§.§@,§(param1,this.§9!>§.§8!p§);
      }
      
      public function §,!H§(param1:String) : Number
      {
         return this.§9!>§.material.§]!7§(param1) * this.§-!9§;
      }
      
      public function §-![§(param1:String) : Number
      {
         return this.§9!>§.material.§`!s§(param1);
      }
      
      public function §^!S§() : String
      {
         return this.§9!>§.material.mName;
      }
      
      public function §[%§() : Number
      {
         return this.§9!>§.§`!Q§();
      }
      
      public function §@E§() : int
      {
         return this.§9!>§.§0n§();
      }
      
      public function §^!"§() : Boolean
      {
         return this.§+$§().IsAwake() && (this.§<=§() && this.§%,§ == this.§0K§ || Math.abs(this.§+$§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§+$§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§+$§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §;!3§() : Boolean
      {
         if(!this.§+$§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§`!_§();
         if(Math.abs(this.§!j§(this.§4e§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§!j§(this.§4e§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§!j§(this.§4e§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §!j§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ += param1[_loc3_];
            _loc3_++;
         }
         return _loc2_ / param1.length;
      }
      
      private function §`!_§() : void
      {
         this.§4e§[0].push(this.§+$§().GetLinearVelocity().x);
         this.§4e§[1].push(this.§+$§().GetLinearVelocity().y);
         this.§4e§[2].push(this.§+$§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§4e§[_loc1_].length > this.§4S§)
            {
               this.§4e§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §6!Z§(param1:Number = 3) : void
      {
         this.§-!9§ = param1;
         if(this.§-!9§ > 1)
         {
            this.§[!"§.§;F§();
         }
         else
         {
            this.§[!"§.§ !Q§ = null;
         }
      }
      
      public function §=U§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§9!>§.§"5§() == §"!e§.§[v§)
         {
            _loc2_ = this.§[!"§.mW * this.§[!"§.mH * (§-!7§.§8!r§ * §-!7§.§8!r§);
         }
         else
         {
            _loc2_ = this.§+$§().GetMass() / this.§]!B§.§"P§();
            if(param1)
            {
               _loc2_ *= this.§+o§();
            }
            _loc2_ /= this.§!+§ * this.§!+§;
         }
         return _loc2_;
      }
      
      public function §+o§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§[!"§.§[!f§ - 1) / 10);
      }
      
      public function §&!Y§(param1:Number) : void
      {
         var _loc2_:Number = this.§+$§().GetLinearVelocity().x;
         var _loc3_:Number = this.§+$§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§+$§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§[?§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§,n§) : void
      {
      }
      
      public function addDamageParticles(param1:§,n§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §,!T§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§+$§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§+$§().§=!F§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§[!i§()) + 360) % 360;
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
            this.§3!7§(_loc4_);
         }
         var _loc3_:Number = this.§[!i§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§3!7§(_loc3_);
      }
      
      public function §>p§(param1:Number) : void
      {
         var _loc2_:Number = §6L§(this.§+$§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §@S§(_loc2_);
         this.§+$§().§ !W§(_loc2_);
      }
      
      public function §5;§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§+$§().GetPosition().Copy();
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
         this.§+$§().§=!F§(_loc13_);
      }
   }
}
