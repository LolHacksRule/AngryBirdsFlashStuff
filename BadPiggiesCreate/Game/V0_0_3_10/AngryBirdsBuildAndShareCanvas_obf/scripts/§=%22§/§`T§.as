package §="§
{
   import §!S§.b2Settings;
   import §&!s§.§!m§;
   import §&!s§.§+!O§;
   import §&!s§.§,!c§;
   import §&!s§.§1!S§;
   import §&!s§.§=!E§;
   import §4!s§.§%I§;
   import §4!s§.§&,§;
   import §5^§.§ !x§;
   import §6U§.b2PolygonShape;
   import §9!G§.§]!e§;
   import §<f§.§3!8§;
   import §<f§.§7!0§;
   import §?!h§.b2Vec2;
   import §^I§.Sprite;
   import §`]§.b2Body;
   import §`]§.b2BodyDef;
   import §`]§.b2FilterData;
   import §`]§.b2Fixture;
   import §`]§.b2World;
   import flash.geom.Point;
   
   public class §`T§
   {
      
      public static const §%!K§:uint = 1 << 1;
      
      public static const §?a§:uint = 1 << 2;
      
      public static const §5!m§:uint = 1 << 3;
      
      public static const §5!F§:uint = 1 << 4;
      
      public static const §5_§:Boolean = true;
      
      public static const §8!u§:Number = 5;
      
      public static const §03§:Number = 10;
       
      
      private var §%_§:String;
      
      private var §";§:int;
      
      private var §]!R§:int;
      
      public var §'!l§:String;
      
      public var §`!A§:int;
      
      private var §0e§:§1!S§;
      
      private var §7I§:§="-§;
      
      private var §;+§:b2World;
      
      protected var §^Z§:String = "";
      
      protected var §+7§:int = 1;
      
      private var §!d§:b2Fixture;
      
      private var §?!o§:b2Body;
      
      private var §[w§:b2Vec2;
      
      public var §+!_§:Number;
      
      public var §4>§:Number;
      
      private var §'!g§:Number;
      
      private var §>H§:Boolean = false;
      
      private var §""6§:Number;
      
      private var §,!O§:Number;
      
      private var §7!q§:Number;
      
      private var §0P§:Number;
      
      private var §["0§:Number;
      
      private var §]!@§:Number;
      
      public var §6u§:Number = 1;
      
      private var §1!4§:Boolean = false;
      
      public var §7S§:Number = 0;
      
      public var §2d§:Number = 0;
      
      protected var §6!5§:Boolean = false;
      
      public var §7!w§:§<!e§;
      
      private var §;!E§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var § get§:Number = 0;
      
      private var §5N§:Number = 1.0;
      
      private var §92§:Boolean = false;
      
      protected var § !g§:§%C§;
      
      private var §<!t§:Boolean = true;
      
      public function §`T§(param1:§="-§, param2:Sprite, param3:b2World, param4:§%I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§'!l§ = param6;
         this.§0e§ = §+!O§.§?!b§(param6);
         this.§7I§ = param1;
         this.§;!E§ = param2;
         this.§5N§ = param10;
         this.§92§ = param11;
         this.§";§ = param5;
         this.§`!A§ = this.§0e§.§`!A§;
         this.§]!R§ = this.§0e§.§-!O§();
         this.§ !g§ = new §%C§(§8!u§,§03§);
         this.§7!w§ = new §<!e§(this,param2,param4);
         if(!this.§7!w§.§#!_§(param1.§,!T§.§^d§))
         {
            this.§7!w§.§%!b§(this.§]!R§,this.§0e§.§]w§(),this.§0e§.§0E§() / §%I§.§9"4§,this.§0e§.§4"7§() / §%I§.§9"4§);
         }
         this.§7!w§.§ h§(this.§]!R§ == §,!c§.§6!+§);
         this.§;+§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§?!o§ = this.§;+§.§%[§(_loc12_);
         this.§?!o§.§'!d§(this);
         if(this.§]!R§ == §,!c§.§^!c§)
         {
            _loc14_ = b2PolygonShape.§6"!§(this.§0e§.shape.§4!z§ * param10,this.§0e§.shape.§@R§ * param10);
            this.§!d§ = this.§?!o§.CreateFixture2(_loc14_,this.§0e§.§3m§());
         }
         else if(this.§]!R§ == §,!c§.§6!+§ || this.§]!R§ == §,!c§.§'!'§)
         {
            this.§!d§ = this.§?!o§.CreateFixture2(this.§0e§.shape.§@!2§(param10),this.§0e§.§3m§());
         }
         this.§!d§.§!!=§(this.§0e§.§-!k§());
         this.§!d§.§'!N§(this.§0e§.§`!D§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§>R§())
         {
            _loc13_.§3"8§ = §%!K§;
            _loc13_.§+r§ = 65535 & ~§?a§;
         }
         else if(this.§'!l§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§'!l§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§3"8§ = §?a§;
            _loc13_.§+r§ = 65535 & ~§%!K§;
         }
         this.§!d§.§&G§(_loc13_);
         this.§'!g§ = this.§0e§.§>g§();
         if(this.§0e§.§4>§ > 0)
         {
            this.§+!_§ = this.§4>§ = this.§0e§.§4>§;
         }
         else
         {
            this.§+!_§ = this.§4>§ = Math.round(this.§9p§(true) * this.§0e§.§,!V§());
            if(this.§+!_§ < 1)
            {
               this.§+!_§ = this.§4>§ = 1;
            }
         }
         if(this.§0e§.§`!A§ == §1!S§.§^$§)
         {
            this.§;!E§.visible = false;
         }
         else
         {
            this.§7!w§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§-O§(param9);
         }
         this.§^!K§();
         this.§1!%§(0,1);
         this.§7!w§.§6"6§(this.§0e§.shape);
      }
      
      public static function §=!I§(param1:int, param2:§!m§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§<u§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§1!g§;
            }
            § !x§.§1@§(_loc4_,param3);
         }
      }
      
      public static function §0!2§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §]@§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!E§;
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
         return this.§5N§;
      }
      
      public function get front() : Boolean
      {
         return this.§92§;
      }
      
      public function get §%W§() : Number
      {
         return this.§?!o§.GetPosition().x;
      }
      
      public function get §&]§() : Number
      {
         return this.§?!o§.GetPosition().y;
      }
      
      public function get §6m§() : §1!S§
      {
         return this.§0e§;
      }
      
      public function get §%f§() : Boolean
      {
         return this.§'!g§ >= 0;
      }
      
      public function get container() : §="-§
      {
         return this.§7I§;
      }
      
      public function get §`t§() : Boolean
      {
         return this.§<!t§;
      }
      
      public function set §`t§(param1:Boolean) : void
      {
         this.§<!t§ = param1;
      }
      
      public function set §0!X§(param1:Boolean) : void
      {
         this.§>H§ = param1;
      }
      
      public function set § !-§(param1:uint) : void
      {
         this.§ !g§.§ !-§ = param1;
      }
      
      public function get § !-§() : uint
      {
         return this.§ !g§.§ !-§;
      }
      
      public function get §,!#§() : Boolean
      {
         return this.§1!4§;
      }
      
      public function set §,!#§(param1:Boolean) : void
      {
         this.§1!4§ = param1;
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
         return this.§%_§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§%_§ = param1;
      }
      
      public function §%!f§(param1:b2FilterData) : void
      {
         if(this.§!d§)
         {
            this.§!d§.§&G§(param1);
         }
      }
      
      protected function §@",§(param1:String) : int
      {
         return §7!0§.§@",§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§0e§.§3!I§();
         _loc3_.§#_§ = true;
         _loc3_.§!!E§ = true;
         _loc3_.§[G§ = true;
         _loc3_.§"x§ = 1;
         _loc3_.§!e§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§;+§)
         {
            this.§;+§.§3<§(this.getBody());
            this.§;+§ = null;
         }
         this.§7!w§.dispose();
         if(this.§;!E§)
         {
            this.§;!E§.dispose();
            this.§;!E§ = null;
         }
         this.§!d§ = null;
         this.§[w§ = null;
         this.§0e§ = null;
      }
      
      public function §-O§(param1:Number) : void
      {
         this.getBody().§"W§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §'k§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §0!+§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§`!0§();
         }
         if(param3)
         {
            this.§3!D§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§!d§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §<!D§(param1:b2Vec2) : void
      {
         this.§[w§ = param1;
      }
      
      public function §5!Q§() : void
      {
         if(this.§[w§)
         {
            this.§0!+§(this.§[w§,false);
            this.§[w§ = null;
         }
      }
      
      public function §`!0§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§?!s§(0);
         }
         else
         {
            this.getBody().§?!s§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §3!D§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§-O§(_loc2_);
      }
      
      public function §9D§(param1:Number) : void
      {
         this.getBody().§?!s§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§!d§ != null)
         {
            return this.§!d§.GetBody();
         }
         return null;
      }
      
      public function §<!V§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §%I§.§9"4§;
         this.getBody().GetPosition().y = this.mY * §%I§.§9"4§;
      }
      
      public function §1!%§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§6!5§)
         {
            _loc3_ = true;
            this.§6!5§ = false;
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
            this.§7!w§.§8!&§();
         }
         if(this.§6u§ > 1 && this.§7!w§.§^!w§)
         {
            _loc4_ = 4 + (this.§7!w§.§^!w§.blurX - 4 + param2 / 20) % 28;
            this.§7!w§.§^!w§.blurX = _loc4_;
            this.§7!w§.§^!w§.blurY = _loc4_;
         }
         this.§7!w§.§;!a§(param2);
         if(§5_§)
         {
            this.§'!#§(param1);
         }
         else
         {
            this.§ get§ = this.§7!q§;
            this.mX = this.§""6§;
            this.mY = this.§,!O§;
         }
         this.§;!E§.x = Math.round(this.mX);
         this.§;!E§.y = Math.round(this.mY);
         this.§;!E§.rotation = this.§ get§ / 180 * Math.PI;
      }
      
      public function §^!K§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§]!@§ = this.§7!q§;
         this.§0P§ = this.§""6§;
         this.§["0§ = this.§,!O§;
         this.§7!q§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§""6§ = _loc1_ / §%I§.§9"4§;
         this.§,!O§ = _loc2_ / §%I§.§9"4§;
         this.§ !g§.§="2§();
         this.§ !g§.§9B§(this.getBody());
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
      
      public function §'!#§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §]!e§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§7I§.§,!T§.§6P§.§#!8§ * 1000;
         }
         param1 *= -1;
         if(this.§""6§ == this.§0P§ || param1 == 0)
         {
            this.§7S§ = 0;
            this.mX = this.§""6§;
         }
         else
         {
            this.§7S§ = param1 * (this.§0P§ - this.§""6§) / param2;
            this.mX = this.§""6§ + this.§7S§;
         }
         if(this.§,!O§ == this.§["0§ || param1 == 0)
         {
            this.§2d§ = 0;
            this.mY = this.§,!O§;
         }
         else
         {
            this.§2d§ = param1 * (this.§["0§ - this.§,!O§) / param2;
            this.mY = this.§,!O§ + this.§2d§;
         }
         if(this.§7!q§ == this.§]!@§ || param1 == 0)
         {
            this.§ get§ = this.§7!q§;
         }
         else if(this.§]!@§ > this.§7!q§ && this.§]!@§ - this.§7!q§ <= 180)
         {
            this.§ get§ = this.§7!q§ + param1 * (this.§]!@§ - this.§7!q§) / param2;
         }
         else if(this.§]!@§ > this.§7!q§ && this.§]!@§ - this.§7!q§ > 180)
         {
            this.§ get§ = this.§7!q§ + param1 * (this.§]!@§ - 360 - this.§7!q§) / param2;
         }
         else if(this.§]!@§ < this.§7!q§ && this.§7!q§ - this.§]!@§ <= 180)
         {
            this.§ get§ = this.§7!q§ + param1 * (this.§]!@§ - this.§7!q§) / param2;
         }
         else if(this.§]!@§ < this.§7!q§ && this.§7!q§ - this.§]!@§ > 180)
         {
            this.§ get§ = this.§7!q§ + param1 * (this.§]!@§ + 360 - this.§7!q§) / param2;
         }
      }
      
      public function get § !4§() : Point
      {
         if(!§5_§)
         {
         }
         return null;
      }
      
      public function §>R§() : Boolean
      {
         return this.§`!A§ == §1!S§.§%Y§ || this.§`!A§ == §1!S§.§>!g§;
      }
      
      public function §3!^§() : Boolean
      {
         return this.§`!A§ == §1!S§.§?8§;
      }
      
      public function §6C§() : Boolean
      {
         return this.§`!A§ == §1!S§.§8"4§;
      }
      
      public function §]J§() : Boolean
      {
         return this.§`!A§ == §1!S§.§>!g§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§`!A§ == §1!S§.§<J§;
      }
      
      public function isGround() : Boolean
      {
         return this.§`!A§ == §1!S§.§^$§;
      }
      
      public function §[!Z§() : Boolean
      {
         return this.§`!A§ == §1!S§.§=^§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§`!A§ == §1!S§.§,!G§;
      }
      
      public function §1"4§() : Boolean
      {
         if(this.§'!l§ == "MISC_EXPLOSIVE_TNT" || this.§'!l§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §4$§() : Boolean
      {
         return (this.§3!^§() || this.§[!Z§() || this.isMiscBlock()) && !this.§,!#§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §[!l§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§6C§())
         {
            return this.§+!_§;
         }
         if(!this.§7I§.§5"%§())
         {
            return this.§+!_§;
         }
         if(this.§'!g§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§0!B§(§!m§.§ q§);
            }
            else if(param1 > 12)
            {
               this.§0!B§(§!m§.§^"§);
            }
            else if(param1 > 3)
            {
               this.§0!B§(§!m§.§>K§);
            }
            return this.§+!_§;
         }
         if(param1 <= this.§'!g§)
         {
            if(param1 >= this.§'!g§ / 2)
            {
               this.§0!B§(§!m§.§>K§);
            }
            if(this.§>R§() && this.§+!_§ == this.§4>§)
            {
               this.§+!_§ = this.§4>§ - 1;
            }
            return this.§+!_§;
         }
         param1 -= this.§'!g§;
         if(param2 && this.§4$§())
         {
            _loc7_ = Math.min(this.§+!_§,int(param1));
            _loc8_ = §%I§.§2Q§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §%I§.§^!U§;
            }
            this.§7I§.§,!T§.addScore(_loc8_,§&,§.§]"-§,this.§+!_§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§7!0§.§6=§(this.§'!l§));
         }
         if(!(param5 && this.§>H§))
         {
            this.§+!_§ -= param1;
         }
         if(this.§+!_§ < 1 && this.§>R§())
         {
            this.§+!_§ = 1;
         }
         if(this.§+!_§ < 1)
         {
            this.§+!_§ = 0;
            §`T§.§=!I§(§!m§.§ q§,this.§0e§.§%!m§,"ChannelDestroyed");
         }
         else
         {
            this.§0!B§(§!m§.§^"§);
            this.addDamageParticles(this.§7I§.§,!T§.particles,param1);
         }
         this.§7!w§.setDamagedFrame();
         return this.§+!_§;
      }
      
      public function §0!B§(param1:int) : void
      {
         §`T§.§=!I§(param1,this.§0e§.§%!m§);
      }
      
      public function §null§(param1:String) : Number
      {
         return this.§0e§.material.§&X§(param1) * this.§6u§;
      }
      
      public function §3D§(param1:String) : Number
      {
         return this.§0e§.material.§,!m§(param1);
      }
      
      public function §]" §() : String
      {
         return this.§0e§.material.mName;
      }
      
      public function §2H§() : Number
      {
         return this.§0e§.§,!V§();
      }
      
      public function § 7§() : int
      {
         return this.§0e§.§!!T§();
      }
      
      public function §?q§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§>R§() && this.§+!_§ == this.§4>§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§8"+§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §!!`§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§2b§();
      }
      
      protected function §2b§() : Boolean
      {
         return this.§ !g§.§2b§();
      }
      
      public function §'!O§(param1:Number = 3) : void
      {
         this.§6u§ = param1;
         if(this.§6u§ > 1)
         {
            this.§7!w§.§,r§();
         }
         else
         {
            this.§7!w§.§^!w§ = null;
         }
      }
      
      public function §9p§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§0e§.§3!I§() == §=!E§.§0!n§)
         {
            _loc2_ = this.§7!w§.mW * this.§7!w§.mH * (§%I§.§9"4§ * §%I§.§9"4§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§!d§.§?!4§();
            if(param1)
            {
               _loc2_ *= this.§<!d§();
            }
            _loc2_ /= this.§5N§ * this.§5N§;
         }
         return _loc2_;
      }
      
      public function §<!d§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§7!w§.§0q§ - 1) / 10);
      }
      
      public function §%!P§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§="-§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§3!8§) : void
      {
      }
      
      public function addDamageParticles(param1:§3!8§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §1!L§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§9U§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§'k§()) + 360) % 360;
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
            this.§-O§(_loc4_);
         }
         var _loc3_:Number = this.§'k§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§-O§(_loc3_);
      }
      
      public function §8>§(param1:Number) : void
      {
         var _loc2_:Number = §0!2§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §]@§(_loc2_);
         this.getBody().§"W§(_loc2_);
      }
      
      public function §?!z§(param1:Number, param2:Point) : void
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
         this.getBody().§9U§(_loc13_);
      }
   }
}
