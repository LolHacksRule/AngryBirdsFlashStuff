package §+!#§
{
   import § !3§.§!X§;
   import §!O§.b2PolygonShape;
   import §#;§.§42§;
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0!?§.b2BodyDef;
   import §0!?§.b2FilterData;
   import §0!?§.b2Fixture;
   import §0!?§.b2World;
   import §0^§.b2Settings;
   import §2z§.§2!U§;
   import §2z§.§^!8§;
   import §4!e§.§ !'§;
   import §4!e§.§ !0§;
   import §4!e§.§+!Y§;
   import §4!e§.§-a§;
   import §4!e§.§[l§;
   import §=!E§.Sprite;
   import §^t§.§<;§;
   import §^t§.§[I§;
   import flash.geom.Point;
   
   public class §9!5§
   {
      
      public static const §1!6§:uint = 1 << 1;
      
      public static const §1z§:uint = 1 << 2;
      
      public static const §?!S§:uint = 1 << 3;
      
      public static const §"i§:uint = 1 << 4;
      
      public static const §0!D§:Boolean = true;
      
      public static const §[H§:Number = 5;
      
      public static const §;!8§:Number = 10;
       
      
      private var §]y§:String;
      
      private var §,!%§:int;
      
      private var §7!3§:int;
      
      public var §@c§:String;
      
      public var §@i§:int;
      
      private var §2G§:§-a§;
      
      private var §5!P§:§"!6§;
      
      private var mWorld:b2World;
      
      protected var §'H§:String = "";
      
      protected var §9!L§:int = 1;
      
      private var §56§:b2Fixture;
      
      private var §6!G§:b2Body;
      
      private var §,[§:b2Vec2;
      
      public var §7!M§:Number;
      
      public var §+z§:Number;
      
      private var §7!#§:Number;
      
      private var §9!D§:Boolean = false;
      
      private var §#A§:Number;
      
      private var §12§:Number;
      
      private var §[!"§:Number;
      
      private var §]!;§:Number;
      
      private var §-!B§:Number;
      
      private var §%!P§:Number;
      
      public var §!V§:Number = 1;
      
      private var §0O§:Boolean = false;
      
      public var §#s§:Number = 0;
      
      public var §0C§:Number = 0;
      
      protected var §3,§:Boolean = false;
      
      public var §8!E§:§@!!§;
      
      private var §"!B§:Sprite;
      
      private var §[!#§:Number = 0;
      
      private var §?=§:Number = 0;
      
      private var §7!,§:Number = 0;
      
      private var §35§:Number = 1.0;
      
      private var §7!T§:Boolean = false;
      
      protected var §[!_§:§9!X§;
      
      private var §[$§:Boolean = true;
      
      public function §9!5§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§@c§ = param6;
         this.§2G§ = §+!Y§.§#o§(param6);
         this.§5!P§ = param1;
         this.§"!B§ = param2;
         this.§35§ = param10;
         this.§7!T§ = param11;
         this.§,!%§ = param5;
         this.§@i§ = this.§2G§.§@i§;
         this.§7!3§ = this.§2G§.§>d§();
         this.§[!_§ = new §9!X§(§[H§,§;!8§);
         this.§8!E§ = new §@!!§(this,param2,param4);
         if(!this.§8!E§.§#!c§(param1.§7o§.§=_§))
         {
            this.§8!E§.§%!Y§(this.§7!3§,this.§2G§.§`!J§(),this.§2G§.§>a§() / §2!U§.§&%§,this.§2G§.§;A§() / §2!U§.§&%§);
         }
         this.§8!E§.§8D§(this.§7!3§ == §[l§.§[!U§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§6!G§ = this.mWorld.§4'§(_loc12_);
         this.§6!G§.§^!M§(this);
         if(this.§7!3§ == §[l§.§[!C§)
         {
            _loc14_ = b2PolygonShape.§5m§(this.§2G§.shape.§+L§ * param10,this.§2G§.shape.§<!@§ * param10);
            this.§56§ = this.§6!G§.CreateFixture2(_loc14_,this.§2G§.§'!+§());
         }
         else if(this.§7!3§ == §[l§.§[!U§ || this.§7!3§ == §[l§.§#M§)
         {
            this.§56§ = this.§6!G§.CreateFixture2(this.§2G§.shape.§<!T§(param10),this.§2G§.§'!+§());
         }
         this.§56§.override(this.§2G§.§;!J§());
         this.§56§.§>!3§(this.§2G§.§+!S§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§;j§())
         {
            _loc13_.§6!6§ = §1!6§;
            _loc13_.§6!"§ = 65535 & ~§1z§;
         }
         else if(this.§@c§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§@c§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§6!6§ = §1z§;
            _loc13_.§6!"§ = 65535 & ~§1!6§;
         }
         this.§56§.§;!5§(_loc13_);
         this.§7!#§ = this.§2G§.§<!d§();
         if(this.§2G§.§+z§ > 0)
         {
            this.§7!M§ = this.§+z§ = this.§2G§.§+z§;
         }
         else
         {
            this.§7!M§ = this.§+z§ = Math.round(this.§,!8§(true) * this.§2G§.§5!>§());
            if(this.§7!M§ < 1)
            {
               this.§7!M§ = this.§+z§ = 1;
            }
         }
         if(this.§2G§.§@i§ == §-a§.§+H§)
         {
            this.§"!B§.visible = false;
         }
         else
         {
            this.§8!E§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§3!>§(param9);
         }
         this.§0g§();
         this.§;G§(0,1);
         this.§8!E§.§5%§(this.§2G§.shape);
      }
      
      public static function §"!'§(param1:int, param2:§ !0§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§4!N§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§'!d§;
            }
            §42§.§9!=§(_loc4_,param3);
         }
      }
      
      public static function §<f§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §9g§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!B§;
      }
      
      public function get x() : Number
      {
         return this.§[!#§;
      }
      
      public function get y() : Number
      {
         return this.§?=§;
      }
      
      public function get scale() : Number
      {
         return this.§35§;
      }
      
      public function get front() : Boolean
      {
         return this.§7!T§;
      }
      
      public function get §-!@§() : Number
      {
         return this.§6!G§.GetPosition().x;
      }
      
      public function get §'M§() : Number
      {
         return this.§6!G§.GetPosition().y;
      }
      
      public function get §"0§() : §-a§
      {
         return this.§2G§;
      }
      
      public function get §[!P§() : Boolean
      {
         return this.§7!#§ >= 0;
      }
      
      public function get container() : §"!6§
      {
         return this.§5!P§;
      }
      
      public function get §9!>§() : Boolean
      {
         return this.§[$§;
      }
      
      public function set §9!>§(param1:Boolean) : void
      {
         this.§[$§ = param1;
      }
      
      public function set §@D§(param1:Boolean) : void
      {
         this.§9!D§ = param1;
      }
      
      public function set §1M§(param1:uint) : void
      {
         this.§[!_§.§1M§ = param1;
      }
      
      public function get §1M§() : uint
      {
         return this.§[!_§.§1M§;
      }
      
      public function get §7!^§() : Boolean
      {
         return this.§0O§;
      }
      
      public function set §7!^§(param1:Boolean) : void
      {
         this.§0O§ = param1;
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
         return this.§]y§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§]y§ = param1;
      }
      
      public function §8!;§(param1:b2FilterData) : void
      {
         if(this.§56§)
         {
            this.§56§.§;!5§(param1);
         }
      }
      
      protected function §6]§(param1:String) : int
      {
         return §[I§.§6]§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§2G§.§]!=§();
         _loc3_.§^!C§ = true;
         _loc3_.§4w§ = true;
         _loc3_.§,!G§ = true;
         _loc3_.§9+§ = 1;
         _loc3_.§7!b§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§<I§(this.§[!H§());
            this.mWorld = null;
         }
         this.§8!E§.dispose();
         if(this.§"!B§)
         {
            this.§"!B§.dispose();
            this.§"!B§ = null;
         }
         this.§56§ = null;
         this.§,[§ = null;
         this.§2G§ = null;
      }
      
      public function §3!>§(param1:Number) : void
      {
         this.§[!H§().§49§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §;!7§() : Number
      {
         return (360 - this.§[!H§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §2!-§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§[!H§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§92§();
         }
         if(param3)
         {
            this.§]!X§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§56§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§[!H§().GetPosition().x >= param3 && this.§[!H§().GetPosition().x <= param4 && this.§[!H§().GetPosition().y >= param1 && this.§[!H§().GetPosition().y <= param2;
      }
      
      public function §null§(param1:b2Vec2) : void
      {
         this.§,[§ = param1;
      }
      
      public function §`!'§() : void
      {
         if(this.§,[§)
         {
            this.§2!-§(this.§,[§,false);
            this.§,[§ = null;
         }
      }
      
      public function §92§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§[!H§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§[!H§().§?O§(0);
         }
         else
         {
            this.§[!H§().§?O§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §]!X§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§[!H§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§3!>§(_loc2_);
      }
      
      public function §;!D§(param1:Number) : void
      {
         this.§[!H§().§?O§(param1);
      }
      
      public function §[!H§() : b2Body
      {
         if(this.§56§ != null)
         {
            return this.§56§.GetBody();
         }
         return null;
      }
      
      public function §5!4§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§[!#§ = param1;
            this.§?=§ = param2;
         }
         this.§[!H§().GetPosition().x = this.§[!#§ * §2!U§.§&%§;
         this.§[!H§().GetPosition().y = this.§?=§ * §2!U§.§&%§;
      }
      
      public function §;G§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§3,§)
         {
            _loc3_ = true;
            this.§3,§ = false;
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
            this.§8!E§.§=d§();
         }
         if(this.§!V§ > 1 && this.§8!E§.§'X§)
         {
            _loc4_ = 4 + (this.§8!E§.§'X§.blurX - 4 + param2 / 20) % 28;
            this.§8!E§.§'X§.blurX = _loc4_;
            this.§8!E§.§'X§.blurY = _loc4_;
         }
         this.§8!E§.§7!%§(param2);
         if(§0!D§)
         {
            this.§%r§(param1);
         }
         else
         {
            this.§7!,§ = this.§[!"§;
            this.§[!#§ = this.§#A§;
            this.§?=§ = this.§12§;
         }
         this.§"!B§.x = Math.round(this.§[!#§);
         this.§"!B§.y = Math.round(this.§?=§);
         this.§"!B§.rotation = this.§7!,§ / 180 * Math.PI;
      }
      
      public function §0g§() : void
      {
         var _loc1_:Number = this.§[!H§().GetPosition().x;
         var _loc2_:Number = this.§[!H§().GetPosition().y;
         this.§%!P§ = this.§[!"§;
         this.§]!;§ = this.§#A§;
         this.§-!B§ = this.§12§;
         this.§[!"§ = this.§[!H§().GetAngle() * (180 / Math.PI) % 360;
         this.§#A§ = _loc1_ / §2!U§.§&%§;
         this.§12§ = _loc2_ / §2!U§.§&%§;
         this.§[!_§.§=W§();
         this.§[!_§.§0!B§(this.§[!H§());
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
      
      public function §%r§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §!X§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§5!P§.§7o§.mLevelEngine.§ 4§ * 1000;
         }
         param1 *= -1;
         if(this.§#A§ == this.§]!;§ || param1 == 0)
         {
            this.§#s§ = 0;
            this.§[!#§ = this.§#A§;
         }
         else
         {
            this.§#s§ = param1 * (this.§]!;§ - this.§#A§) / param2;
            this.§[!#§ = this.§#A§ + this.§#s§;
         }
         if(this.§12§ == this.§-!B§ || param1 == 0)
         {
            this.§0C§ = 0;
            this.§?=§ = this.§12§;
         }
         else
         {
            this.§0C§ = param1 * (this.§-!B§ - this.§12§) / param2;
            this.§?=§ = this.§12§ + this.§0C§;
         }
         if(this.§[!"§ == this.§%!P§ || param1 == 0)
         {
            this.§7!,§ = this.§[!"§;
         }
         else if(this.§%!P§ > this.§[!"§ && this.§%!P§ - this.§[!"§ <= 180)
         {
            this.§7!,§ = this.§[!"§ + param1 * (this.§%!P§ - this.§[!"§) / param2;
         }
         else if(this.§%!P§ > this.§[!"§ && this.§%!P§ - this.§[!"§ > 180)
         {
            this.§7!,§ = this.§[!"§ + param1 * (this.§%!P§ - 360 - this.§[!"§) / param2;
         }
         else if(this.§%!P§ < this.§[!"§ && this.§[!"§ - this.§%!P§ <= 180)
         {
            this.§7!,§ = this.§[!"§ + param1 * (this.§%!P§ - this.§[!"§) / param2;
         }
         else if(this.§%!P§ < this.§[!"§ && this.§[!"§ - this.§%!P§ > 180)
         {
            this.§7!,§ = this.§[!"§ + param1 * (this.§%!P§ + 360 - this.§[!"§) / param2;
         }
      }
      
      public function get §return§() : Point
      {
         if(!§0!D§)
         {
         }
         return null;
      }
      
      public function §;j§() : Boolean
      {
         return this.§@i§ == §-a§.§]C§ || this.§@i§ == §-a§.§8!V§;
      }
      
      public function §8P§() : Boolean
      {
         return this.§@i§ == §-a§.§%!Q§;
      }
      
      public function §'L§() : Boolean
      {
         return this.§@i§ == §-a§.§>x§;
      }
      
      public function §;d§() : Boolean
      {
         return this.§@i§ == §-a§.§8!V§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§@i§ == §-a§.§6h§;
      }
      
      public function isGround() : Boolean
      {
         return this.§@i§ == §-a§.§+H§;
      }
      
      public function §25§() : Boolean
      {
         return this.§@i§ == §-a§.§&!@§;
      }
      
      public function §]!<§() : Boolean
      {
         return this.§@i§ == §-a§.§-!R§;
      }
      
      public function §3+§() : Boolean
      {
         if(this.§@c§ == "MISC_EXPLOSIVE_TNT" || this.§@c§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §,!0§() : Boolean
      {
         return (this.§8P§() || this.§25§() || this.§]!<§()) && !this.§7!^§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §8!=§() : Number
      {
         return Number(Math.sqrt(this.§[!H§().GetLinearVelocity().x * this.§[!H§().GetLinearVelocity().x + this.§[!H§().GetLinearVelocity().y * this.§[!H§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§'L§())
         {
            return this.§7!M§;
         }
         if(!this.§5!P§.§6!N§())
         {
            return this.§7!M§;
         }
         if(this.§7!#§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§^!Y§(§ !0§.§0!N§);
            }
            else if(param1 > 12)
            {
               this.§^!Y§(§ !0§.§22§);
            }
            else if(param1 > 3)
            {
               this.§^!Y§(§ !0§.§+c§);
            }
            return this.§7!M§;
         }
         if(param1 <= this.§7!#§)
         {
            if(param1 >= this.§7!#§ / 2)
            {
               this.§^!Y§(§ !0§.§+c§);
            }
            if(this.§;j§() && this.§7!M§ == this.§+z§)
            {
               this.§7!M§ = this.§+z§ - 1;
            }
            return this.§7!M§;
         }
         param1 -= this.§7!#§;
         if(param2 && this.§,!0§())
         {
            _loc7_ = Math.min(this.§7!M§,int(param1));
            _loc8_ = §2!U§.§2m§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §2!U§.§ §;
            }
            this.§5!P§.§7o§.addScore(_loc8_,§^!8§.§<E§,this.§7!M§ > param1 && param3,this.§[!H§().GetPosition().x,this.§[!H§().GetPosition().y,§[I§.§&Y§(this.§@c§));
         }
         if(!(param5 && this.§9!D§))
         {
            this.§7!M§ -= param1;
         }
         if(this.§7!M§ < 1 && this.§;j§())
         {
            this.§7!M§ = 1;
         }
         if(this.§7!M§ < 1)
         {
            this.§7!M§ = 0;
            §9!5§.§"!'§(§ !0§.§0!N§,this.§2G§.§ var§,"ChannelDestroyed");
         }
         else
         {
            this.§^!Y§(§ !0§.§22§);
            this.addDamageParticles(this.§5!P§.§7o§.particles,param1);
         }
         this.§8!E§.setDamagedFrame();
         return this.§7!M§;
      }
      
      public function §^!Y§(param1:int) : void
      {
         §9!5§.§"!'§(param1,this.§2G§.§ var§);
      }
      
      public function §!z§(param1:String) : Number
      {
         return this.§2G§.material.§!!A§(param1) * this.§!V§;
      }
      
      public function §;k§(param1:String) : Number
      {
         return this.§2G§.material.§5!T§(param1);
      }
      
      public function §^j§() : String
      {
         return this.§2G§.material.mName;
      }
      
      public function §@!c§() : Number
      {
         return this.§2G§.§5!>§();
      }
      
      public function §5I§() : int
      {
         return this.§2G§.§ k§();
      }
      
      public function §8x§() : Boolean
      {
         return this.§[!H§().IsAwake() && (this.§;j§() && this.§7!M§ == this.§+z§ || Math.abs(this.§[!H§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§[!H§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§[!H§().§0!L§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §1!'§() : Boolean
      {
         if(!this.§[!H§().IsAwake())
         {
            return true;
         }
         return !this.§9!T§();
      }
      
      protected function §9!T§() : Boolean
      {
         return this.§[!_§.§9!T§();
      }
      
      public function §1!^§(param1:Number = 3) : void
      {
         this.§!V§ = param1;
         if(this.§!V§ > 1)
         {
            this.§8!E§.§?>§();
         }
         else
         {
            this.§8!E§.§'X§ = null;
         }
      }
      
      public function §,!8§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§2G§.§]!=§() == § !'§.§?d§)
         {
            _loc2_ = this.§8!E§.mW * this.§8!E§.mH * (§2!U§.§&%§ * §2!U§.§&%§);
         }
         else
         {
            _loc2_ = this.§[!H§().GetMass() / this.§56§.§4n§();
            if(param1)
            {
               _loc2_ *= this.§5!Q§();
            }
            _loc2_ /= this.§35§ * this.§35§;
         }
         return _loc2_;
      }
      
      public function §5!Q§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§8!E§.§><§ - 1) / 10);
      }
      
      public function §4e§(param1:Number) : void
      {
         var _loc2_:Number = this.§[!H§().GetLinearVelocity().x;
         var _loc3_:Number = this.§[!H§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§[!H§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§"!6§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§<;§) : void
      {
      }
      
      public function addDamageParticles(param1:§<;§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §2!;§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§[!H§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§[!H§().§"M§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§;!7§()) + 360) % 360;
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
            this.§3!>§(_loc4_);
         }
         var _loc3_:Number = this.§;!7§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§3!>§(_loc3_);
      }
      
      public function §#!X§(param1:Number) : void
      {
         var _loc2_:Number = §<f§(this.§[!H§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §9g§(_loc2_);
         this.§[!H§().§49§(_loc2_);
      }
      
      public function §=>§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§[!H§().GetPosition().Copy();
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
         this.§[!H§().§"M§(_loc13_);
      }
   }
}
