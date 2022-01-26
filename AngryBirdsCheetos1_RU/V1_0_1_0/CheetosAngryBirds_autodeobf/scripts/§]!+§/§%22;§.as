package §]!+§
{
   import §!!V§.§&I§;
   import §!!V§.§[Q§;
   import §#b§.b2PolygonShape;
   import §%t§.§@!%§;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §1E§.§2^§;
   import §5!$§.§!!H§;
   import §5!$§.§!`§;
   import §5!$§.§"!I§;
   import §5!$§.§1!8§;
   import §5!$§.§@$§;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §[x§.b2Body;
   import §[x§.b2BodyDef;
   import §[x§.b2FilterData;
   import §[x§.b2Fixture;
   import §[x§.b2World;
   import §^<§.b2Settings;
   import flash.geom.Point;
   
   public class §";§
   {
      
      public static const §5!O§:uint = 1 << 1;
      
      public static const §>!&§:uint = 1 << 2;
      
      public static const §^V§:uint = 1 << 3;
      
      public static const §,C§:uint = 1 << 4;
      
      public static const §,s§:Boolean = true;
      
      public static const §4r§:Number = 5;
      
      public static const §'K§:Number = 10;
       
      
      private var §?!5§:String;
      
      private var §;!I§:int;
      
      private var §0!9§:int;
      
      public var §+!J§:String;
      
      public var §@!$§:int;
      
      private var §-0§:§!!H§;
      
      private var §`E§:§'§;
      
      private var mWorld:b2World;
      
      protected var §,v§:String = "";
      
      protected var §7!T§:int = 1;
      
      private var §`C§:b2Fixture;
      
      private var §>-§:b2Body;
      
      private var §<![§:b2Vec2;
      
      public var §0!C§:Number;
      
      public var §6!;§:Number;
      
      private var §4&§:Number;
      
      private var §-i§:Boolean = false;
      
      private var §0!W§:Number;
      
      private var §,R§:Number;
      
      private var §=!L§:Number;
      
      private var §8U§:Number;
      
      private var §1!G§:Number;
      
      private var §0L§:Number;
      
      public var §#!N§:Number = 1;
      
      private var §"!C§:Boolean = false;
      
      public var §9E§:Number = 0;
      
      public var §[0§:Number = 0;
      
      protected var §`f§:Boolean = false;
      
      public var §^!3§:§%j§;
      
      private var §6`§:Sprite;
      
      private var § !2§:Number = 0;
      
      private var §'!F§:Number = 0;
      
      private var §>!]§:Number = 0;
      
      private var §4!S§:Number = 1.0;
      
      private var §0!O§:Boolean = false;
      
      protected var §98§:§-!&§;
      
      private var §!z§:Boolean = true;
      
      public function §";§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§+!J§ = param6;
         this.§-0§ = §"!I§.§&E§(param6);
         this.§`E§ = param1;
         this.§6`§ = param2;
         this.§4!S§ = param10;
         this.§0!O§ = param11;
         this.§;!I§ = param5;
         this.§@!$§ = this.§-0§.§@!$§;
         this.§0!9§ = this.§-0§.§"W§();
         this.§98§ = new §-!&§(§4r§,§'K§);
         this.§^!3§ = new §%j§(this,param2,param4);
         if(!this.§^!3§.§8,§(param1.§%v§.§&"§))
         {
            this.§^!3§.§`7§(this.§0!9§,this.§-0§.§7$§(),this.§-0§.§9!1§() / §&I§.§]!H§,this.§-0§.§ !E§() / §&I§.§]!H§);
         }
         this.§^!3§.§>]§(this.§0!9§ == §!`§.§7q§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§>-§ = this.mWorld.§-y§(_loc12_);
         this.§>-§.§4R§(this);
         if(this.§0!9§ == §!`§.§#Z§)
         {
            _loc14_ = b2PolygonShape.§0!1§(this.§-0§.shape.§'n§ * param10,this.§-0§.shape.§+!#§ * param10);
            this.§`C§ = this.§>-§.CreateFixture2(_loc14_,this.§-0§.§4P§());
         }
         else if(this.§0!9§ == §!`§.§7q§ || this.§0!9§ == §!`§.§65§)
         {
            this.§`C§ = this.§>-§.CreateFixture2(this.§-0§.shape.§[a§(param10),this.§-0§.§4P§());
         }
         this.§`C§.§5D§(this.§-0§.§9J§());
         this.§`C§.§"?§(this.§-0§.§<!U§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§,p§())
         {
            _loc13_.§@Z§ = §5!O§;
            _loc13_.§8h§ = 65535 & ~§>!&§;
         }
         else if(this.§+!J§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§+!J§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§@Z§ = §>!&§;
            _loc13_.§8h§ = 65535 & ~§5!O§;
         }
         this.§`C§.§'v§(_loc13_);
         this.§4&§ = this.§-0§.§%;§();
         if(this.§-0§.§6!;§ > 0)
         {
            this.§0!C§ = this.§6!;§ = this.§-0§.§6!;§;
         }
         else
         {
            this.§0!C§ = this.§6!;§ = Math.round(this.§=5§(true) * this.§-0§.§`!4§());
            if(this.§0!C§ < 1)
            {
               this.§0!C§ = this.§6!;§ = 1;
            }
         }
         if(this.§-0§.§@!$§ == §!!H§.§5k§)
         {
            this.§6`§.visible = false;
         }
         else
         {
            this.§^!3§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§9!5§(param9);
         }
         this.§%C§();
         this.§;<§(0,1);
         this.§^!3§.§6!_§(this.§-0§.shape);
      }
      
      public static function §=f§(param1:int, param2:§1!8§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§-k§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§;Q§;
            }
            §2^§.§0!G§(_loc4_,param3);
         }
      }
      
      public static function §-!F§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §-!B§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§6`§;
      }
      
      public function get x() : Number
      {
         return this.§ !2§;
      }
      
      public function get y() : Number
      {
         return this.§'!F§;
      }
      
      public function get scale() : Number
      {
         return this.§4!S§;
      }
      
      public function get front() : Boolean
      {
         return this.§0!O§;
      }
      
      public function get §^N§() : Number
      {
         return this.§>-§.GetPosition().x;
      }
      
      public function get §&!^§() : Number
      {
         return this.§>-§.GetPosition().y;
      }
      
      public function get §5a§() : §!!H§
      {
         return this.§-0§;
      }
      
      public function get §?!8§() : Boolean
      {
         return this.§4&§ >= 0;
      }
      
      public function get container() : §'§
      {
         return this.§`E§;
      }
      
      public function get §8!W§() : Boolean
      {
         return this.§!z§;
      }
      
      public function set §8!W§(param1:Boolean) : void
      {
         this.§!z§ = param1;
      }
      
      public function set §5H§(param1:Boolean) : void
      {
         this.§-i§ = param1;
      }
      
      public function set §[!-§(param1:uint) : void
      {
         this.§98§.§[!-§ = param1;
      }
      
      public function get §[!-§() : uint
      {
         return this.§98§.§[!-§;
      }
      
      public function get §3!4§() : Boolean
      {
         return this.§"!C§;
      }
      
      public function set §3!4§(param1:Boolean) : void
      {
         this.§"!C§ = param1;
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
         return this.§?!5§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§?!5§ = param1;
      }
      
      public function §@!3§(param1:b2FilterData) : void
      {
         if(this.§`C§)
         {
            this.§`C§.§'v§(param1);
         }
      }
      
      protected function §5U§(param1:String) : int
      {
         return §"!U§.§5U§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§-0§.§"!D§();
         _loc3_.§'_§ = true;
         _loc3_.§3w§ = true;
         _loc3_.§15§ = true;
         _loc3_.§!!M§ = 1;
         _loc3_.§>!R§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§5P§(this.§?A§());
            this.mWorld = null;
         }
         this.§^!3§.dispose();
         if(this.§6`§)
         {
            this.§6`§.dispose();
            this.§6`§ = null;
         }
         this.§`C§ = null;
         this.§<![§ = null;
         this.§-0§ = null;
      }
      
      public function §9!5§(param1:Number) : void
      {
         this.§?A§().§^!"§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §?! §() : Number
      {
         return (360 - this.§?A§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §6U§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§?A§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§;v§();
         }
         if(param3)
         {
            this.§=!O§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§`C§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?A§().GetPosition().x >= param3 && this.§?A§().GetPosition().x <= param4 && this.§?A§().GetPosition().y >= param1 && this.§?A§().GetPosition().y <= param2;
      }
      
      public function §^G§(param1:b2Vec2) : void
      {
         this.§<![§ = param1;
      }
      
      public function § 6§() : void
      {
         if(this.§<![§)
         {
            this.§6U§(this.§<![§,false);
            this.§<![§ = null;
         }
      }
      
      public function §;v§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?A§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§?A§().§0!]§(0);
         }
         else
         {
            this.§?A§().§0!]§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §=!O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?A§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§9!5§(_loc2_);
      }
      
      public function §=!§(param1:Number) : void
      {
         this.§?A§().§0!]§(param1);
      }
      
      public function §?A§() : b2Body
      {
         if(this.§`C§ != null)
         {
            return this.§`C§.GetBody();
         }
         return null;
      }
      
      public function §@!0§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§ !2§ = param1;
            this.§'!F§ = param2;
         }
         this.§?A§().GetPosition().x = this.§ !2§ * §&I§.§]!H§;
         this.§?A§().GetPosition().y = this.§'!F§ * §&I§.§]!H§;
      }
      
      public function §;<§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§`f§)
         {
            _loc3_ = true;
            this.§`f§ = false;
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
            this.§^!3§.§#!<§();
         }
         if(this.§#!N§ > 1 && this.§^!3§.§<!H§)
         {
            _loc4_ = 4 + (this.§^!3§.§<!H§.blurX - 4 + param2 / 20) % 28;
            this.§^!3§.§<!H§.blurX = _loc4_;
            this.§^!3§.§<!H§.blurY = _loc4_;
         }
         this.§^!3§.§?!W§(param2);
         if(§,s§)
         {
            this.§'c§(param1);
         }
         else
         {
            this.§>!]§ = this.§=!L§;
            this.§ !2§ = this.§0!W§;
            this.§'!F§ = this.§,R§;
         }
         this.§6`§.x = Math.round(this.§ !2§);
         this.§6`§.y = Math.round(this.§'!F§);
         this.§6`§.rotation = this.§>!]§ / 180 * Math.PI;
      }
      
      public function §%C§() : void
      {
         var _loc1_:Number = this.§?A§().GetPosition().x;
         var _loc2_:Number = this.§?A§().GetPosition().y;
         this.§0L§ = this.§=!L§;
         this.§8U§ = this.§0!W§;
         this.§1!G§ = this.§,R§;
         this.§=!L§ = this.§?A§().GetAngle() * (180 / Math.PI) % 360;
         this.§0!W§ = _loc1_ / §&I§.§]!H§;
         this.§,R§ = _loc2_ / §&I§.§]!H§;
         this.§98§.§,7§();
         this.§98§.§?!,§(this.§?A§());
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
      
      public function §'c§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §@!%§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§`E§.§%v§.mLevelEngine.§[!#§ * 1000;
         }
         param1 *= -1;
         if(this.§0!W§ == this.§8U§ || param1 == 0)
         {
            this.§9E§ = 0;
            this.§ !2§ = this.§0!W§;
         }
         else
         {
            this.§9E§ = param1 * (this.§8U§ - this.§0!W§) / param2;
            this.§ !2§ = this.§0!W§ + this.§9E§;
         }
         if(this.§,R§ == this.§1!G§ || param1 == 0)
         {
            this.§[0§ = 0;
            this.§'!F§ = this.§,R§;
         }
         else
         {
            this.§[0§ = param1 * (this.§1!G§ - this.§,R§) / param2;
            this.§'!F§ = this.§,R§ + this.§[0§;
         }
         if(this.§=!L§ == this.§0L§ || param1 == 0)
         {
            this.§>!]§ = this.§=!L§;
         }
         else if(this.§0L§ > this.§=!L§ && this.§0L§ - this.§=!L§ <= 180)
         {
            this.§>!]§ = this.§=!L§ + param1 * (this.§0L§ - this.§=!L§) / param2;
         }
         else if(this.§0L§ > this.§=!L§ && this.§0L§ - this.§=!L§ > 180)
         {
            this.§>!]§ = this.§=!L§ + param1 * (this.§0L§ - 360 - this.§=!L§) / param2;
         }
         else if(this.§0L§ < this.§=!L§ && this.§=!L§ - this.§0L§ <= 180)
         {
            this.§>!]§ = this.§=!L§ + param1 * (this.§0L§ - this.§=!L§) / param2;
         }
         else if(this.§0L§ < this.§=!L§ && this.§=!L§ - this.§0L§ > 180)
         {
            this.§>!]§ = this.§=!L§ + param1 * (this.§0L§ + 360 - this.§=!L§) / param2;
         }
      }
      
      public function get §"!9§() : Point
      {
         if(!§,s§)
         {
         }
         return null;
      }
      
      public function §,p§() : Boolean
      {
         return this.§@!$§ == §!!H§.§4E§ || this.§@!$§ == §!!H§.§+!5§;
      }
      
      public function §1M§() : Boolean
      {
         return this.§@!$§ == §!!H§.§25§;
      }
      
      public function §'+§() : Boolean
      {
         return this.§@!$§ == §!!H§.§7h§;
      }
      
      public function §=!&§() : Boolean
      {
         return this.§@!$§ == §!!H§.§+!5§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§@!$§ == §!!H§.§[L§;
      }
      
      public function isGround() : Boolean
      {
         return this.§@!$§ == §!!H§.§5k§;
      }
      
      public function §'?§() : Boolean
      {
         return this.§@!$§ == §!!H§.§6!B§;
      }
      
      public function §81§() : Boolean
      {
         return this.§@!$§ == §!!H§.§-I§;
      }
      
      public function §+!P§() : Boolean
      {
         if(this.§+!J§ == "MISC_EXPLOSIVE_TNT" || this.§+!J§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §`d§() : Boolean
      {
         return (this.§1M§() || this.§'?§() || this.§81§()) && !this.§3!4§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function § else§() : Number
      {
         return Number(Math.sqrt(this.§?A§().GetLinearVelocity().x * this.§?A§().GetLinearVelocity().x + this.§?A§().GetLinearVelocity().y * this.§?A§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§'+§())
         {
            return this.§0!C§;
         }
         if(!this.§`E§.§'N§())
         {
            return this.§0!C§;
         }
         if(this.§4&§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§3![§(§1!8§.§!t§);
            }
            else if(param1 > 12)
            {
               this.§3![§(§1!8§.§=Y§);
            }
            else if(param1 > 3)
            {
               this.§3![§(§1!8§.§'>§);
            }
            return this.§0!C§;
         }
         if(param1 <= this.§4&§)
         {
            if(param1 >= this.§4&§ / 2)
            {
               this.§3![§(§1!8§.§'>§);
            }
            if(this.§,p§() && this.§0!C§ == this.§6!;§)
            {
               this.§0!C§ = this.§6!;§ - 1;
            }
            return this.§0!C§;
         }
         param1 -= this.§4&§;
         if(param2 && this.§`d§())
         {
            _loc7_ = Math.min(this.§0!C§,int(param1));
            _loc8_ = §&I§.§#!`§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §&I§.§=! §;
            }
            this.§`E§.§%v§.addScore(_loc8_,§[Q§.§3'§,this.§0!C§ > param1 && param3,this.§?A§().GetPosition().x,this.§?A§().GetPosition().y,§"!U§.§`§(this.§+!J§));
         }
         if(!(param5 && this.§-i§))
         {
            this.§0!C§ -= param1;
         }
         if(this.§0!C§ < 1 && this.§,p§())
         {
            this.§0!C§ = 1;
         }
         if(this.§0!C§ < 1)
         {
            this.§0!C§ = 0;
            §";§.§=f§(§1!8§.§!t§,this.§-0§.§=!#§,"ChannelDestroyed");
         }
         else
         {
            this.§3![§(§1!8§.§=Y§);
            this.addDamageParticles(this.§`E§.§%v§.particles,param1);
         }
         this.§^!3§.setDamagedFrame();
         return this.§0!C§;
      }
      
      public function §3![§(param1:int) : void
      {
         §";§.§=f§(param1,this.§-0§.§=!#§);
      }
      
      public function §6!M§(param1:String) : Number
      {
         return this.§-0§.material.§#!7§(param1) * this.§#!N§;
      }
      
      public function §>l§(param1:String) : Number
      {
         return this.§-0§.material.§>Z§(param1);
      }
      
      public function §#!-§() : String
      {
         return this.§-0§.material.mName;
      }
      
      public function §=!`§() : Number
      {
         return this.§-0§.§`!4§();
      }
      
      public function §<!+§() : int
      {
         return this.§-0§.§0#§();
      }
      
      public function §^!>§() : Boolean
      {
         return this.§?A§().IsAwake() && (this.§,p§() && this.§0!C§ == this.§6!;§ || Math.abs(this.§?A§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?A§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?A§().§5!+§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §%e§() : Boolean
      {
         if(!this.§?A§().IsAwake())
         {
            return true;
         }
         return !this.§@!U§();
      }
      
      protected function §@!U§() : Boolean
      {
         return this.§98§.§@!U§();
      }
      
      public function §6!'§(param1:Number = 3) : void
      {
         this.§#!N§ = param1;
         if(this.§#!N§ > 1)
         {
            this.§^!3§.§`!#§();
         }
         else
         {
            this.§^!3§.§<!H§ = null;
         }
      }
      
      public function §=5§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§-0§.§"!D§() == §@$§.§"!&§)
         {
            _loc2_ = this.§^!3§.mW * this.§^!3§.mH * (§&I§.§]!H§ * §&I§.§]!H§);
         }
         else
         {
            _loc2_ = this.§?A§().GetMass() / this.§`C§.§%!T§();
            if(param1)
            {
               _loc2_ *= this.§%!%§();
            }
            _loc2_ /= this.§4!S§ * this.§4!S§;
         }
         return _loc2_;
      }
      
      public function §%!%§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§^!3§.§73§ - 1) / 10);
      }
      
      public function §^!#§(param1:Number) : void
      {
         var _loc2_:Number = this.§?A§().GetLinearVelocity().x;
         var _loc3_:Number = this.§?A§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§?A§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§'§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§7!H§) : void
      {
      }
      
      public function addDamageParticles(param1:§7!H§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §'!,§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§?A§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§?A§().§';§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§?! §()) + 360) % 360;
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
            this.§9!5§(_loc4_);
         }
         var _loc3_:Number = this.§?! §() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§9!5§(_loc3_);
      }
      
      public function §=e§(param1:Number) : void
      {
         var _loc2_:Number = §-!F§(this.§?A§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §-!B§(_loc2_);
         this.§?A§().§^!"§(_loc2_);
      }
      
      public function §0Q§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§?A§().GetPosition().Copy();
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
         this.§?A§().§';§(_loc13_);
      }
   }
}
