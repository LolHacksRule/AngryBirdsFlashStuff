package §^!$§
{
   import § Y§.b2PolygonShape;
   import §%!a§.§ !§;
   import §%!a§.§ !R§;
   import §%!a§.§0m§;
   import §%!a§.§?!9§;
   import §%!a§.§^!=§;
   import §&!9§.Sprite;
   import §&F§.§6K§;
   import §&F§.§>!2§;
   import §+x§.§-6§;
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §<!L§.b2BodyDef;
   import §<!L§.b2FilterData;
   import §<!L§.b2Fixture;
   import §<!L§.b2World;
   import §?=§.§&j§;
   import §?=§.§8S§;
   import §[!$§.b2Settings;
   import §^=§.§8!6§;
   import flash.geom.Point;
   
   public class §?![§
   {
      
      public static const §,!G§:uint = 1 << 1;
      
      public static const §+b§:uint = 1 << 2;
      
      public static const §7j§:uint = 1 << 3;
      
      public static const §22§:uint = 1 << 4;
      
      public static const §5![§:Boolean = true;
      
      public static const §4v§:Number = 5;
      
      public static const §+! §:Number = 10;
       
      
      private var §;p§:String;
      
      private var §8a§:int;
      
      private var §]C§:int;
      
      public var §=^§:String;
      
      public var §&y§:int;
      
      private var §>!4§:§?!9§;
      
      private var §&!G§:§;!D§;
      
      private var mWorld:b2World;
      
      protected var §#]§:String = "";
      
      protected var §?!=§:int = 1;
      
      private var §]g§:b2Fixture;
      
      private var §2j§:b2Body;
      
      private var §6!F§:b2Vec2;
      
      public var §+m§:Number;
      
      public var §>!`§:Number;
      
      private var §2!C§:Number;
      
      private var §"!+§:Boolean = false;
      
      private var §>#§:Number;
      
      private var §+!&§:Number;
      
      private var §,!A§:Number;
      
      private var §+!-§:Number;
      
      private var §null§:Number;
      
      private var §8t§:Number;
      
      public var §!w§:Number = 1;
      
      private var §+!'§:Boolean = false;
      
      public var § ?§:Number = 0;
      
      public var §"!6§:Number = 0;
      
      protected var §;B§:Boolean = false;
      
      public var §^!9§:§4<§;
      
      private var §@!Y§:Sprite;
      
      private var §!f§:Number = 0;
      
      private var §@;§:Number = 0;
      
      private var §%!H§:Number = 0;
      
      private var § !@§:Number = 1.0;
      
      private var §'E§:Boolean = false;
      
      protected var § !N§:§"!%§;
      
      private var §69§:Boolean = true;
      
      public function §?![§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§=^§ = param6;
         this.§>!4§ = § !R§.§^L§(param6);
         this.§&!G§ = param1;
         this.§@!Y§ = param2;
         this.§ !@§ = param10;
         this.§'E§ = param11;
         this.§8a§ = param5;
         this.§&y§ = this.§>!4§.§&y§;
         this.§]C§ = this.§>!4§.§import§();
         this.§ !N§ = new §"!%§(§4v§,§+! §);
         this.§^!9§ = new §4<§(this,param2,param4);
         if(!this.§^!9§.§8U§(param1.mLevelMain.§59§))
         {
            this.§^!9§.§@!J§(this.§]C§,this.§>!4§.§-!9§(),this.§>!4§.§&H§() / §>!2§.§9d§,this.§>!4§.§`!>§() / §>!2§.§9d§);
         }
         this.§^!9§.§?P§(this.§]C§ == §0m§.§+!8§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§2j§ = this.mWorld.§[z§(_loc12_);
         this.§2j§.§9$§(this);
         if(this.§]C§ == §0m§.§=4§)
         {
            _loc14_ = b2PolygonShape.§^i§(this.§>!4§.shape.§"!R§ * param10,this.§>!4§.shape.§0[§ * param10);
            this.§]g§ = this.§2j§.CreateFixture2(_loc14_,this.§>!4§.§&!4§());
         }
         else if(this.§]C§ == §0m§.§+!8§ || this.§]C§ == §0m§.§;U§)
         {
            this.§]g§ = this.§2j§.CreateFixture2(this.§>!4§.shape.§0!7§(param10),this.§>!4§.§&!4§());
         }
         this.§]g§.§6!%§(this.§>!4§.§^;§());
         this.§]g§.§-]§(this.§>!4§.§0P§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§8g§())
         {
            _loc13_.§1^§ = §,!G§;
            _loc13_.§-!%§ = 65535 & ~§+b§;
         }
         else if(this.§=^§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§=^§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§1^§ = §+b§;
            _loc13_.§-!%§ = 65535 & ~§,!G§;
         }
         this.§]g§.§7y§(_loc13_);
         this.§2!C§ = this.§>!4§.§,!d§();
         if(this.§>!4§.§>!`§ > 0)
         {
            this.§+m§ = this.§>!`§ = this.§>!4§.§>!`§;
         }
         else
         {
            this.§+m§ = this.§>!`§ = Math.round(this.§>e§(true) * this.§>!4§.§+!§());
            if(this.§+m§ < 1)
            {
               this.§+m§ = this.§>!`§ = 1;
            }
         }
         if(this.§>!4§.§&y§ == §?!9§.§=!$§)
         {
            this.§@!Y§.visible = false;
         }
         else
         {
            this.§^!9§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§1Z§(param9);
         }
         this.§'!F§();
         this.§0!?§(0,1);
         this.§^!9§.§?!^§(this.§>!4§.shape);
      }
      
      public static function § var§(param1:int, param2:§^!=§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§5!S§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§1T§;
            }
            §-6§.§,!0§(_loc4_,param3);
         }
      }
      
      public static function §9!%§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §2!Q§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§@!Y§;
      }
      
      public function get x() : Number
      {
         return this.§!f§;
      }
      
      public function get y() : Number
      {
         return this.§@;§;
      }
      
      public function get scale() : Number
      {
         return this.§ !@§;
      }
      
      public function get front() : Boolean
      {
         return this.§'E§;
      }
      
      public function get §=M§() : Number
      {
         return this.§2j§.GetPosition().x;
      }
      
      public function get §[h§() : Number
      {
         return this.§2j§.GetPosition().y;
      }
      
      public function get §'7§() : §?!9§
      {
         return this.§>!4§;
      }
      
      public function get §%!L§() : Boolean
      {
         return this.§2!C§ >= 0;
      }
      
      public function get container() : §;!D§
      {
         return this.§&!G§;
      }
      
      public function get §[;§() : Boolean
      {
         return this.§69§;
      }
      
      public function set §[;§(param1:Boolean) : void
      {
         this.§69§ = param1;
      }
      
      public function set §9j§(param1:Boolean) : void
      {
         this.§"!+§ = param1;
      }
      
      public function set §!!E§(param1:uint) : void
      {
         this.§ !N§.§!!E§ = param1;
      }
      
      public function get §!!E§() : uint
      {
         return this.§ !N§.§!!E§;
      }
      
      public function get §1a§() : Boolean
      {
         return this.§+!'§;
      }
      
      public function set §1a§(param1:Boolean) : void
      {
         this.§+!'§ = param1;
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
         return this.§;p§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§;p§ = param1;
      }
      
      public function §true §(param1:b2FilterData) : void
      {
         if(this.§]g§)
         {
            this.§]g§.§7y§(param1);
         }
      }
      
      protected function §"0§(param1:String) : int
      {
         return §8S§.§"0§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§>!4§.§@7§();
         _loc3_.§]%§ = true;
         _loc3_.§]X§ = true;
         _loc3_.§45§ = true;
         _loc3_.§<u§ = 1;
         _loc3_.§0!8§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§6!T§(this.§#!!§());
            this.mWorld = null;
         }
         this.§^!9§.dispose();
         if(this.§@!Y§)
         {
            this.§@!Y§.dispose();
            this.§@!Y§ = null;
         }
         this.§]g§ = null;
         this.§6!F§ = null;
         this.§>!4§ = null;
      }
      
      public function §1Z§(param1:Number) : void
      {
         this.§#!!§().§%X§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §<!e§() : Number
      {
         return (360 - this.§#!!§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §9<§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§#!!§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§#!E§();
         }
         if(param3)
         {
            this.§`_§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]g§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§#!!§().GetPosition().x >= param3 && this.§#!!§().GetPosition().x <= param4 && this.§#!!§().GetPosition().y >= param1 && this.§#!!§().GetPosition().y <= param2;
      }
      
      public function §^!5§(param1:b2Vec2) : void
      {
         this.§6!F§ = param1;
      }
      
      public function §9A§() : void
      {
         if(this.§6!F§)
         {
            this.§9<§(this.§6!F§,false);
            this.§6!F§ = null;
         }
      }
      
      public function §#!E§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§#!!§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§#!!§().§[!!§(0);
         }
         else
         {
            this.§#!!§().§[!!§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §`_§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§#!!§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§1Z§(_loc2_);
      }
      
      public function §05§(param1:Number) : void
      {
         this.§#!!§().§[!!§(param1);
      }
      
      public function §#!!§() : b2Body
      {
         if(this.§]g§ != null)
         {
            return this.§]g§.GetBody();
         }
         return null;
      }
      
      public function §7!B§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§!f§ = param1;
            this.§@;§ = param2;
         }
         this.§#!!§().GetPosition().x = this.§!f§ * §>!2§.§9d§;
         this.§#!!§().GetPosition().y = this.§@;§ * §>!2§.§9d§;
      }
      
      public function §0!?§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§;B§)
         {
            _loc3_ = true;
            this.§;B§ = false;
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
            this.§^!9§.§!h§();
         }
         if(this.§!w§ > 1 && this.§^!9§.§,4§)
         {
            _loc4_ = 4 + (this.§^!9§.§,4§.blurX - 4 + param2 / 20) % 28;
            this.§^!9§.§,4§.blurX = _loc4_;
            this.§^!9§.§,4§.blurY = _loc4_;
         }
         this.§^!9§.§,<§(param2);
         if(§5![§)
         {
            this.§[6§(param1);
         }
         else
         {
            this.§%!H§ = this.§,!A§;
            this.§!f§ = this.§>#§;
            this.§@;§ = this.§+!&§;
         }
         this.§@!Y§.x = Math.round(this.§!f§);
         this.§@!Y§.y = Math.round(this.§@;§);
         this.§@!Y§.rotation = this.§%!H§ / 180 * Math.PI;
      }
      
      public function §'!F§() : void
      {
         var _loc1_:Number = this.§#!!§().GetPosition().x;
         var _loc2_:Number = this.§#!!§().GetPosition().y;
         this.§8t§ = this.§,!A§;
         this.§+!-§ = this.§>#§;
         this.§null§ = this.§+!&§;
         this.§,!A§ = this.§#!!§().GetAngle() * (180 / Math.PI) % 360;
         this.§>#§ = _loc1_ / §>!2§.§9d§;
         this.§+!&§ = _loc2_ / §>!2§.§9d§;
         this.§ !N§.§7!,§();
         this.§ !N§.§93§(this.§#!!§());
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
      
      public function §[6§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §8!6§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§&!G§.mLevelMain.mLevelEngine.§[!0§ * 1000;
         }
         param1 *= -1;
         if(this.§>#§ == this.§+!-§ || param1 == 0)
         {
            this.§ ?§ = 0;
            this.§!f§ = this.§>#§;
         }
         else
         {
            this.§ ?§ = param1 * (this.§+!-§ - this.§>#§) / param2;
            this.§!f§ = this.§>#§ + this.§ ?§;
         }
         if(this.§+!&§ == this.§null§ || param1 == 0)
         {
            this.§"!6§ = 0;
            this.§@;§ = this.§+!&§;
         }
         else
         {
            this.§"!6§ = param1 * (this.§null§ - this.§+!&§) / param2;
            this.§@;§ = this.§+!&§ + this.§"!6§;
         }
         if(this.§,!A§ == this.§8t§ || param1 == 0)
         {
            this.§%!H§ = this.§,!A§;
         }
         else if(this.§8t§ > this.§,!A§ && this.§8t§ - this.§,!A§ <= 180)
         {
            this.§%!H§ = this.§,!A§ + param1 * (this.§8t§ - this.§,!A§) / param2;
         }
         else if(this.§8t§ > this.§,!A§ && this.§8t§ - this.§,!A§ > 180)
         {
            this.§%!H§ = this.§,!A§ + param1 * (this.§8t§ - 360 - this.§,!A§) / param2;
         }
         else if(this.§8t§ < this.§,!A§ && this.§,!A§ - this.§8t§ <= 180)
         {
            this.§%!H§ = this.§,!A§ + param1 * (this.§8t§ - this.§,!A§) / param2;
         }
         else if(this.§8t§ < this.§,!A§ && this.§,!A§ - this.§8t§ > 180)
         {
            this.§%!H§ = this.§,!A§ + param1 * (this.§8t§ + 360 - this.§,!A§) / param2;
         }
      }
      
      public function get §'j§() : Point
      {
         if(!§5![§)
         {
         }
         return null;
      }
      
      public function §8g§() : Boolean
      {
         return this.§&y§ == §?!9§.§%!"§ || this.§&y§ == §?!9§.§=!B§;
      }
      
      public function §+_§() : Boolean
      {
         return this.§&y§ == §?!9§.§[!,§;
      }
      
      public function §,c§() : Boolean
      {
         return this.§&y§ == §?!9§.§4!K§;
      }
      
      public function §6#§() : Boolean
      {
         return this.§&y§ == §?!9§.§=!B§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§&y§ == §?!9§.§&S§;
      }
      
      public function isGround() : Boolean
      {
         return this.§&y§ == §?!9§.§=!$§;
      }
      
      public function §9!D§() : Boolean
      {
         return this.§&y§ == §?!9§.§[!e§;
      }
      
      public function §`h§() : Boolean
      {
         return this.§&y§ == §?!9§.§1K§;
      }
      
      public function §!!,§() : Boolean
      {
         if(this.§=^§ == "MISC_EXPLOSIVE_TNT" || this.§=^§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §5<§() : Boolean
      {
         return (this.§+_§() || this.§9!D§() || this.§`h§()) && !this.§1a§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §`!^§() : Number
      {
         return Number(Math.sqrt(this.§#!!§().GetLinearVelocity().x * this.§#!!§().GetLinearVelocity().x + this.§#!!§().GetLinearVelocity().y * this.§#!!§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§,c§())
         {
            return this.§+m§;
         }
         if(!this.§&!G§.§'"§())
         {
            return this.§+m§;
         }
         if(this.§2!C§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§&!Q§(§^!=§.§#p§);
            }
            else if(param1 > 12)
            {
               this.§&!Q§(§^!=§.§2!S§);
            }
            else if(param1 > 3)
            {
               this.§&!Q§(§^!=§.§+8§);
            }
            return this.§+m§;
         }
         if(param1 <= this.§2!C§)
         {
            if(param1 >= this.§2!C§ / 2)
            {
               this.§&!Q§(§^!=§.§+8§);
            }
            if(this.§8g§() && this.§+m§ == this.§>!`§)
            {
               this.§+m§ = this.§>!`§ - 1;
            }
            return this.§+m§;
         }
         param1 -= this.§2!C§;
         if(param2 && this.§5<§())
         {
            _loc7_ = Math.min(this.§+m§,int(param1));
            _loc8_ = §>!2§.§,!I§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §>!2§.§?!N§;
            }
            this.§&!G§.mLevelMain.addScore(_loc8_,§6K§.§"E§,this.§+m§ > param1 && param3,this.§#!!§().GetPosition().x,this.§#!!§().GetPosition().y,§8S§.§'y§(this.§=^§));
         }
         if(!(param5 && this.§"!+§))
         {
            this.§+m§ -= param1;
         }
         if(this.§+m§ < 1 && this.§8g§())
         {
            this.§+m§ = 1;
         }
         if(this.§+m§ < 1)
         {
            this.§+m§ = 0;
            §?![§.§ var§(§^!=§.§#p§,this.§>!4§.§%!P§,"ChannelDestroyed");
         }
         else
         {
            this.§&!Q§(§^!=§.§2!S§);
            this.addDamageParticles(this.§&!G§.mLevelMain.particles,param1);
         }
         this.§^!9§.setDamagedFrame();
         return this.§+m§;
      }
      
      public function §&!Q§(param1:int) : void
      {
         §?![§.§ var§(param1,this.§>!4§.§%!P§);
      }
      
      public function §6O§(param1:String) : Number
      {
         return this.§>!4§.material.§?!;§(param1) * this.§!w§;
      }
      
      public function §!v§(param1:String) : Number
      {
         return this.§>!4§.material.§5#§(param1);
      }
      
      public function §'W§() : String
      {
         return this.§>!4§.material.mName;
      }
      
      public function §%e§() : Number
      {
         return this.§>!4§.§+!§();
      }
      
      public function §>a§() : int
      {
         return this.§>!4§.§=F§();
      }
      
      public function §&a§() : Boolean
      {
         return this.§#!!§().IsAwake() && (this.§8g§() && this.§+m§ == this.§>!`§ || Math.abs(this.§#!!§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§#!!§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§#!!§().§=!8§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §^!S§() : Boolean
      {
         if(!this.§#!!§().IsAwake())
         {
            return true;
         }
         return !this.§-L§();
      }
      
      protected function §-L§() : Boolean
      {
         return this.§ !N§.§-L§();
      }
      
      public function §#!`§(param1:Number = 3) : void
      {
         this.§!w§ = param1;
         if(this.§!w§ > 1)
         {
            this.§^!9§.§40§();
         }
         else
         {
            this.§^!9§.§,4§ = null;
         }
      }
      
      public function §>e§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§>!4§.§@7§() == § !§.§6W§)
         {
            _loc2_ = this.§^!9§.mW * this.§^!9§.mH * (§>!2§.§9d§ * §>!2§.§9d§);
         }
         else
         {
            _loc2_ = this.§#!!§().GetMass() / this.§]g§.§]!`§();
            if(param1)
            {
               _loc2_ *= this.§'w§();
            }
            _loc2_ /= this.§ !@§ * this.§ !@§;
         }
         return _loc2_;
      }
      
      public function §'w§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§^!9§.§ !8§ - 1) / 10);
      }
      
      public function §&!U§(param1:Number) : void
      {
         var _loc2_:Number = this.§#!!§().GetLinearVelocity().x;
         var _loc3_:Number = this.§#!!§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§#!!§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§;!D§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§&j§) : void
      {
      }
      
      public function addDamageParticles(param1:§&j§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §?!F§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§#!!§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§#!!§().§ l§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§<!e§()) + 360) % 360;
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
            this.§1Z§(_loc4_);
         }
         var _loc3_:Number = this.§<!e§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§1Z§(_loc3_);
      }
      
      public function §-e§(param1:Number) : void
      {
         var _loc2_:Number = §9!%§(this.§#!!§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §2!Q§(_loc2_);
         this.§#!!§().§%X§(_loc2_);
      }
      
      public function §^z§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§#!!§().GetPosition().Copy();
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
         this.§#!!§().§ l§(_loc13_);
      }
   }
}
