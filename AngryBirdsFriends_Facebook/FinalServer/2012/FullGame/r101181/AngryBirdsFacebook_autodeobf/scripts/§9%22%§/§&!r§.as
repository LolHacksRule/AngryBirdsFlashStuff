package §9"%§
{
   import §#]§.b2Vec2;
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §%Q§.§9!n§;
   import §%Q§.§;!y§;
   import §%Q§.§@d§;
   import §1!$§.Sprite;
   import §4!!§.b2Settings;
   import §48§.b2Body;
   import §48§.b2BodyDef;
   import §48§.b2FilterData;
   import §48§.b2Fixture;
   import §48§.b2World;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §9"!§.§9"3§;
   import §9"!§.§?E§;
   import §<!`§.b2PolygonShape;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import flash.geom.Point;
   
   public class §&!r§
   {
      
      public static const §3!=§:uint = 1 << 1;
      
      public static const §&!!§:uint = 1 << 2;
      
      public static const §@!_§:uint = 1 << 3;
      
      public static const §+!,§:uint = 1 << 4;
      
      public static const §"Y§:Boolean = true;
      
      public static const §>!e§:Number = 5;
      
      public static const §;7§:Number = 10;
       
      
      private var §7"5§:String;
      
      private var §+!I§:int;
      
      private var §<!i§:int;
      
      public var §2!>§:String;
      
      public var §7[§:int;
      
      protected var §=a§:§4u§;
      
      private var §=!a§:§]a§;
      
      private var mWorld:b2World;
      
      protected var § R§:String = "";
      
      protected var §9"B§:int = 1;
      
      private var §?H§:b2Fixture;
      
      private var §&!#§:b2Body;
      
      private var §5_§:b2Vec2;
      
      public var §[" §:Number;
      
      public var §@!h§:Number;
      
      private var §2!G§:Number;
      
      private var §]I§:Boolean = false;
      
      private var §`j§:Number;
      
      private var §#"+§:Number;
      
      private var §?e§:Number;
      
      private var §?"7§:Number;
      
      private var §<D§:Number;
      
      private var §1!q§:Number;
      
      public var §'2§:Number = 1;
      
      private var §&p§:Boolean = false;
      
      public var §>!A§:Number = 0;
      
      public var § !1§:Number = 0;
      
      protected var §'!Z§:Boolean = false;
      
      public var §"!&§:§#!D§;
      
      private var §3^§:Sprite;
      
      private var §,!k§:Number = 0;
      
      private var §!Q§:Number = 0;
      
      private var §@P§:Number = 0;
      
      private var §[!q§:Number = 1.0;
      
      private var §'4§:Boolean = false;
      
      protected var §],§:§^">§;
      
      private var §%!]§:Boolean = true;
      
      public function §&!r§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§2!>§ = param6;
         this.§=a§ = §6G§.§1!P§(param6);
         this.§=!a§ = param1;
         this.§3^§ = param2;
         this.§[!q§ = param10;
         this.§'4§ = param11;
         this.§+!I§ = param5;
         this.§7[§ = this.§=a§.§7[§;
         this.§<!i§ = this.§=a§.§ !B§();
         this.§],§ = new §^">§(§>!e§,§;7§);
         this.§"!&§ = new §#!D§(this,param2,param4);
         if(!this.§"!&§.§4§(param1.§@O§.animationManager))
         {
            this.§"!&§.§@w§(this.§<!i§,this.§=a§.§3!l§(),this.§=a§.§-!S§() / §9"3§.§'"F§,this.§=a§.§]!0§() / §9"3§.§'"F§);
         }
         this.§"!&§.§5!-§(this.§<!i§ == §@d§.§88§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§&!#§ = this.mWorld.§,P§(_loc12_);
         this.§&!#§.§<L§(this);
         if(this.§<!i§ == §@d§.§>"2§)
         {
            _loc14_ = b2PolygonShape.§0N§(this.§=a§.shape.§`w§ * param10,this.§=a§.shape.§%m§ * param10);
            this.§?H§ = this.§&!#§.CreateFixture2(_loc14_,this.§=a§.§5A§());
         }
         else if(this.§<!i§ == §@d§.§88§ || this.§<!i§ == §@d§.§4"B§)
         {
            this.§?H§ = this.§&!#§.CreateFixture2(this.§=a§.shape.§2"B§(param10),this.§=a§.§5A§());
         }
         this.§?H§.§[!<§(this.§=a§.§+r§());
         this.§?H§.§54§(this.§=a§.§;!H§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§ !c§())
         {
            _loc13_.§>!t§ = §3!=§;
            _loc13_.§"R§ = 65535 & ~§&!!§;
         }
         else if(this.§2!>§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§2!>§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§>!t§ = §&!!§;
            _loc13_.§"R§ = 65535 & ~§3!=§;
         }
         this.§?H§.§0!l§(_loc13_);
         this.§2!G§ = this.§=a§.§2"1§();
         if(this.§=a§.§@!h§ > 0)
         {
            this.§[" § = this.§@!h§ = this.§=a§.§@!h§;
         }
         else
         {
            this.§[" § = this.§@!h§ = Math.round(this.§;!"§(true) * this.§=a§.§[",§());
            if(this.§[" § < 1)
            {
               this.§[" § = this.§@!h§ = 1;
            }
         }
         if(this.§=a§.§7[§ == §4u§.§1!B§)
         {
            this.§3^§.visible = false;
         }
         else
         {
            this.§"!&§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§3!a§(param9);
         }
         this.§2e§();
         this.§="'§(0,1);
         this.§"!&§.§^!'§(this.§=a§.shape);
      }
      
      public static function §#"§(param1:int, param2:§;!y§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§1!u§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§7!u§;
            }
            §>!E§.§@"8§(_loc4_,param3);
         }
      }
      
      public static function §!6§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §<2§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function get front() : Boolean
      {
         return this.§'4§;
      }
      
      public function get §`!n§() : Number
      {
         return this.§&!#§.GetPosition().x;
      }
      
      public function get §5e§() : Number
      {
         return this.§&!#§.GetPosition().y;
      }
      
      public function get §3!4§() : §4u§
      {
         return this.§=a§;
      }
      
      public function get §##§() : Boolean
      {
         return this.§2!G§ >= 0;
      }
      
      public function get §%4§() : §]a§
      {
         return this.§=!a§;
      }
      
      public function get §!!o§() : Boolean
      {
         return this.§%!]§;
      }
      
      public function set §!!o§(param1:Boolean) : void
      {
         this.§%!]§ = param1;
      }
      
      public function set §>"!§(param1:Boolean) : void
      {
         this.§]I§ = param1;
      }
      
      public function set §@!U§(param1:uint) : void
      {
         this.§],§.§@!U§ = param1;
      }
      
      public function get §@!U§() : uint
      {
         return this.§],§.§@!U§;
      }
      
      public function get §]i§() : Boolean
      {
         return this.§&p§;
      }
      
      public function set §]i§(param1:Boolean) : void
      {
         this.§&p§ = param1;
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
         return this.§7"5§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§7"5§ = param1;
      }
      
      public function §;!#§(param1:b2FilterData) : void
      {
         if(this.§?H§)
         {
            this.§?H§.§0!l§(param1);
         }
      }
      
      protected function §,">§(param1:String) : int
      {
         return §'G§.§,">§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§=a§.§^"9§();
         _loc3_.§'"@§ = true;
         _loc3_.§'a§ = true;
         _loc3_.§<_§ = true;
         _loc3_.§'!k§ = 1;
         _loc3_.§=-§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§""=§(this.§=!y§());
            this.mWorld = null;
         }
         this.§"!&§.dispose();
         if(this.§3^§)
         {
            this.§3^§.dispose();
            this.§3^§ = null;
         }
         this.§?H§ = null;
         this.§5_§ = null;
         this.§=a§ = null;
      }
      
      public function §3!a§(param1:Number) : void
      {
         this.§=!y§().§>"4§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §,!G§() : Number
      {
         return (360 - this.§=!y§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §^!u§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§=!y§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§'! §();
         }
         if(param3)
         {
            this.§0m§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§?H§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§=!y§().GetPosition().x >= param3 && this.§=!y§().GetPosition().x <= param4 && this.§=!y§().GetPosition().y >= param1 && this.§=!y§().GetPosition().y <= param2;
      }
      
      public function §#!k§(param1:b2Vec2) : void
      {
         this.§5_§ = param1;
      }
      
      public function §[!§() : void
      {
         if(this.§5_§)
         {
            this.§^!u§(this.§5_§,false);
            this.§5_§ = null;
         }
      }
      
      public function §'! §(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§=!y§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§=!y§().§=!Q§(0);
         }
         else
         {
            this.§=!y§().§=!Q§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §0m§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§=!y§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§3!a§(_loc2_);
      }
      
      public function §3!N§(param1:Number) : void
      {
         this.§=!y§().§=!Q§(param1);
      }
      
      public function §=!y§() : b2Body
      {
         if(this.§?H§ != null)
         {
            return this.§?H§.GetBody();
         }
         return null;
      }
      
      public function §<"0§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§,!k§ = param1;
            this.§!Q§ = param2;
         }
         this.§=!y§().GetPosition().x = this.§,!k§ * §9"3§.§'"F§;
         this.§=!y§().GetPosition().y = this.§!Q§ * §9"3§.§'"F§;
      }
      
      public function §="'§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§'!Z§)
         {
            _loc3_ = true;
            this.§'!Z§ = false;
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
            this.§"!&§.§[!k§();
         }
         if(this.§'2§ > 1 && this.§"!&§.§[y§)
         {
            _loc4_ = 4 + (this.§"!&§.§[y§.blurX - 4 + param2 / 20) % 28;
            this.§"!&§.§[y§.blurX = _loc4_;
            this.§"!&§.§[y§.blurY = _loc4_;
         }
         this.§"!&§.§#"E§(param2);
         if(§"Y§)
         {
            this.§9P§(param1);
         }
         else
         {
            this.§@P§ = this.§?e§;
            this.§,!k§ = this.§`j§;
            this.§!Q§ = this.§#"+§;
         }
         this.§3^§.x = Math.round(this.§,!k§);
         this.§3^§.y = Math.round(this.§!Q§);
         this.§3^§.rotation = this.§@P§ / 180 * Math.PI;
      }
      
      public function §2e§() : void
      {
         var _loc1_:Number = this.§=!y§().GetPosition().x;
         var _loc2_:Number = this.§=!y§().GetPosition().y;
         this.§1!q§ = this.§?e§;
         this.§?"7§ = this.§`j§;
         this.§<D§ = this.§#"+§;
         this.§?e§ = this.§=!y§().GetAngle() * (180 / Math.PI) % 360;
         this.§`j§ = _loc1_ / §9"3§.§'"F§;
         this.§#"+§ = _loc2_ / §9"3§.§'"F§;
         this.§],§.§'§();
         this.§],§.§^"#§(this.§=!y§());
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
      
      public function §9P§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §+!k§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§=!a§.§@O§.mLevelEngine.§0F§ * 1000;
         }
         param1 *= -1;
         if(this.§`j§ == this.§?"7§ || param1 == 0)
         {
            this.§>!A§ = 0;
            this.§,!k§ = this.§`j§;
         }
         else
         {
            this.§>!A§ = param1 * (this.§?"7§ - this.§`j§) / param2;
            this.§,!k§ = this.§`j§ + this.§>!A§;
         }
         if(this.§#"+§ == this.§<D§ || param1 == 0)
         {
            this.§ !1§ = 0;
            this.§!Q§ = this.§#"+§;
         }
         else
         {
            this.§ !1§ = param1 * (this.§<D§ - this.§#"+§) / param2;
            this.§!Q§ = this.§#"+§ + this.§ !1§;
         }
         if(this.§?e§ == this.§1!q§ || param1 == 0)
         {
            this.§@P§ = this.§?e§;
         }
         else if(this.§1!q§ > this.§?e§ && this.§1!q§ - this.§?e§ <= 180)
         {
            this.§@P§ = this.§?e§ + param1 * (this.§1!q§ - this.§?e§) / param2;
         }
         else if(this.§1!q§ > this.§?e§ && this.§1!q§ - this.§?e§ > 180)
         {
            this.§@P§ = this.§?e§ + param1 * (this.§1!q§ - 360 - this.§?e§) / param2;
         }
         else if(this.§1!q§ < this.§?e§ && this.§?e§ - this.§1!q§ <= 180)
         {
            this.§@P§ = this.§?e§ + param1 * (this.§1!q§ - this.§?e§) / param2;
         }
         else if(this.§1!q§ < this.§?e§ && this.§?e§ - this.§1!q§ > 180)
         {
            this.§@P§ = this.§?e§ + param1 * (this.§1!q§ + 360 - this.§?e§) / param2;
         }
      }
      
      public function get §`! §() : Point
      {
         if(!§"Y§)
         {
         }
         return null;
      }
      
      public function § !c§() : Boolean
      {
         return this.§7[§ == §4u§.§,"8§ || this.§7[§ == §4u§.§0!o§;
      }
      
      public function §^6§() : Boolean
      {
         return this.§7[§ == §4u§.§0!q§;
      }
      
      public function §9"7§() : Boolean
      {
         return this.§7[§ == §4u§.§%!l§;
      }
      
      public function §[`§() : Boolean
      {
         return this.§7[§ == §4u§.§0!o§;
      }
      
      public function shouldUpdate() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§7[§ == §4u§.§%"D§;
      }
      
      public function isGround() : Boolean
      {
         return this.§7[§ == §4u§.§1!B§;
      }
      
      public function §<!r§() : Boolean
      {
         return this.§7[§ == §4u§.§[!`§;
      }
      
      public function §@!8§() : Boolean
      {
         return this.§7[§ == §4u§.§<!q§;
      }
      
      public function §5!P§() : Boolean
      {
         if(this.§2!>§ == "MISC_EXPLOSIVE_TNT" || this.§2!>§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §<! §() : Boolean
      {
         return (this.§^6§() || this.§<!r§() || this.§@!8§()) && !this.§]i§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §#%§() : Number
      {
         return Number(Math.sqrt(this.§=!y§().GetLinearVelocity().x * this.§=!y§().GetLinearVelocity().x + this.§=!y§().GetLinearVelocity().y * this.§=!y§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§9"7§())
         {
            return this.§[" §;
         }
         if(!this.§=!a§.§0!?§())
         {
            return this.§[" §;
         }
         if(this.§2!G§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§&x§(§;!y§.§@v§);
            }
            else if(param1 > 12)
            {
               this.§&x§(§;!y§.§#!w§);
            }
            else if(param1 > 3)
            {
               this.§&x§(§;!y§.§]W§);
            }
            return this.§[" §;
         }
         if(param1 <= this.§2!G§)
         {
            if(param1 >= this.§2!G§ / 2)
            {
               this.§&x§(§;!y§.§]W§);
            }
            if(this.§ !c§() && this.§[" § == this.§@!h§)
            {
               this.§[" § = this.§@!h§ - 1;
            }
            return this.§[" §;
         }
         param1 -= this.§2!G§;
         if(param2 && this.§<! §())
         {
            _loc7_ = Math.min(this.§[" §,int(param1));
            _loc8_ = §9"3§.§0!Q§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §9"3§.§[!+§;
            }
            this.§=!a§.§@O§.addScore(_loc8_,§?E§.§!j§,this.§[" § > param1 && param3,this.§=!y§().GetPosition().x,this.§=!y§().GetPosition().y,§'G§.§>!&§(this.§2!>§));
         }
         if(!(param5 && this.§]I§))
         {
            this.§[" § -= param1;
         }
         if(this.§[" § < 1 && this.§ !c§())
         {
            this.§[" § = 1;
         }
         if(this.§[" § < 1)
         {
            this.§[" § = 0;
            §&!r§.§#"§(§;!y§.§@v§,this.§=a§.§2+§,"ChannelDestroyed");
         }
         else
         {
            this.§&x§(§;!y§.§#!w§);
            this.addDamageParticles(this.§=!a§.§@O§.particles,param1);
         }
         this.§"!&§.setDamagedFrame();
         return this.§[" §;
      }
      
      public function §&x§(param1:int) : void
      {
         §&!r§.§#"§(param1,this.§=a§.§2+§);
      }
      
      public function §;"1§(param1:String) : Number
      {
         return this.§=a§.material.§>!s§(param1) * this.§'2§;
      }
      
      public function §5!S§(param1:String) : Number
      {
         return this.§=a§.material.§]!%§(param1);
      }
      
      public function §0!'§() : String
      {
         return this.§=a§.material.mName;
      }
      
      public function §2!K§() : Number
      {
         return this.§=a§.§[",§();
      }
      
      public function §7s§() : int
      {
         return this.§=a§.§!!k§();
      }
      
      public function §,l§() : Boolean
      {
         return this.§=!y§().IsAwake() && (this.§ !c§() && this.§[" § == this.§@!h§ || Math.abs(this.§=!y§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§=!y§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§=!y§().§0!I§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §>"?§() : Boolean
      {
         if(!this.§=!y§().IsAwake())
         {
            return true;
         }
         return !this.§]!o§();
      }
      
      protected function §]!o§() : Boolean
      {
         return this.§],§.§]!o§();
      }
      
      public function §-!#§(param1:Number = 3) : void
      {
         this.§'2§ = param1;
         if(this.§'2§ > 1)
         {
            this.§"!&§.§!!&§();
         }
         else
         {
            this.§"!&§.§[y§ = null;
         }
      }
      
      public function §;!"§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§=a§.§^"9§() == §9!n§.§'f§)
         {
            _loc2_ = this.§"!&§.mW * this.§"!&§.mH * (§9"3§.§'"F§ * §9"3§.§'"F§);
         }
         else
         {
            _loc2_ = this.§=!y§().GetMass() / this.§?H§.§`""§();
            if(param1)
            {
               _loc2_ *= this.§-!-§();
            }
            _loc2_ /= this.§[!q§ * this.§[!q§;
         }
         return _loc2_;
      }
      
      public function §-!-§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§"!&§.§%`§ - 1) / 10);
      }
      
      public function §!!6§(param1:Number) : void
      {
         var _loc2_:Number = this.§=!y§().GetLinearVelocity().x;
         var _loc3_:Number = this.§=!y§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§=!y§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§]a§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§^!f§) : void
      {
      }
      
      public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §^!M§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§=!y§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§=!y§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§,!G§()) + 360) % 360;
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
            this.§3!a§(_loc4_);
         }
         var _loc3_:Number = this.§,!G§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§3!a§(_loc3_);
      }
      
      public function §<!!§(param1:Number) : void
      {
         var _loc2_:Number = §!6§(this.§=!y§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §<2§(_loc2_);
         this.§=!y§().§>"4§(_loc2_);
      }
      
      public function §9!L§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§=!y§().GetPosition().Copy();
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
         this.§=!y§().SetPosition(_loc13_);
      }
   }
}
