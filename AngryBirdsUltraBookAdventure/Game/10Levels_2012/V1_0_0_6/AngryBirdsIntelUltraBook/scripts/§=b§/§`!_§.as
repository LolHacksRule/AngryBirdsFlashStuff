package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §"x§.§-8§;
   import §#V§.b2Body;
   import §#V§.b2BodyDef;
   import §#V§.b2FilterData;
   import §#V§.b2Fixture;
   import §#V§.b2World;
   import §,C§.b2PolygonShape;
   import §-d§.§%d§;
   import §-d§.§-C§;
   import §-d§.§3!F§;
   import §-d§.§7]§;
   import §-d§.§>r§;
   import §2_§.§'u§;
   import §2_§.§@!6§;
   import §3!m§.b2Settings;
   import §5!c§.§9'§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import flash.geom.Point;
   
   public class §`!_§
   {
      
      public static const §@!X§:uint = 1 << 1;
      
      public static const §?!l§:uint = 1 << 2;
      
      public static const §#!]§:uint = 1 << 3;
      
      public static const §7k§:uint = 1 << 4;
      
      public static const §<!<§:Boolean = true;
      
      public static const §=![§:Number = 5;
      
      public static const §3!`§:Number = 10;
       
      
      private var §79§:String;
      
      private var §2!X§:int;
      
      private var §&0§:int;
      
      public var §^r§:String;
      
      public var §]!g§:int;
      
      private var §1`§:§>r§;
      
      private var § t§:§>!e§;
      
      private var mWorld:b2World;
      
      protected var §&;§:String = "";
      
      protected var §7#§:int = 1;
      
      private var §9W§:b2Fixture;
      
      private var §40§:b2Body;
      
      private var §4!p§:b2Vec2;
      
      public var §&!>§:Number;
      
      public var §]l§:Number;
      
      private var §>!D§:Number;
      
      private var §[@§:Boolean = false;
      
      private var §9!z§:Number;
      
      private var §@<§:Number;
      
      private var §`e§:Number;
      
      private var §"!A§:Number;
      
      private var §3!D§:Number;
      
      private var §8!T§:Number;
      
      public var §9!&§:Number = 1;
      
      private var §5!>§:Boolean = false;
      
      public var §'S§:Number = 0;
      
      public var §0_§:Number = 0;
      
      protected var §&V§:Boolean = false;
      
      public var §7![§:§ 6§;
      
      private var §2O§:Sprite;
      
      private var §#!u§:Number = 0;
      
      private var §<h§:Number = 0;
      
      private var §`!j§:Number = 0;
      
      private var §'!I§:Number = 1.0;
      
      private var §,!p§:Boolean = false;
      
      protected var §[!e§:§!K§;
      
      private var §&!l§:Boolean = true;
      
      public function §`!_§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§^r§ = param6;
         this.§1`§ = §%d§.§4!^§(param6);
         this.§ t§ = param1;
         this.§2O§ = param2;
         this.§'!I§ = param10;
         this.§,!p§ = param11;
         this.§2!X§ = param5;
         this.§]!g§ = this.§1`§.§]!g§;
         this.§&0§ = this.§1`§.§0E§();
         this.§[!e§ = new §!K§(§=![§,§3!`§);
         this.§7![§ = new § 6§(this,param2,param4);
         if(!this.§7![§.§[9§(param1.§#!3§.animationManager))
         {
            this.§7![§.§9!F§(this.§&0§,this.§1`§.§#h§(),this.§1`§.§29§() / §'u§.§18§,this.§1`§.§=!F§() / §'u§.§18§);
         }
         this.§7![§.§^u§(this.§&0§ == §7]§.§"!D§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§40§ = this.mWorld.§!!$§(_loc12_);
         this.§40§.§2[§(this);
         if(this.§&0§ == §7]§.§?!S§)
         {
            _loc14_ = b2PolygonShape.§+!'§(this.§1`§.shape.§2!d§ * param10,this.§1`§.shape.§@@§ * param10);
            this.§9W§ = this.§40§.CreateFixture2(_loc14_,this.§1`§.§!!r§());
         }
         else if(this.§&0§ == §7]§.§"!D§ || this.§&0§ == §7]§.§&&§)
         {
            this.§9W§ = this.§40§.CreateFixture2(this.§1`§.shape.§7!H§(param10),this.§1`§.§!!r§());
         }
         this.§9W§.§?!§(this.§1`§.§5!v§());
         this.§9W§.§6+§(this.§1`§.§[!d§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§#!1§())
         {
            _loc13_.§8K§ = §@!X§;
            _loc13_.§'!7§ = 65535 & ~§?!l§;
         }
         else if(this.§^r§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§^r§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§8K§ = §?!l§;
            _loc13_.§'!7§ = 65535 & ~§@!X§;
         }
         this.§9W§.§6!U§(_loc13_);
         this.§>!D§ = this.§1`§.§<!A§();
         if(this.§1`§.§]l§ > 0)
         {
            this.§&!>§ = this.§]l§ = this.§1`§.§]l§;
         }
         else
         {
            this.§&!>§ = this.§]l§ = Math.round(this.§;a§(true) * this.§1`§.§9!!§());
            if(this.§&!>§ < 1)
            {
               this.§&!>§ = this.§]l§ = 1;
            }
         }
         if(this.§1`§.§]!g§ == §>r§.§&"§)
         {
            this.§2O§.visible = false;
         }
         else
         {
            this.§7![§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§8Z§(param9);
         }
         this.§5!I§();
         this.§'!A§(0,1);
         this.§7![§.§@!k§(this.§1`§.shape);
      }
      
      public static function §08§(param1:int, param2:§-C§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§#!V§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§'!$§;
            }
            §9'§.§!!`§(_loc4_,param3);
         }
      }
      
      public static function §#!7§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §+5§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§2O§;
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function get front() : Boolean
      {
         return this.§,!p§;
      }
      
      public function get §7E§() : Number
      {
         return this.§40§.GetPosition().x;
      }
      
      public function get §1u§() : Number
      {
         return this.§40§.GetPosition().y;
      }
      
      public function get §'!-§() : §>r§
      {
         return this.§1`§;
      }
      
      public function get §'h§() : Boolean
      {
         return this.§>!D§ >= 0;
      }
      
      public function get §]1§() : §>!e§
      {
         return this.§ t§;
      }
      
      public function get §`!-§() : Boolean
      {
         return this.§&!l§;
      }
      
      public function set §`!-§(param1:Boolean) : void
      {
         this.§&!l§ = param1;
      }
      
      public function set §?!P§(param1:Boolean) : void
      {
         this.§[@§ = param1;
      }
      
      public function set §&Y§(param1:uint) : void
      {
         this.§[!e§.§&Y§ = param1;
      }
      
      public function get §&Y§() : uint
      {
         return this.§[!e§.§&Y§;
      }
      
      public function get §4N§() : Boolean
      {
         return this.§5!>§;
      }
      
      public function set §4N§(param1:Boolean) : void
      {
         this.§5!>§ = param1;
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
         return this.§79§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§79§ = param1;
      }
      
      public function §3g§(param1:b2FilterData) : void
      {
         if(this.§9W§)
         {
            this.§9W§.§6!U§(param1);
         }
      }
      
      protected function §'!4§(param1:String) : int
      {
         return §9!B§.§'!4§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§1`§.§7i§();
         _loc3_.§ !U§ = true;
         _loc3_.§2!8§ = true;
         _loc3_.§3§ = true;
         _loc3_.§&!G§ = 1;
         _loc3_.§6!b§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§`f§(this.§3J§());
            this.mWorld = null;
         }
         this.§7![§.dispose();
         if(this.§2O§)
         {
            this.§2O§.dispose();
            this.§2O§ = null;
         }
         this.§9W§ = null;
         this.§4!p§ = null;
         this.§1`§ = null;
      }
      
      public function §8Z§(param1:Number) : void
      {
         this.§3J§().§=!y§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §8c§() : Number
      {
         return (360 - this.§3J§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §=!`§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§3J§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§9!T§();
         }
         if(param3)
         {
            this.§<n§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§9W§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§3J§().GetPosition().x >= param3 && this.§3J§().GetPosition().x <= param4 && this.§3J§().GetPosition().y >= param1 && this.§3J§().GetPosition().y <= param2;
      }
      
      public function §?l§(param1:b2Vec2) : void
      {
         this.§4!p§ = param1;
      }
      
      public function §;b§() : void
      {
         if(this.§4!p§)
         {
            this.§=!`§(this.§4!p§,false);
            this.§4!p§ = null;
         }
      }
      
      public function §9!T§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§3J§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§3J§().§^j§(0);
         }
         else
         {
            this.§3J§().§^j§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §<n§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§3J§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§8Z§(_loc2_);
      }
      
      public function §=c§(param1:Number) : void
      {
         this.§3J§().§^j§(param1);
      }
      
      public function §3J§() : b2Body
      {
         if(this.§9W§ != null)
         {
            return this.§9W§.GetBody();
         }
         return null;
      }
      
      public function §,!"§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§#!u§ = param1;
            this.§<h§ = param2;
         }
         this.§3J§().GetPosition().x = this.§#!u§ * §'u§.§18§;
         this.§3J§().GetPosition().y = this.§<h§ * §'u§.§18§;
      }
      
      public function §'!A§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§&V§)
         {
            _loc3_ = true;
            this.§&V§ = false;
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
            this.§7![§.§2!m§();
         }
         if(this.§9!&§ > 1 && this.§7![§.§1O§)
         {
            _loc4_ = 4 + (this.§7![§.§1O§.blurX - 4 + param2 / 20) % 28;
            this.§7![§.§1O§.blurX = _loc4_;
            this.§7![§.§1O§.blurY = _loc4_;
         }
         this.§7![§.§,!u§(param2);
         if(§<!<§)
         {
            this.§;!C§(param1);
         }
         else
         {
            this.§`!j§ = this.§`e§;
            this.§#!u§ = this.§9!z§;
            this.§<h§ = this.§@<§;
         }
         this.§2O§.x = Math.round(this.§#!u§);
         this.§2O§.y = Math.round(this.§<h§);
         this.§2O§.rotation = this.§`!j§ / 180 * Math.PI;
      }
      
      public function §5!I§() : void
      {
         var _loc1_:Number = this.§3J§().GetPosition().x;
         var _loc2_:Number = this.§3J§().GetPosition().y;
         this.§8!T§ = this.§`e§;
         this.§"!A§ = this.§9!z§;
         this.§3!D§ = this.§@<§;
         this.§`e§ = this.§3J§().GetAngle() * (180 / Math.PI) % 360;
         this.§9!z§ = _loc1_ / §'u§.§18§;
         this.§@<§ = _loc2_ / §'u§.§18§;
         this.§[!e§.§+!K§();
         this.§[!e§.§8!X§(this.§3J§());
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
      
      public function §;!C§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §-8§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§ t§.§#!3§.mLevelEngine.§'e§ * 1000;
         }
         param1 *= -1;
         if(this.§9!z§ == this.§"!A§ || param1 == 0)
         {
            this.§'S§ = 0;
            this.§#!u§ = this.§9!z§;
         }
         else
         {
            this.§'S§ = param1 * (this.§"!A§ - this.§9!z§) / param2;
            this.§#!u§ = this.§9!z§ + this.§'S§;
         }
         if(this.§@<§ == this.§3!D§ || param1 == 0)
         {
            this.§0_§ = 0;
            this.§<h§ = this.§@<§;
         }
         else
         {
            this.§0_§ = param1 * (this.§3!D§ - this.§@<§) / param2;
            this.§<h§ = this.§@<§ + this.§0_§;
         }
         if(this.§`e§ == this.§8!T§ || param1 == 0)
         {
            this.§`!j§ = this.§`e§;
         }
         else if(this.§8!T§ > this.§`e§ && this.§8!T§ - this.§`e§ <= 180)
         {
            this.§`!j§ = this.§`e§ + param1 * (this.§8!T§ - this.§`e§) / param2;
         }
         else if(this.§8!T§ > this.§`e§ && this.§8!T§ - this.§`e§ > 180)
         {
            this.§`!j§ = this.§`e§ + param1 * (this.§8!T§ - 360 - this.§`e§) / param2;
         }
         else if(this.§8!T§ < this.§`e§ && this.§`e§ - this.§8!T§ <= 180)
         {
            this.§`!j§ = this.§`e§ + param1 * (this.§8!T§ - this.§`e§) / param2;
         }
         else if(this.§8!T§ < this.§`e§ && this.§`e§ - this.§8!T§ > 180)
         {
            this.§`!j§ = this.§`e§ + param1 * (this.§8!T§ + 360 - this.§`e§) / param2;
         }
      }
      
      public function get §<1§() : Point
      {
         if(!§<!<§)
         {
         }
         return null;
      }
      
      public function §#!1§() : Boolean
      {
         return this.§]!g§ == §>r§.§;!?§ || this.§]!g§ == §>r§.§0=§;
      }
      
      public function §#!t§() : Boolean
      {
         return this.§]!g§ == §>r§.§`!s§;
      }
      
      public function §?!%§() : Boolean
      {
         return this.§]!g§ == §>r§.§+P§;
      }
      
      public function §=!5§() : Boolean
      {
         return this.§]!g§ == §>r§.§0=§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§]!g§ == §>r§.§>t§;
      }
      
      public function isGround() : Boolean
      {
         return this.§]!g§ == §>r§.§&"§;
      }
      
      public function §-!F§() : Boolean
      {
         return this.§]!g§ == §>r§.§7b§;
      }
      
      public function §^!U§() : Boolean
      {
         return this.§]!g§ == §>r§.§@!g§;
      }
      
      public function §65§() : Boolean
      {
         if(this.§^r§ == "MISC_EXPLOSIVE_TNT" || this.§^r§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §4!g§() : Boolean
      {
         return (this.§#!t§() || this.§-!F§() || this.§^!U§()) && !this.§4N§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §!u§() : Number
      {
         return Number(Math.sqrt(this.§3J§().GetLinearVelocity().x * this.§3J§().GetLinearVelocity().x + this.§3J§().GetLinearVelocity().y * this.§3J§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§?!%§())
         {
            return this.§&!>§;
         }
         if(!this.§ t§.§1!_§())
         {
            return this.§&!>§;
         }
         if(this.§>!D§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§+!G§(§-C§.§&!=§);
            }
            else if(param1 > 12)
            {
               this.§+!G§(§-C§.§,&§);
            }
            else if(param1 > 3)
            {
               this.§+!G§(§-C§.§8-§);
            }
            return this.§&!>§;
         }
         if(param1 <= this.§>!D§)
         {
            if(param1 >= this.§>!D§ / 2)
            {
               this.§+!G§(§-C§.§8-§);
            }
            if(this.§#!1§() && this.§&!>§ == this.§]l§)
            {
               this.§&!>§ = this.§]l§ - 1;
            }
            return this.§&!>§;
         }
         param1 -= this.§>!D§;
         if(param2 && this.§4!g§())
         {
            _loc7_ = Math.min(this.§&!>§,int(param1));
            _loc8_ = §'u§.§@`§.getValue() * _loc7_;
            this.§ t§.§#!3§.addScore(_loc8_,§@!6§.§?R§,this.§&!>§ > param1 && param3,this.§3J§().GetPosition().x,this.§3J§().GetPosition().y,§9!B§.§%!d§(this.§^r§));
         }
         if(!(param5 && this.§[@§))
         {
            this.§&!>§ -= param1;
         }
         if(this.§&!>§ < 1 && this.§#!1§())
         {
            this.§&!>§ = 1;
         }
         if(this.§&!>§ < 1)
         {
            this.§&!>§ = 0;
            §`!_§.§08§(§-C§.§&!=§,this.§1`§.§;!"§,"ChannelDestroyed");
         }
         else
         {
            this.§+!G§(§-C§.§,&§);
            this.addDamageParticles(this.§ t§.§#!3§.particles,param1);
         }
         this.§7![§.setDamagedFrame();
         return this.§&!>§;
      }
      
      public function §+!G§(param1:int) : void
      {
         §`!_§.§08§(param1,this.§1`§.§;!"§);
      }
      
      public function §[0§(param1:String) : Number
      {
         return this.§1`§.material.§[$§(param1) * this.§9!&§;
      }
      
      public function §;!4§(param1:String) : Number
      {
         return this.§1`§.material.§70§(param1);
      }
      
      public function §1!+§() : String
      {
         return this.§1`§.material.mName;
      }
      
      public function §19§() : Number
      {
         return this.§1`§.§9!!§();
      }
      
      public function §3!n§() : int
      {
         return this.§1`§.§7!I§();
      }
      
      public function §"o§() : Boolean
      {
         return this.§3J§().IsAwake() && (this.§#!1§() && this.§&!>§ == this.§]l§ || Math.abs(this.§3J§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§3J§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§3J§().§8!G§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §^!R§() : Boolean
      {
         if(!this.§3J§().IsAwake())
         {
            return true;
         }
         return !this.§5&§();
      }
      
      protected function §5&§() : Boolean
      {
         return this.§[!e§.§5&§();
      }
      
      public function §=!K§(param1:Number = 3) : void
      {
         this.§9!&§ = param1;
         if(this.§9!&§ > 1)
         {
            this.§7![§.§1L§();
         }
         else
         {
            this.§7![§.§1O§ = null;
         }
      }
      
      public function §;a§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§1`§.§7i§() == §3!F§.§!!k§)
         {
            _loc2_ = this.§7![§.mW * this.§7![§.mH * (§'u§.§18§ * §'u§.§18§);
         }
         else
         {
            _loc2_ = this.§3J§().GetMass() / this.§9W§.§9q§();
            if(param1)
            {
               _loc2_ *= this.§&!E§();
            }
            _loc2_ /= this.§'!I§ * this.§'!I§;
         }
         return _loc2_;
      }
      
      public function §&!E§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§7![§.§1!N§ - 1) / 10);
      }
      
      public function §1;§(param1:Number) : void
      {
         var _loc2_:Number = this.§3J§().GetLinearVelocity().x;
         var _loc3_:Number = this.§3J§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§3J§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§^z§) : void
      {
      }
      
      public function addDamageParticles(param1:§^z§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §"q§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§3J§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§3J§().§>!Y§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§8c§()) + 360) % 360;
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
            this.§8Z§(_loc4_);
         }
         var _loc3_:Number = this.§8c§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§8Z§(_loc3_);
      }
      
      public function §^! §(param1:Number) : void
      {
         var _loc2_:Number = §#!7§(this.§3J§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §+5§(_loc2_);
         this.§3J§().§=!y§(_loc2_);
      }
      
      public function §5!"§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§3J§().GetPosition().Copy();
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
         this.§3J§().§>!Y§(_loc13_);
      }
   }
}
