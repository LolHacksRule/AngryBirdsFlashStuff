package § !$§
{
   import § A§.§&!#§;
   import § A§.§-!E§;
   import § A§.§68§;
   import § A§.§8z§;
   import § A§.§9c§;
   import §&!b§.§ c§;
   import §+d§.b2Body;
   import §+d§.b2BodyDef;
   import §+d§.b2FilterData;
   import §+d§.b2Fixture;
   import §+d§.b2World;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §6!;§.Sprite;
   import §6%§.b2Settings;
   import §8`§.b2PolygonShape;
   import §9!'§.§0!%§;
   import §9!'§.§8j§;
   import §^f§.§<q§;
   import §`!^§.b2Vec2;
   import flash.geom.Point;
   
   public class §>C§
   {
      
      public static const §0W§:uint = 1 << 1;
      
      public static const §=!P§:uint = 1 << 2;
      
      public static const §<U§:uint = 1 << 3;
      
      public static const §?_§:uint = 1 << 4;
      
      public static const §3e§:Boolean = true;
      
      public static const §[!C§:Number = 5;
      
      public static const each:Number = 10;
       
      
      private var §0y§:String;
      
      private var §>W§:int;
      
      private var §2+§:int;
      
      public var § [§:String;
      
      public var §]5§:int;
      
      protected var §,w§:§-!E§;
      
      private var §'v§:§7!!§;
      
      private var mWorld:b2World;
      
      protected var §"v§:String = "";
      
      protected var §4!1§:int = 1;
      
      private var §9r§:b2Fixture;
      
      private var §?!=§:b2Body;
      
      private var §;s§:b2Vec2;
      
      public var §6!^§:Number;
      
      public var §1D§:Number;
      
      private var §]!B§:Number;
      
      private var §#!Y§:Boolean = false;
      
      private var §]J§:Number;
      
      private var §?!B§:Number;
      
      private var §?P§:Number;
      
      private var §?!<§:Number;
      
      private var §7!$§:Number;
      
      private var §6K§:Number;
      
      public var §-!=§:Number = 1;
      
      private var §-!U§:Boolean = false;
      
      public var §^!T§:Number = 0;
      
      public var §,d§:Number = 0;
      
      protected var §%?§:Boolean = false;
      
      public var §[m§:§"!%§;
      
      protected var §4!B§:Sprite;
      
      private var §5T§:Number = 0;
      
      private var §![§:Number = 0;
      
      private var §+U§:Number = 0;
      
      protected var §8=§:Number = 1.0;
      
      private var §8!$§:Boolean = false;
      
      protected var §#!G§:§&m§;
      
      private var §,-§:Boolean = true;
      
      public function §>C§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§ [§ = param6;
         this.§,w§ = §8z§.§3Z§(param6);
         this.§'v§ = param1;
         this.§4!B§ = param2;
         this.§8=§ = param10;
         this.§8!$§ = param11;
         this.§>W§ = param5;
         this.§]5§ = this.§,w§.§]5§;
         this.§2+§ = this.§,w§.§-`§();
         this.§#!G§ = new §&m§(§[!C§,each);
         this.§[m§ = new §"!%§(this,param2,param4);
         if(!this.§[m§.§'_§(param1.§]B§.§2!]§))
         {
            this.§[m§.§+!>§(this.§2+§,this.§,w§.§,C§(),this.§,w§.§ !,§() / §0!%§.§"m§,this.§,w§.§4T§() / §0!%§.§"m§);
         }
         this.§[m§.§?!G§(this.§2+§ == §9c§.§+!%§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§?!=§ = this.mWorld.§0!1§(_loc12_);
         this.§?!=§.§?#§(this);
         if(this.§2+§ == §9c§.§!q§)
         {
            _loc14_ = b2PolygonShape.§#<§(this.§,w§.shape.§@S§ * param10,this.§,w§.shape.§1!U§ * param10);
            this.§9r§ = this.§?!=§.CreateFixture2(_loc14_,this.§,w§.§8!'§());
         }
         else if(this.§2+§ == §9c§.§+!%§ || this.§2+§ == §9c§.§@!0§)
         {
            this.§9r§ = this.§?!=§.CreateFixture2(this.§,w§.shape.§'j§(param10),this.§,w§.§8!'§());
         }
         this.§9r§.§`;§(this.§,w§.§class§());
         this.§9r§.§8X§(this.§,w§.§#&§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§,!8§())
         {
            _loc13_.§&!D§ = §0W§;
            _loc13_.§[9§ = 65535 & ~§=!P§;
         }
         else if(this.§ [§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§ [§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§&!D§ = §=!P§;
            _loc13_.§[9§ = 65535 & ~§0W§;
         }
         this.§9r§.§#R§(_loc13_);
         this.§]!B§ = this.§,w§.§^&§();
         if(this.§,w§.§1D§ > 0)
         {
            this.§6!^§ = this.§1D§ = this.§,w§.§1D§;
         }
         else
         {
            this.§6!^§ = this.§1D§ = Math.round(this.§ `§(true) * this.§,w§.§1!2§());
            if(this.§6!^§ < 1)
            {
               this.§6!^§ = this.§1D§ = 1;
            }
         }
         if(this.§,w§.§]5§ == §-!E§.§2!V§)
         {
            this.§4!B§.visible = false;
         }
         else
         {
            this.§[m§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§4!7§(param9);
         }
         this.§&!9§();
         this.§1!S§(0,1);
         this.§[m§.§@!R§(this.§,w§.shape);
      }
      
      public static function §-!;§(param1:int, param2:§68§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§4#§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§?!§;
            }
            §<q§.§7F§(_loc4_,param3);
         }
      }
      
      public static function §2!W§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §^W§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§4!B§;
      }
      
      public function get x() : Number
      {
         return this.§5T§;
      }
      
      public function get y() : Number
      {
         return this.§![§;
      }
      
      public function get scale() : Number
      {
         return this.§8=§;
      }
      
      public function get front() : Boolean
      {
         return this.§8!$§;
      }
      
      public function get §9!5§() : Number
      {
         return this.§?!=§.GetPosition().x;
      }
      
      public function get §0!a§() : Number
      {
         return this.§?!=§.GetPosition().y;
      }
      
      public function get §]1§() : §-!E§
      {
         return this.§,w§;
      }
      
      public function get §+y§() : Boolean
      {
         return this.§]!B§ >= 0;
      }
      
      public function get container() : §7!!§
      {
         return this.§'v§;
      }
      
      public function get §?!;§() : Boolean
      {
         return this.§,-§;
      }
      
      public function set §?!;§(param1:Boolean) : void
      {
         this.§,-§ = param1;
      }
      
      public function set §-!A§(param1:Boolean) : void
      {
         this.§#!Y§ = param1;
      }
      
      public function set §@! §(param1:uint) : void
      {
         this.§#!G§.§@! § = param1;
      }
      
      public function get §@! §() : uint
      {
         return this.§#!G§.§@! §;
      }
      
      public function get § o§() : Boolean
      {
         return this.§-!U§;
      }
      
      public function set § o§(param1:Boolean) : void
      {
         this.§-!U§ = param1;
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
         return this.§0y§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§0y§ = param1;
      }
      
      public function §0g§(param1:b2FilterData) : void
      {
         if(this.§9r§)
         {
            this.§9r§.§#R§(param1);
         }
      }
      
      protected function §]8§(param1:String) : int
      {
         return §-q§.§]8§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§,w§.§ !Z§();
         _loc3_.§0!^§ = true;
         _loc3_.§<F§ = true;
         _loc3_.§4!+§ = true;
         _loc3_.§ case§ = 1;
         _loc3_.§&[§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§%A§(this.§]!2§());
            this.mWorld = null;
         }
         this.§[m§.dispose();
         if(this.§4!B§)
         {
            this.§4!B§.dispose();
            this.§4!B§ = null;
         }
         this.§9r§ = null;
         this.§;s§ = null;
         this.§,w§ = null;
      }
      
      public function §4!7§(param1:Number) : void
      {
         this.§]!2§().§3y§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §>s§() : Number
      {
         return (360 - this.§]!2§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §%!O§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§]!2§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§&s§();
         }
         if(param3)
         {
            this.§2!d§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§9r§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§]!2§().GetPosition().x >= param3 && this.§]!2§().GetPosition().x <= param4 && this.§]!2§().GetPosition().y >= param1 && this.§]!2§().GetPosition().y <= param2;
      }
      
      public function § !-§(param1:b2Vec2) : void
      {
         this.§;s§ = param1;
      }
      
      public function §'n§() : void
      {
         if(this.§;s§)
         {
            this.§%!O§(this.§;s§,false);
            this.§;s§ = null;
         }
      }
      
      public function §&s§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§]!2§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§]!2§().§%d§(0);
         }
         else
         {
            this.§]!2§().§%d§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §2!d§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§]!2§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§4!7§(_loc2_);
      }
      
      public function §[!f§(param1:Number) : void
      {
         this.§]!2§().§%d§(param1);
      }
      
      public function §]!2§() : b2Body
      {
         if(this.§9r§ != null)
         {
            return this.§9r§.GetBody();
         }
         return null;
      }
      
      public function §=b§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§5T§ = param1;
            this.§![§ = param2;
         }
         this.§]!2§().GetPosition().x = this.§5T§ * §0!%§.§"m§;
         this.§]!2§().GetPosition().y = this.§![§ * §0!%§.§"m§;
      }
      
      public function §1!S§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§%?§)
         {
            _loc3_ = true;
            this.§%?§ = false;
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
            this.§[m§.§'!R§();
         }
         if(this.§-!=§ > 1 && this.§[m§.§"!0§)
         {
            _loc4_ = 4 + (this.§[m§.§"!0§.blurX - 4 + param2 / 20) % 28;
            this.§[m§.§"!0§.blurX = _loc4_;
            this.§[m§.§"!0§.blurY = _loc4_;
         }
         this.§[m§.§&g§(param2);
         if(§3e§)
         {
            this.§3l§(param1);
         }
         else
         {
            this.§+U§ = this.§?P§;
            this.§5T§ = this.§]J§;
            this.§![§ = this.§?!B§;
         }
         this.§4!B§.x = Math.round(this.§5T§);
         this.§4!B§.y = Math.round(this.§![§);
         this.§4!B§.rotation = this.§+U§ / 180 * Math.PI;
      }
      
      public function §&!9§() : void
      {
         var _loc1_:Number = this.§]!2§().GetPosition().x;
         var _loc2_:Number = this.§]!2§().GetPosition().y;
         this.§6K§ = this.§?P§;
         this.§?!<§ = this.§]J§;
         this.§7!$§ = this.§?!B§;
         this.§?P§ = this.§]!2§().GetAngle() * (180 / Math.PI) % 360;
         this.§]J§ = _loc1_ / §0!%§.§"m§;
         this.§?!B§ = _loc2_ / §0!%§.§"m§;
         this.§#!G§.§-p§();
         this.§#!G§.§2]§(this.§]!2§());
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
      
      public function §3l§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            § c§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§'v§.§]B§.mLevelEngine.§7n§ * 1000;
         }
         param1 *= -1;
         if(this.§]J§ == this.§?!<§ || param1 == 0)
         {
            this.§^!T§ = 0;
            this.§5T§ = this.§]J§;
         }
         else
         {
            this.§^!T§ = param1 * (this.§?!<§ - this.§]J§) / param2;
            this.§5T§ = this.§]J§ + this.§^!T§;
         }
         if(this.§?!B§ == this.§7!$§ || param1 == 0)
         {
            this.§,d§ = 0;
            this.§![§ = this.§?!B§;
         }
         else
         {
            this.§,d§ = param1 * (this.§7!$§ - this.§?!B§) / param2;
            this.§![§ = this.§?!B§ + this.§,d§;
         }
         if(this.§?P§ == this.§6K§ || param1 == 0)
         {
            this.§+U§ = this.§?P§;
         }
         else if(this.§6K§ > this.§?P§ && this.§6K§ - this.§?P§ <= 180)
         {
            this.§+U§ = this.§?P§ + param1 * (this.§6K§ - this.§?P§) / param2;
         }
         else if(this.§6K§ > this.§?P§ && this.§6K§ - this.§?P§ > 180)
         {
            this.§+U§ = this.§?P§ + param1 * (this.§6K§ - 360 - this.§?P§) / param2;
         }
         else if(this.§6K§ < this.§?P§ && this.§?P§ - this.§6K§ <= 180)
         {
            this.§+U§ = this.§?P§ + param1 * (this.§6K§ - this.§?P§) / param2;
         }
         else if(this.§6K§ < this.§?P§ && this.§?P§ - this.§6K§ > 180)
         {
            this.§+U§ = this.§?P§ + param1 * (this.§6K§ + 360 - this.§?P§) / param2;
         }
      }
      
      public function get §%'§() : Point
      {
         if(!§3e§)
         {
         }
         return null;
      }
      
      public function §,!8§() : Boolean
      {
         return this.§]5§ == §-!E§.§80§ || this.§]5§ == §-!E§.§%H§;
      }
      
      public function §0A§() : Boolean
      {
         return this.§]5§ == §-!E§.§;S§;
      }
      
      public function §&!Z§() : Boolean
      {
         return this.§]5§ == §-!E§.§9!A§;
      }
      
      public function §%q§() : Boolean
      {
         return this.§]5§ == §-!E§.§%H§;
      }
      
      public function §%2§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§]5§ == §-!E§.§`N§;
      }
      
      public function isGround() : Boolean
      {
         return this.§]5§ == §-!E§.§2!V§;
      }
      
      public function §8l§() : Boolean
      {
         return this.§]5§ == §-!E§.§<!G§;
      }
      
      public function §4@§() : Boolean
      {
         return this.§]5§ == §-!E§.§8<§;
      }
      
      public function §?!9§() : Boolean
      {
         if(this.§ [§ == "MISC_EXPLOSIVE_TNT" || this.§ [§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §-!]§() : Boolean
      {
         return (this.§0A§() || this.§8l§() || this.§4@§()) && !this.§ o§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §3!+§() : Number
      {
         return Number(Math.sqrt(this.§]!2§().GetLinearVelocity().x * this.§]!2§().GetLinearVelocity().x + this.§]!2§().GetLinearVelocity().y * this.§]!2§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§&!Z§())
         {
            return this.§6!^§;
         }
         if(!this.§'v§.§&0§())
         {
            return this.§6!^§;
         }
         if(this.§]!B§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§^!'§(§68§.§'§);
            }
            else if(param1 > 12)
            {
               this.§^!'§(§68§.§3I§);
            }
            else if(param1 > 3)
            {
               this.§^!'§(§68§.§42§);
            }
            return this.§6!^§;
         }
         if(param1 <= this.§]!B§)
         {
            if(param1 >= this.§]!B§ / 2)
            {
               this.§^!'§(§68§.§42§);
            }
            if(this.§,!8§() && this.§6!^§ == this.§1D§)
            {
               this.§6!^§ = this.§1D§ - 1;
            }
            return this.§6!^§;
         }
         param1 -= this.§]!B§;
         if(param2 && this.§-!]§())
         {
            _loc7_ = Math.min(this.§6!^§,int(param1));
            _loc8_ = §0!%§.§^a§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §0!%§.§@Q§;
            }
            this.§'v§.§]B§.addScore(_loc8_,§8j§.§@4§,this.§6!^§ > param1 && param3,this.§]!2§().GetPosition().x,this.§]!2§().GetPosition().y,§-q§.§^v§(this.§ [§));
         }
         if(!(param5 && this.§#!Y§))
         {
            this.§6!^§ -= param1;
         }
         if(this.§6!^§ < 1 && this.§,!8§())
         {
            this.§6!^§ = 1;
         }
         if(this.§6!^§ < 1)
         {
            this.§6!^§ = 0;
            §>C§.§-!;§(§68§.§'§,this.§,w§.§<f§,"ChannelDestroyed");
         }
         else
         {
            this.§^!'§(§68§.§3I§);
            this.addDamageParticles(this.§'v§.§]B§.particles,param1);
         }
         this.§[m§.setDamagedFrame();
         return this.§6!^§;
      }
      
      public function §^!'§(param1:int) : void
      {
         §>C§.§-!;§(param1,this.§,w§.§<f§);
      }
      
      public function §=!%§(param1:String) : Number
      {
         return this.§,w§.material.§ U§(param1) * this.§-!=§;
      }
      
      public function §5"§(param1:String) : Number
      {
         return this.§,w§.material.§!!V§(param1);
      }
      
      public function §2y§() : String
      {
         return this.§,w§.material.mName;
      }
      
      public function §>!>§() : Number
      {
         return this.§,w§.§1!2§();
      }
      
      public function §7+§() : int
      {
         return this.§,w§.§<!!§();
      }
      
      public function §]!b§() : Boolean
      {
         return this.§]!2§().IsAwake() && (this.§,!8§() && this.§6!^§ == this.§1D§ || Math.abs(this.§]!2§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§]!2§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§]!2§().§&2§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §&n§() : Boolean
      {
         if(!this.§]!2§().IsAwake())
         {
            return true;
         }
         return !this.§2!%§();
      }
      
      protected function §2!%§() : Boolean
      {
         return this.§#!G§.§2!%§();
      }
      
      public function §+f§(param1:Number = 3) : void
      {
         this.§-!=§ = param1;
         if(this.§-!=§ > 1)
         {
            this.§[m§.§5!a§();
         }
         else
         {
            this.§[m§.§"!0§ = null;
         }
      }
      
      public function § `§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§,w§.§ !Z§() == §&!#§.§%5§)
         {
            _loc2_ = this.§[m§.mW * this.§[m§.mH * (§0!%§.§"m§ * §0!%§.§"m§);
         }
         else
         {
            _loc2_ = this.§]!2§().GetMass() / this.§9r§.§4!$§();
            if(param1)
            {
               _loc2_ *= this.§?3§();
            }
            _loc2_ /= this.§8=§ * this.§8=§;
         }
         return _loc2_;
      }
      
      public function §?3§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§[m§.§"!9§ - 1) / 10);
      }
      
      public function §3r§(param1:Number) : void
      {
         var _loc2_:Number = this.§]!2§().GetLinearVelocity().x;
         var _loc3_:Number = this.§]!2§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§]!2§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§0i§) : void
      {
      }
      
      public function addDamageParticles(param1:§0i§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §@a§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§]!2§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§]!2§().§,!Y§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§>s§()) + 360) % 360;
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
            this.§4!7§(_loc4_);
         }
         var _loc3_:Number = this.§>s§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§4!7§(_loc3_);
      }
      
      public function §4!5§(param1:Number) : void
      {
         var _loc2_:Number = §2!W§(this.§]!2§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §^W§(_loc2_);
         this.§]!2§().§3y§(_loc2_);
      }
      
      public function §6!d§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§]!2§().GetPosition().Copy();
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
         this.§]!2§().§,!Y§(_loc13_);
      }
   }
}
