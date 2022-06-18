package § T§
{
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §"v§.b2Settings;
   import §#K§.§,3§;
   import §&i§.b2Body;
   import §&i§.b2BodyDef;
   import §&i§.b2FilterData;
   import §&i§.b2Fixture;
   import §&i§.b2World;
   import §1!A§.Sprite;
   import §5!K§.b2Vec2;
   import §5x§.§&o§;
   import §5x§.§6T§;
   import §5x§.§<!8§;
   import §5x§.§]R§;
   import §5x§.override;
   import §7z§.§3a§;
   import §7z§.§]!-§;
   import §^!&§.§;C§;
   import §each §.b2PolygonShape;
   import flash.geom.Point;
   
   public class §"!2§
   {
      
      public static const §&,§:uint = 1 << 1;
      
      public static const §4§:uint = 1 << 2;
      
      public static const §0n§:uint = 1 << 3;
      
      public static const §%<§:uint = 1 << 4;
      
      public static const §4U§:Boolean = true;
      
      public static const §`I§:Number = 5;
      
      public static const §<!6§:Number = 10;
       
      
      private var §<!M§:String;
      
      private var §[!H§:int;
      
      private var §3!^§:int;
      
      public var §9@§:String;
      
      public var §#!%§:int;
      
      private var §3p§:§6T§;
      
      private var §!z§:§1!'§;
      
      private var mWorld:b2World;
      
      protected var §>!Y§:String = "";
      
      protected var §0F§:int = 1;
      
      private var §8!!§:b2Fixture;
      
      private var §09§:b2Body;
      
      private var §`W§:b2Vec2;
      
      public var §'!"§:Number;
      
      public var §get §:Number;
      
      private var §;!&§:Number;
      
      private var §continue§:Boolean = false;
      
      private var §!H§:Number;
      
      private var §6!?§:Number;
      
      private var § <§:Number;
      
      private var §=!?§:Number;
      
      private var §5!8§:Number;
      
      private var §while§:Number;
      
      public var §9!B§:Number = 1;
      
      private var §@x§:Boolean = false;
      
      public var §=C§:Number = 0;
      
      public var §4!"§:Number = 0;
      
      protected var §-!W§:Boolean = false;
      
      public var §9t§:§4$§;
      
      private var §0!5§:Sprite;
      
      private var §6!Z§:Number = 0;
      
      private var §,!A§:Number = 0;
      
      private var §3!`§:Number = 0;
      
      private var §+o§:Number = 1.0;
      
      private var §]!^§:Boolean = false;
      
      protected var §4!'§:§ s§;
      
      private var §%$§:Boolean = true;
      
      public function §"!2§(param1:§1!'§, param2:Sprite, param3:b2World, param4:§]!-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§9@§ = param6;
         this.§3p§ = §]R§.§;!H§(param6);
         this.§!z§ = param1;
         this.§0!5§ = param2;
         this.§+o§ = param10;
         this.§]!^§ = param11;
         this.§[!H§ = param5;
         this.§#!%§ = this.§3p§.§#!%§;
         this.§3!^§ = this.§3p§.§7v§();
         this.§4!'§ = new § s§(§`I§,§<!6§);
         this.§9t§ = new §4$§(this,param2,param4);
         if(!this.§9t§.§'!&§(param1.§^'§.§]]§))
         {
            this.§9t§.§=!<§(this.§3!^§,this.§3p§.§%!2§(),this.§3p§.§ 9§() / §]!-§.§>C§,this.§3p§.§6v§() / §]!-§.§>C§);
         }
         this.§9t§.§5!%§(this.§3!^§ == override.§&d§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§09§ = this.mWorld.§^!'§(_loc12_);
         this.§09§.§3!!§(this);
         if(this.§3!^§ == override.§7!M§)
         {
            _loc14_ = b2PolygonShape.§[!^§(this.§3p§.shape.§^S§ * param10,this.§3p§.shape.§6-§ * param10);
            this.§8!!§ = this.§09§.CreateFixture2(_loc14_,this.§3p§.§,W§());
         }
         else if(this.§3!^§ == override.§&d§ || this.§3!^§ == override.§[6§)
         {
            this.§8!!§ = this.§09§.CreateFixture2(this.§3p§.shape.§#!0§(param10),this.§3p§.§,W§());
         }
         this.§8!!§.§2!$§(this.§3p§.§9C§());
         this.§8!!§.§#!C§(this.§3p§.§;V§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§<O§())
         {
            _loc13_.§=!O§ = §&,§;
            _loc13_.§1>§ = 65535 & ~§4§;
         }
         else if(this.§9@§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§9@§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§=!O§ = §4§;
            _loc13_.§1>§ = 65535 & ~§&,§;
         }
         this.§8!!§.§<o§(_loc13_);
         this.§;!&§ = this.§3p§.§?>§();
         if(this.§3p§.§get § > 0)
         {
            this.§'!"§ = this.§get § = this.§3p§.§get §;
         }
         else
         {
            this.§'!"§ = this.§get § = Math.round(this.§,!E§(true) * this.§3p§.§9D§());
            if(this.§'!"§ < 1)
            {
               this.§'!"§ = this.§get § = 1;
            }
         }
         if(this.§3p§.§#!%§ == §6T§.§-j§)
         {
            this.§0!5§.visible = false;
         }
         else
         {
            this.§9t§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§`!"§(param9);
         }
         this.§^!X§();
         this.§01§(0,1);
         this.§9t§.§]!D§(this.§3p§.shape);
      }
      
      public static function §#b§(param1:int, param2:§&o§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§;s§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§0-§;
            }
            §,3§.§0y§(_loc4_,param3);
         }
      }
      
      public static function §%9§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §@§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§0!5§;
      }
      
      public function get x() : Number
      {
         return this.§6!Z§;
      }
      
      public function get y() : Number
      {
         return this.§,!A§;
      }
      
      public function get scale() : Number
      {
         return this.§+o§;
      }
      
      public function get front() : Boolean
      {
         return this.§]!^§;
      }
      
      public function get §!!3§() : Number
      {
         return this.§09§.GetPosition().x;
      }
      
      public function get §6D§() : Number
      {
         return this.§09§.GetPosition().y;
      }
      
      public function get §5!B§() : §6T§
      {
         return this.§3p§;
      }
      
      public function get §!X§() : Boolean
      {
         return this.§;!&§ >= 0;
      }
      
      public function get container() : §1!'§
      {
         return this.§!z§;
      }
      
      public function get §?!5§() : Boolean
      {
         return this.§%$§;
      }
      
      public function set §?!5§(param1:Boolean) : void
      {
         this.§%$§ = param1;
      }
      
      public function set §-!C§(param1:Boolean) : void
      {
         this.§continue§ = param1;
      }
      
      public function set §@!4§(param1:uint) : void
      {
         this.§4!'§.§@!4§ = param1;
      }
      
      public function get §@!4§() : uint
      {
         return this.§4!'§.§@!4§;
      }
      
      public function get §@!F§() : Boolean
      {
         return this.§@x§;
      }
      
      public function set §@!F§(param1:Boolean) : void
      {
         this.§@x§ = param1;
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
         return this.§<!M§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§<!M§ = param1;
      }
      
      public function §'!W§(param1:b2FilterData) : void
      {
         if(this.§8!!§)
         {
            this.§8!!§.§<o§(param1);
         }
      }
      
      protected function §2!N§(param1:String) : int
      {
         return §^!_§.§2!N§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§3p§.§=!@§();
         _loc3_.§9!+§ = true;
         _loc3_.§6`§ = true;
         _loc3_.§1!F§ = true;
         _loc3_.§]^§ = 1;
         _loc3_.§`k§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§%c§(this.§][§());
            this.mWorld = null;
         }
         this.§9t§.dispose();
         if(this.§0!5§)
         {
            this.§0!5§.dispose();
            this.§0!5§ = null;
         }
         this.§8!!§ = null;
         this.§`W§ = null;
         this.§3p§ = null;
      }
      
      public function §`!"§(param1:Number) : void
      {
         this.§][§().§"p§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §5o§() : Number
      {
         return (360 - this.§][§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §,!9§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§][§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§9g§();
         }
         if(param3)
         {
            this.§,1§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§8!!§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§][§().GetPosition().x >= param3 && this.§][§().GetPosition().x <= param4 && this.§][§().GetPosition().y >= param1 && this.§][§().GetPosition().y <= param2;
      }
      
      public function §#g§(param1:b2Vec2) : void
      {
         this.§`W§ = param1;
      }
      
      public function §"T§() : void
      {
         if(this.§`W§)
         {
            this.§,!9§(this.§`W§,false);
            this.§`W§ = null;
         }
      }
      
      public function §9g§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§][§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§][§().§'!U§(0);
         }
         else
         {
            this.§][§().§'!U§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §,1§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§][§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§`!"§(_loc2_);
      }
      
      public function §3!E§(param1:Number) : void
      {
         this.§][§().§'!U§(param1);
      }
      
      public function §][§() : b2Body
      {
         if(this.§8!!§ != null)
         {
            return this.§8!!§.GetBody();
         }
         return null;
      }
      
      public function §;0§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§6!Z§ = param1;
            this.§,!A§ = param2;
         }
         this.§][§().GetPosition().x = this.§6!Z§ * §]!-§.§>C§;
         this.§][§().GetPosition().y = this.§,!A§ * §]!-§.§>C§;
      }
      
      public function §01§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§-!W§)
         {
            _loc3_ = true;
            this.§-!W§ = false;
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
            this.§9t§.§=^§();
         }
         if(this.§9!B§ > 1 && this.§9t§.§+8§)
         {
            _loc4_ = 4 + (this.§9t§.§+8§.blurX - 4 + param2 / 20) % 28;
            this.§9t§.§+8§.blurX = _loc4_;
            this.§9t§.§+8§.blurY = _loc4_;
         }
         this.§9t§.§3!C§(param2);
         if(§4U§)
         {
            this.§&A§(param1);
         }
         else
         {
            this.§3!`§ = this.§ <§;
            this.§6!Z§ = this.§!H§;
            this.§,!A§ = this.§6!?§;
         }
         this.§0!5§.x = Math.round(this.§6!Z§);
         this.§0!5§.y = Math.round(this.§,!A§);
         this.§0!5§.rotation = this.§3!`§ / 180 * Math.PI;
      }
      
      public function §^!X§() : void
      {
         var _loc1_:Number = this.§][§().GetPosition().x;
         var _loc2_:Number = this.§][§().GetPosition().y;
         this.§while§ = this.§ <§;
         this.§=!?§ = this.§!H§;
         this.§5!8§ = this.§6!?§;
         this.§ <§ = this.§][§().GetAngle() * (180 / Math.PI) % 360;
         this.§!H§ = _loc1_ / §]!-§.§>C§;
         this.§6!?§ = _loc2_ / §]!-§.§>C§;
         this.§4!'§.§@6§();
         this.§4!'§.§]!%§(this.§][§());
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
      
      public function §&A§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §;C§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§!z§.§^'§.mLevelEngine.§ F§ * 1000;
         }
         param1 *= -1;
         if(this.§!H§ == this.§=!?§ || param1 == 0)
         {
            this.§=C§ = 0;
            this.§6!Z§ = this.§!H§;
         }
         else
         {
            this.§=C§ = param1 * (this.§=!?§ - this.§!H§) / param2;
            this.§6!Z§ = this.§!H§ + this.§=C§;
         }
         if(this.§6!?§ == this.§5!8§ || param1 == 0)
         {
            this.§4!"§ = 0;
            this.§,!A§ = this.§6!?§;
         }
         else
         {
            this.§4!"§ = param1 * (this.§5!8§ - this.§6!?§) / param2;
            this.§,!A§ = this.§6!?§ + this.§4!"§;
         }
         if(this.§ <§ == this.§while§ || param1 == 0)
         {
            this.§3!`§ = this.§ <§;
         }
         else if(this.§while§ > this.§ <§ && this.§while§ - this.§ <§ <= 180)
         {
            this.§3!`§ = this.§ <§ + param1 * (this.§while§ - this.§ <§) / param2;
         }
         else if(this.§while§ > this.§ <§ && this.§while§ - this.§ <§ > 180)
         {
            this.§3!`§ = this.§ <§ + param1 * (this.§while§ - 360 - this.§ <§) / param2;
         }
         else if(this.§while§ < this.§ <§ && this.§ <§ - this.§while§ <= 180)
         {
            this.§3!`§ = this.§ <§ + param1 * (this.§while§ - this.§ <§) / param2;
         }
         else if(this.§while§ < this.§ <§ && this.§ <§ - this.§while§ > 180)
         {
            this.§3!`§ = this.§ <§ + param1 * (this.§while§ + 360 - this.§ <§) / param2;
         }
      }
      
      public function get § U§() : Point
      {
         if(!§4U§)
         {
         }
         return null;
      }
      
      public function §<O§() : Boolean
      {
         return this.§#!%§ == §6T§.§ g§ || this.§#!%§ == §6T§.§#P§;
      }
      
      public function §6!Q§() : Boolean
      {
         return this.§#!%§ == §6T§.§&8§;
      }
      
      public function §[g§() : Boolean
      {
         return this.§#!%§ == §6T§.§7!V§;
      }
      
      public function §?'§() : Boolean
      {
         return this.§#!%§ == §6T§.§#P§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§#!%§ == §6T§.§"!!§;
      }
      
      public function isGround() : Boolean
      {
         return this.§#!%§ == §6T§.§-j§;
      }
      
      public function §for§() : Boolean
      {
         return this.§#!%§ == §6T§.§]b§;
      }
      
      public function §9;§() : Boolean
      {
         return this.§#!%§ == §6T§.§^q§;
      }
      
      public function §6!!§() : Boolean
      {
         if(this.§9@§ == "MISC_EXPLOSIVE_TNT" || this.§9@§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §&!F§() : Boolean
      {
         return (this.§6!Q§() || this.§for§() || this.§9;§()) && !this.§@!F§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §0!I§() : Number
      {
         return Number(Math.sqrt(this.§][§().GetLinearVelocity().x * this.§][§().GetLinearVelocity().x + this.§][§().GetLinearVelocity().y * this.§][§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§[g§())
         {
            return this.§'!"§;
         }
         if(!this.§!z§.§,i§())
         {
            return this.§'!"§;
         }
         if(this.§;!&§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§^[§(§&o§.§2$§);
            }
            else if(param1 > 12)
            {
               this.§^[§(§&o§.§ !9§);
            }
            else if(param1 > 3)
            {
               this.§^[§(§&o§.§'Y§);
            }
            return this.§'!"§;
         }
         if(param1 <= this.§;!&§)
         {
            if(param1 >= this.§;!&§ / 2)
            {
               this.§^[§(§&o§.§'Y§);
            }
            if(this.§<O§() && this.§'!"§ == this.§get §)
            {
               this.§'!"§ = this.§get § - 1;
            }
            return this.§'!"§;
         }
         param1 -= this.§;!&§;
         if(param2 && this.§&!F§())
         {
            _loc7_ = Math.min(this.§'!"§,int(param1));
            _loc8_ = §]!-§.§[!7§.getValue() * _loc7_;
            this.§!z§.§^'§.addScore(_loc8_,§3a§.§'Z§,this.§'!"§ > param1 && param3,this.§][§().GetPosition().x,this.§][§().GetPosition().y,§^!_§.§9R§(this.§9@§));
         }
         if(!(param5 && this.§continue§))
         {
            this.§'!"§ -= param1;
         }
         if(this.§'!"§ < 1 && this.§<O§())
         {
            this.§'!"§ = 1;
         }
         if(this.§'!"§ < 1)
         {
            this.§'!"§ = 0;
            §"!2§.§#b§(§&o§.§2$§,this.§3p§.§8c§,"ChannelDestroyed");
         }
         else
         {
            this.§^[§(§&o§.§ !9§);
            this.addDamageParticles(this.§!z§.§^'§.particles,param1);
         }
         this.§9t§.setDamagedFrame();
         return this.§'!"§;
      }
      
      public function §^[§(param1:int) : void
      {
         §"!2§.§#b§(param1,this.§3p§.§8c§);
      }
      
      public function §9!,§(param1:String) : Number
      {
         return this.§3p§.material.§#l§(param1) * this.§9!B§;
      }
      
      public function § !;§(param1:String) : Number
      {
         return this.§3p§.material.§;j§(param1);
      }
      
      public function §?h§() : String
      {
         return this.§3p§.material.mName;
      }
      
      public function §4r§() : Number
      {
         return this.§3p§.§9D§();
      }
      
      public function §"!<§() : int
      {
         return this.§3p§.§0s§();
      }
      
      public function §#!?§() : Boolean
      {
         return this.§][§().IsAwake() && (this.§<O§() && this.§'!"§ == this.§get § || Math.abs(this.§][§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§][§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§][§().§^!G§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §2!H§() : Boolean
      {
         if(!this.§][§().IsAwake())
         {
            return true;
         }
         return !this.§=!W§();
      }
      
      protected function §=!W§() : Boolean
      {
         return this.§4!'§.§=!W§();
      }
      
      public function §-!F§(param1:Number = 3) : void
      {
         this.§9!B§ = param1;
         if(this.§9!B§ > 1)
         {
            this.§9t§.§`!R§();
         }
         else
         {
            this.§9t§.§+8§ = null;
         }
      }
      
      public function §,!E§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§3p§.§=!@§() == §<!8§.§?!N§)
         {
            _loc2_ = this.§9t§.mW * this.§9t§.mH * (§]!-§.§>C§ * §]!-§.§>C§);
         }
         else
         {
            _loc2_ = this.§][§().GetMass() / this.§8!!§.§=!0§();
            if(param1)
            {
               _loc2_ *= this.§=W§();
            }
            _loc2_ /= this.§+o§ * this.§+o§;
         }
         return _loc2_;
      }
      
      public function §=W§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§9t§.§@%§ - 1) / 10);
      }
      
      public function §!!X§(param1:Number) : void
      {
         var _loc2_:Number = this.§][§().GetLinearVelocity().x;
         var _loc3_:Number = this.§][§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§][§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§1!'§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§0m§) : void
      {
      }
      
      public function addDamageParticles(param1:§0m§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §%!#§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§][§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§][§().§1!Y§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§5o§()) + 360) % 360;
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
            this.§`!"§(_loc4_);
         }
         var _loc3_:Number = this.§5o§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§`!"§(_loc3_);
      }
      
      public function §9f§(param1:Number) : void
      {
         var _loc2_:Number = §%9§(this.§][§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §@§(_loc2_);
         this.§][§().§"p§(_loc2_);
      }
      
      public function §9^§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§][§().GetPosition().Copy();
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
         this.§][§().§1!Y§(_loc13_);
      }
   }
}
