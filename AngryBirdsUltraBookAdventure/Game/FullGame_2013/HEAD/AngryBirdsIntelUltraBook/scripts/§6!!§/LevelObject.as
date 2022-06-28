package §6!!§
{
   import §!!0§.SoundEngine;
   import §#!,§.Sprite;
   import §+!g§.b2Settings;
   import §0!3§.b2PolygonShape;
   import §<u§.Log;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2BodyDef;
   import §>!L§.b2FilterData;
   import §>!L§.b2Fixture;
   import §>!L§.b2World;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.LevelMain;
   import §]!@§.ScoreCollector;
   import flash.geom.Point;
   import §package§.§2Y§;
   import §package§.LevelItemManager;
   import §package§.LevelItemMaterial;
   import §package§.LevelItemShape;
   import §package§.LevelItemSoundResource;
   
   public class LevelObject
   {
      
      public static const §%!>§:uint = 1 << 1;
      
      public static const §5!$§:uint = 1 << 2;
      
      public static const §,t§:uint = 1 << 3;
      
      public static const §8o§:uint = 1 << 4;
      
      public static const §7L§:Boolean = true;
       
      
      private var §^k§:String;
      
      private var §]!S§:int;
      
      private var §1!]§:int;
      
      public var § I§:String;
      
      public var §4o§:int;
      
      private var §@!i§:§2Y§;
      
      private var §2$§:LevelObjectManager;
      
      private var mWorld:b2World;
      
      protected var §@J§:String = "";
      
      protected var §#c§:int = 1;
      
      private var §73§:b2Fixture;
      
      private var §6!X§:b2Body;
      
      private var §7U§:b2Vec2;
      
      public var §3W§:Number;
      
      public var §>!"§:Number;
      
      private var §-!M§:Number;
      
      private var §88§:Boolean = false;
      
      private var §2b§:Number;
      
      private var §+!]§:Number;
      
      private var §`!3§:Number;
      
      private var §<!3§:Number;
      
      private var §@4§:Number;
      
      private var §;!2§:Number;
      
      public var §?!9§:Number = 1;
      
      private var §2!E§:Boolean = false;
      
      public var §0#§:Number = 0;
      
      public var §-!I§:Number = 0;
      
      protected var §[c§:Boolean = false;
      
      public var §`!P§:LevelObjectRenderer;
      
      private var §"!,§:Sprite;
      
      private var §1X§:Number = 0;
      
      private var §`J§:Number = 0;
      
      private var §&Z§:Number = 0;
      
      private var §?C§:Number = 1.0;
      
      private var §9z§:Boolean = false;
      
      private var §"V§:Vector.<Vector.<Number>>;
      
      private var §6!3§:int = 10;
      
      private var § null§:Boolean = true;
      
      public function LevelObject(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§"V§ = new Vector.<Vector.<Number>>();
         super();
         this.§ I§ = param6;
         this.§@!i§ = LevelItemManager.§-`§(param6);
         this.§2$§ = param1;
         this.§"!,§ = param2;
         this.§?C§ = param10;
         this.§9z§ = param11;
         this.§]!S§ = param5;
         this.§4o§ = this.§@!i§.§4o§;
         this.§1!]§ = this.§@!i§.§5t§();
         this.§"V§[0] = new Vector.<Number>();
         this.§"V§[1] = new Vector.<Number>();
         this.§"V§[2] = new Vector.<Number>();
         this.§`!P§ = new LevelObjectRenderer(this,param2,param4);
         if(!this.§`!P§.§&`§(param1.§`s§.animationManager))
         {
            this.§`!P§.§]!P§(this.§1!]§,this.§@!i§.§2[§(),this.§@!i§.§2V§() / LevelMain.§@!d§,this.§@!i§.§7!B§() / LevelMain.§@!d§);
         }
         this.§`!P§.§%v§(this.§1!]§ == LevelItemShape.§1<§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§6!X§ = this.mWorld.§1!-§(_loc12_);
         this.§6!X§.§9`§(this);
         if(this.§1!]§ == LevelItemShape.§7!7§)
         {
            _loc14_ = b2PolygonShape.§69§(this.§@!i§.shape.§,<§ * param10,this.§@!i§.shape.§5,§ * param10);
            this.§73§ = this.§6!X§.CreateFixture2(_loc14_,this.§@!i§.§<^§());
         }
         else if(this.§1!]§ == LevelItemShape.§1<§ || this.§1!]§ == LevelItemShape.§!!&§)
         {
            this.§73§ = this.§6!X§.CreateFixture2(this.§@!i§.shape.§=p§(param10),this.§@!i§.§<^§());
         }
         this.§73§.§!!<§(this.§@!i§.§%_§());
         this.§73§.§5V§(this.§@!i§.§<!<§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§]![§())
         {
            _loc13_.§4!<§ = §%!>§;
            _loc13_.§"!`§ = 65535 & ~§5!$§;
         }
         else if(this.§ I§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§ I§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§4!<§ = §5!$§;
            _loc13_.§"!`§ = 65535 & ~§%!>§;
         }
         this.§73§.§^B§(_loc13_);
         this.§-!M§ = this.§@!i§.§`! §();
         if(this.§@!i§.§>!"§ > 0)
         {
            this.§3W§ = this.§>!"§ = this.§@!i§.§>!"§;
         }
         else
         {
            this.§3W§ = this.§>!"§ = Math.round(this.§0!"§(true) * this.§@!i§.§1G§());
            if(this.§3W§ < 1)
            {
               this.§3W§ = this.§>!"§ = 1;
            }
         }
         if(this.§@!i§.§4o§ == §2Y§.§?Y§)
         {
            this.§"!,§.visible = false;
         }
         else
         {
            this.§`!P§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§'g§(param9);
         }
         this.§`!Z§();
         this.§<&§(0,1);
         this.§`!P§.§`!I§(this.§@!i§.shape);
      }
      
      public static function §1!2§(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String = param2.§,^§[param1];
         if(_loc4_.length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§?!g§;
            }
            SoundEngine.§[!D§(_loc4_,param3);
         }
      }
      
      public static function §'r§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §`!;§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function get front() : Boolean
      {
         return this.§9z§;
      }
      
      public function get §'l§() : Number
      {
         return this.§6!X§.GetPosition().x;
      }
      
      public function get §>z§() : Number
      {
         return this.§6!X§.GetPosition().y;
      }
      
      public function get §0[§() : §2Y§
      {
         return this.§@!i§;
      }
      
      public function get §9!]§() : Boolean
      {
         return this.§-!M§ >= 0;
      }
      
      protected function get container() : LevelObjectManager
      {
         return this.§2$§;
      }
      
      public function get §3!S§() : Boolean
      {
         return this.§ null§;
      }
      
      public function set §3!S§(param1:Boolean) : void
      {
         this.§ null§ = param1;
      }
      
      public function set §4!i§(param1:Boolean) : void
      {
         this.§88§ = param1;
      }
      
      public function set §+!8§(param1:uint) : void
      {
         this.§6!3§ = param1;
      }
      
      public function get §+!8§() : uint
      {
         return this.§6!3§;
      }
      
      public function get §`!f§() : Boolean
      {
         return this.§2!E§;
      }
      
      public function set §`!f§(param1:Boolean) : void
      {
         this.§2!E§ = param1;
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
         return this.§^k§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§^k§ = param1;
      }
      
      public function §=a§(param1:b2FilterData) : void
      {
         if(this.§73§)
         {
            this.§73§.§^B§(param1);
         }
      }
      
      protected function § do§(param1:String) : int
      {
         return § !_§.§ do§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§@!i§.§#B§();
         _loc3_.§^!%§ = true;
         _loc3_.§&!^§ = true;
         _loc3_.§9!§ = true;
         _loc3_.§4n§ = 1;
         _loc3_.§ 5§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§=!]§(this.§@!'§());
            this.mWorld = null;
         }
         this.§`!P§.dispose();
         if(this.§"!,§)
         {
            this.§"!,§.dispose();
            this.§"!,§ = null;
         }
         this.§73§ = null;
         this.§7U§ = null;
         this.§@!i§ = null;
      }
      
      public function §'g§(param1:Number) : void
      {
         this.§@!'§().§,!&§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function § %§() : Number
      {
         return (360 - this.§@!'§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §'x§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§@!'§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§>!=§();
         }
         if(param3)
         {
            this.§4!9§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§73§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§@!'§().GetPosition().x >= param3 && this.§@!'§().GetPosition().x <= param4 && this.§@!'§().GetPosition().y >= param1 && this.§@!'§().GetPosition().y <= param2;
      }
      
      public function §&!d§(param1:b2Vec2) : void
      {
         this.§7U§ = param1;
      }
      
      public function §4a§() : void
      {
         if(this.§7U§)
         {
            this.§'x§(this.§7U§,false);
            this.§7U§ = null;
         }
      }
      
      public function §>!=§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§@!'§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§@!'§().§%#§(0);
         }
         else
         {
            this.§@!'§().§%#§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §4!9§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§@!'§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§'g§(_loc2_);
      }
      
      public function §!!g§(param1:Number) : void
      {
         this.§@!'§().§%#§(param1);
      }
      
      public function §@!'§() : b2Body
      {
         if(this.§73§ != null)
         {
            return this.§73§.GetBody();
         }
         return null;
      }
      
      public function § T§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§1X§ = param1;
            this.§`J§ = param2;
         }
         this.§@!'§().GetPosition().x = this.§1X§ * LevelMain.§@!d§;
         this.§@!'§().GetPosition().y = this.§`J§ * LevelMain.§@!d§;
      }
      
      public function §<&§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§[c§)
         {
            _loc3_ = true;
            this.§[c§ = false;
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
            this.§`!P§.§@!2§();
         }
         if(this.§?!9§ > 1 && this.§`!P§.§+Q§)
         {
            _loc4_ = 4 + (this.§`!P§.§+Q§.blurX - 4 + param2 / 20) % 28;
            this.§`!P§.§+Q§.blurX = _loc4_;
            this.§`!P§.§+Q§.blurY = _loc4_;
         }
         this.§`!P§.§;q§(param2);
         if(§7L§)
         {
            this.§<k§(param1);
         }
         else
         {
            this.§&Z§ = this.§`!3§;
            this.§1X§ = this.§2b§;
            this.§`J§ = this.§+!]§;
         }
         this.§"!,§.x = Math.round(this.§1X§);
         this.§"!,§.y = Math.round(this.§`J§);
         this.§"!,§.rotation = this.§&Z§ / 180 * Math.PI;
      }
      
      public function §`!Z§() : void
      {
         var _loc1_:Number = this.§@!'§().GetPosition().x;
         var _loc2_:Number = this.§@!'§().GetPosition().y;
         this.§;!2§ = this.§`!3§;
         this.§<!3§ = this.§2b§;
         this.§@4§ = this.§+!]§;
         this.§`!3§ = this.§@!'§().GetAngle() * (180 / Math.PI) % 360;
         this.§2b§ = _loc1_ / LevelMain.§@!d§;
         this.§+!]§ = _loc2_ / LevelMain.§@!d§;
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
      
      public function §<k§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§2$§.§`s§.mLevelEngine.§7!9§ * 1000;
         }
         param1 *= -1;
         if(this.§2b§ == this.§<!3§ || param1 == 0)
         {
            this.§0#§ = 0;
            this.§1X§ = this.§2b§;
         }
         else
         {
            this.§0#§ = param1 * (this.§<!3§ - this.§2b§) / param2;
            this.§1X§ = this.§2b§ + this.§0#§;
         }
         if(this.§+!]§ == this.§@4§ || param1 == 0)
         {
            this.§-!I§ = 0;
            this.§`J§ = this.§+!]§;
         }
         else
         {
            this.§-!I§ = param1 * (this.§@4§ - this.§+!]§) / param2;
            this.§`J§ = this.§+!]§ + this.§-!I§;
         }
         if(this.§`!3§ == this.§;!2§ || param1 == 0)
         {
            this.§&Z§ = this.§`!3§;
         }
         else if(this.§;!2§ > this.§`!3§ && this.§;!2§ - this.§`!3§ <= 180)
         {
            this.§&Z§ = this.§`!3§ + param1 * (this.§;!2§ - this.§`!3§) / param2;
         }
         else if(this.§;!2§ > this.§`!3§ && this.§;!2§ - this.§`!3§ > 180)
         {
            this.§&Z§ = this.§`!3§ + param1 * (this.§;!2§ - 360 - this.§`!3§) / param2;
         }
         else if(this.§;!2§ < this.§`!3§ && this.§`!3§ - this.§;!2§ <= 180)
         {
            this.§&Z§ = this.§`!3§ + param1 * (this.§;!2§ - this.§`!3§) / param2;
         }
         else if(this.§;!2§ < this.§`!3§ && this.§`!3§ - this.§;!2§ > 180)
         {
            this.§&Z§ = this.§`!3§ + param1 * (this.§;!2§ + 360 - this.§`!3§) / param2;
         }
      }
      
      public function get §51§() : Point
      {
         if(!§7L§)
         {
         }
         return null;
      }
      
      public function §]![§() : Boolean
      {
         return this.§4o§ == §2Y§.§6!c§ || this.§4o§ == §2Y§.§3F§;
      }
      
      public function §;!C§() : Boolean
      {
         return this.§4o§ == §2Y§.§<%§;
      }
      
      public function §4!b§() : Boolean
      {
         return this.§4o§ == §2Y§.§5!a§;
      }
      
      public function §do §() : Boolean
      {
         return this.§4o§ == §2Y§.§3F§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§4o§ == §2Y§.§-Z§;
      }
      
      public function isGround() : Boolean
      {
         return this.§4o§ == §2Y§.§?Y§;
      }
      
      public function §9s§() : Boolean
      {
         return this.§4o§ == §2Y§.§9!0§;
      }
      
      public function §6F§() : Boolean
      {
         return this.§4o§ == §2Y§.§?N§;
      }
      
      public function §!R§() : Boolean
      {
         if(this.§ I§ == "MISC_EXPLOSIVE_TNT" || this.§ I§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §7!F§() : Boolean
      {
         return (this.§;!C§() || this.§9s§() || this.§6F§()) && !this.§`!f§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §+l§() : Number
      {
         return Number(Math.sqrt(this.§@!'§().GetLinearVelocity().x * this.§@!'§().GetLinearVelocity().x + this.§@!'§().GetLinearVelocity().y * this.§@!'§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§4!b§())
         {
            return this.§3W§;
         }
         if(!this.§2$§.§<!?§())
         {
            return this.§3W§;
         }
         if(this.§-!M§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§!d§(LevelItemSoundResource.§=z§);
            }
            else if(param1 > 12)
            {
               this.§!d§(LevelItemSoundResource.§7!#§);
            }
            else if(param1 > 3)
            {
               this.§!d§(LevelItemSoundResource.§9!@§);
            }
            return this.§3W§;
         }
         if(param1 <= this.§-!M§)
         {
            if(param1 >= this.§-!M§ / 2)
            {
               this.§!d§(LevelItemSoundResource.§9!@§);
            }
            if(this.§]![§() && this.§3W§ == this.§>!"§)
            {
               this.§3W§ = this.§>!"§ - 1;
            }
            return this.§3W§;
         }
         param1 -= this.§-!M§;
         if(param2 && this.§7!F§())
         {
            _loc7_ = Math.min(this.§3W§,int(param1));
            _loc8_ = LevelMain.§2!S§.getValue() * _loc7_;
            this.§2$§.§`s§.addScore(_loc8_,ScoreCollector.§"!R§,this.§3W§ > param1 && param3,this.§@!'§().GetPosition().x,this.§@!'§().GetPosition().y,§ !_§.§5U§(this.§ I§));
         }
         if(!(param5 && this.§88§))
         {
            this.§3W§ -= param1;
         }
         if(this.§3W§ < 1 && this.§]![§())
         {
            this.§3W§ = 1;
         }
         if(this.§3W§ < 1)
         {
            this.§3W§ = 0;
            LevelObject.§1!2§(LevelItemSoundResource.§=z§,this.§@!i§.§%!K§,"ChannelDestroyed");
         }
         else
         {
            this.§!d§(LevelItemSoundResource.§7!#§);
            this.addDamageParticles(this.§2$§.§`s§.particles,param1);
         }
         this.§`!P§.setDamagedFrame();
         return this.§3W§;
      }
      
      public function §!d§(param1:int) : void
      {
         LevelObject.§1!2§(param1,this.§@!i§.§%!K§);
      }
      
      public function §8v§(param1:String) : Number
      {
         return this.§@!i§.material.§<C§(param1) * this.§?!9§;
      }
      
      public function §&j§(param1:String) : Number
      {
         return this.§@!i§.material.§>;§(param1);
      }
      
      public function §6!L§() : String
      {
         return this.§@!i§.material.mName;
      }
      
      public function §^!Z§() : Number
      {
         return this.§@!i§.§1G§();
      }
      
      public function §[n§() : int
      {
         return this.§@!i§.§1!7§();
      }
      
      public function §>!%§() : Boolean
      {
         return this.§@!'§().IsAwake() && (this.§]![§() && this.§3W§ == this.§>!"§ || Math.abs(this.§@!'§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§@!'§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§@!'§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §5_§() : Boolean
      {
         if(!this.§@!'§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§+`§();
         if(Math.abs(this.§;!9§(this.§"V§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§;!9§(this.§"V§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§;!9§(this.§"V§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §;!9§(param1:Vector.<Number>) : Number
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
      
      private function §+`§() : void
      {
         this.§"V§[0].push(this.§@!'§().GetLinearVelocity().x);
         this.§"V§[1].push(this.§@!'§().GetLinearVelocity().y);
         this.§"V§[2].push(this.§@!'§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§"V§[_loc1_].length > this.§6!3§)
            {
               this.§"V§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §+!c§(param1:Number = 3) : void
      {
         this.§?!9§ = param1;
         if(this.§?!9§ > 1)
         {
            this.§`!P§.§4!W§();
         }
         else
         {
            this.§`!P§.§+Q§ = null;
         }
      }
      
      public function §0!"§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§@!i§.§#B§() == LevelItemMaterial.§>s§)
         {
            _loc2_ = this.§`!P§.mW * this.§`!P§.mH * (LevelMain.§@!d§ * LevelMain.§@!d§);
         }
         else
         {
            _loc2_ = this.§@!'§().GetMass() / this.§73§.§4@§();
            if(param1)
            {
               _loc2_ *= this.§1!A§();
            }
            _loc2_ /= this.§?C§ * this.§?C§;
         }
         return _loc2_;
      }
      
      public function §1!A§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§`!P§.§ !S§ - 1) / 10);
      }
      
      public function §&%§(param1:Number) : void
      {
         var _loc2_:Number = this.§@!'§().GetLinearVelocity().x;
         var _loc3_:Number = this.§@!'§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§@!'§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
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
      
      public function §02§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§@!'§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§@!'§().§"q§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = this.§ %§();
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
            this.§'g§(_loc4_);
         }
         var _loc3_:Number = this.§ %§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§'g§(_loc3_);
      }
      
      public function § !#§(param1:Number) : void
      {
         var _loc2_:Number = §'r§(this.§@!'§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §`!;§(_loc2_);
         this.§@!'§().§,!&§(_loc2_);
      }
      
      public function §[+§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§@!'§().GetPosition().Copy();
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
         this.§@!'§().§"q§(_loc13_);
      }
   }
}
