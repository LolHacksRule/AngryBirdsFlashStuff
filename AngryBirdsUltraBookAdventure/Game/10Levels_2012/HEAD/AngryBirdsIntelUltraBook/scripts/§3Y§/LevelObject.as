package §3Y§
{
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §'N§.Log;
   import §,X§.b2PolygonShape;
   import §1!&§.Sprite;
   import §1%§.b2Body;
   import §1%§.b2BodyDef;
   import §1%§.b2FilterData;
   import §1%§.b2Fixture;
   import §1%§.b2World;
   import §3!j§.SoundEngine;
   import §8!H§.b2Settings;
   import §?!&§.b2Vec2;
   import §?A§.LevelMain;
   import §?A§.ScoreCollector;
   import §^L§.§0!J§;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemMaterial;
   import §^L§.LevelItemShape;
   import §^L§.LevelItemSoundResource;
   import flash.geom.Point;
   
   public class LevelObject
   {
      
      public static const §#1§:uint = 1 << 1;
      
      public static const §2!S§:uint = 1 << 2;
      
      public static const §4_§:uint = 1 << 3;
      
      public static const §+Y§:uint = 1 << 4;
      
      public static const §package§:Boolean = true;
       
      
      private var §,!H§:String;
      
      private var §<#§:int;
      
      private var §4B§:int;
      
      public var §4!W§:String;
      
      public var §4i§:int;
      
      private var §"T§:§0!J§;
      
      private var §6!$§:LevelObjectManager;
      
      private var mWorld:b2World;
      
      protected var §8@§:String = "";
      
      protected var §6!E§:int = 1;
      
      private var §4!N§:b2Fixture;
      
      private var §5!Y§:b2Body;
      
      private var §#^§:b2Vec2;
      
      public var §19§:Number;
      
      public var §^V§:Number;
      
      private var §#!L§:Number;
      
      private var §2I§:Boolean = false;
      
      private var §0A§:Number;
      
      private var §8!d§:Number;
      
      private var §!u§:Number;
      
      private var §!!5§:Number;
      
      private var §0!6§:Number;
      
      private var §<^§:Number;
      
      public var §,!]§:Number = 1;
      
      private var §#N§:Boolean = false;
      
      public var §,h§:Number = 0;
      
      public var §?!W§:Number = 0;
      
      protected var §&&§:Boolean = false;
      
      public var § get§:LevelObjectRenderer;
      
      private var §1!J§:Sprite;
      
      private var §`!Z§:Number = 0;
      
      private var §[§:Number = 0;
      
      private var §#3§:Number = 0;
      
      private var §[+§:Number = 1.0;
      
      private var §'!T§:Boolean = false;
      
      private var §4t§:Vector.<Vector.<Number>>;
      
      private var §#!a§:int = 10;
      
      private var §4!e§:Boolean = true;
      
      public function LevelObject(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§4t§ = new Vector.<Vector.<Number>>();
         super();
         this.§4!W§ = param6;
         this.§"T§ = LevelItemManager.§><§(param6);
         this.§6!$§ = param1;
         this.§1!J§ = param2;
         this.§[+§ = param10;
         this.§'!T§ = param11;
         this.§<#§ = param5;
         this.§4i§ = this.§"T§.§4i§;
         this.§4B§ = this.§"T§.§ V§();
         this.§4t§[0] = new Vector.<Number>();
         this.§4t§[1] = new Vector.<Number>();
         this.§4t§[2] = new Vector.<Number>();
         this.§ get§ = new LevelObjectRenderer(this,param2,param4);
         if(!this.§ get§.§-!§(param1.§6f§.animationManager))
         {
            this.§ get§.§]M§(this.§4B§,this.§"T§.§=;§(),this.§"T§.§@!#§() / LevelMain.§!5§,this.§"T§.§>!4§() / LevelMain.§!5§);
         }
         this.§ get§.§9!]§(this.§4B§ == LevelItemShape.§"c§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§5!Y§ = this.mWorld.§,!j§(_loc12_);
         this.§5!Y§.§^!T§(this);
         if(this.§4B§ == LevelItemShape.§?m§)
         {
            _loc14_ = b2PolygonShape.§4! §(this.§"T§.shape.§^B§ * param10,this.§"T§.shape.§+!d§ * param10);
            this.§4!N§ = this.§5!Y§.CreateFixture2(_loc14_,this.§"T§.§%!W§());
         }
         else if(this.§4B§ == LevelItemShape.§"c§ || this.§4B§ == LevelItemShape.§0!+§)
         {
            this.§4!N§ = this.§5!Y§.CreateFixture2(this.§"T§.shape.§-!C§(param10),this.§"T§.§%!W§());
         }
         this.§4!N§.§"X§(this.§"T§.§]6§());
         this.§4!N§.§%!H§(this.§"T§.§"f§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§+!J§())
         {
            _loc13_.§,j§ = §#1§;
            _loc13_.§7f§ = 65535 & ~§2!S§;
         }
         else if(this.§4!W§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§4!W§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§,j§ = §2!S§;
            _loc13_.§7f§ = 65535 & ~§#1§;
         }
         this.§4!N§.§,!5§(_loc13_);
         this.§#!L§ = this.§"T§.§9!4§();
         if(this.§"T§.§^V§ > 0)
         {
            this.§19§ = this.§^V§ = this.§"T§.§^V§;
         }
         else
         {
            this.§19§ = this.§^V§ = Math.round(this.§2!2§(true) * this.§"T§.§=!V§());
            if(this.§19§ < 1)
            {
               this.§19§ = this.§^V§ = 1;
            }
         }
         if(this.§"T§.§4i§ == §0!J§.§5!+§)
         {
            this.§1!J§.visible = false;
         }
         else
         {
            this.§ get§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§ 4§(param9);
         }
         this.§ try§();
         this.§,9§(0,1);
         this.§ get§.§]!&§(this.§"T§.shape);
      }
      
      public static function §1!"§(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String = param2.§+D§[param1];
         if(_loc4_.length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§%3§;
            }
            SoundEngine.§4!k§(_loc4_,param3);
         }
      }
      
      public static function §@!S§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §[!c§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function get front() : Boolean
      {
         return this.§'!T§;
      }
      
      public function get §-! §() : Number
      {
         return this.§5!Y§.GetPosition().x;
      }
      
      public function get §<s§() : Number
      {
         return this.§5!Y§.GetPosition().y;
      }
      
      public function get §>!9§() : §0!J§
      {
         return this.§"T§;
      }
      
      public function get §-!]§() : Boolean
      {
         return this.§#!L§ >= 0;
      }
      
      protected function get container() : LevelObjectManager
      {
         return this.§6!$§;
      }
      
      public function get §'!M§() : Boolean
      {
         return this.§4!e§;
      }
      
      public function set §'!M§(param1:Boolean) : void
      {
         this.§4!e§ = param1;
      }
      
      public function set §%!6§(param1:Boolean) : void
      {
         this.§2I§ = param1;
      }
      
      public function set §;!P§(param1:uint) : void
      {
         this.§#!a§ = param1;
      }
      
      public function get §;!P§() : uint
      {
         return this.§#!a§;
      }
      
      public function get §2v§() : Boolean
      {
         return this.§#N§;
      }
      
      public function set §2v§(param1:Boolean) : void
      {
         this.§#N§ = param1;
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
         return this.§,!H§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§,!H§ = param1;
      }
      
      public function §0!5§(param1:b2FilterData) : void
      {
         if(this.§4!N§)
         {
            this.§4!N§.§,!5§(param1);
         }
      }
      
      protected function §"K§(param1:String) : int
      {
         return §8!;§.§"K§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§"T§.§>!h§();
         _loc3_.§?a§ = true;
         _loc3_.§83§ = true;
         _loc3_.§-y§ = true;
         _loc3_.§<!D§ = 1;
         _loc3_.§4x§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§%!O§(this.§8!N§());
            this.mWorld = null;
         }
         this.§ get§.dispose();
         if(this.§1!J§)
         {
            this.§1!J§.dispose();
            this.§1!J§ = null;
         }
         this.§4!N§ = null;
         this.§#^§ = null;
         this.§"T§ = null;
      }
      
      public function § 4§(param1:Number) : void
      {
         this.§8!N§().§=!]§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §=W§() : Number
      {
         return (360 - this.§8!N§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §#!Z§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§8!N§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§`,§();
         }
         if(param3)
         {
            this.§3!$§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§4!N§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§8!N§().GetPosition().x >= param3 && this.§8!N§().GetPosition().x <= param4 && this.§8!N§().GetPosition().y >= param1 && this.§8!N§().GetPosition().y <= param2;
      }
      
      public function §%h§(param1:b2Vec2) : void
      {
         this.§#^§ = param1;
      }
      
      public function §4!G§() : void
      {
         if(this.§#^§)
         {
            this.§#!Z§(this.§#^§,false);
            this.§#^§ = null;
         }
      }
      
      public function §`,§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§8!N§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§8!N§().§&R§(0);
         }
         else
         {
            this.§8!N§().§&R§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §3!$§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§8!N§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§ 4§(_loc2_);
      }
      
      public function §`!f§(param1:Number) : void
      {
         this.§8!N§().§&R§(param1);
      }
      
      public function §8!N§() : b2Body
      {
         if(this.§4!N§ != null)
         {
            return this.§4!N§.GetBody();
         }
         return null;
      }
      
      public function §6!b§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§`!Z§ = param1;
            this.§[§ = param2;
         }
         this.§8!N§().GetPosition().x = this.§`!Z§ * LevelMain.§!5§;
         this.§8!N§().GetPosition().y = this.§[§ * LevelMain.§!5§;
      }
      
      public function §,9§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§&&§)
         {
            _loc3_ = true;
            this.§&&§ = false;
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
            this.§ get§.§#I§();
         }
         if(this.§,!]§ > 1 && this.§ get§.§@!]§)
         {
            _loc4_ = 4 + (this.§ get§.§@!]§.blurX - 4 + param2 / 20) % 28;
            this.§ get§.§@!]§.blurX = _loc4_;
            this.§ get§.§@!]§.blurY = _loc4_;
         }
         this.§ get§.§5!T§(param2);
         if(§package§)
         {
            this.§5#§(param1);
         }
         else
         {
            this.§#3§ = this.§!u§;
            this.§`!Z§ = this.§0A§;
            this.§[§ = this.§8!d§;
         }
         this.§1!J§.x = Math.round(this.§`!Z§);
         this.§1!J§.y = Math.round(this.§[§);
         this.§1!J§.rotation = this.§#3§ / 180 * Math.PI;
      }
      
      public function § try§() : void
      {
         var _loc1_:Number = this.§8!N§().GetPosition().x;
         var _loc2_:Number = this.§8!N§().GetPosition().y;
         this.§<^§ = this.§!u§;
         this.§!!5§ = this.§0A§;
         this.§0!6§ = this.§8!d§;
         this.§!u§ = this.§8!N§().GetAngle() * (180 / Math.PI) % 360;
         this.§0A§ = _loc1_ / LevelMain.§!5§;
         this.§8!d§ = _loc2_ / LevelMain.§!5§;
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
      
      public function §5#§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§6!$§.§6f§.mLevelEngine.§[!i§ * 1000;
         }
         param1 *= -1;
         if(this.§0A§ == this.§!!5§ || param1 == 0)
         {
            this.§,h§ = 0;
            this.§`!Z§ = this.§0A§;
         }
         else
         {
            this.§,h§ = param1 * (this.§!!5§ - this.§0A§) / param2;
            this.§`!Z§ = this.§0A§ + this.§,h§;
         }
         if(this.§8!d§ == this.§0!6§ || param1 == 0)
         {
            this.§?!W§ = 0;
            this.§[§ = this.§8!d§;
         }
         else
         {
            this.§?!W§ = param1 * (this.§0!6§ - this.§8!d§) / param2;
            this.§[§ = this.§8!d§ + this.§?!W§;
         }
         if(this.§!u§ == this.§<^§ || param1 == 0)
         {
            this.§#3§ = this.§!u§;
         }
         else if(this.§<^§ > this.§!u§ && this.§<^§ - this.§!u§ <= 180)
         {
            this.§#3§ = this.§!u§ + param1 * (this.§<^§ - this.§!u§) / param2;
         }
         else if(this.§<^§ > this.§!u§ && this.§<^§ - this.§!u§ > 180)
         {
            this.§#3§ = this.§!u§ + param1 * (this.§<^§ - 360 - this.§!u§) / param2;
         }
         else if(this.§<^§ < this.§!u§ && this.§!u§ - this.§<^§ <= 180)
         {
            this.§#3§ = this.§!u§ + param1 * (this.§<^§ - this.§!u§) / param2;
         }
         else if(this.§<^§ < this.§!u§ && this.§!u§ - this.§<^§ > 180)
         {
            this.§#3§ = this.§!u§ + param1 * (this.§<^§ + 360 - this.§!u§) / param2;
         }
      }
      
      public function get §8!A§() : Point
      {
         if(!§package§)
         {
         }
         return null;
      }
      
      public function §+!J§() : Boolean
      {
         return this.§4i§ == §0!J§.§8!j§ || this.§4i§ == §0!J§.§!!-§;
      }
      
      public function §<!#§() : Boolean
      {
         return this.§4i§ == §0!J§.§&!2§;
      }
      
      public function §3s§() : Boolean
      {
         return this.§4i§ == §0!J§.§2!0§;
      }
      
      public function §#j§() : Boolean
      {
         return this.§4i§ == §0!J§.§!!-§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§4i§ == §0!J§.§<!S§;
      }
      
      public function isGround() : Boolean
      {
         return this.§4i§ == §0!J§.§5!+§;
      }
      
      public function §in§() : Boolean
      {
         return this.§4i§ == §0!J§.§ K§;
      }
      
      public function §3u§() : Boolean
      {
         return this.§4i§ == §0!J§.§ !Z§;
      }
      
      public function §=§() : Boolean
      {
         if(this.§4!W§ == "MISC_EXPLOSIVE_TNT" || this.§4!W§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §6!;§() : Boolean
      {
         return (this.§<!#§() || this.§in§() || this.§3u§()) && !this.§2v§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §--§() : Number
      {
         return Number(Math.sqrt(this.§8!N§().GetLinearVelocity().x * this.§8!N§().GetLinearVelocity().x + this.§8!N§().GetLinearVelocity().y * this.§8!N§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§3s§())
         {
            return this.§19§;
         }
         if(!this.§6!$§.§&5§())
         {
            return this.§19§;
         }
         if(this.§#!L§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§8!9§(LevelItemSoundResource.§9!%§);
            }
            else if(param1 > 12)
            {
               this.§8!9§(LevelItemSoundResource.§[!e§);
            }
            else if(param1 > 3)
            {
               this.§8!9§(LevelItemSoundResource.§'!]§);
            }
            return this.§19§;
         }
         if(param1 <= this.§#!L§)
         {
            if(param1 >= this.§#!L§ / 2)
            {
               this.§8!9§(LevelItemSoundResource.§'!]§);
            }
            if(this.§+!J§() && this.§19§ == this.§^V§)
            {
               this.§19§ = this.§^V§ - 1;
            }
            return this.§19§;
         }
         param1 -= this.§#!L§;
         if(param2 && this.§6!;§())
         {
            _loc7_ = Math.min(this.§19§,int(param1));
            _loc8_ = LevelMain.§<a§.getValue() * _loc7_;
            this.§6!$§.§6f§.addScore(_loc8_,ScoreCollector.§"+§,this.§19§ > param1 && param3,this.§8!N§().GetPosition().x,this.§8!N§().GetPosition().y,§8!;§.§7!i§(this.§4!W§));
         }
         if(!(param5 && this.§2I§))
         {
            this.§19§ -= param1;
         }
         if(this.§19§ < 1 && this.§+!J§())
         {
            this.§19§ = 1;
         }
         if(this.§19§ < 1)
         {
            this.§19§ = 0;
            LevelObject.§1!"§(LevelItemSoundResource.§9!%§,this.§"T§.§3!,§,"ChannelDestroyed");
         }
         else
         {
            this.§8!9§(LevelItemSoundResource.§[!e§);
            this.addDamageParticles(this.§6!$§.§6f§.particles,param1);
         }
         this.§ get§.setDamagedFrame();
         return this.§19§;
      }
      
      public function §8!9§(param1:int) : void
      {
         LevelObject.§1!"§(param1,this.§"T§.§3!,§);
      }
      
      public function § do§(param1:String) : Number
      {
         return this.§"T§.material.§]!_§(param1) * this.§,!]§;
      }
      
      public function §^_§(param1:String) : Number
      {
         return this.§"T§.material.§,!A§(param1);
      }
      
      public function §4Y§() : String
      {
         return this.§"T§.material.mName;
      }
      
      public function §9F§() : Number
      {
         return this.§"T§.§=!V§();
      }
      
      public function §5!A§() : int
      {
         return this.§"T§.final();
      }
      
      public function §>!M§() : Boolean
      {
         return this.§8!N§().IsAwake() && (this.§+!J§() && this.§19§ == this.§^V§ || Math.abs(this.§8!N§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§8!N§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§8!N§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §[q§() : Boolean
      {
         if(!this.§8!N§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§ t§();
         if(Math.abs(this.§3I§(this.§4t§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§3I§(this.§4t§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§3I§(this.§4t§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §3I§(param1:Vector.<Number>) : Number
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
      
      private function § t§() : void
      {
         this.§4t§[0].push(this.§8!N§().GetLinearVelocity().x);
         this.§4t§[1].push(this.§8!N§().GetLinearVelocity().y);
         this.§4t§[2].push(this.§8!N§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§4t§[_loc1_].length > this.§#!a§)
            {
               this.§4t§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §?D§(param1:Number = 3) : void
      {
         this.§,!]§ = param1;
         if(this.§,!]§ > 1)
         {
            this.§ get§.§8!Q§();
         }
         else
         {
            this.§ get§.§@!]§ = null;
         }
      }
      
      public function §2!2§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§"T§.§>!h§() == LevelItemMaterial.§>Z§)
         {
            _loc2_ = this.§ get§.mW * this.§ get§.mH * (LevelMain.§!5§ * LevelMain.§!5§);
         }
         else
         {
            _loc2_ = this.§8!N§().GetMass() / this.§4!N§.§97§();
            if(param1)
            {
               _loc2_ *= this.§0P§();
            }
            _loc2_ /= this.§[+§ * this.§[+§;
         }
         return _loc2_;
      }
      
      public function §0P§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§ get§.§<!8§ - 1) / 10);
      }
      
      public function §-,§(param1:Number) : void
      {
         var _loc2_:Number = this.§8!N§().GetLinearVelocity().x;
         var _loc3_:Number = this.§8!N§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§8!N§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:LevelParticleManager) : void
      {
      }
      
      public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §3!"§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§8!N§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§8!N§().§5u§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = this.§=W§();
            _loc4_ = (_loc4_ + 360) % 360;
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
            this.§ 4§(_loc4_);
         }
         var _loc3_:Number = this.§=W§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§ 4§(_loc3_);
      }
      
      public function §3'§(param1:Number) : void
      {
         var _loc2_:Number = §@!S§(this.§8!N§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §[!c§(_loc2_);
         this.§8!N§().§=!]§(_loc2_);
      }
      
      public function §^!H§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§8!N§().GetPosition().Copy();
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
         var _loc9_:Number = _loc8_ + param1;
         var _loc10_:Number = _loc9_ * Math.PI / 180;
         var _loc11_:Number = Math.sin(_loc10_) * _loc6_;
         var _loc12_:Number = Math.cos(_loc10_) * _loc6_;
         var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
         this.§8!N§().§5u§(_loc13_);
      }
   }
}
