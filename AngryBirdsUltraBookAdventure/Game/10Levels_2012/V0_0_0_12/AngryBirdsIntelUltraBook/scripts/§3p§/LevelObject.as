package §3p§
{
   import §#!"§.b2PolygonShape;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   import §2!H§.LevelMain;
   import §2!H§.ScoreCollector;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §;T§.§5s§;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemMaterial;
   import §;T§.LevelItemShape;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import §]=§.b2Body;
   import §]=§.b2BodyDef;
   import §]=§.b2FilterData;
   import §]=§.b2Fixture;
   import §]=§.b2World;
   import flash.geom.Point;
   
   public class LevelObject
   {
      
      public static const §?H§:uint = 1 << 1;
      
      public static const §[c§:uint = 1 << 2;
      
      public static const §[=§:uint = 1 << 3;
      
      public static const §?+§:uint = 1 << 4;
      
      public static const §&!@§:Boolean = true;
       
      
      private var §6G§:String;
      
      private var §1!B§:int;
      
      private var §1A§:int;
      
      public var §#>§:String;
      
      public var §17§:int;
      
      private var §<! §:§5s§;
      
      private var §'K§:LevelObjectManager;
      
      private var mWorld:b2World;
      
      protected var §!!<§:String = "";
      
      protected var §0!§:int = 1;
      
      private var §5!5§:b2Fixture;
      
      private var final:b2Body;
      
      private var §0!"§:b2Vec2;
      
      public var §0o§:Number;
      
      public var §]!3§:Number;
      
      private var §<g§:Number;
      
      private var §3J§:Boolean = false;
      
      private var §#L§:Number;
      
      private var §0!X§:Number;
      
      private var §-y§:Number;
      
      private var §0!M§:Number;
      
      private var §[P§:Number;
      
      private var §&!?§:Number;
      
      public var §[t§:Number = 1;
      
      private var §0S§:Boolean = false;
      
      public var §&!<§:Number = 0;
      
      public var §2! §:Number = 0;
      
      protected var §"]§:Boolean = false;
      
      public var §7!O§:LevelObjectRenderer;
      
      private var §'6§:Sprite;
      
      private var §`!%§:Number = 0;
      
      private var §else§:Number = 0;
      
      private var §1!8§:Number = 0;
      
      private var §7!H§:Number = 1.0;
      
      private var §]G§:Boolean = false;
      
      private var §;!g§:Vector.<Vector.<Number>>;
      
      private var §&!2§:int = 10;
      
      private var §'P§:Boolean = true;
      
      public function LevelObject(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§;!g§ = new Vector.<Vector.<Number>>();
         super();
         this.§#>§ = param6;
         this.§<! § = LevelItemManager.§&!i§(param6);
         this.§'K§ = param1;
         this.§'6§ = param2;
         this.§7!H§ = param10;
         this.§]G§ = param11;
         this.§1!B§ = param5;
         this.§17§ = this.§<! §.§17§;
         this.§1A§ = this.§<! §.§]b§();
         this.§;!g§[0] = new Vector.<Number>();
         this.§;!g§[1] = new Vector.<Number>();
         this.§;!g§[2] = new Vector.<Number>();
         this.§7!O§ = new LevelObjectRenderer(this,param2,param4);
         if(!this.§7!O§.§?E§(param1.§"!>§.animationManager))
         {
            this.§7!O§.§,!=§(this.§1A§,this.§<! §.§<!I§(),this.§<! §.§"?§() / LevelMain.§8N§,this.§<! §.§'i§() / LevelMain.§8N§);
         }
         this.§7!O§.§1!?§(this.§1A§ == LevelItemShape.§,!4§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.final = this.mWorld.§=[§(_loc12_);
         this.final.§-!M§(this);
         if(this.§1A§ == LevelItemShape.§@Z§)
         {
            _loc14_ = b2PolygonShape.§=!M§(this.§<! §.shape.§[v§ * param10,this.§<! §.shape.§5%§ * param10);
            this.§5!5§ = this.final.CreateFixture2(_loc14_,this.§<! §.§'_§());
         }
         else if(this.§1A§ == LevelItemShape.§,!4§ || this.§1A§ == LevelItemShape.§ h§)
         {
            this.§5!5§ = this.final.CreateFixture2(this.§<! §.shape.§5!C§(param10),this.§<! §.§'_§());
         }
         this.§5!5§.§9!$§(this.§<! §.§!!b§());
         this.§5!5§.§9!_§(this.§<! §.§7c§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§'W§())
         {
            _loc13_.§6o§ = §?H§;
            _loc13_.§!W§ = 65535 & ~§[c§;
         }
         else if(this.§#>§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§#>§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§6o§ = §[c§;
            _loc13_.§!W§ = 65535 & ~§?H§;
         }
         this.§5!5§.§7!]§(_loc13_);
         this.§<g§ = this.§<! §.§+^§();
         if(this.§<! §.§]!3§ > 0)
         {
            this.§0o§ = this.§]!3§ = this.§<! §.§]!3§;
         }
         else
         {
            this.§0o§ = this.§]!3§ = Math.round(this.§%W§(true) * this.§<! §.§[!S§());
            if(this.§0o§ < 1)
            {
               this.§0o§ = this.§]!3§ = 1;
            }
         }
         if(this.§<! §.§17§ == §5s§.§#z§)
         {
            this.§'6§.visible = false;
         }
         else
         {
            this.§7!O§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§;V§(param9);
         }
         this.§[!`§();
         this.§8?§(0,1);
         this.§7!O§.§#R§(this.§<! §.shape);
      }
      
      public static function §=I§(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String = param2.§,]§[param1];
         if(_loc4_.length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§9!M§;
            }
            SoundEngine.§1h§(_loc4_,param3);
         }
      }
      
      public static function §1!'§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §%j§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function get front() : Boolean
      {
         return this.§]G§;
      }
      
      public function get §8!=§() : Number
      {
         return this.final.GetPosition().x;
      }
      
      public function get §?4§() : Number
      {
         return this.final.GetPosition().y;
      }
      
      public function get §8!&§() : §5s§
      {
         return this.§<! §;
      }
      
      public function get §9!-§() : Boolean
      {
         return this.§<g§ >= 0;
      }
      
      protected function get container() : LevelObjectManager
      {
         return this.§'K§;
      }
      
      public function get §#!S§() : Boolean
      {
         return this.§'P§;
      }
      
      public function set §#!S§(param1:Boolean) : void
      {
         this.§'P§ = param1;
      }
      
      public function set §;!D§(param1:Boolean) : void
      {
         this.§3J§ = param1;
      }
      
      public function set §@!i§(param1:uint) : void
      {
         this.§&!2§ = param1;
      }
      
      public function get §@!i§() : uint
      {
         return this.§&!2§;
      }
      
      public function get §@!Y§() : Boolean
      {
         return this.§0S§;
      }
      
      public function set §@!Y§(param1:Boolean) : void
      {
         this.§0S§ = param1;
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
         return this.§6G§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§6G§ = param1;
      }
      
      public function §2!L§(param1:b2FilterData) : void
      {
         if(this.§5!5§)
         {
            this.§5!5§.§7!]§(param1);
         }
      }
      
      protected function §%!`§(param1:String) : int
      {
         return §0'§.§%!`§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§<! §.§>t§();
         _loc3_.§3!E§ = true;
         _loc3_.§]!%§ = true;
         _loc3_.§,!e§ = true;
         _loc3_.§=!8§ = 1;
         _loc3_.§3^§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§<s§(this.§9f§());
            this.mWorld = null;
         }
         this.§7!O§.dispose();
         if(this.§'6§)
         {
            this.§'6§.dispose();
            this.§'6§ = null;
         }
         this.§5!5§ = null;
         this.§0!"§ = null;
         this.§<! § = null;
      }
      
      public function §;V§(param1:Number) : void
      {
         this.§9f§().§,&§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §=Y§() : Number
      {
         return (360 - this.§9f§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §4g§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§9f§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§3!K§();
         }
         if(param3)
         {
            this.§,!'§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§5!5§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§9f§().GetPosition().x >= param3 && this.§9f§().GetPosition().x <= param4 && this.§9f§().GetPosition().y >= param1 && this.§9f§().GetPosition().y <= param2;
      }
      
      public function §2!&§(param1:b2Vec2) : void
      {
         this.§0!"§ = param1;
      }
      
      public function §!!E§() : void
      {
         if(this.§0!"§)
         {
            this.§4g§(this.§0!"§,false);
            this.§0!"§ = null;
         }
      }
      
      public function §3!K§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§9f§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§9f§().§<O§(0);
         }
         else
         {
            this.§9f§().§<O§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §,!'§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§9f§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§;V§(_loc2_);
      }
      
      public function §5!#§(param1:Number) : void
      {
         this.§9f§().§<O§(param1);
      }
      
      public function §9f§() : b2Body
      {
         if(this.§5!5§ != null)
         {
            return this.§5!5§.GetBody();
         }
         return null;
      }
      
      public function § z§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§`!%§ = param1;
            this.§else§ = param2;
         }
         this.§9f§().GetPosition().x = this.§`!%§ * LevelMain.§8N§;
         this.§9f§().GetPosition().y = this.§else§ * LevelMain.§8N§;
      }
      
      public function §8?§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§"]§)
         {
            _loc3_ = true;
            this.§"]§ = false;
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
            this.§7!O§.§<3§();
         }
         if(this.§[t§ > 1 && this.§7!O§.§'Y§)
         {
            _loc4_ = 4 + (this.§7!O§.§'Y§.blurX - 4 + param2 / 20) % 28;
            this.§7!O§.§'Y§.blurX = _loc4_;
            this.§7!O§.§'Y§.blurY = _loc4_;
         }
         this.§7!O§.§,!<§(param2);
         if(§&!@§)
         {
            this.§9C§(param1);
         }
         else
         {
            this.§1!8§ = this.§-y§;
            this.§`!%§ = this.§#L§;
            this.§else§ = this.§0!X§;
         }
         this.§'6§.x = Math.round(this.§`!%§);
         this.§'6§.y = Math.round(this.§else§);
         this.§'6§.rotation = this.§1!8§ / 180 * Math.PI;
      }
      
      public function §[!`§() : void
      {
         var _loc1_:Number = this.§9f§().GetPosition().x;
         var _loc2_:Number = this.§9f§().GetPosition().y;
         this.§&!?§ = this.§-y§;
         this.§0!M§ = this.§#L§;
         this.§[P§ = this.§0!X§;
         this.§-y§ = this.§9f§().GetAngle() * (180 / Math.PI) % 360;
         this.§#L§ = _loc1_ / LevelMain.§8N§;
         this.§0!X§ = _loc2_ / LevelMain.§8N§;
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
      
      public function §9C§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§'K§.§"!>§.mLevelEngine.§[6§ * 1000;
         }
         param1 *= -1;
         if(this.§#L§ == this.§0!M§ || param1 == 0)
         {
            this.§&!<§ = 0;
            this.§`!%§ = this.§#L§;
         }
         else
         {
            this.§&!<§ = param1 * (this.§0!M§ - this.§#L§) / param2;
            this.§`!%§ = this.§#L§ + this.§&!<§;
         }
         if(this.§0!X§ == this.§[P§ || param1 == 0)
         {
            this.§2! § = 0;
            this.§else§ = this.§0!X§;
         }
         else
         {
            this.§2! § = param1 * (this.§[P§ - this.§0!X§) / param2;
            this.§else§ = this.§0!X§ + this.§2! §;
         }
         if(this.§-y§ == this.§&!?§ || param1 == 0)
         {
            this.§1!8§ = this.§-y§;
         }
         else if(this.§&!?§ > this.§-y§ && this.§&!?§ - this.§-y§ <= 180)
         {
            this.§1!8§ = this.§-y§ + param1 * (this.§&!?§ - this.§-y§) / param2;
         }
         else if(this.§&!?§ > this.§-y§ && this.§&!?§ - this.§-y§ > 180)
         {
            this.§1!8§ = this.§-y§ + param1 * (this.§&!?§ - 360 - this.§-y§) / param2;
         }
         else if(this.§&!?§ < this.§-y§ && this.§-y§ - this.§&!?§ <= 180)
         {
            this.§1!8§ = this.§-y§ + param1 * (this.§&!?§ - this.§-y§) / param2;
         }
         else if(this.§&!?§ < this.§-y§ && this.§-y§ - this.§&!?§ > 180)
         {
            this.§1!8§ = this.§-y§ + param1 * (this.§&!?§ + 360 - this.§-y§) / param2;
         }
      }
      
      public function get §`H§() : Point
      {
         if(!§&!@§)
         {
         }
         return null;
      }
      
      public function §'W§() : Boolean
      {
         return this.§17§ == §5s§.§-"§ || this.§17§ == §5s§.§3!h§;
      }
      
      public function §"!7§() : Boolean
      {
         return this.§17§ == §5s§.§4!T§;
      }
      
      public function §?O§() : Boolean
      {
         return this.§17§ == §5s§.§2!I§;
      }
      
      public function §3g§() : Boolean
      {
         return this.§17§ == §5s§.§3!h§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§17§ == §5s§.§`!J§;
      }
      
      public function isGround() : Boolean
      {
         return this.§17§ == §5s§.§#z§;
      }
      
      public function §9!&§() : Boolean
      {
         return this.§17§ == §5s§.§"!W§;
      }
      
      public function §8r§() : Boolean
      {
         return this.§17§ == §5s§.§'!W§;
      }
      
      public function §#!B§() : Boolean
      {
         if(this.§#>§ == "MISC_EXPLOSIVE_TNT" || this.§#>§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §`O§() : Boolean
      {
         return (this.§"!7§() || this.§9!&§() || this.§8r§()) && !this.§@!Y§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §5!c§() : Number
      {
         return Number(Math.sqrt(this.§9f§().GetLinearVelocity().x * this.§9f§().GetLinearVelocity().x + this.§9f§().GetLinearVelocity().y * this.§9f§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§?O§())
         {
            return this.§0o§;
         }
         if(!this.§'K§.§+!]§())
         {
            return this.§0o§;
         }
         if(this.§<g§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@r§(LevelItemSoundResource.§5!,§);
            }
            else if(param1 > 12)
            {
               this.§@r§(LevelItemSoundResource.§@m§);
            }
            else if(param1 > 3)
            {
               this.§@r§(LevelItemSoundResource.§10§);
            }
            return this.§0o§;
         }
         if(param1 <= this.§<g§)
         {
            if(param1 >= this.§<g§ / 2)
            {
               this.§@r§(LevelItemSoundResource.§10§);
            }
            if(this.§'W§() && this.§0o§ == this.§]!3§)
            {
               this.§0o§ = this.§]!3§ - 1;
            }
            return this.§0o§;
         }
         param1 -= this.§<g§;
         if(param2 && this.§`O§())
         {
            _loc7_ = Math.min(this.§0o§,int(param1));
            _loc8_ = LevelMain.§!!R§.getValue() * _loc7_;
            this.§'K§.§"!>§.addScore(_loc8_,ScoreCollector.§!!T§,this.§0o§ > param1 && param3,this.§9f§().GetPosition().x,this.§9f§().GetPosition().y,§0'§.§'>§(this.§#>§));
         }
         if(!(param5 && this.§3J§))
         {
            this.§0o§ -= param1;
         }
         if(this.§0o§ < 1 && this.§'W§())
         {
            this.§0o§ = 1;
         }
         if(this.§0o§ < 1)
         {
            this.§0o§ = 0;
            LevelObject.§=I§(LevelItemSoundResource.§5!,§,this.§<! §.§,!9§,"ChannelDestroyed");
         }
         else
         {
            this.§@r§(LevelItemSoundResource.§@m§);
            this.addDamageParticles(this.§'K§.§"!>§.particles,param1);
         }
         this.§7!O§.setDamagedFrame();
         return this.§0o§;
      }
      
      public function §@r§(param1:int) : void
      {
         LevelObject.§=I§(param1,this.§<! §.§,!9§);
      }
      
      public function §;!'§(param1:String) : Number
      {
         return this.§<! §.material.override(param1) * this.§[t§;
      }
      
      public function §3v§(param1:String) : Number
      {
         return this.§<! §.material.§`2§(param1);
      }
      
      public function §8k§() : String
      {
         return this.§<! §.material.mName;
      }
      
      public function §^[§() : Number
      {
         return this.§<! §.§[!S§();
      }
      
      public function § ! §() : int
      {
         return this.§<! §.§[f§();
      }
      
      public function §]@§() : Boolean
      {
         return this.§9f§().IsAwake() && (this.§'W§() && this.§0o§ == this.§]!3§ || Math.abs(this.§9f§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§9f§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§9f§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §&E§() : Boolean
      {
         if(!this.§9f§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§>!?§();
         if(Math.abs(this.§0j§(this.§;!g§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§0j§(this.§;!g§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§0j§(this.§;!g§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §0j§(param1:Vector.<Number>) : Number
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
      
      private function §>!?§() : void
      {
         this.§;!g§[0].push(this.§9f§().GetLinearVelocity().x);
         this.§;!g§[1].push(this.§9f§().GetLinearVelocity().y);
         this.§;!g§[2].push(this.§9f§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§;!g§[_loc1_].length > this.§&!2§)
            {
               this.§;!g§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §;!4§(param1:Number = 3) : void
      {
         this.§[t§ = param1;
         if(this.§[t§ > 1)
         {
            this.§7!O§.§;!!§();
         }
         else
         {
            this.§7!O§.§'Y§ = null;
         }
      }
      
      public function §%W§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§<! §.§>t§() == LevelItemMaterial.§!!&§)
         {
            _loc2_ = this.§7!O§.mW * this.§7!O§.mH * (LevelMain.§8N§ * LevelMain.§8N§);
         }
         else
         {
            _loc2_ = this.§9f§().GetMass() / this.§5!5§.§]!&§();
            if(param1)
            {
               _loc2_ *= this.§7`§();
            }
            _loc2_ /= this.§7!H§ * this.§7!H§;
         }
         return _loc2_;
      }
      
      public function §7`§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§7!O§.§]N§ - 1) / 10);
      }
      
      public function §2A§(param1:Number) : void
      {
         var _loc2_:Number = this.§9f§().GetLinearVelocity().x;
         var _loc3_:Number = this.§9f§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§9f§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
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
      
      public function §@!C§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§9f§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§9f§().§4Q§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = this.§=Y§();
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
            this.§;V§(_loc4_);
         }
         var _loc3_:Number = this.§=Y§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§;V§(_loc3_);
      }
      
      public function §1!X§(param1:Number) : void
      {
         var _loc2_:Number = §1!'§(this.§9f§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §%j§(_loc2_);
         this.§9f§().§,&§(_loc2_);
      }
      
      public function §2!S§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§9f§().GetPosition().Copy();
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
         this.§9f§().§4Q§(_loc13_);
      }
   }
}
