package §3!#§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2BodyDef;
   import §&!Y§.b2FilterData;
   import §&!Y§.b2Fixture;
   import §&!Y§.b2World;
   import §+!d§.b2PolygonShape;
   import §0!2§.§-6§;
   import §0!2§.§5"L§;
   import §7F§.b2Vec2;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §=%§.§&-§;
   import §=%§.§7!g§;
   import §=%§.§=!C§;
   import §=%§.§>"-§;
   import §=%§.§]"%§;
   import §>s§.§+m§;
   import §@!a§.b2Settings;
   import §[x§.§%3§;
   import §]!v§.Sprite;
   import flash.geom.Point;
   
   public class §5"A§
   {
      
      public static const §?!F§:uint = 1 << 1;
      
      public static const §1!w§:uint = 1 << 2;
      
      public static const §[!x§:uint = 1 << 3;
      
      public static const §3o§:uint = 1 << 4;
      
      public static const §!!X§:Boolean = true;
      
      public static const §%!0§:Number = 5;
      
      public static const §5"J§:Number = 10;
       
      
      private var §<"?§:String;
      
      private var §&s§:int;
      
      private var §2!§:int;
      
      public var §=-§:String;
      
      public var §^!E§:int;
      
      protected var §8a§:§]"%§;
      
      private var §+<§:§04§;
      
      private var mWorld:b2World;
      
      protected var §2!L§:String = "";
      
      protected var §5![§:int = 1;
      
      private var §1!R§:b2Fixture;
      
      private var §9t§:b2Body;
      
      private var §;!y§:b2Vec2;
      
      public var §!!U§:Number;
      
      public var §3!A§:Number;
      
      private var §-!D§:Number;
      
      private var §["B§:Boolean = false;
      
      private var §["I§:Number;
      
      private var §'5§:Number;
      
      private var §%I§:Number;
      
      private var §7!W§:Number;
      
      private var §&9§:Number;
      
      private var §0'§:Number;
      
      public var §>#§:Number = 1;
      
      private var §,!V§:Boolean = false;
      
      public var §%"=§:Number = 0;
      
      public var §0!;§:Number = 0;
      
      protected var §'b§:Boolean = false;
      
      public var §<!K§:§38§;
      
      protected var §`b§:Sprite;
      
      private var §"""§:Number = 0;
      
      private var §5!J§:Number = 0;
      
      private var § !r§:Number = 0;
      
      protected var §%""§:Number = 1.0;
      
      private var §@!@§:Boolean = false;
      
      protected var §8"+§:§,!I§;
      
      private var §9c§:Boolean = true;
      
      public function §5"A§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§=-§ = param6;
         this.§8a§ = §>"-§.§0@§(param6);
         this.§+<§ = param1;
         this.§`b§ = param2;
         this.§%""§ = param10;
         this.§@!@§ = param11;
         this.§&s§ = param5;
         this.§^!E§ = this.§8a§.§^!E§;
         this.§2!§ = this.§8a§.§9Y§();
         this.§8"+§ = new §,!I§(§%!0§,§5"J§);
         this.§<!K§ = new §38§(this,param2,param4);
         if(!this.§<!K§.§5"4§(param1.§^!"§.animationManager))
         {
            this.§<!K§.§switch§(this.§2!§,this.§8a§.§ b§(),this.§8a§.§'"=§() / §5"L§.§@>§,this.§8a§.§#=§() / §5"L§.§@>§);
         }
         this.§<!K§.§[!O§(this.§2!§ == §&-§.§9!m§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§9t§ = this.mWorld.§8!^§(_loc12_);
         this.§9t§.§#^§(this);
         if(this.§2!§ == §&-§.§@!Y§)
         {
            _loc14_ = b2PolygonShape.§3"$§(this.§8a§.shape.§=!c§ * param10,this.§8a§.shape.§+B§ * param10);
            this.§1!R§ = this.§9t§.CreateFixture2(_loc14_,this.§8a§.§=W§());
         }
         else if(this.§2!§ == §&-§.§9!m§ || this.§2!§ == §&-§.§`!Z§)
         {
            this.§1!R§ = this.§9t§.CreateFixture2(this.§8a§.shape.§else §(param10),this.§8a§.§=W§());
         }
         this.§1!R§.§"R§(this.§8a§.§="2§());
         this.§1!R§.§"!t§(this.§8a§.§'J§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§3q§())
         {
            _loc13_.§'4§ = §?!F§;
            _loc13_.§+O§ = 65535 & ~§1!w§;
         }
         else if(this.§=-§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§=-§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§'4§ = §1!w§;
            _loc13_.§+O§ = 65535 & ~§?!F§;
         }
         this.§1!R§.§9!b§(_loc13_);
         this.§-!D§ = this.§8a§.§5V§();
         if(this.§8a§.§3!A§ > 0)
         {
            this.§!!U§ = this.§3!A§ = this.§8a§.§3!A§;
         }
         else
         {
            this.§!!U§ = this.§3!A§ = Math.round(this.§+p§(true) * this.§8a§.§2!9§());
            if(this.§!!U§ < 1)
            {
               this.§!!U§ = this.§3!A§ = 1;
            }
         }
         if(this.§8a§.§^!E§ == §]"%§.§,!S§)
         {
            this.§`b§.visible = false;
         }
         else
         {
            this.§<!K§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§-!#§(param9);
         }
         this.§]!r§();
         this.§6l§(0,1);
         this.§<!K§.§4!e§(this.§8a§.shape);
      }
      
      public static function §9L§(param1:int, param2:§7!g§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§9"K§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8!D§;
            }
            §+m§.§'!k§(_loc4_,param3);
         }
      }
      
      public static function §8""§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §5p§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§`b§;
      }
      
      public function get x() : Number
      {
         return this.§"""§;
      }
      
      public function get y() : Number
      {
         return this.§5!J§;
      }
      
      public function get scale() : Number
      {
         return this.§%""§;
      }
      
      public function get front() : Boolean
      {
         return this.§@!@§;
      }
      
      public function get §'D§() : Number
      {
         return this.§9t§.GetPosition().x;
      }
      
      public function get §?"D§() : Number
      {
         return this.§9t§.GetPosition().y;
      }
      
      public function get §""8§() : §]"%§
      {
         return this.§8a§;
      }
      
      public function get §=!D§() : Boolean
      {
         return this.§-!D§ >= 0;
      }
      
      public function get §@H§() : §04§
      {
         return this.§+<§;
      }
      
      public function get §1!^§() : Boolean
      {
         return this.§9c§;
      }
      
      public function set §1!^§(param1:Boolean) : void
      {
         this.§9c§ = param1;
      }
      
      public function set §#]§(param1:Boolean) : void
      {
         this.§["B§ = param1;
      }
      
      public function set §%F§(param1:uint) : void
      {
         this.§8"+§.§%F§ = param1;
      }
      
      public function get §%F§() : uint
      {
         return this.§8"+§.§%F§;
      }
      
      public function get §^!h§() : Boolean
      {
         return this.§,!V§;
      }
      
      public function set §^!h§(param1:Boolean) : void
      {
         this.§,!V§ = param1;
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
         return this.§<"?§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§<"?§ = param1;
      }
      
      public function §[!S§(param1:b2FilterData) : void
      {
         if(this.§1!R§)
         {
            this.§1!R§.§9!b§(param1);
         }
      }
      
      protected function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         return §4! §.getParticleMaterialFromEngineMaterial(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§8a§.§=!6§();
         _loc3_.§>J§ = true;
         _loc3_.§;!R§ = true;
         _loc3_.§ !T§ = true;
         _loc3_.§5v§ = 1;
         _loc3_.§4!#§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§&"=§(this.§`!y§());
            this.mWorld = null;
         }
         this.§<!K§.dispose();
         if(this.§`b§)
         {
            this.§`b§.dispose();
            this.§`b§ = null;
         }
         this.§1!R§ = null;
         this.§;!y§ = null;
         this.§8a§ = null;
      }
      
      public function §-!#§(param1:Number) : void
      {
         this.§`!y§().§6j§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §#"<§() : Number
      {
         return (360 - this.§`!y§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §1!2§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§`!y§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§6!H§();
         }
         if(param3)
         {
            this.§3"B§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§1!R§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`!y§().GetPosition().x >= param3 && this.§`!y§().GetPosition().x <= param4 && this.§`!y§().GetPosition().y >= param1 && this.§`!y§().GetPosition().y <= param2;
      }
      
      public function §=!y§(param1:b2Vec2) : void
      {
         this.§;!y§ = param1;
      }
      
      public function §+!^§() : void
      {
         if(this.§;!y§)
         {
            this.§1!2§(this.§;!y§,false);
            this.§;!y§ = null;
         }
      }
      
      public function §6!H§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`!y§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§`!y§().§23§(0);
         }
         else
         {
            this.§`!y§().§23§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §3"B§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`!y§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§-!#§(_loc2_);
      }
      
      public function §4!Z§(param1:Number) : void
      {
         this.§`!y§().§23§(param1);
      }
      
      public function §`!y§() : b2Body
      {
         if(this.§1!R§ != null)
         {
            return this.§1!R§.GetBody();
         }
         return null;
      }
      
      public function §[7§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§"""§ = param1;
            this.§5!J§ = param2;
         }
         this.§`!y§().GetPosition().x = this.§"""§ * §5"L§.§@>§;
         this.§`!y§().GetPosition().y = this.§5!J§ * §5"L§.§@>§;
      }
      
      public function §6l§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§'b§)
         {
            _loc3_ = true;
            this.§'b§ = false;
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
            this.§<!K§.§=^§();
         }
         if(this.§>#§ > 1 && this.§<!K§.§9Z§)
         {
            _loc4_ = 4 + (this.§<!K§.§9Z§.blurX - 4 + param2 / 20) % 28;
            this.§<!K§.§9Z§.blurX = _loc4_;
            this.§<!K§.§9Z§.blurY = _loc4_;
         }
         this.§<!K§.§"!3§(param2);
         if(§!!X§)
         {
            this.§0!x§(param1);
         }
         else
         {
            this.§ !r§ = this.§%I§;
            this.§"""§ = this.§["I§;
            this.§5!J§ = this.§'5§;
         }
         this.§`b§.x = Math.round(this.§"""§);
         this.§`b§.y = Math.round(this.§5!J§);
         this.§`b§.rotation = this.§ !r§ / 180 * Math.PI;
      }
      
      public function §]!r§() : void
      {
         var _loc1_:Number = this.§`!y§().GetPosition().x;
         var _loc2_:Number = this.§`!y§().GetPosition().y;
         this.§0'§ = this.§%I§;
         this.§7!W§ = this.§["I§;
         this.§&9§ = this.§'5§;
         this.§%I§ = this.§`!y§().GetAngle() * (180 / Math.PI) % 360;
         this.§["I§ = _loc1_ / §5"L§.§@>§;
         this.§'5§ = _loc2_ / §5"L§.§@>§;
         this.§8"+§.§'!g§();
         this.§8"+§.§2^§(this.§`!y§());
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
      
      public function §0!x§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §%3§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§+<§.§^!"§.mLevelEngine.§"!l§ * 1000;
         }
         param1 *= -1;
         if(this.§["I§ == this.§7!W§ || param1 == 0)
         {
            this.§%"=§ = 0;
            this.§"""§ = this.§["I§;
         }
         else
         {
            this.§%"=§ = param1 * (this.§7!W§ - this.§["I§) / param2;
            this.§"""§ = this.§["I§ + this.§%"=§;
         }
         if(this.§'5§ == this.§&9§ || param1 == 0)
         {
            this.§0!;§ = 0;
            this.§5!J§ = this.§'5§;
         }
         else
         {
            this.§0!;§ = param1 * (this.§&9§ - this.§'5§) / param2;
            this.§5!J§ = this.§'5§ + this.§0!;§;
         }
         if(this.§%I§ == this.§0'§ || param1 == 0)
         {
            this.§ !r§ = this.§%I§;
         }
         else if(this.§0'§ > this.§%I§ && this.§0'§ - this.§%I§ <= 180)
         {
            this.§ !r§ = this.§%I§ + param1 * (this.§0'§ - this.§%I§) / param2;
         }
         else if(this.§0'§ > this.§%I§ && this.§0'§ - this.§%I§ > 180)
         {
            this.§ !r§ = this.§%I§ + param1 * (this.§0'§ - 360 - this.§%I§) / param2;
         }
         else if(this.§0'§ < this.§%I§ && this.§%I§ - this.§0'§ <= 180)
         {
            this.§ !r§ = this.§%I§ + param1 * (this.§0'§ - this.§%I§) / param2;
         }
         else if(this.§0'§ < this.§%I§ && this.§%I§ - this.§0'§ > 180)
         {
            this.§ !r§ = this.§%I§ + param1 * (this.§0'§ + 360 - this.§%I§) / param2;
         }
      }
      
      public function get §6!c§() : Point
      {
         if(!§!!X§)
         {
         }
         return null;
      }
      
      public function §3q§() : Boolean
      {
         return this.§^!E§ == §]"%§.§6"2§ || this.§^!E§ == §]"%§.§^z§;
      }
      
      public function §!!D§() : Boolean
      {
         return this.§^!E§ == §]"%§.§]T§;
      }
      
      public function §0"K§() : Boolean
      {
         return this.§^!E§ == §]"%§.§<o§;
      }
      
      public function §`h§() : Boolean
      {
         return this.§^!E§ == §]"%§.§^z§;
      }
      
      public function shouldUpdate() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§^!E§ == §]"%§.§8!-§;
      }
      
      public function isGround() : Boolean
      {
         return this.§^!E§ == §]"%§.§,!S§;
      }
      
      public function §7!_§() : Boolean
      {
         return this.§^!E§ == §]"%§.§%"#§;
      }
      
      public function §9!n§() : Boolean
      {
         return this.§^!E§ == §]"%§.§;1§;
      }
      
      public function §8J§() : Boolean
      {
         if(this.§=-§ == "MISC_EXPLOSIVE_TNT" || this.§=-§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §>"#§() : Boolean
      {
         return (this.§!!D§() || this.§7!_§() || this.§9!n§()) && !this.§^!h§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §3l§() : Number
      {
         return Number(Math.sqrt(this.§`!y§().GetLinearVelocity().x * this.§`!y§().GetLinearVelocity().x + this.§`!y§().GetLinearVelocity().y * this.§`!y§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§0"K§())
         {
            return this.§!!U§;
         }
         if(!this.§+<§.§&d§())
         {
            return this.§!!U§;
         }
         if(this.§-!D§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§!?§(§7!g§.§0"#§);
            }
            else if(param1 > 12)
            {
               this.§!?§(§7!g§.§<q§);
            }
            else if(param1 > 3)
            {
               this.§!?§(§7!g§.§7;§);
            }
            return this.§!!U§;
         }
         if(param1 <= this.§-!D§)
         {
            if(param1 >= this.§-!D§ / 2)
            {
               this.§!?§(§7!g§.§7;§);
            }
            if(this.§3q§() && this.§!!U§ == this.§3!A§)
            {
               this.§!!U§ = this.§3!A§ - 1;
            }
            return this.§!!U§;
         }
         param1 -= this.§-!D§;
         if(param2 && this.§>"#§())
         {
            _loc7_ = Math.min(this.§!!U§,int(param1));
            _loc8_ = §5"L§.§3h§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §5"L§.§;!?§;
            }
            this.§+<§.§^!"§.addScore(_loc8_,§-6§.§'!n§,this.§!!U§ > param1 && param3,this.§`!y§().GetPosition().x,this.§`!y§().GetPosition().y,§4! §.§^!T§(this.§=-§));
         }
         if(!(param5 && this.§["B§))
         {
            this.§!!U§ -= param1;
         }
         if(this.§!!U§ < 1 && this.§3q§())
         {
            this.§!!U§ = 1;
         }
         if(this.§!!U§ < 1)
         {
            this.§!!U§ = 0;
            §5"A§.§9L§(§7!g§.§0"#§,this.§8a§.§8d§,"ChannelDestroyed");
         }
         else
         {
            this.§!?§(§7!g§.§<q§);
            this.addDamageParticles(this.§+<§.§^!"§.particles,param1);
         }
         this.§<!K§.setDamagedFrame();
         return this.§!!U§;
      }
      
      public function §!?§(param1:int) : void
      {
         §5"A§.§9L§(param1,this.§8a§.§8d§);
      }
      
      public function §,"<§(param1:String) : Number
      {
         return this.§8a§.material.§^"J§(param1) * this.§>#§;
      }
      
      public function §"v§(param1:String) : Number
      {
         return this.§8a§.material.§!k§(param1);
      }
      
      public function §]L§() : String
      {
         return this.§8a§.material.mName;
      }
      
      public function §3!8§() : Number
      {
         return this.§8a§.§2!9§();
      }
      
      public function §7w§() : int
      {
         return this.§8a§.§1!0§();
      }
      
      public function §+k§() : Boolean
      {
         return this.§`!y§().IsAwake() && (this.§3q§() && this.§!!U§ == this.§3!A§ || Math.abs(this.§`!y§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`!y§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`!y§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §!!b§() : Boolean
      {
         if(!this.§`!y§().IsAwake())
         {
            return true;
         }
         return !this.§7!`§();
      }
      
      protected function §7!`§() : Boolean
      {
         return this.§8"+§.§7!`§();
      }
      
      public function §,D§(param1:Number = 3) : void
      {
         this.§>#§ = param1;
         if(this.§>#§ > 1)
         {
            this.§<!K§.§0!g§();
         }
         else
         {
            this.§<!K§.§9Z§ = null;
         }
      }
      
      public function §+p§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§8a§.§=!6§() == §=!C§.§"J§)
         {
            _loc2_ = this.§<!K§.mW * this.§<!K§.mH * (§5"L§.§@>§ * §5"L§.§@>§);
         }
         else
         {
            _loc2_ = this.§`!y§().GetMass() / this.§1!R§.§]!C§();
            if(param1)
            {
               _loc2_ *= this.§#"A§();
            }
            _loc2_ /= this.§%""§ * this.§%""§;
         }
         return _loc2_;
      }
      
      public function §#"A§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§<!K§.§]o§ - 1) / 10);
      }
      
      public function §'V§(param1:Number) : void
      {
         var _loc2_:Number = this.§`!y§().GetLinearVelocity().x;
         var _loc3_:Number = this.§`!y§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§`!y§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§04§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§3!p§) : void
      {
      }
      
      public function addDamageParticles(param1:§3!p§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §%S§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§`!y§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§`!y§().§+Q§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§#"<§()) + 360) % 360;
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
            this.§-!#§(_loc4_);
         }
         var _loc3_:Number = this.§#"<§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§-!#§(_loc3_);
      }
      
      public function §?F§(param1:Number) : void
      {
         var _loc2_:Number = §8""§(this.§`!y§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §5p§(_loc2_);
         this.§`!y§().§6j§(_loc2_);
      }
      
      public function §&" §(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§`!y§().GetPosition().Copy();
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
         this.§`!y§().§+Q§(_loc13_);
      }
   }
}
