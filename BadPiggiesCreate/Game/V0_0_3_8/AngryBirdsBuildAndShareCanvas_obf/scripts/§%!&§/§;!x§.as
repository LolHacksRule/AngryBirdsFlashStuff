package §%!&§
{
   import §%!<§.§ !6§;
   import §%!<§.§,6§;
   import §%!<§.§7V§;
   import §%!<§.§=!j§;
   import §%!<§.§`f§;
   import §%h§.§5X§;
   import §%h§.§^!'§;
   import §2!Q§.b2PolygonShape;
   import §4u§.§<!L§;
   import §6`§.§?!7§;
   import §8,§.b2Settings;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   import §?!E§.b2BodyDef;
   import §?!E§.b2FilterData;
   import §?!E§.b2Fixture;
   import §?!E§.b2World;
   import §?c§.§3!u§;
   import §?c§.final;
   import §]!2§.Sprite;
   import flash.geom.Point;
   
   public class §;!x§
   {
      
      public static const §`'§:uint = 1 << 1;
      
      public static const §`;§:uint = 1 << 2;
      
      public static const § O§:uint = 1 << 3;
      
      public static const §,x§:uint = 1 << 4;
      
      public static const §7s§:Boolean = true;
      
      public static const §6B§:Number = 5;
      
      public static const §&!T§:Number = 10;
       
      
      private var §0"'§:String;
      
      private var §=K§:int;
      
      private var §@6§:int;
      
      public var §6u§:String;
      
      public var §9E§:int;
      
      private var §9!k§:§,6§;
      
      private var §[+§:§'"-§;
      
      private var §'!2§:b2World;
      
      protected var §0!5§:String = "";
      
      protected var §6!4§:int = 1;
      
      private var §"!=§:b2Fixture;
      
      private var §`7§:b2Body;
      
      private var §2!l§:b2Vec2;
      
      public var §^!n§:Number;
      
      public var §?!`§:Number;
      
      private var §%z§:Number;
      
      private var §7!d§:Boolean = false;
      
      private var §0B§:Number;
      
      private var § !r§:Number;
      
      private var §2'§:Number;
      
      private var §%!X§:Number;
      
      private var §6!V§:Number;
      
      private var §3_§:Number;
      
      public var §]y§:Number = 1;
      
      private var §0!S§:Boolean = false;
      
      public var §else §:Number = 0;
      
      public var §`e§:Number = 0;
      
      protected var §,!u§:Boolean = false;
      
      public var §+G§:§5",§;
      
      private var §`!-§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §^@§:Number = 0;
      
      private var §?V§:Number = 1.0;
      
      private var §6!T§:Boolean = false;
      
      protected var §6!7§:§8C§;
      
      private var §;!j§:Boolean = true;
      
      public function §;!x§(param1:§'"-§, param2:Sprite, param3:b2World, param4:§5X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§6u§ = param6;
         this.§9!k§ = §7V§.§"!E§(param6);
         this.§[+§ = param1;
         this.§`!-§ = param2;
         this.§?V§ = param10;
         this.§6!T§ = param11;
         this.§=K§ = param5;
         this.§9E§ = this.§9!k§.§9E§;
         this.§@6§ = this.§9!k§.§-k§();
         this.§6!7§ = new §8C§(§6B§,§&!T§);
         this.§+G§ = new §5",§(this,param2,param4);
         if(!this.§+G§.§`!?§(param1.§>"2§.§1!U§))
         {
            this.§+G§.§=!#§(this.§@6§,this.§9!k§.§8X§(),this.§9!k§.§;i§() / §5X§.§,!m§,this.§9!k§.§7!"§() / §5X§.§,!m§);
         }
         this.§+G§.§,<§(this.§@6§ == §`f§.§`,§);
         this.§'!2§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§`7§ = this.§'!2§.§&h§(_loc12_);
         this.§`7§.§^x§(this);
         if(this.§@6§ == §`f§.§@!0§)
         {
            _loc14_ = b2PolygonShape.§^!3§(this.§9!k§.shape.§=_§ * param10,this.§9!k§.shape.§!,§ * param10);
            this.§"!=§ = this.§`7§.CreateFixture2(_loc14_,this.§9!k§.§#!I§());
         }
         else if(this.§@6§ == §`f§.§`,§ || this.§@6§ == §`f§.§7" §)
         {
            this.§"!=§ = this.§`7§.CreateFixture2(this.§9!k§.shape.§"!`§(param10),this.§9!k§.§#!I§());
         }
         this.§"!=§.§^!H§(this.§9!k§.§9`§());
         this.§"!=§.§6p§(this.§9!k§.§1x§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§6!p§())
         {
            _loc13_.§]x§ = §`'§;
            _loc13_.§ !8§ = 65535 & ~§`;§;
         }
         else if(this.§6u§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§6u§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§]x§ = §`;§;
            _loc13_.§ !8§ = 65535 & ~§`'§;
         }
         this.§"!=§.§3H§(_loc13_);
         this.§%z§ = this.§9!k§.§?K§();
         if(this.§9!k§.§?!`§ > 0)
         {
            this.§^!n§ = this.§?!`§ = this.§9!k§.§?!`§;
         }
         else
         {
            this.§^!n§ = this.§?!`§ = Math.round(this.§""&§(true) * this.§9!k§.§9"'§());
            if(this.§^!n§ < 1)
            {
               this.§^!n§ = this.§?!`§ = 1;
            }
         }
         if(this.§9!k§.§9E§ == §,6§.§;^§)
         {
            this.§`!-§.visible = false;
         }
         else
         {
            this.§+G§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§8Q§(param9);
         }
         this.§2!G§();
         this.§!8§(0,1);
         this.§+G§.§'!;§(this.§9!k§.shape);
      }
      
      public static function §+!i§(param1:int, param2:§=!j§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§#W§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§'=§;
            }
            §?!7§.§4r§(_loc4_,param3);
         }
      }
      
      public static function §2!n§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §%!F§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§`!-§;
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
         return this.§?V§;
      }
      
      public function get front() : Boolean
      {
         return this.§6!T§;
      }
      
      public function get §^!Q§() : Number
      {
         return this.§`7§.GetPosition().x;
      }
      
      public function get §19§() : Number
      {
         return this.§`7§.GetPosition().y;
      }
      
      public function get §8N§() : §,6§
      {
         return this.§9!k§;
      }
      
      public function get §>!8§() : Boolean
      {
         return this.§%z§ >= 0;
      }
      
      public function get container() : §'"-§
      {
         return this.§[+§;
      }
      
      public function get § else§() : Boolean
      {
         return this.§;!j§;
      }
      
      public function set § else§(param1:Boolean) : void
      {
         this.§;!j§ = param1;
      }
      
      public function set §8!r§(param1:Boolean) : void
      {
         this.§7!d§ = param1;
      }
      
      public function set §@9§(param1:uint) : void
      {
         this.§6!7§.§@9§ = param1;
      }
      
      public function get §@9§() : uint
      {
         return this.§6!7§.§@9§;
      }
      
      public function get §9!'§() : Boolean
      {
         return this.§0!S§;
      }
      
      public function set §9!'§(param1:Boolean) : void
      {
         this.§0!S§ = param1;
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
         return this.§0"'§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§0"'§ = param1;
      }
      
      public function §'h§(param1:b2FilterData) : void
      {
         if(this.§"!=§)
         {
            this.§"!=§.§3H§(param1);
         }
      }
      
      protected function §!"5§(param1:String) : int
      {
         return §3!u§.§!"5§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§9!k§.§4?§();
         _loc3_.§-"0§ = true;
         _loc3_.§%!W§ = true;
         _loc3_.§1!"§ = true;
         _loc3_.§`_§ = 1;
         _loc3_.§^6§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§'!2§)
         {
            this.§'!2§.§7"+§(this.getBody());
            this.§'!2§ = null;
         }
         this.§+G§.dispose();
         if(this.§`!-§)
         {
            this.§`!-§.dispose();
            this.§`!-§ = null;
         }
         this.§"!=§ = null;
         this.§2!l§ = null;
         this.§9!k§ = null;
      }
      
      public function §8Q§(param1:Number) : void
      {
         this.getBody().§?i§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §8!1§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §7!`§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§ k§();
         }
         if(param3)
         {
            this.§;"0§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§"!=§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §-!G§(param1:b2Vec2) : void
      {
         this.§2!l§ = param1;
      }
      
      public function §]!K§() : void
      {
         if(this.§2!l§)
         {
            this.§7!`§(this.§2!l§,false);
            this.§2!l§ = null;
         }
      }
      
      public function § k§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§1o§(0);
         }
         else
         {
            this.getBody().§1o§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §;"0§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§8Q§(_loc2_);
      }
      
      public function §9r§(param1:Number) : void
      {
         this.getBody().§1o§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§"!=§ != null)
         {
            return this.§"!=§.GetBody();
         }
         return null;
      }
      
      public function §]>§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §5X§.§,!m§;
         this.getBody().GetPosition().y = this.mY * §5X§.§,!m§;
      }
      
      public function §!8§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§,!u§)
         {
            _loc3_ = true;
            this.§,!u§ = false;
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
            this.§+G§.§91§();
         }
         if(this.§]y§ > 1 && this.§+G§.§"!C§)
         {
            _loc4_ = 4 + (this.§+G§.§"!C§.blurX - 4 + param2 / 20) % 28;
            this.§+G§.§"!C§.blurX = _loc4_;
            this.§+G§.§"!C§.blurY = _loc4_;
         }
         this.§+G§.§&!<§(param2);
         if(§7s§)
         {
            this.§'!]§(param1);
         }
         else
         {
            this.§^@§ = this.§2'§;
            this.mX = this.§0B§;
            this.mY = this.§ !r§;
         }
         this.§`!-§.x = Math.round(this.mX);
         this.§`!-§.y = Math.round(this.mY);
         this.§`!-§.rotation = this.§^@§ / 180 * Math.PI;
      }
      
      public function §2!G§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§3_§ = this.§2'§;
         this.§%!X§ = this.§0B§;
         this.§6!V§ = this.§ !r§;
         this.§2'§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§0B§ = _loc1_ / §5X§.§,!m§;
         this.§ !r§ = _loc2_ / §5X§.§,!m§;
         this.§6!7§.§!&§();
         this.§6!7§.§9!q§(this.getBody());
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
      
      public function §'!]§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §<!L§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§[+§.§>"2§.§[![§.§ !?§ * 1000;
         }
         param1 *= -1;
         if(this.§0B§ == this.§%!X§ || param1 == 0)
         {
            this.§else § = 0;
            this.mX = this.§0B§;
         }
         else
         {
            this.§else § = param1 * (this.§%!X§ - this.§0B§) / param2;
            this.mX = this.§0B§ + this.§else §;
         }
         if(this.§ !r§ == this.§6!V§ || param1 == 0)
         {
            this.§`e§ = 0;
            this.mY = this.§ !r§;
         }
         else
         {
            this.§`e§ = param1 * (this.§6!V§ - this.§ !r§) / param2;
            this.mY = this.§ !r§ + this.§`e§;
         }
         if(this.§2'§ == this.§3_§ || param1 == 0)
         {
            this.§^@§ = this.§2'§;
         }
         else if(this.§3_§ > this.§2'§ && this.§3_§ - this.§2'§ <= 180)
         {
            this.§^@§ = this.§2'§ + param1 * (this.§3_§ - this.§2'§) / param2;
         }
         else if(this.§3_§ > this.§2'§ && this.§3_§ - this.§2'§ > 180)
         {
            this.§^@§ = this.§2'§ + param1 * (this.§3_§ - 360 - this.§2'§) / param2;
         }
         else if(this.§3_§ < this.§2'§ && this.§2'§ - this.§3_§ <= 180)
         {
            this.§^@§ = this.§2'§ + param1 * (this.§3_§ - this.§2'§) / param2;
         }
         else if(this.§3_§ < this.§2'§ && this.§2'§ - this.§3_§ > 180)
         {
            this.§^@§ = this.§2'§ + param1 * (this.§3_§ + 360 - this.§2'§) / param2;
         }
      }
      
      public function get §1"3§() : Point
      {
         if(!§7s§)
         {
         }
         return null;
      }
      
      public function §6!p§() : Boolean
      {
         return this.§9E§ == §,6§.§`!v§ || this.§9E§ == §,6§.§2!+§;
      }
      
      public function §+q§() : Boolean
      {
         return this.§9E§ == §,6§.§-"#§;
      }
      
      public function §7!_§() : Boolean
      {
         return this.§9E§ == §,6§.§^§;
      }
      
      public function § %§() : Boolean
      {
         return this.§9E§ == §,6§.§2!+§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§9E§ == §,6§.§9!4§;
      }
      
      public function isGround() : Boolean
      {
         return this.§9E§ == §,6§.§;^§;
      }
      
      public function §;!M§() : Boolean
      {
         return this.§9E§ == §,6§.§[K§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§9E§ == §,6§.§<!m§;
      }
      
      public function §7C§() : Boolean
      {
         if(this.§6u§ == "MISC_EXPLOSIVE_TNT" || this.§6u§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §'!X§() : Boolean
      {
         return (this.§+q§() || this.§;!M§() || this.isMiscBlock()) && !this.§9!'§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §5b§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§7!_§())
         {
            return this.§^!n§;
         }
         if(!this.§[+§.§!F§())
         {
            return this.§^!n§;
         }
         if(this.§%z§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§,!_§(§=!j§.§#"2§);
            }
            else if(param1 > 12)
            {
               this.§,!_§(§=!j§.§ !u§);
            }
            else if(param1 > 3)
            {
               this.§,!_§(§=!j§.§-$§);
            }
            return this.§^!n§;
         }
         if(param1 <= this.§%z§)
         {
            if(param1 >= this.§%z§ / 2)
            {
               this.§,!_§(§=!j§.§-$§);
            }
            if(this.§6!p§() && this.§^!n§ == this.§?!`§)
            {
               this.§^!n§ = this.§?!`§ - 1;
            }
            return this.§^!n§;
         }
         param1 -= this.§%z§;
         if(param2 && this.§'!X§())
         {
            _loc7_ = Math.min(this.§^!n§,int(param1));
            _loc8_ = §5X§.§9!g§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §5X§.§&!r§;
            }
            this.§[+§.§>"2§.addScore(_loc8_,§^!'§.§?!w§,this.§^!n§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§3!u§.§>!?§(this.§6u§));
         }
         if(!(param5 && this.§7!d§))
         {
            this.§^!n§ -= param1;
         }
         if(this.§^!n§ < 1 && this.§6!p§())
         {
            this.§^!n§ = 1;
         }
         if(this.§^!n§ < 1)
         {
            this.§^!n§ = 0;
            §;!x§.§+!i§(§=!j§.§#"2§,this.§9!k§.§'a§,"ChannelDestroyed");
         }
         else
         {
            this.§,!_§(§=!j§.§ !u§);
            this.addDamageParticles(this.§[+§.§>"2§.particles,param1);
         }
         this.§+G§.setDamagedFrame();
         return this.§^!n§;
      }
      
      public function §,!_§(param1:int) : void
      {
         §;!x§.§+!i§(param1,this.§9!k§.§'a§);
      }
      
      public function §9!W§(param1:String) : Number
      {
         return this.§9!k§.material.§5!R§(param1) * this.§]y§;
      }
      
      public function §5T§(param1:String) : Number
      {
         return this.§9!k§.material.§@!Z§(param1);
      }
      
      public function §@<§() : String
      {
         return this.§9!k§.material.mName;
      }
      
      public function §6![§() : Number
      {
         return this.§9!k§.§9"'§();
      }
      
      public function §6M§() : int
      {
         return this.§9!k§.§8Z§();
      }
      
      public function §&`§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§6!p§() && this.§^!n§ == this.§?!`§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§4Z§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §^!V§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§1H§();
      }
      
      protected function §1H§() : Boolean
      {
         return this.§6!7§.§1H§();
      }
      
      public function §?k§(param1:Number = 3) : void
      {
         this.§]y§ = param1;
         if(this.§]y§ > 1)
         {
            this.§+G§.§!p§();
         }
         else
         {
            this.§+G§.§"!C§ = null;
         }
      }
      
      public function §""&§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§9!k§.§4?§() == § !6§.§20§)
         {
            _loc2_ = this.§+G§.mW * this.§+G§.mH * (§5X§.§,!m§ * §5X§.§,!m§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§"!=§.§&!]§();
            if(param1)
            {
               _loc2_ *= this.§&!D§();
            }
            _loc2_ /= this.§?V§ * this.§?V§;
         }
         return _loc2_;
      }
      
      public function §&!D§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§+G§.§+!$§ - 1) / 10);
      }
      
      public function §2[§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§'"-§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:final) : void
      {
      }
      
      public function addDamageParticles(param1:final, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §2!S§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§#!V§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§8!1§()) + 360) % 360;
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
            this.§8Q§(_loc4_);
         }
         var _loc3_:Number = this.§8!1§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§8Q§(_loc3_);
      }
      
      public function §1F§(param1:Number) : void
      {
         var _loc2_:Number = §2!n§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §%!F§(_loc2_);
         this.getBody().§?i§(_loc2_);
      }
      
      public function §7!L§(param1:Number, param2:Point) : void
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
         this.getBody().§#!V§(_loc13_);
      }
   }
}
