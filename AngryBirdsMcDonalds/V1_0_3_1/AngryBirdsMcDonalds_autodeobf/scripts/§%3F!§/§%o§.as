package §?!§
{
   import §%!n§.§"+§;
   import §%!n§.§%X§;
   import §%!n§.§,Y§;
   import §%!n§.§7!+§;
   import §%!n§.§;%§;
   import §&c§.Sprite;
   import §&x§.b2Body;
   import §&x§.b2BodyDef;
   import §&x§.b2FilterData;
   import §&x§.b2Fixture;
   import §&x§.b2World;
   import §0,§.b2Vec2;
   import §3!@§.§ s§;
   import §3!@§.§<!X§;
   import §3o§.b2Settings;
   import §5K§.§[C§;
   import §8!b§.b2PolygonShape;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   import §?!g§.§ !d§;
   import flash.geom.Point;
   
   public class §%o§
   {
      
      public static const §8!A§:uint = 1 << 1;
      
      public static const §6!W§:uint = 1 << 2;
      
      public static const §,!^§:uint = 1 << 3;
      
      public static const §0!7§:uint = 1 << 4;
      
      public static const §[!F§:Boolean = true;
      
      public static const §4!8§:Number = 5;
      
      public static const §-!X§:Number = 10;
       
      
      private var §+G§:String;
      
      private var §?!E§:int;
      
      private var §<H§:int;
      
      public var §3!G§:String;
      
      public var §&F§:int;
      
      private var §4!p§:§7!+§;
      
      private var §%!-§:§>!4§;
      
      private var mWorld:b2World;
      
      protected var §=!f§:String = "";
      
      protected var §&C§:int = 1;
      
      private var §9R§:b2Fixture;
      
      private var §=!6§:b2Body;
      
      private var §"W§:b2Vec2;
      
      public var §-&§:Number;
      
      public var §5!]§:Number;
      
      private var §0!p§:Number;
      
      private var §!x§:Boolean = false;
      
      private var §?!R§:Number;
      
      private var §-!d§:Number;
      
      private var §-!N§:Number;
      
      private var § !&§:Number;
      
      private var §3!`§:Number;
      
      private var §%]§:Number;
      
      public var § !E§:Number = 1;
      
      private var §25§:Boolean = false;
      
      public var § set§:Number = 0;
      
      public var §>!?§:Number = 0;
      
      protected var §,!Z§:Boolean = false;
      
      public var §-s§:§0!@§;
      
      private var §7U§:Sprite;
      
      private var § !^§:Number = 0;
      
      private var §0p§:Number = 0;
      
      private var §3!+§:Number = 0;
      
      private var §[2§:Number = 1.0;
      
      private var §`![§:Boolean = false;
      
      protected var §continue§:§0!D§;
      
      private var §8!d§:Boolean = true;
      
      public function §%o§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§3!G§ = param6;
         this.§4!p§ = §"+§.§9Q§(param6);
         this.§%!-§ = param1;
         this.§7U§ = param2;
         this.§[2§ = param10;
         this.§`![§ = param11;
         this.§?!E§ = param5;
         this.§&F§ = this.§4!p§.§&F§;
         this.§<H§ = this.§4!p§.§,!K§();
         this.§continue§ = new §0!D§(§4!8§,§-!X§);
         this.§-s§ = new §0!@§(this,param2,param4);
         if(!this.§-s§.§43§(param1.mLevelMain.animationManager))
         {
            this.§-s§.§-[§(this.§<H§,this.§4!p§.§!@§(),this.§4!p§.§!!8§() / § s§.§<!h§,this.§4!p§.§<f§() / § s§.§<!h§);
         }
         this.§-s§.§]! §(this.§<H§ == §%X§.§<!F§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§=!6§ = this.mWorld.§ V§(_loc12_);
         this.§=!6§.§%!W§(this);
         if(this.§<H§ == §%X§.§[z§)
         {
            _loc14_ = b2PolygonShape.§+!%§(this.§4!p§.shape.§+![§ * param10,this.§4!p§.shape.§]d§ * param10);
            this.§9R§ = this.§=!6§.CreateFixture2(_loc14_,this.§4!p§.§3!A§());
         }
         else if(this.§<H§ == §%X§.§<!F§ || this.§<H§ == §%X§.§@Q§)
         {
            this.§9R§ = this.§=!6§.CreateFixture2(this.§4!p§.shape.§`!§(param10),this.§4!p§.§3!A§());
         }
         this.§9R§.§;!p§(this.§4!p§.§[v§());
         this.§9R§.§ !'§(this.§4!p§.§5O§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§9!a§())
         {
            _loc13_.§?F§ = §8!A§;
            _loc13_.§8!m§ = 65535 & ~§6!W§;
         }
         else if(this.§3!G§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§3!G§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§?F§ = §6!W§;
            _loc13_.§8!m§ = 65535 & ~§8!A§;
         }
         this.§9R§.§+!N§(_loc13_);
         this.§0!p§ = this.§4!p§.§[!+§();
         if(this.§4!p§.§5!]§ > 0)
         {
            this.§-&§ = this.§5!]§ = this.§4!p§.§5!]§;
         }
         else
         {
            this.§-&§ = this.§5!]§ = Math.round(this.§9u§(true) * this.§4!p§.§ O§());
            if(this.§-&§ < 1)
            {
               this.§-&§ = this.§5!]§ = 1;
            }
         }
         if(this.§4!p§.§&F§ == §7!+§.§,"§)
         {
            this.§7U§.visible = false;
         }
         else
         {
            this.§-s§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§,!E§(param9);
         }
         this.§@7§();
         this.§=R§(0,1);
         this.§-s§.§3@§(this.§4!p§.shape);
      }
      
      public static function §7!e§(param1:int, param2:§,Y§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§@4§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§;!<§;
            }
            § !d§.§8!W§(_loc4_,param3);
         }
      }
      
      public static function §9T§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §2!g§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§7U§;
      }
      
      public function get x() : Number
      {
         return this.§ !^§;
      }
      
      public function get y() : Number
      {
         return this.§0p§;
      }
      
      public function get scale() : Number
      {
         return this.§[2§;
      }
      
      public function get front() : Boolean
      {
         return this.§`![§;
      }
      
      public function get §'!^§() : Number
      {
         return this.§=!6§.GetPosition().x;
      }
      
      public function get §!y§() : Number
      {
         return this.§=!6§.GetPosition().y;
      }
      
      public function get § use§() : §7!+§
      {
         return this.§4!p§;
      }
      
      public function get §6!'§() : Boolean
      {
         return this.§0!p§ >= 0;
      }
      
      public function get container() : §>!4§
      {
         return this.§%!-§;
      }
      
      public function get §9!%§() : Boolean
      {
         return this.§8!d§;
      }
      
      public function set §9!%§(param1:Boolean) : void
      {
         this.§8!d§ = param1;
      }
      
      public function set §4w§(param1:Boolean) : void
      {
         this.§!x§ = param1;
      }
      
      public function set §@!8§(param1:uint) : void
      {
         this.§continue§.§@!8§ = param1;
      }
      
      public function get §@!8§() : uint
      {
         return this.§continue§.§@!8§;
      }
      
      public function get §^a§() : Boolean
      {
         return this.§25§;
      }
      
      public function set §^a§(param1:Boolean) : void
      {
         this.§25§ = param1;
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
         return this.§+G§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§+G§ = param1;
      }
      
      public function §+N§(param1:b2FilterData) : void
      {
         if(this.§9R§)
         {
            this.§9R§.§+!N§(param1);
         }
      }
      
      protected function §"!o§(param1:String) : int
      {
         return §65§.§"!o§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§4!p§.§2[§();
         _loc3_.§?j§ = true;
         _loc3_.§+!n§ = true;
         _loc3_.§17§ = true;
         _loc3_.§10§ = 1;
         _loc3_.§77§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§6!m§(this.§2!!§());
            this.mWorld = null;
         }
         this.§-s§.dispose();
         if(this.§7U§)
         {
            this.§7U§.dispose();
            this.§7U§ = null;
         }
         this.§9R§ = null;
         this.§"W§ = null;
         this.§4!p§ = null;
      }
      
      public function §,!E§(param1:Number) : void
      {
         this.§2!!§().§"B§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §4!F§() : Number
      {
         return (360 - this.§2!!§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §!!D§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§2!!§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§?!b§();
         }
         if(param3)
         {
            this.§^!O§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§9R§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§2!!§().GetPosition().x >= param3 && this.§2!!§().GetPosition().x <= param4 && this.§2!!§().GetPosition().y >= param1 && this.§2!!§().GetPosition().y <= param2;
      }
      
      public function §7d§(param1:b2Vec2) : void
      {
         this.§"W§ = param1;
      }
      
      public function §>X§() : void
      {
         if(this.§"W§)
         {
            this.§!!D§(this.§"W§,false);
            this.§"W§ = null;
         }
      }
      
      public function §?!b§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§2!!§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§2!!§().§>!$§(0);
         }
         else
         {
            this.§2!!§().§>!$§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §^!O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§2!!§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§,!E§(_loc2_);
      }
      
      public function §<a§(param1:Number) : void
      {
         this.§2!!§().§>!$§(param1);
      }
      
      public function §2!!§() : b2Body
      {
         if(this.§9R§ != null)
         {
            return this.§9R§.GetBody();
         }
         return null;
      }
      
      public function §7C§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§ !^§ = param1;
            this.§0p§ = param2;
         }
         this.§2!!§().GetPosition().x = this.§ !^§ * § s§.§<!h§;
         this.§2!!§().GetPosition().y = this.§0p§ * § s§.§<!h§;
      }
      
      public function §=R§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§,!Z§)
         {
            _loc3_ = true;
            this.§,!Z§ = false;
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
            this.§-s§.§0U§();
         }
         if(this.§ !E§ > 1 && this.§-s§.§@]§)
         {
            _loc4_ = 4 + (this.§-s§.§@]§.blurX - 4 + param2 / 20) % 28;
            this.§-s§.§@]§.blurX = _loc4_;
            this.§-s§.§@]§.blurY = _loc4_;
         }
         this.§-s§.§[!H§(param2);
         if(§[!F§)
         {
            this.dynamic(param1);
         }
         else
         {
            this.§3!+§ = this.§-!N§;
            this.§ !^§ = this.§?!R§;
            this.§0p§ = this.§-!d§;
         }
         this.§7U§.x = Math.round(this.§ !^§);
         this.§7U§.y = Math.round(this.§0p§);
         this.§7U§.rotation = this.§3!+§ / 180 * Math.PI;
      }
      
      public function §@7§() : void
      {
         var _loc1_:Number = this.§2!!§().GetPosition().x;
         var _loc2_:Number = this.§2!!§().GetPosition().y;
         this.§%]§ = this.§-!N§;
         this.§ !&§ = this.§?!R§;
         this.§3!`§ = this.§-!d§;
         this.§-!N§ = this.§2!!§().GetAngle() * (180 / Math.PI) % 360;
         this.§?!R§ = _loc1_ / § s§.§<!h§;
         this.§-!d§ = _loc2_ / § s§.§<!h§;
         this.§continue§.§-!f§();
         this.§continue§.§2F§(this.§2!!§());
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
      
      public function dynamic(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §[C§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§%!-§.mLevelMain.mLevelEngine.§[,§ * 1000;
         }
         param1 *= -1;
         if(this.§?!R§ == this.§ !&§ || param1 == 0)
         {
            this.§ set§ = 0;
            this.§ !^§ = this.§?!R§;
         }
         else
         {
            this.§ set§ = param1 * (this.§ !&§ - this.§?!R§) / param2;
            this.§ !^§ = this.§?!R§ + this.§ set§;
         }
         if(this.§-!d§ == this.§3!`§ || param1 == 0)
         {
            this.§>!?§ = 0;
            this.§0p§ = this.§-!d§;
         }
         else
         {
            this.§>!?§ = param1 * (this.§3!`§ - this.§-!d§) / param2;
            this.§0p§ = this.§-!d§ + this.§>!?§;
         }
         if(this.§-!N§ == this.§%]§ || param1 == 0)
         {
            this.§3!+§ = this.§-!N§;
         }
         else if(this.§%]§ > this.§-!N§ && this.§%]§ - this.§-!N§ <= 180)
         {
            this.§3!+§ = this.§-!N§ + param1 * (this.§%]§ - this.§-!N§) / param2;
         }
         else if(this.§%]§ > this.§-!N§ && this.§%]§ - this.§-!N§ > 180)
         {
            this.§3!+§ = this.§-!N§ + param1 * (this.§%]§ - 360 - this.§-!N§) / param2;
         }
         else if(this.§%]§ < this.§-!N§ && this.§-!N§ - this.§%]§ <= 180)
         {
            this.§3!+§ = this.§-!N§ + param1 * (this.§%]§ - this.§-!N§) / param2;
         }
         else if(this.§%]§ < this.§-!N§ && this.§-!N§ - this.§%]§ > 180)
         {
            this.§3!+§ = this.§-!N§ + param1 * (this.§%]§ + 360 - this.§-!N§) / param2;
         }
      }
      
      public function get §^!B§() : Point
      {
         if(!§[!F§)
         {
         }
         return null;
      }
      
      public function §9!a§() : Boolean
      {
         return this.§&F§ == §7!+§.§^n§ || this.§&F§ == §7!+§.§>!0§;
      }
      
      public function §4!I§() : Boolean
      {
         return this.§&F§ == §7!+§.§6!n§;
      }
      
      public function §9!]§() : Boolean
      {
         return this.§&F§ == §7!+§.§96§;
      }
      
      public function §9]§() : Boolean
      {
         return this.§&F§ == §7!+§.§>!0§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§&F§ == §7!+§.§'Q§;
      }
      
      public function isGround() : Boolean
      {
         return this.§&F§ == §7!+§.§,"§;
      }
      
      public function §^!E§() : Boolean
      {
         return this.§&F§ == §7!+§.§&!f§;
      }
      
      public function §@!A§() : Boolean
      {
         return this.§&F§ == §7!+§.§2g§;
      }
      
      public function §`!,§() : Boolean
      {
         if(this.§3!G§ == "MISC_EXPLOSIVE_TNT" || this.§3!G§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §@e§() : Boolean
      {
         return (this.§4!I§() || this.§^!E§() || this.§@!A§()) && !this.§^a§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §8!S§() : Number
      {
         return Number(Math.sqrt(this.§2!!§().GetLinearVelocity().x * this.§2!!§().GetLinearVelocity().x + this.§2!!§().GetLinearVelocity().y * this.§2!!§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§9!]§())
         {
            return this.§-&§;
         }
         if(!this.§%!-§.§ !1§())
         {
            return this.§-&§;
         }
         if(this.§0!p§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@3§(§,Y§.§+!I§);
            }
            else if(param1 > 12)
            {
               this.§@3§(§,Y§.§"!A§);
            }
            else if(param1 > 3)
            {
               this.§@3§(§,Y§.§4!D§);
            }
            return this.§-&§;
         }
         if(param1 <= this.§0!p§)
         {
            if(param1 >= this.§0!p§ / 2)
            {
               this.§@3§(§,Y§.§4!D§);
            }
            if(this.§9!a§() && this.§-&§ == this.§5!]§)
            {
               this.§-&§ = this.§5!]§ - 1;
            }
            return this.§-&§;
         }
         param1 -= this.§0!p§;
         if(param2 && this.§@e§())
         {
            _loc7_ = Math.min(this.§-&§,int(param1));
            _loc8_ = § s§.§9!b§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= § s§.§0;§;
            }
            this.§%!-§.mLevelMain.addScore(_loc8_,§<!X§.§=!N§,this.§-&§ > param1 && param3,this.§2!!§().GetPosition().x,this.§2!!§().GetPosition().y,§65§.§ m§(this.§3!G§));
         }
         if(!(param5 && this.§!x§))
         {
            this.§-&§ -= param1;
         }
         if(this.§-&§ < 1 && this.§9!a§())
         {
            this.§-&§ = 1;
         }
         if(this.§-&§ < 1)
         {
            this.§-&§ = 0;
            §%o§.§7!e§(§,Y§.§+!I§,this.§4!p§.§0$§,"ChannelDestroyed");
         }
         else
         {
            this.§@3§(§,Y§.§"!A§);
            this.addDamageParticles(this.§%!-§.mLevelMain.particles,param1);
         }
         this.§-s§.setDamagedFrame();
         return this.§-&§;
      }
      
      public function §@3§(param1:int) : void
      {
         §%o§.§7!e§(param1,this.§4!p§.§0$§);
      }
      
      public function §^!]§(param1:String) : Number
      {
         return this.§4!p§.material.§'!f§(param1) * this.§ !E§;
      }
      
      public function §&!2§(param1:String) : Number
      {
         return this.§4!p§.material.§'W§(param1);
      }
      
      public function §]!a§() : String
      {
         return this.§4!p§.material.mName;
      }
      
      public function §^!S§() : Number
      {
         return this.§4!p§.§ O§();
      }
      
      public function §>!c§() : int
      {
         return this.§4!p§.§1!;§();
      }
      
      public function §2!+§() : Boolean
      {
         return this.§2!!§().IsAwake() && (this.§9!a§() && this.§-&§ == this.§5!]§ || Math.abs(this.§2!!§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§2!!§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§2!!§().§#!n§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §-!m§() : Boolean
      {
         if(!this.§2!!§().IsAwake())
         {
            return true;
         }
         return !this.§<R§();
      }
      
      protected function §<R§() : Boolean
      {
         return this.§continue§.§<R§();
      }
      
      public function §4!9§(param1:Number = 3) : void
      {
         this.§ !E§ = param1;
         if(this.§ !E§ > 1)
         {
            this.§-s§.§#!2§();
         }
         else
         {
            this.§-s§.§@]§ = null;
         }
      }
      
      public function §9u§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§4!p§.§2[§() == §;%§.§?!F§)
         {
            _loc2_ = this.§-s§.mW * this.§-s§.mH * (§ s§.§<!h§ * § s§.§<!h§);
         }
         else
         {
            _loc2_ = this.§2!!§().GetMass() / this.§9R§.§>l§();
            if(param1)
            {
               _loc2_ *= this.§]![§();
            }
            _loc2_ /= this.§[2§ * this.§[2§;
         }
         return _loc2_;
      }
      
      public function §]![§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§-s§.§1!3§ - 1) / 10);
      }
      
      public function §!!R§(param1:Number) : void
      {
         var _loc2_:Number = this.§2!!§().GetLinearVelocity().x;
         var _loc3_:Number = this.§2!!§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§2!!§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§>!4§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§4!-§) : void
      {
      }
      
      public function addDamageParticles(param1:§4!-§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §?!3§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§2!!§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§2!!§().§>4§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§4!F§()) + 360) % 360;
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
            this.§,!E§(_loc4_);
         }
         var _loc3_:Number = this.§4!F§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§,!E§(_loc3_);
      }
      
      public function §9!E§(param1:Number) : void
      {
         var _loc2_:Number = §9T§(this.§2!!§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §2!g§(_loc2_);
         this.§2!!§().§"B§(_loc2_);
      }
      
      public function §^!X§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§2!!§().GetPosition().Copy();
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
         this.§2!!§().§>4§(_loc13_);
      }
   }
}
