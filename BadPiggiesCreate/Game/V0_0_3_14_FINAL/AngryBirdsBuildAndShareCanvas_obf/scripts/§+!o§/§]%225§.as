package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"!9§.b2PolygonShape;
   import §+S§.b2Body;
   import §+S§.b2BodyDef;
   import §+S§.b2FilterData;
   import §+S§.b2Fixture;
   import §+S§.b2World;
   import §,a§.§+!Z§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §,a§.§^7§;
   import §-!n§.§5!U§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§]"%§;
   import §=!M§.§9!P§;
   import §=o§.b2Settings;
   import §default§.Sprite;
   import flash.geom.Point;
   
   public class §]"5§
   {
      
      public static const § E§:uint = 1 << 1;
      
      public static const §8T§:uint = 1 << 2;
      
      public static const §9!x§:uint = 1 << 3;
      
      public static const §&!!§:uint = 1 << 4;
      
      public static const §94§:Boolean = true;
      
      public static const §="?§:Number = 5;
      
      public static const §5"9§:Number = 10;
       
      
      private var §!!b§:String;
      
      private var §]O§:int;
      
      private var §0!,§:int;
      
      public var §!F§:String;
      
      public var §,!E§:int;
      
      protected var §6"'§:§]!>§;
      
      private var §+!e§:§?"-§;
      
      private var §?"$§:b2World;
      
      protected var §'K§:String = "";
      
      protected var §0V§:int = 1;
      
      private var §?"8§:b2Fixture;
      
      private var §`K§:b2Body;
      
      private var §]!T§:b2Vec2;
      
      public var §@!P§:Number;
      
      public var §'">§:Number;
      
      private var §'!,§:Number;
      
      private var §6B§:Boolean = false;
      
      private var §]f§:Number;
      
      private var §'z§:Number;
      
      private var §"!r§:Number;
      
      private var §4!k§:Number;
      
      private var §-=§:Number;
      
      private var §9y§:Number;
      
      public var § !R§:Number = 1;
      
      private var §break§:Boolean = false;
      
      public var §<"1§:Number = 0;
      
      public var §7"9§:Number = 0;
      
      protected var §46§:Boolean = false;
      
      public var §[!g§:§<Y§;
      
      private var §!&§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §]$§:Number = 0;
      
      private var §?a§:Number = 1.0;
      
      private var §#">§:Boolean = false;
      
      protected var §`"'§:§<P§;
      
      private var §7T§:Boolean = true;
      
      public function §]"5§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§!F§ = param6;
         this.§6"'§ = §<!m§.§"!F§(param6);
         this.§+!e§ = param1;
         this.§!&§ = param2;
         this.§?a§ = param10;
         this.§#">§ = param11;
         this.§]O§ = param5;
         this.§,!E§ = this.§6"'§.§,!E§;
         this.§0!,§ = this.§6"'§.§9!§();
         this.§`"'§ = new §<P§(§="?§,§5"9§);
         this.§[!g§ = new §<Y§(this,param2,param4);
         if(!this.§[!g§.§!!?§(param1.§9q§.§<"%§))
         {
            this.§[!g§.§#]§(this.§0!,§,this.§6"'§.§^!?§(),this.§6"'§.§3[§() / §!w§.§4!-§,this.§6"'§.§=B§() / §!w§.§4!-§);
         }
         this.§[!g§.§6!0§(this.§0!,§ == §^7§.§+!h§);
         this.§?"$§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§`K§ = this.§?"$§.§6!E§(_loc12_);
         this.§`K§.§?"5§(this);
         if(this.§0!,§ == §^7§.§8K§)
         {
            _loc14_ = b2PolygonShape.§;!P§(this.§6"'§.shape.§7!T§ * param10,this.§6"'§.shape.§>w§ * param10);
            this.§?"8§ = this.§`K§.CreateFixture2(_loc14_,this.§6"'§.§5g§());
         }
         else if(this.§0!,§ == §^7§.§+!h§ || this.§0!,§ == §^7§.§<!g§)
         {
            this.§?"8§ = this.§`K§.CreateFixture2(this.§6"'§.shape.§#!o§(param10),this.§6"'§.§5g§());
         }
         this.§?"8§.§=!i§(this.§6"'§.§-!I§());
         this.§?"8§.§8!^§(this.§6"'§.§0i§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§9!^§())
         {
            _loc13_.§?!C§ = § E§;
            _loc13_.§!!R§ = 65535 & ~§8T§;
         }
         else if(this.§!F§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§!F§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§?!C§ = §8T§;
            _loc13_.§!!R§ = 65535 & ~§ E§;
         }
         this.§?"8§.§"!G§(_loc13_);
         this.§'!,§ = this.§6"'§.§[">§();
         if(this.§6"'§.§'">§ > 0)
         {
            this.§@!P§ = this.§'">§ = this.§6"'§.§'">§;
         }
         else
         {
            this.§@!P§ = this.§'">§ = Math.round(this.§0&§(true) * this.§6"'§.§=r§());
            if(this.§@!P§ < 1)
            {
               this.§@!P§ = this.§'">§ = 1;
            }
         }
         if(this.§6"'§.§,!E§ == §]!>§.§=!a§)
         {
            this.§!&§.visible = false;
         }
         else
         {
            this.§[!g§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§-^§(param9);
         }
         this.§=O§();
         this.§?!%§(0,1);
         this.§[!g§.§!!1§(this.§6"'§.shape);
      }
      
      public static function §1!%§(param1:int, param2:§+"&§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§^!l§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§;!r§;
            }
            §5!U§.§7!e§(_loc4_,param3);
         }
      }
      
      public static function §1",§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §#!V§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
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
         return this.§?a§;
      }
      
      public function get front() : Boolean
      {
         return this.§#">§;
      }
      
      public function get §?k§() : Number
      {
         return this.§`K§.GetPosition().x;
      }
      
      public function get §2!V§() : Number
      {
         return this.§`K§.GetPosition().y;
      }
      
      public function get §+!y§() : §]!>§
      {
         return this.§6"'§;
      }
      
      public function get §4" §() : Boolean
      {
         return this.§'!,§ >= 0;
      }
      
      public function get container() : §?"-§
      {
         return this.§+!e§;
      }
      
      public function get §>a§() : Boolean
      {
         return this.§7T§;
      }
      
      public function set §>a§(param1:Boolean) : void
      {
         this.§7T§ = param1;
      }
      
      public function set §1!h§(param1:Boolean) : void
      {
         this.§6B§ = param1;
      }
      
      public function set §?8§(param1:uint) : void
      {
         this.§`"'§.§?8§ = param1;
      }
      
      public function get §?8§() : uint
      {
         return this.§`"'§.§?8§;
      }
      
      public function get §-"<§() : Boolean
      {
         return this.§break§;
      }
      
      public function set §-"<§(param1:Boolean) : void
      {
         this.§break§ = param1;
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
         return this.§!!b§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§!!b§ = param1;
      }
      
      public function §9!g§(param1:b2FilterData) : void
      {
         if(this.§?"8§)
         {
            this.§?"8§.§"!G§(param1);
         }
      }
      
      protected function §6H§(param1:String) : int
      {
         return §&!>§.§6H§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§6"'§.§7"8§();
         _loc3_.§'!H§ = true;
         _loc3_.§4!N§ = true;
         _loc3_.§54§ = true;
         _loc3_.§[!u§ = 1;
         _loc3_.§@!§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§?"$§)
         {
            this.§?"$§.§0!k§(this.getBody());
            this.§?"$§ = null;
         }
         this.§[!g§.dispose();
         if(this.§!&§)
         {
            this.§!&§.dispose();
            this.§!&§ = null;
         }
         this.§?"8§ = null;
         this.§]!T§ = null;
         this.§6"'§ = null;
      }
      
      public function §-^§(param1:Number) : void
      {
         this.getBody().§-!7§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §+!1§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function § !K§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§8!X§();
         }
         if(param3)
         {
            this.§;I§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§?"8§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §@!a§(param1:b2Vec2) : void
      {
         this.§]!T§ = param1;
      }
      
      public function §^!6§() : void
      {
         if(this.§]!T§)
         {
            this.§ !K§(this.§]!T§,false);
            this.§]!T§ = null;
         }
      }
      
      public function §8!X§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§`!`§(0);
         }
         else
         {
            this.getBody().§`!`§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §;I§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§-^§(_loc2_);
      }
      
      public function §;g§(param1:Number) : void
      {
         this.getBody().§`!`§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§?"8§ != null)
         {
            return this.§?"8§.GetBody();
         }
         return null;
      }
      
      public function §?!g§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §!w§.§4!-§;
         this.getBody().GetPosition().y = this.mY * §!w§.§4!-§;
      }
      
      public function §?!%§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§46§)
         {
            _loc3_ = true;
            this.§46§ = false;
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
            this.§[!g§.§>y§();
         }
         if(this.§ !R§ > 1 && this.§[!g§.§6Y§)
         {
            _loc4_ = 4 + (this.§[!g§.§6Y§.blurX - 4 + param2 / 20) % 28;
            this.§[!g§.§6Y§.blurX = _loc4_;
            this.§[!g§.§6Y§.blurY = _loc4_;
         }
         this.§[!g§.§?!0§(param2);
         if(§94§)
         {
            this.§,!t§(param1);
         }
         else
         {
            this.§]$§ = this.§"!r§;
            this.mX = this.§]f§;
            this.mY = this.§'z§;
         }
         this.§!&§.x = Math.round(this.mX);
         this.§!&§.y = Math.round(this.mY);
         this.§!&§.rotation = this.§]$§ / 180 * Math.PI;
      }
      
      public function §=O§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§9y§ = this.§"!r§;
         this.§4!k§ = this.§]f§;
         this.§-=§ = this.§'z§;
         this.§"!r§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§]f§ = _loc1_ / §!w§.§4!-§;
         this.§'z§ = _loc2_ / §!w§.§4!-§;
         this.§`"'§.§>Q§();
         this.§`"'§.§,!d§(this.getBody());
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
      
      public function §,!t§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §9!P§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§+!e§.§9q§.§[g§.§?y§ * 1000;
         }
         param1 *= -1;
         if(this.§]f§ == this.§4!k§ || param1 == 0)
         {
            this.§<"1§ = 0;
            this.mX = this.§]f§;
         }
         else
         {
            this.§<"1§ = param1 * (this.§4!k§ - this.§]f§) / param2;
            this.mX = this.§]f§ + this.§<"1§;
         }
         if(this.§'z§ == this.§-=§ || param1 == 0)
         {
            this.§7"9§ = 0;
            this.mY = this.§'z§;
         }
         else
         {
            this.§7"9§ = param1 * (this.§-=§ - this.§'z§) / param2;
            this.mY = this.§'z§ + this.§7"9§;
         }
         if(this.§"!r§ == this.§9y§ || param1 == 0)
         {
            this.§]$§ = this.§"!r§;
         }
         else if(this.§9y§ > this.§"!r§ && this.§9y§ - this.§"!r§ <= 180)
         {
            this.§]$§ = this.§"!r§ + param1 * (this.§9y§ - this.§"!r§) / param2;
         }
         else if(this.§9y§ > this.§"!r§ && this.§9y§ - this.§"!r§ > 180)
         {
            this.§]$§ = this.§"!r§ + param1 * (this.§9y§ - 360 - this.§"!r§) / param2;
         }
         else if(this.§9y§ < this.§"!r§ && this.§"!r§ - this.§9y§ <= 180)
         {
            this.§]$§ = this.§"!r§ + param1 * (this.§9y§ - this.§"!r§) / param2;
         }
         else if(this.§9y§ < this.§"!r§ && this.§"!r§ - this.§9y§ > 180)
         {
            this.§]$§ = this.§"!r§ + param1 * (this.§9y§ + 360 - this.§"!r§) / param2;
         }
      }
      
      public function get §+!;§() : Point
      {
         if(!§94§)
         {
         }
         return null;
      }
      
      public function §9!^§() : Boolean
      {
         return this.§,!E§ == §]!>§.§&j§ || this.§,!E§ == §]!>§.§;!B§;
      }
      
      public function §]F§() : Boolean
      {
         return this.§,!E§ == §]!>§.§9!K§;
      }
      
      public function §<",§() : Boolean
      {
         return this.§,!E§ == §]!>§.§%q§;
      }
      
      public function §6!@§() : Boolean
      {
         return this.§,!E§ == §]!>§.§;!B§;
      }
      
      public function §7!#§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§,!E§ == §]!>§.§&;§;
      }
      
      public function isGround() : Boolean
      {
         return this.§,!E§ == §]!>§.§=!a§;
      }
      
      public function §@!i§() : Boolean
      {
         return this.§,!E§ == §]!>§.§-"?§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§,!E§ == §]!>§.§,"9§;
      }
      
      public function §?!S§() : Boolean
      {
         if(this.§!F§ == "MISC_EXPLOSIVE_TNT" || this.§!F§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §%h§() : Boolean
      {
         return (this.§]F§() || this.§@!i§() || this.isMiscBlock()) && !this.§-"<§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §0$§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§<",§())
         {
            return this.§@!P§;
         }
         if(!this.§+!e§.§[!<§())
         {
            return this.§@!P§;
         }
         if(this.§'!,§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§"!a§(§+"&§.§<!k§);
            }
            else if(param1 > 12)
            {
               this.§"!a§(§+"&§.§`!!§);
            }
            else if(param1 > 3)
            {
               this.§"!a§(§+"&§.§>,§);
            }
            return this.§@!P§;
         }
         if(param1 <= this.§'!,§)
         {
            if(param1 >= this.§'!,§ / 2)
            {
               this.§"!a§(§+"&§.§>,§);
            }
            if(this.§9!^§() && this.§@!P§ == this.§'">§)
            {
               this.§@!P§ = this.§'">§ - 1;
            }
            return this.§@!P§;
         }
         param1 -= this.§'!,§;
         if(param2 && this.§%h§())
         {
            _loc7_ = Math.min(this.§@!P§,int(param1));
            _loc8_ = §!w§.§!!l§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §!w§.§`"5§;
            }
            this.§+!e§.§9q§.addScore(_loc8_,§]"%§.§>!%§,this.§@!P§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§&!>§.§6[§(this.§!F§));
         }
         if(!(param5 && this.§6B§))
         {
            this.§@!P§ -= param1;
         }
         if(this.§@!P§ < 1 && this.§9!^§())
         {
            this.§@!P§ = 1;
         }
         if(this.§@!P§ < 1)
         {
            this.§@!P§ = 0;
            §]"5§.§1!%§(§+"&§.§<!k§,this.§6"'§.§3k§,"ChannelDestroyed");
         }
         else
         {
            this.§"!a§(§+"&§.§`!!§);
            this.addDamageParticles(this.§+!e§.§9q§.particles,param1);
         }
         this.§[!g§.setDamagedFrame();
         return this.§@!P§;
      }
      
      public function §"!a§(param1:int) : void
      {
         §]"5§.§1!%§(param1,this.§6"'§.§3k§);
      }
      
      public function §1!r§(param1:String) : Number
      {
         return this.§6"'§.material.§!!&§(param1) * this.§ !R§;
      }
      
      public function §8d§(param1:String) : Number
      {
         return this.§6"'§.material.§]N§(param1);
      }
      
      public function §@"?§() : String
      {
         return this.§6"'§.material.mName;
      }
      
      public function §@y§() : Number
      {
         return this.§6"'§.§=r§();
      }
      
      public function §!!E§() : int
      {
         return this.§6"'§.§,!,§();
      }
      
      public function §+f§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§9!^§() && this.§@!P§ == this.§'">§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§7"<§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §#";§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§6!'§();
      }
      
      protected function §6!'§() : Boolean
      {
         return this.§`"'§.§6!'§();
      }
      
      public function §;!t§(param1:Number = 3) : void
      {
         this.§ !R§ = param1;
         if(this.§ !R§ > 1)
         {
            this.§[!g§.§^`§();
         }
         else
         {
            this.§[!g§.§6Y§ = null;
         }
      }
      
      public function §0&§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§6"'§.§7"8§() == §+!Z§.§>$§)
         {
            _loc2_ = this.§[!g§.mW * this.§[!g§.mH * (§!w§.§4!-§ * §!w§.§4!-§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§?"8§.§11§();
            if(param1)
            {
               _loc2_ *= this.§4>§();
            }
            _loc2_ /= this.§?a§ * this.§?a§;
         }
         return _loc2_;
      }
      
      public function §4>§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§[!g§.§0n§ - 1) / 10);
      }
      
      public function §!N§(param1:Number) : void
      {
         var _loc2_:Number = this.getBody().GetLinearVelocity().x;
         var _loc3_:Number = this.getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§-5§) : void
      {
      }
      
      public function addDamageParticles(param1:§-5§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §&!8§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§>!W§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§+!1§()) + 360) % 360;
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
            this.§-^§(_loc4_);
         }
         var _loc3_:Number = this.§+!1§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§-^§(_loc3_);
      }
      
      public function §4!1§(param1:Number) : void
      {
         var _loc2_:Number = §1",§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §#!V§(_loc2_);
         this.getBody().§-!7§(_loc2_);
      }
      
      public function §;"+§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.getBody().GetPosition().Copy();
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
         this.getBody().§>!W§(_loc13_);
      }
   }
}
