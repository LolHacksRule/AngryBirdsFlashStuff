package §;z§
{
   import § y§.b2PolygonShape;
   import §"P§.§%w§;
   import §"P§.§,!I§;
   import §"P§.§9!L§;
   import §"P§.§]5§;
   import §"P§.§^s§;
   import §&!+§.b2Vec2;
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §-A§.§?s§;
   import §1o§.§'M§;
   import §4!&§.b2Body;
   import §4!&§.b2BodyDef;
   import §4!&§.b2FilterData;
   import §4!&§.b2Fixture;
   import §4!&§.b2World;
   import §8!%§.b2Settings;
   import §=g§.§@!L§;
   import flash.geom.Point;
   
   public class §!+§
   {
      
      public static const §37§:uint = 1 << 1;
      
      public static const §?!D§:uint = 1 << 2;
      
      public static const §;=§:uint = 1 << 3;
      
      public static const §>!D§:uint = 1 << 4;
      
      public static const §+h§:Boolean = true;
      
      public static const §?n§:Number = 5;
      
      public static const §!!5§:Number = 10;
       
      
      private var §!G§:String;
      
      private var §-j§:int;
      
      private var §<!;§:int;
      
      public var §10§:String;
      
      public var §<s§:int;
      
      private var § D§:§]5§;
      
      private var §>!3§:§]!N§;
      
      private var mWorld:b2World;
      
      protected var §<N§:String = "";
      
      protected var §9!#§:int = 1;
      
      private var §#!7§:b2Fixture;
      
      private var §0!8§:b2Body;
      
      private var §;!>§:b2Vec2;
      
      public var §^,§:Number;
      
      public var §[!,§:Number;
      
      private var §;!C§:Number;
      
      private var §9!_§:Boolean = false;
      
      private var §0=§:Number;
      
      private var §#i§:Number;
      
      private var §6!=§:Number;
      
      private var §6H§:Number;
      
      private var §]!J§:Number;
      
      private var §3m§:Number;
      
      public var §>!?§:Number = 1;
      
      private var §8`§:Boolean = false;
      
      public var §70§:Number = 0;
      
      public var §9i§:Number = 0;
      
      protected var §8X§:Boolean = false;
      
      public var §=t§:§0!Q§;
      
      private var §=#§:Sprite;
      
      private var §,!_§:Number = 0;
      
      private var §4b§:Number = 0;
      
      private var §7e§:Number = 0;
      
      private var §case §:Number = 1.0;
      
      private var §-!9§:Boolean = false;
      
      protected var §&!<§:§#N§;
      
      private var §^E§:Boolean = true;
      
      public function §!+§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§10§ = param6;
         this.§ D§ = §9!L§.§=C§(param6);
         this.§>!3§ = param1;
         this.§=#§ = param2;
         this.§case § = param10;
         this.§-!9§ = param11;
         this.§-j§ = param5;
         this.§<s§ = this.§ D§.§<s§;
         this.§<!;§ = this.§ D§.§?1§();
         this.§&!<§ = new §#N§(§?n§,§!!5§);
         this.§=t§ = new §0!Q§(this,param2,param4);
         if(!this.§=t§.§0!"§(param1.§return§.§"y§))
         {
            this.§=t§.§!!I§(this.§<!;§,this.§ D§.§!!-§(),this.§ D§.§2C§() / §%9§.§1[§,this.§ D§.§#6§() / §%9§.§1[§);
         }
         this.§=t§.§<<§(this.§<!;§ == §^s§.§=4§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§0!8§ = this.mWorld.§?!$§(_loc12_);
         this.§0!8§.§`!F§(this);
         if(this.§<!;§ == §^s§.§0O§)
         {
            _loc14_ = b2PolygonShape.§<H§(this.§ D§.shape.§,!E§ * param10,this.§ D§.shape.§''§ * param10);
            this.§#!7§ = this.§0!8§.CreateFixture2(_loc14_,this.§ D§.§1!=§());
         }
         else if(this.§<!;§ == §^s§.§=4§ || this.§<!;§ == §^s§.§2K§)
         {
            this.§#!7§ = this.§0!8§.CreateFixture2(this.§ D§.shape.§@m§(param10),this.§ D§.§1!=§());
         }
         this.§#!7§.§;#§(this.§ D§.§^!4§());
         this.§#!7§.§-!V§(this.§ D§.§8a§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§?!_§())
         {
            _loc13_.§?!Y§ = §37§;
            _loc13_.§&Q§ = 65535 & ~§?!D§;
         }
         else if(this.§10§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§10§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§?!Y§ = §?!D§;
            _loc13_.§&Q§ = 65535 & ~§37§;
         }
         this.§#!7§.§!!3§(_loc13_);
         this.§;!C§ = this.§ D§.§4!@§();
         if(this.§ D§.§[!,§ > 0)
         {
            this.§^,§ = this.§[!,§ = this.§ D§.§[!,§;
         }
         else
         {
            this.§^,§ = this.§[!,§ = Math.round(this.§4T§(true) * this.§ D§.§[D§());
            if(this.§^,§ < 1)
            {
               this.§^,§ = this.§[!,§ = 1;
            }
         }
         if(this.§ D§.§<s§ == §]5§.§,,§)
         {
            this.§=#§.visible = false;
         }
         else
         {
            this.§=t§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§6!Z§(param9);
         }
         this.§=c§();
         this.§4w§(0,1);
         this.§=t§.§>w§(this.§ D§.shape);
      }
      
      public static function §[a§(param1:int, param2:§%w§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§0^§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§`'§;
            }
            §'M§.§,!S§(_loc4_,param3);
         }
      }
      
      public static function §0!`§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §4S§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§=#§;
      }
      
      public function get x() : Number
      {
         return this.§,!_§;
      }
      
      public function get y() : Number
      {
         return this.§4b§;
      }
      
      public function get scale() : Number
      {
         return this.§case §;
      }
      
      public function get front() : Boolean
      {
         return this.§-!9§;
      }
      
      public function get §<c§() : Number
      {
         return this.§0!8§.GetPosition().x;
      }
      
      public function get §4W§() : Number
      {
         return this.§0!8§.GetPosition().y;
      }
      
      public function get §3!F§() : §]5§
      {
         return this.§ D§;
      }
      
      public function get §2e§() : Boolean
      {
         return this.§;!C§ >= 0;
      }
      
      public function get container() : §]!N§
      {
         return this.§>!3§;
      }
      
      public function get §'K§() : Boolean
      {
         return this.§^E§;
      }
      
      public function set §'K§(param1:Boolean) : void
      {
         this.§^E§ = param1;
      }
      
      public function set §27§(param1:Boolean) : void
      {
         this.§9!_§ = param1;
      }
      
      public function set §1s§(param1:uint) : void
      {
         this.§&!<§.§1s§ = param1;
      }
      
      public function get §1s§() : uint
      {
         return this.§&!<§.§1s§;
      }
      
      public function get §@u§() : Boolean
      {
         return this.§8`§;
      }
      
      public function set §@u§(param1:Boolean) : void
      {
         this.§8`§ = param1;
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
         return this.§!G§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§!G§ = param1;
      }
      
      public function §7!C§(param1:b2FilterData) : void
      {
         if(this.§#!7§)
         {
            this.§#!7§.§!!3§(param1);
         }
      }
      
      protected function §super§(param1:String) : int
      {
         return §+e§.§super§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§ D§.§>G§();
         _loc3_.§6,§ = true;
         _loc3_.§'!-§ = true;
         _loc3_.§`9§ = true;
         _loc3_.§&t§ = 1;
         _loc3_.§do § = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§2!§(this.§^!V§());
            this.mWorld = null;
         }
         this.§=t§.dispose();
         if(this.§=#§)
         {
            this.§=#§.dispose();
            this.§=#§ = null;
         }
         this.§#!7§ = null;
         this.§;!>§ = null;
         this.§ D§ = null;
      }
      
      public function §6!Z§(param1:Number) : void
      {
         this.§^!V§().§-!P§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §!?§() : Number
      {
         return (360 - this.§^!V§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §!N§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§^!V§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§]!C§();
         }
         if(param3)
         {
            this.§&!4§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§#!7§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§^!V§().GetPosition().x >= param3 && this.§^!V§().GetPosition().x <= param4 && this.§^!V§().GetPosition().y >= param1 && this.§^!V§().GetPosition().y <= param2;
      }
      
      public function § !R§(param1:b2Vec2) : void
      {
         this.§;!>§ = param1;
      }
      
      public function §?_§() : void
      {
         if(this.§;!>§)
         {
            this.§!N§(this.§;!>§,false);
            this.§;!>§ = null;
         }
      }
      
      public function §]!C§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§^!V§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§^!V§().§4h§(0);
         }
         else
         {
            this.§^!V§().§4h§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §&!4§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§^!V§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§6!Z§(_loc2_);
      }
      
      public function §>d§(param1:Number) : void
      {
         this.§^!V§().§4h§(param1);
      }
      
      public function §^!V§() : b2Body
      {
         if(this.§#!7§ != null)
         {
            return this.§#!7§.GetBody();
         }
         return null;
      }
      
      public function §<Y§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§,!_§ = param1;
            this.§4b§ = param2;
         }
         this.§^!V§().GetPosition().x = this.§,!_§ * §%9§.§1[§;
         this.§^!V§().GetPosition().y = this.§4b§ * §%9§.§1[§;
      }
      
      public function §4w§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§8X§)
         {
            _loc3_ = true;
            this.§8X§ = false;
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
            this.§=t§.§[!Q§();
         }
         if(this.§>!?§ > 1 && this.§=t§.§]!,§)
         {
            _loc4_ = 4 + (this.§=t§.§]!,§.blurX - 4 + param2 / 20) % 28;
            this.§=t§.§]!,§.blurX = _loc4_;
            this.§=t§.§]!,§.blurY = _loc4_;
         }
         this.§=t§.§6M§(param2);
         if(§+h§)
         {
            this.§ 9§(param1);
         }
         else
         {
            this.§7e§ = this.§6!=§;
            this.§,!_§ = this.§0=§;
            this.§4b§ = this.§#i§;
         }
         this.§=#§.x = Math.round(this.§,!_§);
         this.§=#§.y = Math.round(this.§4b§);
         this.§=#§.rotation = this.§7e§ / 180 * Math.PI;
      }
      
      public function §=c§() : void
      {
         var _loc1_:Number = this.§^!V§().GetPosition().x;
         var _loc2_:Number = this.§^!V§().GetPosition().y;
         this.§3m§ = this.§6!=§;
         this.§6H§ = this.§0=§;
         this.§]!J§ = this.§#i§;
         this.§6!=§ = this.§^!V§().GetAngle() * (180 / Math.PI) % 360;
         this.§0=§ = _loc1_ / §%9§.§1[§;
         this.§#i§ = _loc2_ / §%9§.§1[§;
         this.§&!<§.§ 8§();
         this.§&!<§.§ 4§(this.§^!V§());
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
      
      public function § 9§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §@!L§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§>!3§.§return§.mLevelEngine.§"!X§ * 1000;
         }
         param1 *= -1;
         if(this.§0=§ == this.§6H§ || param1 == 0)
         {
            this.§70§ = 0;
            this.§,!_§ = this.§0=§;
         }
         else
         {
            this.§70§ = param1 * (this.§6H§ - this.§0=§) / param2;
            this.§,!_§ = this.§0=§ + this.§70§;
         }
         if(this.§#i§ == this.§]!J§ || param1 == 0)
         {
            this.§9i§ = 0;
            this.§4b§ = this.§#i§;
         }
         else
         {
            this.§9i§ = param1 * (this.§]!J§ - this.§#i§) / param2;
            this.§4b§ = this.§#i§ + this.§9i§;
         }
         if(this.§6!=§ == this.§3m§ || param1 == 0)
         {
            this.§7e§ = this.§6!=§;
         }
         else if(this.§3m§ > this.§6!=§ && this.§3m§ - this.§6!=§ <= 180)
         {
            this.§7e§ = this.§6!=§ + param1 * (this.§3m§ - this.§6!=§) / param2;
         }
         else if(this.§3m§ > this.§6!=§ && this.§3m§ - this.§6!=§ > 180)
         {
            this.§7e§ = this.§6!=§ + param1 * (this.§3m§ - 360 - this.§6!=§) / param2;
         }
         else if(this.§3m§ < this.§6!=§ && this.§6!=§ - this.§3m§ <= 180)
         {
            this.§7e§ = this.§6!=§ + param1 * (this.§3m§ - this.§6!=§) / param2;
         }
         else if(this.§3m§ < this.§6!=§ && this.§6!=§ - this.§3m§ > 180)
         {
            this.§7e§ = this.§6!=§ + param1 * (this.§3m§ + 360 - this.§6!=§) / param2;
         }
      }
      
      public function get §0!5§() : Point
      {
         if(!§+h§)
         {
         }
         return null;
      }
      
      public function §?!_§() : Boolean
      {
         return this.§<s§ == §]5§.§0!1§ || this.§<s§ == §]5§.§2o§;
      }
      
      public function §,!U§() : Boolean
      {
         return this.§<s§ == §]5§.§[j§;
      }
      
      public function §+K§() : Boolean
      {
         return this.§<s§ == §]5§.§;! §;
      }
      
      public function §<K§() : Boolean
      {
         return this.§<s§ == §]5§.§2o§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§<s§ == §]5§.§3K§;
      }
      
      public function isGround() : Boolean
      {
         return this.§<s§ == §]5§.§,,§;
      }
      
      public function §,!2§() : Boolean
      {
         return this.§<s§ == §]5§.§`1§;
      }
      
      public function §+!A§() : Boolean
      {
         return this.§<s§ == §]5§.§,5§;
      }
      
      public function §6`§() : Boolean
      {
         if(this.§10§ == "MISC_EXPLOSIVE_TNT" || this.§10§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §3!J§() : Boolean
      {
         return (this.§,!U§() || this.§,!2§() || this.§+!A§()) && !this.§@u§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §>!6§() : Number
      {
         return Number(Math.sqrt(this.§^!V§().GetLinearVelocity().x * this.§^!V§().GetLinearVelocity().x + this.§^!V§().GetLinearVelocity().y * this.§^!V§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§+K§())
         {
            return this.§^,§;
         }
         if(!this.§>!3§.§4t§())
         {
            return this.§^,§;
         }
         if(this.§;!C§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§6!H§(§%w§.§]!§);
            }
            else if(param1 > 12)
            {
               this.§6!H§(§%w§.§'A§);
            }
            else if(param1 > 3)
            {
               this.§6!H§(§%w§.§[9§);
            }
            return this.§^,§;
         }
         if(param1 <= this.§;!C§)
         {
            if(param1 >= this.§;!C§ / 2)
            {
               this.§6!H§(§%w§.§[9§);
            }
            if(this.§?!_§() && this.§^,§ == this.§[!,§)
            {
               this.§^,§ = this.§[!,§ - 1;
            }
            return this.§^,§;
         }
         param1 -= this.§;!C§;
         if(param2 && this.§3!J§())
         {
            _loc7_ = Math.min(this.§^,§,int(param1));
            _loc8_ = §%9§.§@K§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §%9§.§#!0§;
            }
            this.§>!3§.§return§.addScore(_loc8_,§?s§.§ E§,this.§^,§ > param1 && param3,this.§^!V§().GetPosition().x,this.§^!V§().GetPosition().y,§+e§.§"s§(this.§10§));
         }
         if(!(param5 && this.§9!_§))
         {
            this.§^,§ -= param1;
         }
         if(this.§^,§ < 1 && this.§?!_§())
         {
            this.§^,§ = 1;
         }
         if(this.§^,§ < 1)
         {
            this.§^,§ = 0;
            §!+§.§[a§(§%w§.§]!§,this.§ D§.§`!0§,"ChannelDestroyed");
         }
         else
         {
            this.§6!H§(§%w§.§'A§);
            this.addDamageParticles(this.§>!3§.§return§.particles,param1);
         }
         this.§=t§.setDamagedFrame();
         return this.§^,§;
      }
      
      public function §6!H§(param1:int) : void
      {
         §!+§.§[a§(param1,this.§ D§.§`!0§);
      }
      
      public function §4!2§(param1:String) : Number
      {
         return this.§ D§.material.§ K§(param1) * this.§>!?§;
      }
      
      public function §4M§(param1:String) : Number
      {
         return this.§ D§.material.§+d§(param1);
      }
      
      public function §!d§() : String
      {
         return this.§ D§.material.mName;
      }
      
      public function §'u§() : Number
      {
         return this.§ D§.§[D§();
      }
      
      public function §3[§() : int
      {
         return this.§ D§.§`!M§();
      }
      
      public function §]!$§() : Boolean
      {
         return this.§^!V§().IsAwake() && (this.§?!_§() && this.§^,§ == this.§[!,§ || Math.abs(this.§^!V§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§^!V§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§^!V§().§3!S§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function § !3§() : Boolean
      {
         if(!this.§^!V§().IsAwake())
         {
            return true;
         }
         return !this.§08§();
      }
      
      protected function §08§() : Boolean
      {
         return this.§&!<§.§08§();
      }
      
      public function §-U§(param1:Number = 3) : void
      {
         this.§>!?§ = param1;
         if(this.§>!?§ > 1)
         {
            this.§=t§.§ !!§();
         }
         else
         {
            this.§=t§.§]!,§ = null;
         }
      }
      
      public function §4T§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§ D§.§>G§() == §,!I§.§^a§)
         {
            _loc2_ = this.§=t§.mW * this.§=t§.mH * (§%9§.§1[§ * §%9§.§1[§);
         }
         else
         {
            _loc2_ = this.§^!V§().GetMass() / this.§#!7§.§8]§();
            if(param1)
            {
               _loc2_ *= this.§9!A§();
            }
            _loc2_ /= this.§case § * this.§case §;
         }
         return _loc2_;
      }
      
      public function §9!A§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§=t§.§`=§ - 1) / 10);
      }
      
      public function §,N§(param1:Number) : void
      {
         var _loc2_:Number = this.§^!V§().GetLinearVelocity().x;
         var _loc3_:Number = this.§^!V§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§^!V§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§]!N§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§^Z§) : void
      {
      }
      
      public function addDamageParticles(param1:§^Z§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §;>§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§^!V§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§^!V§().§!!§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§!?§()) + 360) % 360;
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
            this.§6!Z§(_loc4_);
         }
         var _loc3_:Number = this.§!?§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§6!Z§(_loc3_);
      }
      
      public function §8N§(param1:Number) : void
      {
         var _loc2_:Number = §0!`§(this.§^!V§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §4S§(_loc2_);
         this.§^!V§().§-!P§(_loc2_);
      }
      
      public function §6g§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§^!V§().GetPosition().Copy();
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
         this.§^!V§().§!!§(_loc13_);
      }
   }
}
