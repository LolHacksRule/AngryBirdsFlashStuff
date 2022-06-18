package §]!D§
{
   import §%n§.§"!;§;
   import §%n§.§3!A§;
   import §%n§.§4Q§;
   import §%n§.§5!6§;
   import §%n§.§<>§;
   import §'!3§.b2Settings;
   import §'D§.§8e§;
   import §2>§.§?!1§;
   import §3q§.b2Vec2;
   import §8!`§.§%G§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2Body;
   import §?0§.b2BodyDef;
   import §?0§.b2FilterData;
   import §?0§.b2Fixture;
   import §?0§.b2World;
   import §@,§.b2PolygonShape;
   import §`;§.§5i§;
   import §`;§.§[E§;
   import flash.geom.Point;
   
   public class §@!]§
   {
      
      public static const §"!T§:uint = 1 << 1;
      
      public static const §<!P§:uint = 1 << 2;
      
      public static const §`X§:uint = 1 << 3;
      
      public static const §2F§:uint = 1 << 4;
      
      public static const §8C§:Boolean = true;
      
      public static const §3!§:Number = 5;
      
      public static const §=a§:Number = 10;
       
      
      private var §%d§:String;
      
      private var §^D§:int;
      
      private var §"y§:int;
      
      public var §4u§:String;
      
      public var §;&§:int;
      
      private var §?m§:§<>§;
      
      private var §4A§:§?!9§;
      
      private var mWorld:b2World;
      
      protected var §@G§:String = "";
      
      protected var §0g§:int = 1;
      
      private var §=!"§:b2Fixture;
      
      private var §,e§:b2Body;
      
      private var §+u§:b2Vec2;
      
      public var §5h§:Number;
      
      public var §!e§:Number;
      
      private var §?! §:Number;
      
      private var §33§:Boolean = false;
      
      private var §^!,§:Number;
      
      private var §0a§:Number;
      
      private var §9k§:Number;
      
      private var §]o§:Number;
      
      private var §?!=§:Number;
      
      private var §+!P§:Number;
      
      public var §?-§:Number = 1;
      
      private var §7!'§:Boolean = false;
      
      public var §1!Q§:Number = 0;
      
      public var §<!M§:Number = 0;
      
      protected var §<!§:Boolean = false;
      
      public var §`T§:§]!R§;
      
      private var §`K§:Sprite;
      
      private var §"9§:Number = 0;
      
      private var §[g§:Number = 0;
      
      private var §-w§:Number = 0;
      
      private var §-b§:Number = 1.0;
      
      private var §+v§:Boolean = false;
      
      protected var § x§:§'!F§;
      
      private var §>!=§:Boolean = true;
      
      public function §@!]§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§4u§ = param6;
         this.§?m§ = §5!6§.§,Q§(param6);
         this.§4A§ = param1;
         this.§`K§ = param2;
         this.§-b§ = param10;
         this.§+v§ = param11;
         this.§^D§ = param5;
         this.§;&§ = this.§?m§.§;&§;
         this.§"y§ = this.§?m§.§ &§();
         this.§ x§ = new §'!F§(§3!§,§=a§);
         this.§`T§ = new §]!R§(this,param2,param4);
         if(!this.§`T§.§7!W§(param1.§'N§.§+!a§))
         {
            this.§`T§.§@>§(this.§"y§,this.§?m§.§6![§(),this.§?m§.§0^§() / §4J§.§<W§,this.§?m§.§^%§() / §4J§.§<W§);
         }
         this.§`T§.§4!V§(this.§"y§ == §"!;§.§+H§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§,e§ = this.mWorld.§=%§(_loc12_);
         this.§,e§.§"Z§(this);
         if(this.§"y§ == §"!;§.§4x§)
         {
            _loc14_ = b2PolygonShape.§6!0§(this.§?m§.shape.§<!&§ * param10,this.§?m§.shape.§@!Y§ * param10);
            this.§=!"§ = this.§,e§.CreateFixture2(_loc14_,this.§?m§.§5&§());
         }
         else if(this.§"y§ == §"!;§.§+H§ || this.§"y§ == §"!;§.§6!§)
         {
            this.§=!"§ = this.§,e§.CreateFixture2(this.§?m§.shape.§'! §(param10),this.§?m§.§5&§());
         }
         this.§=!"§.§2o§(this.§?m§.§05§());
         this.§=!"§.§<%§(this.§?m§.§^f§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§@b§())
         {
            _loc13_.§^H§ = §"!T§;
            _loc13_.§5!E§ = 65535 & ~§<!P§;
         }
         else if(this.§4u§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§4u§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§^H§ = §<!P§;
            _loc13_.§5!E§ = 65535 & ~§"!T§;
         }
         this.§=!"§.§"_§(_loc13_);
         this.§?! § = this.§?m§.§+!Z§();
         if(this.§?m§.§!e§ > 0)
         {
            this.§5h§ = this.§!e§ = this.§?m§.§!e§;
         }
         else
         {
            this.§5h§ = this.§!e§ = Math.round(this.§@!7§(true) * this.§?m§.§]!'§());
            if(this.§5h§ < 1)
            {
               this.§5h§ = this.§!e§ = 1;
            }
         }
         if(this.§?m§.§;&§ == §<>§.§7Y§)
         {
            this.§`K§.visible = false;
         }
         else
         {
            this.§`T§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§8_§(param9);
         }
         this.§8!;§();
         this.§ u§(0,1);
         this.§`T§.§]y§(this.§?m§.shape);
      }
      
      public static function §&+§(param1:int, param2:§3!A§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§1!I§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§<1§;
            }
            §?!1§.§=n§(_loc4_,param3);
         }
      }
      
      public static function §[!"§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §]!=§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§`K§;
      }
      
      public function get x() : Number
      {
         return this.§"9§;
      }
      
      public function get y() : Number
      {
         return this.§[g§;
      }
      
      public function get scale() : Number
      {
         return this.§-b§;
      }
      
      public function get front() : Boolean
      {
         return this.§+v§;
      }
      
      public function get §%g§() : Number
      {
         return this.§,e§.GetPosition().x;
      }
      
      public function get §,!V§() : Number
      {
         return this.§,e§.GetPosition().y;
      }
      
      public function get §-!^§() : §<>§
      {
         return this.§?m§;
      }
      
      public function get §'i§() : Boolean
      {
         return this.§?! § >= 0;
      }
      
      public function get container() : §?!9§
      {
         return this.§4A§;
      }
      
      public function get §@A§() : Boolean
      {
         return this.§>!=§;
      }
      
      public function set §@A§(param1:Boolean) : void
      {
         this.§>!=§ = param1;
      }
      
      public function set §2d§(param1:Boolean) : void
      {
         this.§33§ = param1;
      }
      
      public function set §;,§(param1:uint) : void
      {
         this.§ x§.§;,§ = param1;
      }
      
      public function get §;,§() : uint
      {
         return this.§ x§.§;,§;
      }
      
      public function get §-!0§() : Boolean
      {
         return this.§7!'§;
      }
      
      public function set §-!0§(param1:Boolean) : void
      {
         this.§7!'§ = param1;
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
         return this.§%d§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§%d§ = param1;
      }
      
      public function §4!<§(param1:b2FilterData) : void
      {
         if(this.§=!"§)
         {
            this.§=!"§.§"_§(param1);
         }
      }
      
      protected function §2!<§(param1:String) : int
      {
         return §[E§.§2!<§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§?m§.§&v§();
         _loc3_.§ f§ = true;
         _loc3_.§=!Z§ = true;
         _loc3_.§^!J§ = true;
         _loc3_.§^W§ = 1;
         _loc3_.§&!Q§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§%w§(this.§^!_§());
            this.mWorld = null;
         }
         this.§`T§.dispose();
         if(this.§`K§)
         {
            this.§`K§.dispose();
            this.§`K§ = null;
         }
         this.§=!"§ = null;
         this.§+u§ = null;
         this.§?m§ = null;
      }
      
      public function §8_§(param1:Number) : void
      {
         this.§^!_§().§'!L§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function § !0§() : Number
      {
         return (360 - this.§^!_§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §]n§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§^!_§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§1^§();
         }
         if(param3)
         {
            this.§@!`§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§=!"§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§^!_§().GetPosition().x >= param3 && this.§^!_§().GetPosition().x <= param4 && this.§^!_§().GetPosition().y >= param1 && this.§^!_§().GetPosition().y <= param2;
      }
      
      public function §=!M§(param1:b2Vec2) : void
      {
         this.§+u§ = param1;
      }
      
      public function §6!'§() : void
      {
         if(this.§+u§)
         {
            this.§]n§(this.§+u§,false);
            this.§+u§ = null;
         }
      }
      
      public function §1^§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§^!_§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§^!_§().§%!,§(0);
         }
         else
         {
            this.§^!_§().§%!,§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §@!`§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§^!_§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§8_§(_loc2_);
      }
      
      public function §,n§(param1:Number) : void
      {
         this.§^!_§().§%!,§(param1);
      }
      
      public function §^!_§() : b2Body
      {
         if(this.§=!"§ != null)
         {
            return this.§=!"§.GetBody();
         }
         return null;
      }
      
      public function §+!Y§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§"9§ = param1;
            this.§[g§ = param2;
         }
         this.§^!_§().GetPosition().x = this.§"9§ * §4J§.§<W§;
         this.§^!_§().GetPosition().y = this.§[g§ * §4J§.§<W§;
      }
      
      public function § u§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§<!§)
         {
            _loc3_ = true;
            this.§<!§ = false;
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
            this.§`T§.§5!]§();
         }
         if(this.§?-§ > 1 && this.§`T§.§>m§)
         {
            _loc4_ = 4 + (this.§`T§.§>m§.blurX - 4 + param2 / 20) % 28;
            this.§`T§.§>m§.blurX = _loc4_;
            this.§`T§.§>m§.blurY = _loc4_;
         }
         this.§`T§.§5S§(param2);
         if(§8C§)
         {
            this.§;!!§(param1);
         }
         else
         {
            this.§-w§ = this.§9k§;
            this.§"9§ = this.§^!,§;
            this.§[g§ = this.§0a§;
         }
         this.§`K§.x = Math.round(this.§"9§);
         this.§`K§.y = Math.round(this.§[g§);
         this.§`K§.rotation = this.§-w§ / 180 * Math.PI;
      }
      
      public function §8!;§() : void
      {
         var _loc1_:Number = this.§^!_§().GetPosition().x;
         var _loc2_:Number = this.§^!_§().GetPosition().y;
         this.§+!P§ = this.§9k§;
         this.§]o§ = this.§^!,§;
         this.§?!=§ = this.§0a§;
         this.§9k§ = this.§^!_§().GetAngle() * (180 / Math.PI) % 360;
         this.§^!,§ = _loc1_ / §4J§.§<W§;
         this.§0a§ = _loc2_ / §4J§.§<W§;
         this.§ x§.§@s§();
         this.§ x§.§,!$§(this.§^!_§());
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
      
      public function §;!!§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §8e§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§4A§.§'N§.mLevelEngine.§^2§ * 1000;
         }
         param1 *= -1;
         if(this.§^!,§ == this.§]o§ || param1 == 0)
         {
            this.§1!Q§ = 0;
            this.§"9§ = this.§^!,§;
         }
         else
         {
            this.§1!Q§ = param1 * (this.§]o§ - this.§^!,§) / param2;
            this.§"9§ = this.§^!,§ + this.§1!Q§;
         }
         if(this.§0a§ == this.§?!=§ || param1 == 0)
         {
            this.§<!M§ = 0;
            this.§[g§ = this.§0a§;
         }
         else
         {
            this.§<!M§ = param1 * (this.§?!=§ - this.§0a§) / param2;
            this.§[g§ = this.§0a§ + this.§<!M§;
         }
         if(this.§9k§ == this.§+!P§ || param1 == 0)
         {
            this.§-w§ = this.§9k§;
         }
         else if(this.§+!P§ > this.§9k§ && this.§+!P§ - this.§9k§ <= 180)
         {
            this.§-w§ = this.§9k§ + param1 * (this.§+!P§ - this.§9k§) / param2;
         }
         else if(this.§+!P§ > this.§9k§ && this.§+!P§ - this.§9k§ > 180)
         {
            this.§-w§ = this.§9k§ + param1 * (this.§+!P§ - 360 - this.§9k§) / param2;
         }
         else if(this.§+!P§ < this.§9k§ && this.§9k§ - this.§+!P§ <= 180)
         {
            this.§-w§ = this.§9k§ + param1 * (this.§+!P§ - this.§9k§) / param2;
         }
         else if(this.§+!P§ < this.§9k§ && this.§9k§ - this.§+!P§ > 180)
         {
            this.§-w§ = this.§9k§ + param1 * (this.§+!P§ + 360 - this.§9k§) / param2;
         }
      }
      
      public function get §+!@§() : Point
      {
         if(!§8C§)
         {
         }
         return null;
      }
      
      public function §@b§() : Boolean
      {
         return this.§;&§ == §<>§.§>!#§ || this.§;&§ == §<>§.§+i§;
      }
      
      public function §=j§() : Boolean
      {
         return this.§;&§ == §<>§.§2V§;
      }
      
      public function §"!2§() : Boolean
      {
         return this.§;&§ == §<>§.§3B§;
      }
      
      public function §7!0§() : Boolean
      {
         return this.§;&§ == §<>§.§+i§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§;&§ == §<>§.§>!'§;
      }
      
      public function isGround() : Boolean
      {
         return this.§;&§ == §<>§.§7Y§;
      }
      
      public function §,F§() : Boolean
      {
         return this.§;&§ == §<>§.§-!F§;
      }
      
      public function §<;§() : Boolean
      {
         return this.§;&§ == §<>§.§'I§;
      }
      
      public function § [§() : Boolean
      {
         if(this.§4u§ == "MISC_EXPLOSIVE_TNT" || this.§4u§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §+!3§() : Boolean
      {
         return (this.§=j§() || this.§,F§() || this.§<;§()) && !this.§-!0§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §^!-§() : Number
      {
         return Number(Math.sqrt(this.§^!_§().GetLinearVelocity().x * this.§^!_§().GetLinearVelocity().x + this.§^!_§().GetLinearVelocity().y * this.§^!_§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§"!2§())
         {
            return this.§5h§;
         }
         if(!this.§4A§.§8<§())
         {
            return this.§5h§;
         }
         if(this.§?! § < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§3a§(§3!A§.§=m§);
            }
            else if(param1 > 12)
            {
               this.§3a§(§3!A§.§=!X§);
            }
            else if(param1 > 3)
            {
               this.§3a§(§3!A§.§4n§);
            }
            return this.§5h§;
         }
         if(param1 <= this.§?! §)
         {
            if(param1 >= this.§?! § / 2)
            {
               this.§3a§(§3!A§.§4n§);
            }
            if(this.§@b§() && this.§5h§ == this.§!e§)
            {
               this.§5h§ = this.§!e§ - 1;
            }
            return this.§5h§;
         }
         param1 -= this.§?! §;
         if(param2 && this.§+!3§())
         {
            _loc7_ = Math.min(this.§5h§,int(param1));
            _loc8_ = §4J§.§<+§.getValue() * _loc7_;
            this.§4A§.§'N§.addScore(_loc8_,§%G§.§4!G§,this.§5h§ > param1 && param3,this.§^!_§().GetPosition().x,this.§^!_§().GetPosition().y,§[E§.§?!V§(this.§4u§));
         }
         if(!(param5 && this.§33§))
         {
            this.§5h§ -= param1;
         }
         if(this.§5h§ < 1 && this.§@b§())
         {
            this.§5h§ = 1;
         }
         if(this.§5h§ < 1)
         {
            this.§5h§ = 0;
            §@!]§.§&+§(§3!A§.§=m§,this.§?m§.§76§,"ChannelDestroyed");
         }
         else
         {
            this.§3a§(§3!A§.§=!X§);
            this.addDamageParticles(this.§4A§.§'N§.particles,param1);
         }
         this.§`T§.setDamagedFrame();
         return this.§5h§;
      }
      
      public function §3a§(param1:int) : void
      {
         §@!]§.§&+§(param1,this.§?m§.§76§);
      }
      
      public function §"s§(param1:String) : Number
      {
         return this.§?m§.material.§!! §(param1) * this.§?-§;
      }
      
      public function §-u§(param1:String) : Number
      {
         return this.§?m§.material.§[`§(param1);
      }
      
      public function §8r§() : String
      {
         return this.§?m§.material.mName;
      }
      
      public function §6I§() : Number
      {
         return this.§?m§.§]!'§();
      }
      
      public function §9!Z§() : int
      {
         return this.§?m§.§,!T§();
      }
      
      public function §?!,§() : Boolean
      {
         return this.§^!_§().IsAwake() && (this.§@b§() && this.§5h§ == this.§!e§ || Math.abs(this.§^!_§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§^!_§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§^!_§().§,!D§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §>8§() : Boolean
      {
         if(!this.§^!_§().IsAwake())
         {
            return true;
         }
         return !this.§56§();
      }
      
      protected function §56§() : Boolean
      {
         return this.§ x§.§56§();
      }
      
      public function §8!,§(param1:Number = 3) : void
      {
         this.§?-§ = param1;
         if(this.§?-§ > 1)
         {
            this.§`T§.§+!S§();
         }
         else
         {
            this.§`T§.§>m§ = null;
         }
      }
      
      public function §@!7§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§?m§.§&v§() == §4Q§.§#!%§)
         {
            _loc2_ = this.§`T§.mW * this.§`T§.mH * (§4J§.§<W§ * §4J§.§<W§);
         }
         else
         {
            _loc2_ = this.§^!_§().GetMass() / this.§=!"§.§4!Z§();
            if(param1)
            {
               _loc2_ *= this.§;5§();
            }
            _loc2_ /= this.§-b§ * this.§-b§;
         }
         return _loc2_;
      }
      
      public function §;5§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§`T§.§@!%§ - 1) / 10);
      }
      
      public function §-Z§(param1:Number) : void
      {
         var _loc2_:Number = this.§^!_§().GetLinearVelocity().x;
         var _loc3_:Number = this.§^!_§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§^!_§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?!9§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5i§) : void
      {
      }
      
      public function addDamageParticles(param1:§5i§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!D§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§^!_§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§^!_§().§9!]§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§ !0§()) + 360) % 360;
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
            this.§8_§(_loc4_);
         }
         var _loc3_:Number = this.§ !0§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§8_§(_loc3_);
      }
      
      public function §9![§(param1:Number) : void
      {
         var _loc2_:Number = §[!"§(this.§^!_§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §]!=§(_loc2_);
         this.§^!_§().§'!L§(_loc2_);
      }
      
      public function §"!1§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§^!_§().GetPosition().Copy();
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
         this.§^!_§().§9!]§(_loc13_);
      }
   }
}
