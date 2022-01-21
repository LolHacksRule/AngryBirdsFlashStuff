package §5!G§
{
   import §!!e§.§,!§;
   import §!!e§.§5!%§;
   import §!!e§.§<!S§;
   import §!!e§.§]!S§;
   import §!!e§.§`!S§;
   import §!R§.b2Vec2;
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §-!#§.§5!6§;
   import §1B§.b2Body;
   import §1B§.b2BodyDef;
   import §1B§.b2FilterData;
   import §1B§.b2Fixture;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §9i§.b2Settings;
   import §@!b§.§66§;
   import §@!b§.§@!k§;
   import §]q§.b2PolygonShape;
   import §`!W§.§2v§;
   import flash.geom.Point;
   
   public class §6!Y§
   {
      
      public static const §<?§:uint = 1 << 1;
      
      public static const §=!H§:uint = 1 << 2;
      
      public static const §^8§:uint = 1 << 3;
      
      public static const §03§:uint = 1 << 4;
      
      public static const §@^§:Boolean = true;
      
      public static const §!!N§:Number = 5;
      
      public static const §1v§:Number = 10;
       
      
      private var §`>§:String;
      
      private var §9v§:int;
      
      private var §1H§:int;
      
      public var §@!i§:String;
      
      public var §]b§:int;
      
      private var §`!4§:§`!S§;
      
      private var §+g§:§8+§;
      
      private var mWorld:b2World;
      
      protected var §1&§:String = "";
      
      protected var §31§:int = 1;
      
      private var §2L§:b2Fixture;
      
      private var §'_§:b2Body;
      
      private var §+!S§:b2Vec2;
      
      public var §%!C§:Number;
      
      public var §#!2§:Number;
      
      private var §,J§:Number;
      
      private var §9!>§:Boolean = false;
      
      private var §!^§:Number;
      
      private var §0!M§:Number;
      
      private var §3S§:Number;
      
      private var §49§:Number;
      
      private var §,E§:Number;
      
      private var §?E§:Number;
      
      public var §6z§:Number = 1;
      
      private var §9!H§:Boolean = false;
      
      public var §1!l§:Number = 0;
      
      public var §%!E§:Number = 0;
      
      protected var §2R§:Boolean = false;
      
      public var §8!J§:§]^§;
      
      private var §[8§:Sprite;
      
      private var §;b§:Number = 0;
      
      private var §[!5§:Number = 0;
      
      private var §^!$§:Number = 0;
      
      private var §&!U§:Number = 1.0;
      
      private var §extends§:Boolean = false;
      
      protected var §@'§:§"§;
      
      private var §6!H§:Boolean = true;
      
      public function §6!Y§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§@!i§ = param6;
         this.§`!4§ = §<!S§.§<!l§(param6);
         this.§+g§ = param1;
         this.§[8§ = param2;
         this.§&!U§ = param10;
         this.§extends§ = param11;
         this.§9v§ = param5;
         this.§]b§ = this.§`!4§.§]b§;
         this.§1H§ = this.§`!4§.§@$§();
         this.§@'§ = new §"§(§!!N§,§1v§);
         this.§8!J§ = new §]^§(this,param2,param4);
         if(!this.§8!J§.§>q§(param1.mLevelMain.animationManager))
         {
            this.§8!J§.§,W§(this.§1H§,this.§`!4§.§;X§(),this.§`!4§.§<!0§() / §@!k§.§2!J§,this.§`!4§.§=w§() / §@!k§.§2!J§);
         }
         this.§8!J§.§9<§(this.§1H§ == §5!%§.§6!X§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§'_§ = this.mWorld.§5U§(_loc12_);
         this.§'_§.§ !@§(this);
         if(this.§1H§ == §5!%§.§!z§)
         {
            _loc14_ = b2PolygonShape.§6Y§(this.§`!4§.shape.§0F§ * param10,this.§`!4§.shape.§;;§ * param10);
            this.§2L§ = this.§'_§.CreateFixture2(_loc14_,this.§`!4§.§7P§());
         }
         else if(this.§1H§ == §5!%§.§6!X§ || this.§1H§ == §5!%§.§;!8§)
         {
            this.§2L§ = this.§'_§.CreateFixture2(this.§`!4§.shape.§9b§(param10),this.§`!4§.§7P§());
         }
         this.§2L§.§@!$§(this.§`!4§.§4e§());
         this.§2L§.§+v§(this.§`!4§.§]! §());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§+!N§())
         {
            _loc13_.§`v§ = §<?§;
            _loc13_.§^!c§ = 65535 & ~§=!H§;
         }
         else if(this.§@!i§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§@!i§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§`v§ = §=!H§;
            _loc13_.§^!c§ = 65535 & ~§<?§;
         }
         this.§2L§.§]!R§(_loc13_);
         this.§,J§ = this.§`!4§.§`!6§();
         if(this.§`!4§.§#!2§ > 0)
         {
            this.§%!C§ = this.§#!2§ = this.§`!4§.§#!2§;
         }
         else
         {
            this.§%!C§ = this.§#!2§ = Math.round(this.§+?§(true) * this.§`!4§.§&b§());
            if(this.§%!C§ < 1)
            {
               this.§%!C§ = this.§#!2§ = 1;
            }
         }
         if(this.§`!4§.§]b§ == §`!S§.§ 1§)
         {
            this.§[8§.visible = false;
         }
         else
         {
            this.§8!J§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§1-§(param9);
         }
         this.§%!f§();
         this.§]!!§(0,1);
         this.§8!J§.§;l§(this.§`!4§.shape);
      }
      
      public static function § !n§(param1:int, param2:§]!S§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§<@§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§>^§;
            }
            §5!6§.§4![§(_loc4_,param3);
         }
      }
      
      public static function §^!F§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §4!j§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§[8§;
      }
      
      public function get x() : Number
      {
         return this.§;b§;
      }
      
      public function get y() : Number
      {
         return this.§[!5§;
      }
      
      public function get scale() : Number
      {
         return this.§&!U§;
      }
      
      public function get front() : Boolean
      {
         return this.§extends§;
      }
      
      public function get § k§() : Number
      {
         return this.§'_§.GetPosition().x;
      }
      
      public function get §4!7§() : Number
      {
         return this.§'_§.GetPosition().y;
      }
      
      public function get §-e§() : §`!S§
      {
         return this.§`!4§;
      }
      
      public function get §?Y§() : Boolean
      {
         return this.§,J§ >= 0;
      }
      
      public function get container() : §8+§
      {
         return this.§+g§;
      }
      
      public function get §3!E§() : Boolean
      {
         return this.§6!H§;
      }
      
      public function set §3!E§(param1:Boolean) : void
      {
         this.§6!H§ = param1;
      }
      
      public function set §`!9§(param1:Boolean) : void
      {
         this.§9!>§ = param1;
      }
      
      public function set §2!3§(param1:uint) : void
      {
         this.§@'§.§2!3§ = param1;
      }
      
      public function get §2!3§() : uint
      {
         return this.§@'§.§2!3§;
      }
      
      public function get §8!S§() : Boolean
      {
         return this.§9!H§;
      }
      
      public function set §8!S§(param1:Boolean) : void
      {
         this.§9!H§ = param1;
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
         return this.§`>§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§`>§ = param1;
      }
      
      public function §1r§(param1:b2FilterData) : void
      {
         if(this.§2L§)
         {
            this.§2L§.§]!R§(param1);
         }
      }
      
      protected function § !N§(param1:String) : int
      {
         return §^!3§.§ !N§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§`!4§.§^!,§();
         _loc3_.§+!Z§ = true;
         _loc3_.§%Q§ = true;
         _loc3_.§[!N§ = true;
         _loc3_.§!!5§ = 1;
         _loc3_.§<!2§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§#z§(this.§>j§());
            this.mWorld = null;
         }
         this.§8!J§.dispose();
         if(this.§[8§)
         {
            this.§[8§.dispose();
            this.§[8§ = null;
         }
         this.§2L§ = null;
         this.§+!S§ = null;
         this.§`!4§ = null;
      }
      
      public function §1-§(param1:Number) : void
      {
         this.§>j§().§ ! §((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §^c§() : Number
      {
         return (360 - this.§>j§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §>P§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§>j§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§^!W§();
         }
         if(param3)
         {
            this.§,!c§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§2L§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§>j§().GetPosition().x >= param3 && this.§>j§().GetPosition().x <= param4 && this.§>j§().GetPosition().y >= param1 && this.§>j§().GetPosition().y <= param2;
      }
      
      public function §^!2§(param1:b2Vec2) : void
      {
         this.§+!S§ = param1;
      }
      
      public function §#!,§() : void
      {
         if(this.§+!S§)
         {
            this.§>P§(this.§+!S§,false);
            this.§+!S§ = null;
         }
      }
      
      public function §^!W§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§>j§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§>j§().§<!9§(0);
         }
         else
         {
            this.§>j§().§<!9§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §,!c§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§>j§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§1-§(_loc2_);
      }
      
      public function §7!S§(param1:Number) : void
      {
         this.§>j§().§<!9§(param1);
      }
      
      public function §>j§() : b2Body
      {
         if(this.§2L§ != null)
         {
            return this.§2L§.GetBody();
         }
         return null;
      }
      
      public function §;=§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§;b§ = param1;
            this.§[!5§ = param2;
         }
         this.§>j§().GetPosition().x = this.§;b§ * §@!k§.§2!J§;
         this.§>j§().GetPosition().y = this.§[!5§ * §@!k§.§2!J§;
      }
      
      public function §]!!§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§2R§)
         {
            _loc3_ = true;
            this.§2R§ = false;
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
            this.§8!J§.§[+§();
         }
         if(this.§6z§ > 1 && this.§8!J§.§<k§)
         {
            _loc4_ = 4 + (this.§8!J§.§<k§.blurX - 4 + param2 / 20) % 28;
            this.§8!J§.§<k§.blurX = _loc4_;
            this.§8!J§.§<k§.blurY = _loc4_;
         }
         this.§8!J§.§ !4§(param2);
         if(§@^§)
         {
            this.§`!E§(param1);
         }
         else
         {
            this.§^!$§ = this.§3S§;
            this.§;b§ = this.§!^§;
            this.§[!5§ = this.§0!M§;
         }
         this.§[8§.x = Math.round(this.§;b§);
         this.§[8§.y = Math.round(this.§[!5§);
         this.§[8§.rotation = this.§^!$§ / 180 * Math.PI;
      }
      
      public function §%!f§() : void
      {
         var _loc1_:Number = this.§>j§().GetPosition().x;
         var _loc2_:Number = this.§>j§().GetPosition().y;
         this.§?E§ = this.§3S§;
         this.§49§ = this.§!^§;
         this.§,E§ = this.§0!M§;
         this.§3S§ = this.§>j§().GetAngle() * (180 / Math.PI) % 360;
         this.§!^§ = _loc1_ / §@!k§.§2!J§;
         this.§0!M§ = _loc2_ / §@!k§.§2!J§;
         this.§@'§.§2!P§();
         this.§@'§.§1m§(this.§>j§());
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
      
      public function §`!E§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §2v§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§+g§.mLevelMain.mLevelEngine.§-b§ * 1000;
         }
         param1 *= -1;
         if(this.§!^§ == this.§49§ || param1 == 0)
         {
            this.§1!l§ = 0;
            this.§;b§ = this.§!^§;
         }
         else
         {
            this.§1!l§ = param1 * (this.§49§ - this.§!^§) / param2;
            this.§;b§ = this.§!^§ + this.§1!l§;
         }
         if(this.§0!M§ == this.§,E§ || param1 == 0)
         {
            this.§%!E§ = 0;
            this.§[!5§ = this.§0!M§;
         }
         else
         {
            this.§%!E§ = param1 * (this.§,E§ - this.§0!M§) / param2;
            this.§[!5§ = this.§0!M§ + this.§%!E§;
         }
         if(this.§3S§ == this.§?E§ || param1 == 0)
         {
            this.§^!$§ = this.§3S§;
         }
         else if(this.§?E§ > this.§3S§ && this.§?E§ - this.§3S§ <= 180)
         {
            this.§^!$§ = this.§3S§ + param1 * (this.§?E§ - this.§3S§) / param2;
         }
         else if(this.§?E§ > this.§3S§ && this.§?E§ - this.§3S§ > 180)
         {
            this.§^!$§ = this.§3S§ + param1 * (this.§?E§ - 360 - this.§3S§) / param2;
         }
         else if(this.§?E§ < this.§3S§ && this.§3S§ - this.§?E§ <= 180)
         {
            this.§^!$§ = this.§3S§ + param1 * (this.§?E§ - this.§3S§) / param2;
         }
         else if(this.§?E§ < this.§3S§ && this.§3S§ - this.§?E§ > 180)
         {
            this.§^!$§ = this.§3S§ + param1 * (this.§?E§ + 360 - this.§3S§) / param2;
         }
      }
      
      public function get §9+§() : Point
      {
         if(!§@^§)
         {
         }
         return null;
      }
      
      public function §+!N§() : Boolean
      {
         return this.§]b§ == §`!S§.§#!@§ || this.§]b§ == §`!S§.§6L§;
      }
      
      public function §0!-§() : Boolean
      {
         return this.§]b§ == §`!S§.§@Q§;
      }
      
      public function §"!`§() : Boolean
      {
         return this.§]b§ == §`!S§.§>!G§;
      }
      
      public function §3!]§() : Boolean
      {
         return this.§]b§ == §`!S§.§6L§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§]b§ == §`!S§.§=!f§;
      }
      
      public function isGround() : Boolean
      {
         return this.§]b§ == §`!S§.§ 1§;
      }
      
      public function §`!g§() : Boolean
      {
         return this.§]b§ == §`!S§.§3o§;
      }
      
      public function §06§() : Boolean
      {
         return this.§]b§ == §`!S§.§?I§;
      }
      
      public function §2!%§() : Boolean
      {
         if(this.§@!i§ == "MISC_EXPLOSIVE_TNT" || this.§@!i§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §`!e§() : Boolean
      {
         return (this.§0!-§() || this.§`!g§() || this.§06§()) && !this.§8!S§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §=!W§() : Number
      {
         return Number(Math.sqrt(this.§>j§().GetLinearVelocity().x * this.§>j§().GetLinearVelocity().x + this.§>j§().GetLinearVelocity().y * this.§>j§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§"!`§())
         {
            return this.§%!C§;
         }
         if(!this.§+g§.§9K§())
         {
            return this.§%!C§;
         }
         if(this.§,J§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§"z§(§]!S§.§7!V§);
            }
            else if(param1 > 12)
            {
               this.§"z§(§]!S§.§[!,§);
            }
            else if(param1 > 3)
            {
               this.§"z§(§]!S§.§1D§);
            }
            return this.§%!C§;
         }
         if(param1 <= this.§,J§)
         {
            if(param1 >= this.§,J§ / 2)
            {
               this.§"z§(§]!S§.§1D§);
            }
            if(this.§+!N§() && this.§%!C§ == this.§#!2§)
            {
               this.§%!C§ = this.§#!2§ - 1;
            }
            return this.§%!C§;
         }
         param1 -= this.§,J§;
         if(param2 && this.§`!e§())
         {
            _loc7_ = Math.min(this.§%!C§,int(param1));
            _loc8_ = §@!k§.§]!^§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §@!k§.§`&§;
            }
            this.§+g§.mLevelMain.addScore(_loc8_,§66§.§<!_§,this.§%!C§ > param1 && param3,this.§>j§().GetPosition().x,this.§>j§().GetPosition().y,§^!3§.§6O§(this.§@!i§));
         }
         if(!(param5 && this.§9!>§))
         {
            this.§%!C§ -= param1;
         }
         if(this.§%!C§ < 1 && this.§+!N§())
         {
            this.§%!C§ = 1;
         }
         if(this.§%!C§ < 1)
         {
            this.§%!C§ = 0;
            §6!Y§.§ !n§(§]!S§.§7!V§,this.§`!4§.§1!h§,"ChannelDestroyed");
         }
         else
         {
            this.§"z§(§]!S§.§[!,§);
            this.addDamageParticles(this.§+g§.mLevelMain.particles,param1);
         }
         this.§8!J§.setDamagedFrame();
         return this.§%!C§;
      }
      
      public function §"z§(param1:int) : void
      {
         §6!Y§.§ !n§(param1,this.§`!4§.§1!h§);
      }
      
      public function §'h§(param1:String) : Number
      {
         return this.§`!4§.material.§9!@§(param1) * this.§6z§;
      }
      
      public function §;§(param1:String) : Number
      {
         return this.§`!4§.material.§>I§(param1);
      }
      
      public function §4!V§() : String
      {
         return this.§`!4§.material.mName;
      }
      
      public function §&!Z§() : Number
      {
         return this.§`!4§.§&b§();
      }
      
      public function §2!+§() : int
      {
         return this.§`!4§.§"!i§();
      }
      
      public function §+A§() : Boolean
      {
         return this.§>j§().IsAwake() && (this.§+!N§() && this.§%!C§ == this.§#!2§ || Math.abs(this.§>j§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§>j§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§>j§().§`!l§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §`=§() : Boolean
      {
         if(!this.§>j§().IsAwake())
         {
            return true;
         }
         return !this.§-y§();
      }
      
      protected function §-y§() : Boolean
      {
         return this.§@'§.§-y§();
      }
      
      public function §@!>§(param1:Number = 3) : void
      {
         this.§6z§ = param1;
         if(this.§6z§ > 1)
         {
            this.§8!J§.§<!F§();
         }
         else
         {
            this.§8!J§.§<k§ = null;
         }
      }
      
      public function §+?§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§`!4§.§^!,§() == §,!§.§@!0§)
         {
            _loc2_ = this.§8!J§.mW * this.§8!J§.mH * (§@!k§.§2!J§ * §@!k§.§2!J§);
         }
         else
         {
            _loc2_ = this.§>j§().GetMass() / this.§2L§.§^z§();
            if(param1)
            {
               _loc2_ *= this.§@F§();
            }
            _loc2_ /= this.§&!U§ * this.§&!U§;
         }
         return _loc2_;
      }
      
      public function §@F§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§8!J§.§3!B§ - 1) / 10);
      }
      
      public function §%!U§(param1:Number) : void
      {
         var _loc2_:Number = this.§>j§().GetLinearVelocity().x;
         var _loc3_:Number = this.§>j§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§>j§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§8+§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§3b§) : void
      {
      }
      
      public function addDamageParticles(param1:§3b§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §&@§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§>j§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§>j§().§<!1§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§^c§()) + 360) % 360;
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
            this.§1-§(_loc4_);
         }
         var _loc3_:Number = this.§^c§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§1-§(_loc3_);
      }
      
      public function §5T§(param1:Number) : void
      {
         var _loc2_:Number = §^!F§(this.§>j§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §4!j§(_loc2_);
         this.§>j§().§ ! §(_loc2_);
      }
      
      public function §6F§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§>j§().GetPosition().Copy();
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
         this.§>j§().§<!1§(_loc13_);
      }
   }
}
