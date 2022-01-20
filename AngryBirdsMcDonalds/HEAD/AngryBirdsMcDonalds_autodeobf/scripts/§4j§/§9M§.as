package §4j§
{
   import § !J§.§%M§;
   import § !J§.§[m§;
   import §'+§.§1u§;
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §8T§.b2BodyDef;
   import §8T§.b2FilterData;
   import §8T§.b2Fixture;
   import §8T§.b2World;
   import §9!§.§']§;
   import §9!§.§,!l§;
   import §9!§.§4!j§;
   import §9!§.§9'§;
   import §9!§.§?g§;
   import §<!D§.b2PolygonShape;
   import §?!n§.b2Settings;
   import §[!4§.§-#§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   import flash.geom.Point;
   
   public class §9M§
   {
      
      public static const §0q§:uint = 1 << 1;
      
      public static const §>!5§:uint = 1 << 2;
      
      public static const §?a§:uint = 1 << 3;
      
      public static const §3q§:uint = 1 << 4;
      
      public static const §`J§:Boolean = true;
      
      public static const §#&§:Number = 5;
      
      public static const §8F§:Number = 10;
       
      
      private var §4!q§:String;
      
      private var §]$§:int;
      
      private var §8!M§:int;
      
      public var §`!p§:String;
      
      public var §^!U§:int;
      
      protected var §!!E§:§?g§;
      
      private var §=d§:§0K§;
      
      private var mWorld:b2World;
      
      protected var §!!$§:String = "";
      
      protected var § #§:int = 1;
      
      private var §#n§:b2Fixture;
      
      private var §<!h§:b2Body;
      
      private var §^!A§:b2Vec2;
      
      public var §4!6§:Number;
      
      public var §%!^§:Number;
      
      private var §%2§:Number;
      
      private var §02§:Boolean = false;
      
      private var §;R§:Number;
      
      private var §%!O§:Number;
      
      private var §@!"§:Number;
      
      private var §0a§:Number;
      
      private var §-]§:Number;
      
      private var §#^§:Number;
      
      public var §@!U§:Number = 1;
      
      private var §61§:Boolean = false;
      
      public var §2U§:Number = 0;
      
      public var §<!L§:Number = 0;
      
      protected var §-8§:Boolean = false;
      
      public var §%!$§:§?!c§;
      
      private var §]!M§:Sprite;
      
      private var §=y§:Number = 0;
      
      private var §#J§:Number = 0;
      
      private var §#!g§:Number = 0;
      
      private var §'W§:Number = 1.0;
      
      private var §+7§:Boolean = false;
      
      protected var §5Q§:§`4§;
      
      private var §4u§:Boolean = true;
      
      public function §9M§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§`!p§ = param6;
         this.§!!E§ = §,!l§.§<!<§(param6);
         this.§=d§ = param1;
         this.§]!M§ = param2;
         this.§'W§ = param10;
         this.§+7§ = param11;
         this.§]$§ = param5;
         this.§^!U§ = this.§!!E§.§^!U§;
         this.§8!M§ = this.§!!E§.§>!0§();
         this.§5Q§ = new §`4§(§#&§,§8F§);
         this.§%!$§ = new §?!c§(this,param2,param4);
         if(!this.§%!$§.§0C§(param1.mLevelMain.animationManager))
         {
            this.§%!$§.§3W§(this.§8!M§,this.§!!E§.§-v§(),this.§!!E§.§3&§() / §%M§.§'!Y§,this.§!!E§.§#!f§() / §%M§.§'!Y§);
         }
         this.§%!$§.§&Y§(this.§8!M§ == §4!j§.§'!Q§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§<!h§ = this.mWorld.§&5§(_loc12_);
         this.§<!h§.§7K§(this);
         if(this.§8!M§ == §4!j§.§3!h§)
         {
            _loc14_ = b2PolygonShape.§ !Q§(this.§!!E§.shape.§9E§ * param10,this.§!!E§.shape.§;`§ * param10);
            this.§#n§ = this.§<!h§.CreateFixture2(_loc14_,this.§!!E§.§ !V§());
         }
         else if(this.§8!M§ == §4!j§.§'!Q§ || this.§8!M§ == §4!j§.§<P§)
         {
            this.§#n§ = this.§<!h§.CreateFixture2(this.§!!E§.shape.§<!8§(param10),this.§!!E§.§ !V§());
         }
         this.§#n§.§`N§(this.§!!E§.§0!%§());
         this.§#n§.§'!L§(this.§!!E§.§ ! §());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§0!P§())
         {
            _loc13_.§`!-§ = §0q§;
            _loc13_.§'H§ = 65535 & ~§>!5§;
         }
         else if(this.§`!p§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§`!p§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§`!-§ = §>!5§;
            _loc13_.§'H§ = 65535 & ~§0q§;
         }
         this.§#n§.§-d§(_loc13_);
         this.§%2§ = this.§!!E§.§70§();
         if(this.§!!E§.§%!^§ > 0)
         {
            this.§4!6§ = this.§%!^§ = this.§!!E§.§%!^§;
         }
         else
         {
            this.§4!6§ = this.§%!^§ = Math.round(this.§>+§(true) * this.§!!E§.§1=§());
            if(this.§4!6§ < 1)
            {
               this.§4!6§ = this.§%!^§ = 1;
            }
         }
         if(this.§!!E§.§^!U§ == §?g§.§'r§)
         {
            this.§]!M§.visible = false;
         }
         else
         {
            this.§%!$§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§7,§(param9);
         }
         this.§'$§();
         this.§3'§(0,1);
         this.§%!$§.§-"§(this.§!!E§.shape);
      }
      
      public static function §=!B§(param1:int, param2:§9'§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§>w§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§-,§;
            }
            §-#§.§"Q§(_loc4_,param3);
         }
      }
      
      public static function §"!q§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §&!I§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!M§;
      }
      
      public function get x() : Number
      {
         return this.§=y§;
      }
      
      public function get y() : Number
      {
         return this.§#J§;
      }
      
      public function get scale() : Number
      {
         return this.§'W§;
      }
      
      public function get front() : Boolean
      {
         return this.§+7§;
      }
      
      public function get §%J§() : Number
      {
         return this.§<!h§.GetPosition().x;
      }
      
      public function get §-!S§() : Number
      {
         return this.§<!h§.GetPosition().y;
      }
      
      public function get §?!D§() : §?g§
      {
         return this.§!!E§;
      }
      
      public function get §3!2§() : Boolean
      {
         return this.§%2§ >= 0;
      }
      
      public function get container() : §0K§
      {
         return this.§=d§;
      }
      
      public function get §>k§() : Boolean
      {
         return this.§4u§;
      }
      
      public function set §>k§(param1:Boolean) : void
      {
         this.§4u§ = param1;
      }
      
      public function set §'3§(param1:Boolean) : void
      {
         this.§02§ = param1;
      }
      
      public function set §>!X§(param1:uint) : void
      {
         this.§5Q§.§>!X§ = param1;
      }
      
      public function get §>!X§() : uint
      {
         return this.§5Q§.§>!X§;
      }
      
      public function get §^s§() : Boolean
      {
         return this.§61§;
      }
      
      public function set §^s§(param1:Boolean) : void
      {
         this.§61§ = param1;
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
         return this.§4!q§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§4!q§ = param1;
      }
      
      public function §+@§(param1:b2FilterData) : void
      {
         if(this.§#n§)
         {
            this.§#n§.§-d§(param1);
         }
      }
      
      protected function §0!l§(param1:String) : int
      {
         return §,]§.§0!l§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§!!E§.§;!#§();
         _loc3_.§!!_§ = true;
         _loc3_.§!a§ = true;
         _loc3_.§`d§ = true;
         _loc3_.§^!E§ = 1;
         _loc3_.§&!1§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§!!Y§(this.§3H§());
            this.mWorld = null;
         }
         this.§%!$§.dispose();
         if(this.§]!M§)
         {
            this.§]!M§.dispose();
            this.§]!M§ = null;
         }
         this.§#n§ = null;
         this.§^!A§ = null;
         this.§!!E§ = null;
      }
      
      public function §7,§(param1:Number) : void
      {
         this.§3H§().§ !;§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §&!G§() : Number
      {
         return (360 - this.§3H§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §>4§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§3H§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§4!?§();
         }
         if(param3)
         {
            this.§>!H§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§#n§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§3H§().GetPosition().x >= param3 && this.§3H§().GetPosition().x <= param4 && this.§3H§().GetPosition().y >= param1 && this.§3H§().GetPosition().y <= param2;
      }
      
      public function §!!1§(param1:b2Vec2) : void
      {
         this.§^!A§ = param1;
      }
      
      public function §]!Y§() : void
      {
         if(this.§^!A§)
         {
            this.§>4§(this.§^!A§,false);
            this.§^!A§ = null;
         }
      }
      
      public function §4!?§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§3H§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§3H§().§->§(0);
         }
         else
         {
            this.§3H§().§->§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §>!H§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§3H§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§7,§(_loc2_);
      }
      
      public function §;!$§(param1:Number) : void
      {
         this.§3H§().§->§(param1);
      }
      
      public function §3H§() : b2Body
      {
         if(this.§#n§ != null)
         {
            return this.§#n§.GetBody();
         }
         return null;
      }
      
      public function §2!k§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§=y§ = param1;
            this.§#J§ = param2;
         }
         this.§3H§().GetPosition().x = this.§=y§ * §%M§.§'!Y§;
         this.§3H§().GetPosition().y = this.§#J§ * §%M§.§'!Y§;
      }
      
      public function §3'§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§-8§)
         {
            _loc3_ = true;
            this.§-8§ = false;
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
            this.§%!$§.§;b§();
         }
         if(this.§@!U§ > 1 && this.§%!$§.§?!`§)
         {
            _loc4_ = 4 + (this.§%!$§.§?!`§.blurX - 4 + param2 / 20) % 28;
            this.§%!$§.§?!`§.blurX = _loc4_;
            this.§%!$§.§?!`§.blurY = _loc4_;
         }
         this.§%!$§.§`!S§(param2);
         if(§`J§)
         {
            this.§+!C§(param1);
         }
         else
         {
            this.§#!g§ = this.§@!"§;
            this.§=y§ = this.§;R§;
            this.§#J§ = this.§%!O§;
         }
         this.§]!M§.x = Math.round(this.§=y§);
         this.§]!M§.y = Math.round(this.§#J§);
         this.§]!M§.rotation = this.§#!g§ / 180 * Math.PI;
      }
      
      public function §'$§() : void
      {
         var _loc1_:Number = this.§3H§().GetPosition().x;
         var _loc2_:Number = this.§3H§().GetPosition().y;
         this.§#^§ = this.§@!"§;
         this.§0a§ = this.§;R§;
         this.§-]§ = this.§%!O§;
         this.§@!"§ = this.§3H§().GetAngle() * (180 / Math.PI) % 360;
         this.§;R§ = _loc1_ / §%M§.§'!Y§;
         this.§%!O§ = _loc2_ / §%M§.§'!Y§;
         this.§5Q§.§[!E§();
         this.§5Q§.§;u§(this.§3H§());
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
      
      public function §+!C§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §1u§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§=d§.mLevelMain.mLevelEngine.§,?§ * 1000;
         }
         param1 *= -1;
         if(this.§;R§ == this.§0a§ || param1 == 0)
         {
            this.§2U§ = 0;
            this.§=y§ = this.§;R§;
         }
         else
         {
            this.§2U§ = param1 * (this.§0a§ - this.§;R§) / param2;
            this.§=y§ = this.§;R§ + this.§2U§;
         }
         if(this.§%!O§ == this.§-]§ || param1 == 0)
         {
            this.§<!L§ = 0;
            this.§#J§ = this.§%!O§;
         }
         else
         {
            this.§<!L§ = param1 * (this.§-]§ - this.§%!O§) / param2;
            this.§#J§ = this.§%!O§ + this.§<!L§;
         }
         if(this.§@!"§ == this.§#^§ || param1 == 0)
         {
            this.§#!g§ = this.§@!"§;
         }
         else if(this.§#^§ > this.§@!"§ && this.§#^§ - this.§@!"§ <= 180)
         {
            this.§#!g§ = this.§@!"§ + param1 * (this.§#^§ - this.§@!"§) / param2;
         }
         else if(this.§#^§ > this.§@!"§ && this.§#^§ - this.§@!"§ > 180)
         {
            this.§#!g§ = this.§@!"§ + param1 * (this.§#^§ - 360 - this.§@!"§) / param2;
         }
         else if(this.§#^§ < this.§@!"§ && this.§@!"§ - this.§#^§ <= 180)
         {
            this.§#!g§ = this.§@!"§ + param1 * (this.§#^§ - this.§@!"§) / param2;
         }
         else if(this.§#^§ < this.§@!"§ && this.§@!"§ - this.§#^§ > 180)
         {
            this.§#!g§ = this.§@!"§ + param1 * (this.§#^§ + 360 - this.§@!"§) / param2;
         }
      }
      
      public function get §0T§() : Point
      {
         if(!§`J§)
         {
         }
         return null;
      }
      
      public function §0!P§() : Boolean
      {
         return this.§^!U§ == §?g§.§9"§ || this.§^!U§ == §?g§.§[W§;
      }
      
      public function §?!#§() : Boolean
      {
         return this.§^!U§ == §?g§.§7n§;
      }
      
      public function §@q§() : Boolean
      {
         return this.§^!U§ == §?g§.§;f§;
      }
      
      public function §9,§() : Boolean
      {
         return this.§^!U§ == §?g§.§[W§;
      }
      
      public function §@!Z§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§^!U§ == §?g§.§8!<§;
      }
      
      public function isGround() : Boolean
      {
         return this.§^!U§ == §?g§.§'r§;
      }
      
      public function dynamic() : Boolean
      {
         return this.§^!U§ == §?g§.§ L§;
      }
      
      public function §=z§() : Boolean
      {
         return this.§^!U§ == §?g§.§+H§;
      }
      
      public function §;6§() : Boolean
      {
         if(this.§`!p§ == "MISC_EXPLOSIVE_TNT" || this.§`!p§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §2!S§() : Boolean
      {
         return (this.§?!#§() || this.dynamic() || this.§=z§()) && !this.§^s§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §"g§() : Number
      {
         return Number(Math.sqrt(this.§3H§().GetLinearVelocity().x * this.§3H§().GetLinearVelocity().x + this.§3H§().GetLinearVelocity().y * this.§3H§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§@q§())
         {
            return this.§4!6§;
         }
         if(!this.§=d§.§#E§())
         {
            return this.§4!6§;
         }
         if(this.§%2§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@!!§(§9'§.§0,§);
            }
            else if(param1 > 12)
            {
               this.§@!!§(§9'§.§,!"§);
            }
            else if(param1 > 3)
            {
               this.§@!!§(§9'§.§@b§);
            }
            return this.§4!6§;
         }
         if(param1 <= this.§%2§)
         {
            if(param1 >= this.§%2§ / 2)
            {
               this.§@!!§(§9'§.§@b§);
            }
            if(this.§0!P§() && this.§4!6§ == this.§%!^§)
            {
               this.§4!6§ = this.§%!^§ - 1;
            }
            return this.§4!6§;
         }
         param1 -= this.§%2§;
         if(param2 && this.§2!S§())
         {
            _loc7_ = Math.min(this.§4!6§,int(param1));
            _loc8_ = §%M§.§#!N§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §%M§.§0b§;
            }
            this.§=d§.mLevelMain.addScore(_loc8_,§[m§.§`!6§,this.§4!6§ > param1 && param3,this.§3H§().GetPosition().x,this.§3H§().GetPosition().y,§,]§.§ N§(this.§`!p§));
         }
         if(!(param5 && this.§02§))
         {
            this.§4!6§ -= param1;
         }
         if(this.§4!6§ < 1 && this.§0!P§())
         {
            this.§4!6§ = 1;
         }
         if(this.§4!6§ < 1)
         {
            this.§4!6§ = 0;
            §9M§.§=!B§(§9'§.§0,§,this.§!!E§.§6!@§,"ChannelDestroyed");
         }
         else
         {
            this.§@!!§(§9'§.§,!"§);
            this.addDamageParticles(this.§=d§.mLevelMain.particles,param1);
         }
         this.§%!$§.setDamagedFrame();
         return this.§4!6§;
      }
      
      public function §@!!§(param1:int) : void
      {
         §9M§.§=!B§(param1,this.§!!E§.§6!@§);
      }
      
      public function §[!H§(param1:String) : Number
      {
         return this.§!!E§.material.§%!F§(param1) * this.§@!U§;
      }
      
      public function §?&§(param1:String) : Number
      {
         return this.§!!E§.material.§41§(param1);
      }
      
      public function §=B§() : String
      {
         return this.§!!E§.material.mName;
      }
      
      public function §>!O§() : Number
      {
         return this.§!!E§.§1=§();
      }
      
      public function §0!S§() : int
      {
         return this.§!!E§.§;x§();
      }
      
      public function §5!T§() : Boolean
      {
         return this.§3H§().IsAwake() && (this.§0!P§() && this.§4!6§ == this.§%!^§ || Math.abs(this.§3H§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§3H§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§3H§().§?`§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §7!;§() : Boolean
      {
         if(!this.§3H§().IsAwake())
         {
            return true;
         }
         return !this.§5k§();
      }
      
      protected function §5k§() : Boolean
      {
         return this.§5Q§.§5k§();
      }
      
      public function §5!V§(param1:Number = 3) : void
      {
         this.§@!U§ = param1;
         if(this.§@!U§ > 1)
         {
            this.§%!$§.§@=§();
         }
         else
         {
            this.§%!$§.§?!`§ = null;
         }
      }
      
      public function §>+§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§!!E§.§;!#§() == §']§.§5!U§)
         {
            _loc2_ = this.§%!$§.mW * this.§%!$§.mH * (§%M§.§'!Y§ * §%M§.§'!Y§);
         }
         else
         {
            _loc2_ = this.§3H§().GetMass() / this.§#n§.§^!j§();
            if(param1)
            {
               _loc2_ *= this.§?!$§();
            }
            _loc2_ /= this.§'W§ * this.§'W§;
         }
         return _loc2_;
      }
      
      public function §?!$§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§%!$§.§2'§ - 1) / 10);
      }
      
      public function §#!9§(param1:Number) : void
      {
         var _loc2_:Number = this.§3H§().GetLinearVelocity().x;
         var _loc3_:Number = this.§3H§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§3H§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§0K§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§7!N§) : void
      {
      }
      
      public function addDamageParticles(param1:§7!N§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §0!h§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§3H§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§3H§().§0!]§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§&!G§()) + 360) % 360;
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
            this.§7,§(_loc4_);
         }
         var _loc3_:Number = this.§&!G§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§7,§(_loc3_);
      }
      
      public function §%!_§(param1:Number) : void
      {
         var _loc2_:Number = §"!q§(this.§3H§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §&!I§(_loc2_);
         this.§3H§().§ !;§(_loc2_);
      }
      
      public function §,q§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§3H§().GetPosition().Copy();
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
         this.§3H§().§0!]§(_loc13_);
      }
   }
}
