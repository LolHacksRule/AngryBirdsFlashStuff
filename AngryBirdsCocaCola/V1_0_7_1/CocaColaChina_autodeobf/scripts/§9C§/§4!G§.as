package §9C§
{
   import §#!M§.b2Settings;
   import §#m§.§&r§;
   import §#m§.§34§;
   import §#m§.§3T§;
   import §#m§.§;N§;
   import §#m§.§`5§;
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §4A§.§&_§;
   import §4A§.§-!3§;
   import §4U§.b2Body;
   import §4U§.b2BodyDef;
   import §4U§.b2FilterData;
   import §4U§.b2Fixture;
   import §4U§.b2World;
   import §7m§.§7I§;
   import §<!8§.b2Vec2;
   import §>![§.b2PolygonShape;
   import §?@§.§"]§;
   import flash.geom.Point;
   
   public class §4!G§
   {
      
      public static const §58§:uint = 1 << 1;
      
      public static const §9r§:uint = 1 << 2;
      
      public static const § _§:uint = 1 << 3;
      
      public static const §=$§:uint = 1 << 4;
      
      public static const §1R§:Boolean = true;
       
      
      private var § !T§:String;
      
      private var §8s§:int;
      
      private var §!W§:int;
      
      public var §!I§:String;
      
      public var §#r§:int;
      
      private var §&!C§:§34§;
      
      private var §8!S§:§;,§;
      
      private var mWorld:b2World;
      
      protected var §9!c§:String = "";
      
      protected var §1T§:int = 1;
      
      private var §"5§:b2Fixture;
      
      private var §[!3§:b2Body;
      
      private var §+!G§:b2Vec2;
      
      public var § b§:Number;
      
      public var §&=§:Number;
      
      private var §7b§:Number;
      
      private var §<@§:Boolean = false;
      
      private var §9!2§:Number;
      
      private var §7!8§:Number;
      
      private var §,F§:Number;
      
      private var §"!D§:Number;
      
      private var §+![§:Number;
      
      private var §=T§:Number;
      
      public var §`!H§:Number = 1;
      
      private var §='§:Boolean = false;
      
      public var § L§:Number = 0;
      
      public var § N§:Number = 0;
      
      protected var §38§:Boolean = false;
      
      public var §5U§:§9!@§;
      
      private var §]!+§:Sprite;
      
      private var §03§:Number = 0;
      
      private var §5,§:Number = 0;
      
      private var §1Q§:Number = 0;
      
      private var §^!Y§:Number = 1.0;
      
      private var §'!D§:Boolean = false;
      
      private var §7!-§:Vector.<Vector.<Number>>;
      
      private var §@!#§:int = 10;
      
      private var §`t§:Boolean = true;
      
      public function §4!G§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§7!-§ = new Vector.<Vector.<Number>>();
         super();
         this.§!I§ = param6;
         this.§&!C§ = §3T§.§,!G§(param6);
         this.§8!S§ = param1;
         this.§]!+§ = param2;
         this.§^!Y§ = param10;
         this.§'!D§ = param11;
         this.§8s§ = param5;
         this.§#r§ = this.§&!C§.§#r§;
         this.§!W§ = this.§&!C§.§!!4§();
         this.§7!-§[0] = new Vector.<Number>();
         this.§7!-§[1] = new Vector.<Number>();
         this.§7!-§[2] = new Vector.<Number>();
         this.§5U§ = new §9!@§(this,param2,param4);
         if(!this.§5U§.§?!H§(param1.mLevelMain.§0!+§))
         {
            this.§5U§.§"C§(this.§!W§,this.§&!C§.§=]§(),this.§&!C§.§?L§() / §&_§.§5-§,this.§&!C§.§=_§() / §&_§.§5-§);
         }
         this.§5U§.§%!F§(this.§!W§ == §;N§.§,o§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§[!3§ = this.mWorld.§!1§(_loc12_);
         this.§[!3§.§3!Z§(this);
         if(this.§!W§ == §;N§.§3!R§)
         {
            _loc14_ = b2PolygonShape.§+!R§(this.§&!C§.shape.§8a§ * param10,this.§&!C§.shape.§[K§ * param10);
            this.§"5§ = this.§[!3§.CreateFixture2(_loc14_,this.§&!C§.§2!'§());
         }
         else if(this.§!W§ == §;N§.§,o§ || this.§!W§ == §;N§.§4!,§)
         {
            this.§"5§ = this.§[!3§.CreateFixture2(this.§&!C§.shape.§;!M§(param10),this.§&!C§.§2!'§());
         }
         this.§"5§.§<N§(this.§&!C§.§0§());
         this.§"5§.§;!8§(this.§&!C§.§7G§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§]J§())
         {
            _loc13_.§>B§ = §58§;
            _loc13_.§[!I§ = 65535 & ~§9r§;
         }
         else if(this.§!I§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§!I§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§>B§ = §9r§;
            _loc13_.§[!I§ = 65535 & ~§58§;
         }
         this.§"5§.§4!&§(_loc13_);
         this.§7b§ = this.§&!C§.§%!P§();
         if(this.§&!C§.§&=§ > 0)
         {
            this.§ b§ = this.§&=§ = this.§&!C§.§&=§;
         }
         else
         {
            this.§ b§ = this.§&=§ = Math.round(this.§!i§(true) * this.§&!C§.§^!K§());
            if(this.§ b§ < 1)
            {
               this.§ b§ = this.§&=§ = 1;
            }
         }
         if(this.§&!C§.§#r§ == §34§.§;"§)
         {
            this.§]!+§.visible = false;
         }
         else
         {
            this.§5U§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§-!!§(param9);
         }
         this.§^!%§();
         this.§-!+§(0,1);
         this.§5U§.§-[§(this.§&!C§.shape);
      }
      
      public static function §14§(param1:int, param2:§`5§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§+z§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§"X§;
            }
            §7I§.§-w§(_loc4_,param3);
         }
      }
      
      public static function §'!d§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §0l§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!+§;
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function get scale() : Number
      {
         return this.§^!Y§;
      }
      
      public function get front() : Boolean
      {
         return this.§'!D§;
      }
      
      public function get §+m§() : Number
      {
         return this.§[!3§.GetPosition().x;
      }
      
      public function get §8!P§() : Number
      {
         return this.§[!3§.GetPosition().y;
      }
      
      public function get §4!%§() : §34§
      {
         return this.§&!C§;
      }
      
      public function get §6!E§() : Boolean
      {
         return this.§7b§ >= 0;
      }
      
      protected function get container() : §;,§
      {
         return this.§8!S§;
      }
      
      public function get §-!4§() : Boolean
      {
         return this.§`t§;
      }
      
      public function set §-!4§(param1:Boolean) : void
      {
         this.§`t§ = param1;
      }
      
      public function set §7@§(param1:Boolean) : void
      {
         this.§<@§ = param1;
      }
      
      public function set §-!$§(param1:uint) : void
      {
         this.§@!#§ = param1;
      }
      
      public function get §-!$§() : uint
      {
         return this.§@!#§;
      }
      
      public function get §%!c§() : Boolean
      {
         return this.§='§;
      }
      
      public function set §%!c§(param1:Boolean) : void
      {
         this.§='§ = param1;
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
         return this.§ !T§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§ !T§ = param1;
      }
      
      public function §>!E§(param1:b2FilterData) : void
      {
         if(this.§"5§)
         {
            this.§"5§.§4!&§(param1);
         }
      }
      
      protected function §%!$§(param1:String) : int
      {
         return §,!;§.§%!$§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§&!C§.§>u§();
         _loc3_.§2h§ = true;
         _loc3_.§const§ = true;
         _loc3_.§1M§ = true;
         _loc3_.§ o§ = 1;
         _loc3_.§`!]§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§=! §(this.§@!?§());
            this.mWorld = null;
         }
         this.§5U§.dispose();
         if(this.§]!+§)
         {
            this.§]!+§.dispose();
            this.§]!+§ = null;
         }
         this.§"5§ = null;
         this.§+!G§ = null;
         this.§&!C§ = null;
      }
      
      public function §-!!§(param1:Number) : void
      {
         this.§@!?§().§'!'§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §'v§() : Number
      {
         return (360 - this.§@!?§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §2!G§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§@!?§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§1z§();
         }
         if(param3)
         {
            this.§7!2§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§"5§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§@!?§().GetPosition().x >= param3 && this.§@!?§().GetPosition().x <= param4 && this.§@!?§().GetPosition().y >= param1 && this.§@!?§().GetPosition().y <= param2;
      }
      
      public function §8l§(param1:b2Vec2) : void
      {
         this.§+!G§ = param1;
      }
      
      public function §7V§() : void
      {
         if(this.§+!G§)
         {
            this.§2!G§(this.§+!G§,false);
            this.§+!G§ = null;
         }
      }
      
      public function §1z§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§@!?§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§@!?§().§>!-§(0);
         }
         else
         {
            this.§@!?§().§>!-§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §7!2§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§@!?§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§-!!§(_loc2_);
      }
      
      public function §#d§(param1:Number) : void
      {
         this.§@!?§().§>!-§(param1);
      }
      
      public function §@!?§() : b2Body
      {
         if(this.§"5§ != null)
         {
            return this.§"5§.GetBody();
         }
         return null;
      }
      
      public function §'2§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§03§ = param1;
            this.§5,§ = param2;
         }
         this.§@!?§().GetPosition().x = this.§03§ * §&_§.§5-§;
         this.§@!?§().GetPosition().y = this.§5,§ * §&_§.§5-§;
      }
      
      public function §-!+§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§38§)
         {
            _loc3_ = true;
            this.§38§ = false;
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
            this.§5U§.§1?§();
         }
         if(this.§`!H§ > 1 && this.§5U§.§1!§)
         {
            _loc4_ = 4 + (this.§5U§.§1!§.blurX - 4 + param2 / 20) % 28;
            this.§5U§.§1!§.blurX = _loc4_;
            this.§5U§.§1!§.blurY = _loc4_;
         }
         this.§5U§.§?`§(param2);
         if(§1R§)
         {
            this.§1!d§(param1);
         }
         else
         {
            this.§1Q§ = this.§,F§;
            this.§03§ = this.§9!2§;
            this.§5,§ = this.§7!8§;
         }
         this.§]!+§.x = Math.round(this.§03§);
         this.§]!+§.y = Math.round(this.§5,§);
         this.§]!+§.rotation = this.§1Q§ / 180 * Math.PI;
      }
      
      public function §^!%§() : void
      {
         var _loc1_:Number = this.§@!?§().GetPosition().x;
         var _loc2_:Number = this.§@!?§().GetPosition().y;
         this.§=T§ = this.§,F§;
         this.§"!D§ = this.§9!2§;
         this.§+![§ = this.§7!8§;
         this.§,F§ = this.§@!?§().GetAngle() * (180 / Math.PI) % 360;
         this.§9!2§ = _loc1_ / §&_§.§5-§;
         this.§7!8§ = _loc2_ / §&_§.§5-§;
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
      
      public function §1!d§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §"]§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§8!S§.mLevelMain.mLevelEngine.§'!;§ * 1000;
         }
         param1 *= -1;
         if(this.§9!2§ == this.§"!D§ || param1 == 0)
         {
            this.§ L§ = 0;
            this.§03§ = this.§9!2§;
         }
         else
         {
            this.§ L§ = param1 * (this.§"!D§ - this.§9!2§) / param2;
            this.§03§ = this.§9!2§ + this.§ L§;
         }
         if(this.§7!8§ == this.§+![§ || param1 == 0)
         {
            this.§ N§ = 0;
            this.§5,§ = this.§7!8§;
         }
         else
         {
            this.§ N§ = param1 * (this.§+![§ - this.§7!8§) / param2;
            this.§5,§ = this.§7!8§ + this.§ N§;
         }
         if(this.§,F§ == this.§=T§ || param1 == 0)
         {
            this.§1Q§ = this.§,F§;
         }
         else if(this.§=T§ > this.§,F§ && this.§=T§ - this.§,F§ <= 180)
         {
            this.§1Q§ = this.§,F§ + param1 * (this.§=T§ - this.§,F§) / param2;
         }
         else if(this.§=T§ > this.§,F§ && this.§=T§ - this.§,F§ > 180)
         {
            this.§1Q§ = this.§,F§ + param1 * (this.§=T§ - 360 - this.§,F§) / param2;
         }
         else if(this.§=T§ < this.§,F§ && this.§,F§ - this.§=T§ <= 180)
         {
            this.§1Q§ = this.§,F§ + param1 * (this.§=T§ - this.§,F§) / param2;
         }
         else if(this.§=T§ < this.§,F§ && this.§,F§ - this.§=T§ > 180)
         {
            this.§1Q§ = this.§,F§ + param1 * (this.§=T§ + 360 - this.§,F§) / param2;
         }
      }
      
      public function get §+!7§() : Point
      {
         if(!§1R§)
         {
         }
         return null;
      }
      
      public function §]J§() : Boolean
      {
         return this.§#r§ == §34§.§^C§ || this.§#r§ == §34§.§8!3§;
      }
      
      public function §3!@§() : Boolean
      {
         return this.§#r§ == §34§.§^c§;
      }
      
      public function §&!,§() : Boolean
      {
         return this.§#r§ == §34§.§'g§;
      }
      
      public function §[!U§() : Boolean
      {
         return this.§#r§ == §34§.§8!3§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§#r§ == §34§.§=l§;
      }
      
      public function isGround() : Boolean
      {
         return this.§#r§ == §34§.§;"§;
      }
      
      public function §,m§() : Boolean
      {
         return this.§#r§ == §34§.§^[§;
      }
      
      public function §=N§() : Boolean
      {
         return this.§#r§ == §34§.§&!'§;
      }
      
      public function §,p§() : Boolean
      {
         if(this.§!I§ == "MISC_EXPLOSIVE_TNT" || this.§!I§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §-k§() : Boolean
      {
         return (this.§3!@§() || this.§,m§() || this.§=N§()) && !this.§%!c§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §]e§() : Number
      {
         return Number(Math.sqrt(this.§@!?§().GetLinearVelocity().x * this.§@!?§().GetLinearVelocity().x + this.§@!?§().GetLinearVelocity().y * this.§@!?§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§&!,§())
         {
            return this.§ b§;
         }
         if(!this.§8!S§.§?!D§())
         {
            return this.§ b§;
         }
         if(this.§7b§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§;Y§(§`5§.§1r§);
            }
            else if(param1 > 12)
            {
               this.§;Y§(§`5§.§<7§);
            }
            else if(param1 > 3)
            {
               this.§;Y§(§`5§.§?H§);
            }
            return this.§ b§;
         }
         if(param1 <= this.§7b§)
         {
            if(param1 >= this.§7b§ / 2)
            {
               this.§;Y§(§`5§.§?H§);
            }
            if(this.§]J§() && this.§ b§ == this.§&=§)
            {
               this.§ b§ = this.§&=§ - 1;
            }
            return this.§ b§;
         }
         param1 -= this.§7b§;
         if(param2 && this.§-k§())
         {
            _loc7_ = Math.min(this.§ b§,int(param1));
            _loc8_ = §&_§.§<!'§.getValue() * _loc7_;
            this.§8!S§.mLevelMain.addScore(_loc8_,§-!3§.§[!0§,this.§ b§ > param1 && param3,this.§@!?§().GetPosition().x,this.§@!?§().GetPosition().y,§,!;§.§%?§(this.§!I§));
         }
         if(!(param5 && this.§<@§))
         {
            this.§ b§ -= param1;
         }
         if(this.§ b§ < 1 && this.§]J§())
         {
            this.§ b§ = 1;
         }
         if(this.§ b§ < 1)
         {
            this.§ b§ = 0;
            §4!G§.§14§(§`5§.§1r§,this.§&!C§.§?b§,"ChannelDestroyed");
         }
         else
         {
            this.§;Y§(§`5§.§<7§);
            this.addDamageParticles(this.§8!S§.mLevelMain.particles,param1);
         }
         this.§5U§.setDamagedFrame();
         return this.§ b§;
      }
      
      public function §;Y§(param1:int) : void
      {
         §4!G§.§14§(param1,this.§&!C§.§?b§);
      }
      
      public function §8!H§(param1:String) : Number
      {
         return this.§&!C§.material.§=!3§(param1) * this.§`!H§;
      }
      
      public function §=!$§(param1:String) : Number
      {
         return this.§&!C§.material.§^!&§(param1);
      }
      
      public function §@!@§() : String
      {
         return this.§&!C§.material.mName;
      }
      
      public function §%!A§() : Number
      {
         return this.§&!C§.§^!K§();
      }
      
      public function §+<§() : int
      {
         return this.§&!C§.§?!7§();
      }
      
      public function §!!`§() : Boolean
      {
         return this.§@!?§().IsAwake() && (this.§]J§() && this.§ b§ == this.§&=§ || Math.abs(this.§@!?§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§@!?§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§@!?§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §]!<§() : Boolean
      {
         if(!this.§@!?§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§!,§();
         if(Math.abs(this.§9A§(this.§7!-§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§9A§(this.§7!-§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§9A§(this.§7!-§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §9A§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ += param1[_loc3_];
            _loc3_++;
         }
         return _loc2_ / param1.length;
      }
      
      private function §!,§() : void
      {
         this.§7!-§[0].push(this.§@!?§().GetLinearVelocity().x);
         this.§7!-§[1].push(this.§@!?§().GetLinearVelocity().y);
         this.§7!-§[2].push(this.§@!?§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§7!-§[_loc1_].length > this.§@!#§)
            {
               this.§7!-§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §]C§(param1:Number = 3) : void
      {
         this.§`!H§ = param1;
         if(this.§`!H§ > 1)
         {
            this.§5U§.§81§();
         }
         else
         {
            this.§5U§.§1!§ = null;
         }
      }
      
      public function §!i§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§&!C§.§>u§() == §&r§.§4D§)
         {
            _loc2_ = this.§5U§.mW * this.§5U§.mH * (§&_§.§5-§ * §&_§.§5-§);
         }
         else
         {
            _loc2_ = this.§@!?§().GetMass() / this.§"5§.§73§();
            if(param1)
            {
               _loc2_ *= this.§!!W§();
            }
            _loc2_ /= this.§^!Y§ * this.§^!Y§;
         }
         return _loc2_;
      }
      
      public function §!!W§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§5U§.§5!P§ - 1) / 10);
      }
      
      public function §%!=§(param1:Number) : void
      {
         var _loc2_:Number = this.§@!?§().GetLinearVelocity().x;
         var _loc3_:Number = this.§@!?§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§@!?§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§;,§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§%C§) : void
      {
      }
      
      public function addDamageParticles(param1:§%C§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §,!X§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§@!?§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§@!?§().§%r§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§'v§()) + 360) % 360;
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
            this.§-!!§(_loc4_);
         }
         var _loc3_:Number = this.§'v§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§-!!§(_loc3_);
      }
      
      public function §2!%§(param1:Number) : void
      {
         var _loc2_:Number = §'!d§(this.§@!?§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §0l§(_loc2_);
         this.§@!?§().§'!'§(_loc2_);
      }
      
      public function §^^§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§@!?§().GetPosition().Copy();
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
         this.§@!?§().§%r§(_loc13_);
      }
   }
}
