package §,h§
{
   import § !G§.§ #§;
   import §!X§.§7@§;
   import §!X§.§86§;
   import §&U§.b2PolygonShape;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   import §`j§.b2Body;
   import §`j§.b2BodyDef;
   import §`j§.b2FilterData;
   import §`j§.b2Fixture;
   import §`j§.b2World;
   import §default§.§!A§;
   import §default§.§%<§;
   import §default§.§-g§;
   import §default§.§-r§;
   import §default§.§<A§;
   import flash.geom.Point;
   
   public class §+0§
   {
      
      public static const §;?§:uint = 1 << 1;
      
      public static const §=!#§:uint = 1 << 2;
      
      public static const §6!&§:uint = 1 << 3;
      
      public static const §]R§:uint = 1 << 4;
      
      public static const §5!9§:Boolean = true;
       
      
      private var §+T§:String;
      
      private var §=!Q§:int;
      
      private var §,x§:int;
      
      public var §2!1§:String;
      
      public var §?n§:int;
      
      private var §2!§:§-r§;
      
      private var §]!?§:§6M§;
      
      private var mWorld:b2World;
      
      private var §3G§:b2Fixture;
      
      private var §^!+§:b2Body;
      
      private var §1!I§:b2Vec2;
      
      public var §,!&§:Number;
      
      public var §+?§:Number;
      
      private var §&<§:Number;
      
      private var §]t§:Boolean = false;
      
      private var §else §:Number;
      
      private var §&!-§:Number;
      
      private var §8u§:Number;
      
      private var §>!4§:Number;
      
      private var §'>§:Number;
      
      private var §'!2§:Number;
      
      public var § !I§:Number = 1;
      
      private var §"+§:Boolean = false;
      
      public var §3!A§:Number = 0;
      
      public var §+C§:Number = 0;
      
      protected var §&t§:Boolean = false;
      
      public var §2P§:§0q§;
      
      private var §?!N§:Sprite;
      
      private var §<!Y§:Number = 0;
      
      private var § l§:Number = 0;
      
      private var §50§:Number = 0;
      
      private var §1R§:Number = 1.0;
      
      private var §use§:Boolean = false;
      
      private var §90§:Boolean = true;
      
      public function §+0§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§2!1§ = param6;
         this.§2!§ = §%<§.§<<§(param6);
         this.§]!?§ = param1;
         this.§?!N§ = param2;
         this.§1R§ = param10;
         this.§use§ = param11;
         this.§=!Q§ = param5;
         this.§?n§ = this.§2!§.§?n§;
         this.§,x§ = this.§2!§.§=![§();
         this.§2P§ = new §0q§(this,param2,param4);
         if(!this.§2P§.§`@§(param1.§>`§.§true§))
         {
            this.§2P§.§7!]§(this.§,x§,this.§2!§.§ Z§(),this.§2!§.§6N§() / §86§.§7!4§,this.§2!§.§-v§() / §86§.§7!4§);
         }
         this.§2P§.§+J§(this.§,x§ == §<A§.§4!S§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§^!+§ = this.mWorld.§#f§(_loc12_);
         this.§^!+§.§,!-§(this);
         if(this.§,x§ == §<A§.§?b§)
         {
            _loc14_ = b2PolygonShape.§-!H§(this.§2!§.shape.§^!I§ * param10,this.§2!§.shape.§,!X§ * param10);
            this.§3G§ = this.§^!+§.CreateFixture2(_loc14_,this.§2!§.§0e§());
         }
         else if(this.§,x§ == §<A§.§4!S§ || this.§,x§ == §<A§.§%E§)
         {
            this.§3G§ = this.§^!+§.CreateFixture2(this.§2!§.shape.§!H§(param10),this.§2!§.§0e§());
         }
         this.§3G§.§&]§(this.§2!§.§%$§());
         this.§3G§.§7§(this.§2!§.§0Q§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§>!K§())
         {
            _loc13_.§^-§ = §;?§;
            _loc13_.§&!8§ = 65535 & ~§=!#§;
         }
         else if(this.§2!1§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§2!1§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§^-§ = §=!#§;
            _loc13_.§&!8§ = 65535 & ~§;?§;
         }
         this.§3G§.§ !5§(_loc13_);
         this.§&<§ = this.§2!§.§5!J§();
         if(this.§2!§.§+?§ > 0)
         {
            this.§,!&§ = this.§+?§ = this.§2!§.§+?§;
         }
         else
         {
            this.§,!&§ = this.§+?§ = Math.round(this.§'!+§(true) * this.§2!§.§^i§());
            if(this.§,!&§ < 1)
            {
               this.§,!&§ = this.§+?§ = 1;
            }
         }
         if(this.§2!§.§?n§ == §-r§.§#!]§)
         {
            this.§?!N§.visible = false;
         }
         else
         {
            this.§2P§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§5K§(param9);
         }
         this.§&;§();
         this.§<!@§(0,1);
         this.§2P§.§`!9§(this.§2!§.shape);
      }
      
      public static function §6o§(param1:int, param2:§!A§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§47§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§1!^§;
            }
            §!!>§.§ D§(_loc4_,param3);
         }
      }
      
      public static function §9b§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §7!§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!N§;
      }
      
      public function get x() : Number
      {
         return this.§<!Y§;
      }
      
      public function get y() : Number
      {
         return this.§ l§;
      }
      
      public function get scale() : Number
      {
         return this.§1R§;
      }
      
      public function get front() : Boolean
      {
         return this.§use§;
      }
      
      public function get §33§() : Number
      {
         return this.§^!+§.GetPosition().x;
      }
      
      public function get §&5§() : Number
      {
         return this.§^!+§.GetPosition().y;
      }
      
      public function get §7Z§() : §-r§
      {
         return this.§2!§;
      }
      
      public function get §`!T§() : Boolean
      {
         return this.§&<§ >= 0;
      }
      
      protected function get container() : §6M§
      {
         return this.§]!?§;
      }
      
      public function get §;!Y§() : Boolean
      {
         return this.§90§;
      }
      
      public function set §;!Y§(param1:Boolean) : void
      {
         this.§90§ = param1;
      }
      
      public function set § !W§(param1:Boolean) : void
      {
         this.§]t§ = param1;
      }
      
      public function get §,O§() : Boolean
      {
         return this.§"+§;
      }
      
      public function set §,O§(param1:Boolean) : void
      {
         this.§"+§ = param1;
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
         return this.§+T§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§+T§ = param1;
      }
      
      public function §>!!§(param1:b2FilterData) : void
      {
         if(this.§3G§)
         {
            this.§3G§.§ !5§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§2!§.§2C§();
         _loc3_.§9W§ = true;
         _loc3_.§3?§ = true;
         _loc3_.§0-§ = true;
         _loc3_.§?!'§ = 1;
         _loc3_.§<!;§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§6<§(this.§?!7§());
            this.mWorld = null;
         }
         this.§2P§.dispose();
         if(this.§?!N§)
         {
            this.§?!N§.dispose();
            this.§?!N§ = null;
         }
         this.§3G§ = null;
         this.§1!I§ = null;
         this.§2!§ = null;
      }
      
      public function §5K§(param1:Number) : void
      {
         this.§?!7§().§ !K§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §%4§() : Number
      {
         return (360 - this.§?!7§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §`o§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§?!7§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§7r§();
         }
         if(param3)
         {
            this.§8f§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§3G§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?!7§().GetPosition().x >= param3 && this.§?!7§().GetPosition().x <= param4 && this.§?!7§().GetPosition().y >= param1 && this.§?!7§().GetPosition().y <= param2;
      }
      
      public function §!-§(param1:b2Vec2) : void
      {
         this.§1!I§ = param1;
      }
      
      public function §1p§() : void
      {
         if(this.§1!I§)
         {
            this.§`o§(this.§1!I§,false);
            this.§1!I§ = null;
         }
      }
      
      public function §7r§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?!7§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§?!7§().§4K§(0);
         }
         else
         {
            this.§?!7§().§4K§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §8f§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?!7§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§5K§(_loc2_);
      }
      
      public function §8W§(param1:Number) : void
      {
         this.§?!7§().§4K§(param1);
      }
      
      public function §?!7§() : b2Body
      {
         if(this.§3G§ != null)
         {
            return this.§3G§.GetBody();
         }
         return null;
      }
      
      public function §+!!§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§<!Y§ = param1;
            this.§ l§ = param2;
         }
         this.§?!7§().GetPosition().x = this.§<!Y§ * §86§.§7!4§;
         this.§?!7§().GetPosition().y = this.§ l§ * §86§.§7!4§;
      }
      
      public function §<!@§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§&t§)
         {
            _loc3_ = true;
            this.§&t§ = false;
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
            this.§2P§.§+!4§();
         }
         if(this.§ !I§ > 1 && this.§2P§.§'!D§)
         {
            _loc4_ = 4 + (this.§2P§.§'!D§.blurX - 4 + param2 / 20) % 28;
            this.§2P§.§'!D§.blurX = _loc4_;
            this.§2P§.§'!D§.blurY = _loc4_;
         }
         this.§2P§.§,r§(param2);
         if(§5!9§)
         {
            this.§8!6§(param1);
         }
         else
         {
            this.§50§ = this.§8u§;
            this.§<!Y§ = this.§else §;
            this.§ l§ = this.§&!-§;
         }
         this.§?!N§.x = Math.round(this.§<!Y§);
         this.§?!N§.y = Math.round(this.§ l§);
         this.§?!N§.rotation = this.§50§ / 180 * Math.PI;
      }
      
      public function §&;§() : void
      {
         var _loc1_:Number = this.§?!7§().GetPosition().x;
         var _loc2_:Number = this.§?!7§().GetPosition().y;
         this.§'!2§ = this.§8u§;
         this.§>!4§ = this.§else §;
         this.§'>§ = this.§&!-§;
         this.§8u§ = this.§?!7§().GetAngle() * (180 / Math.PI) % 360;
         this.§else § = _loc1_ / §86§.§7!4§;
         this.§&!-§ = _loc2_ / §86§.§7!4§;
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
      
      public function §8!6§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            § #§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§]!?§.§>`§.mLevelEngine.§#L§ * 1000;
         }
         param1 *= -1;
         if(this.§else § == this.§>!4§ || param1 == 0)
         {
            this.§3!A§ = 0;
            this.§<!Y§ = this.§else §;
         }
         else
         {
            this.§3!A§ = param1 * (this.§>!4§ - this.§else §) / param2;
            this.§<!Y§ = this.§else § + this.§3!A§;
         }
         if(this.§&!-§ == this.§'>§ || param1 == 0)
         {
            this.§+C§ = 0;
            this.§ l§ = this.§&!-§;
         }
         else
         {
            this.§+C§ = param1 * (this.§'>§ - this.§&!-§) / param2;
            this.§ l§ = this.§&!-§ + this.§+C§;
         }
         if(this.§8u§ == this.§'!2§ || param1 == 0)
         {
            this.§50§ = this.§8u§;
         }
         else if(this.§'!2§ > this.§8u§ && this.§'!2§ - this.§8u§ <= 180)
         {
            this.§50§ = this.§8u§ + param1 * (this.§'!2§ - this.§8u§) / param2;
         }
         else if(this.§'!2§ > this.§8u§ && this.§'!2§ - this.§8u§ > 180)
         {
            this.§50§ = this.§8u§ + param1 * (this.§'!2§ - 360 - this.§8u§) / param2;
         }
         else if(this.§'!2§ < this.§8u§ && this.§8u§ - this.§'!2§ <= 180)
         {
            this.§50§ = this.§8u§ + param1 * (this.§'!2§ - this.§8u§) / param2;
         }
         else if(this.§'!2§ < this.§8u§ && this.§8u§ - this.§'!2§ > 180)
         {
            this.§50§ = this.§8u§ + param1 * (this.§'!2§ + 360 - this.§8u§) / param2;
         }
      }
      
      public function get §9!Y§() : Point
      {
         if(!§5!9§)
         {
         }
         return null;
      }
      
      public function §>!K§() : Boolean
      {
         return this.§?n§ == §-r§.§@j§ || this.§?n§ == §-r§.§5o§;
      }
      
      public function §'D§() : Boolean
      {
         return this.§?n§ == §-r§.§`T§;
      }
      
      public function §@m§() : Boolean
      {
         return this.§?n§ == §-r§.§9N§;
      }
      
      public function §>1§() : Boolean
      {
         return this.§?n§ == §-r§.§5o§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§?n§ == §-r§.§^9§;
      }
      
      public function isGround() : Boolean
      {
         return this.§?n§ == §-r§.§#!]§;
      }
      
      public function §29§() : Boolean
      {
         return this.§?n§ == §-r§.§"!1§;
      }
      
      public function §76§() : Boolean
      {
         return this.§?n§ == §-r§.§+!S§;
      }
      
      public function §1!'§() : Boolean
      {
         if(this.§2!1§ == "MISC_EXPLOSIVE_TNT" || this.§2!1§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §"u§() : Boolean
      {
         return (this.§'D§() || this.§29§() || this.§76§()) && !this.§,O§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §1b§() : Number
      {
         return Number(Math.sqrt(this.§?!7§().GetLinearVelocity().x * this.§?!7§().GetLinearVelocity().x + this.§?!7§().GetLinearVelocity().y * this.§?!7§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§@m§())
         {
            return this.§,!&§;
         }
         if(!this.§]!?§.§6!4§())
         {
            return this.§,!&§;
         }
         if(this.§&<§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§ !=§(§!A§.§!!X§);
            }
            else if(param1 > 12)
            {
               this.§ !=§(§!A§.§5V§);
            }
            else if(param1 > 3)
            {
               this.§ !=§(§!A§.§?!D§);
            }
            return this.§,!&§;
         }
         if(param1 <= this.§&<§)
         {
            if(param1 >= this.§&<§ / 2)
            {
               this.§ !=§(§!A§.§?!D§);
            }
            if(this.§>!K§() && this.§,!&§ == this.§+?§)
            {
               this.§,!&§ = this.§+?§ - 1;
            }
            return this.§,!&§;
         }
         param1 -= this.§&<§;
         if(param2 && this.§"u§())
         {
            _loc7_ = Math.min(this.§,!&§,int(param1));
            _loc8_ = §86§.§@r§.getValue() * _loc7_;
            this.§]!?§.§>`§.addScore(_loc8_,§7@§.§0!3§,this.§,!&§ > param1 && param3,this.§?!7§().GetPosition().x,this.§?!7§().GetPosition().y,§7o§.§=F§(this.§2!1§));
         }
         if(!(param5 && this.§]t§))
         {
            this.§,!&§ -= param1;
         }
         if(this.§,!&§ < 1 && this.§>!K§())
         {
            this.§,!&§ = 1;
         }
         if(this.§,!&§ < 1)
         {
            this.§,!&§ = 0;
            §+0§.§6o§(§!A§.§!!X§,this.§2!§.§-p§,"ChannelDestroyed");
         }
         else
         {
            this.§ !=§(§!A§.§5V§);
            this.addDamageParticles(this.§]!?§.§>`§.particles,param1);
         }
         this.§2P§.setDamagedFrame();
         return this.§,!&§;
      }
      
      public function § !=§(param1:int) : void
      {
         §+0§.§6o§(param1,this.§2!§.§-p§);
      }
      
      public function § if§(param1:String) : Number
      {
         return this.§2!§.material.§14§(param1) * this.§ !I§;
      }
      
      public function §'!'§(param1:String) : Number
      {
         return this.§2!§.material.§`%§(param1);
      }
      
      public function §7<§() : String
      {
         return this.§2!§.material.mName;
      }
      
      public function §0]§() : Number
      {
         return this.§2!§.§^i§();
      }
      
      public function §"v§() : int
      {
         return this.§2!§.§get §();
      }
      
      public function §-!N§() : Boolean
      {
         return this.§?!7§().IsAwake() && (this.§>!K§() && this.§,!&§ == this.§+?§ || Math.abs(this.§?!7§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?!7§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?!7§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §69§() : Boolean
      {
         if(!this.§?!7§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§?!7§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§?!7§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§?!7§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §8!Z§(param1:Number = 3) : void
      {
         this.§ !I§ = param1;
         if(this.§ !I§ > 1)
         {
            this.§2P§.§[s§();
         }
         else
         {
            this.§2P§.§'!D§ = null;
         }
      }
      
      public function §'!+§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§2!§.§2C§() == §-g§.§3'§)
         {
            _loc2_ = this.§2P§.mW * this.§2P§.mH * (§86§.§7!4§ * §86§.§7!4§);
         }
         else
         {
            _loc2_ = this.§?!7§().GetMass() / this.§3G§.§#p§();
            if(param1)
            {
               _loc2_ *= this.§+$§();
            }
            _loc2_ /= this.§1R§ * this.§1R§;
         }
         return _loc2_;
      }
      
      public function §+$§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2P§.§>7§ - 1) / 10);
      }
      
      public function §>v§(param1:Number) : void
      {
         var _loc2_:Number = this.§?!7§().GetLinearVelocity().x;
         var _loc3_:Number = this.§?!7§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§?!7§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§6M§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§<2§) : void
      {
      }
      
      public function addDamageParticles(param1:§<2§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §>!^§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§?!7§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§?!7§().§%!U§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§%4§()) + 360) % 360;
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
            this.§5K§(_loc4_);
         }
         var _loc3_:Number = this.§%4§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§5K§(_loc3_);
      }
      
      public function §!_§(param1:Number) : void
      {
         var _loc2_:Number = §9b§(this.§?!7§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §7!§(_loc2_);
         this.§?!7§().§ !K§(_loc2_);
      }
      
      public function §"b§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§?!7§().GetPosition().Copy();
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
         this.§?!7§().§%!U§(_loc13_);
      }
   }
}
