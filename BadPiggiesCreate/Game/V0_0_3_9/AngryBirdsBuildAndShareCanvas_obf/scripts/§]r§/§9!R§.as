package §]r§
{
   import §-!G§.b2Vec2;
   import §3>§.§4D§;
   import §3>§.§=!f§;
   import §3>§.§>!&§;
   import §3>§.§>!y§;
   import §3>§.§["!§;
   import §6p§.§'!B§;
   import §7"'§.b2Settings;
   import §7q§.Sprite;
   import §;w§.§3"+§;
   import §;w§.§5!Y§;
   import §<!j§.b2PolygonShape;
   import §=9§.b2Body;
   import §=9§.b2BodyDef;
   import §=9§.b2FilterData;
   import §=9§.b2Fixture;
   import §=9§.b2World;
   import §=b§.§'=§;
   import §=b§.§-!K§;
   import §@!;§.§&F§;
   import flash.geom.Point;
   
   public class §9!R§
   {
      
      public static const §8!Q§:uint = 1 << 1;
      
      public static const §?!f§:uint = 1 << 2;
      
      public static const §&6§:uint = 1 << 3;
      
      public static const §;!u§:uint = 1 << 4;
      
      public static const §1b§:Boolean = true;
      
      public static const §@Z§:Number = 5;
      
      public static const §7!b§:Number = 10;
       
      
      private var §1!R§:String;
      
      private var §3@§:int;
      
      private var §4!n§:int;
      
      public var §@!'§:String;
      
      public var §4!J§:int;
      
      private var §="0§:§=!f§;
      
      private var §?=§:§2"%§;
      
      private var §1c§:b2World;
      
      protected var §3a§:String = "";
      
      protected var §6!V§:int = 1;
      
      private var §7!Z§:b2Fixture;
      
      private var §,8§:b2Body;
      
      private var §?!Y§:b2Vec2;
      
      public var §7!D§:Number;
      
      public var §@!#§:Number;
      
      private var §`[§:Number;
      
      private var §`U§:Boolean = false;
      
      private var §-C§:Number;
      
      private var §7!G§:Number;
      
      private var §]!+§:Number;
      
      private var §1"+§:Number;
      
      private var §]!N§:Number;
      
      private var §1!,§:Number;
      
      public var §9M§:Number = 1;
      
      private var §67§:Boolean = false;
      
      public var § $§:Number = 0;
      
      public var §"%§:Number = 0;
      
      protected var §^"0§:Boolean = false;
      
      public var §2!7§:§+c§;
      
      private var §5H§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §-3§:Number = 0;
      
      private var §`"§:Number = 1.0;
      
      private var §3B§:Boolean = false;
      
      protected var §0!R§:§"!A§;
      
      private var §?2§:Boolean = true;
      
      public function §9!R§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§@!'§ = param6;
         this.§="0§ = §["!§.§+!s§(param6);
         this.§?=§ = param1;
         this.§5H§ = param2;
         this.§`"§ = param10;
         this.§3B§ = param11;
         this.§3@§ = param5;
         this.§4!J§ = this.§="0§.§4!J§;
         this.§4!n§ = this.§="0§.§&_§();
         this.§0!R§ = new §"!A§(§@Z§,§7!b§);
         this.§2!7§ = new §+c§(this,param2,param4);
         if(!this.§2!7§.§"&§(param1.§;!x§.§"!i§))
         {
            this.§2!7§.§9!i§(this.§4!n§,this.§="0§.§[9§(),this.§="0§.§?L§() / §-!K§.§"!C§,this.§="0§.§ #§() / §-!K§.§"!C§);
         }
         this.§2!7§.§^!x§(this.§4!n§ == §4D§.§ !G§);
         this.§1c§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§,8§ = this.§1c§.§4[§(_loc12_);
         this.§,8§.§3l§(this);
         if(this.§4!n§ == §4D§.§&",§)
         {
            _loc14_ = b2PolygonShape.§+!=§(this.§="0§.shape.§5!T§ * param10,this.§="0§.shape.§7X§ * param10);
            this.§7!Z§ = this.§,8§.CreateFixture2(_loc14_,this.§="0§.§%!b§());
         }
         else if(this.§4!n§ == §4D§.§ !G§ || this.§4!n§ == §4D§.§>v§)
         {
            this.§7!Z§ = this.§,8§.CreateFixture2(this.§="0§.shape.§ !§(param10),this.§="0§.§%!b§());
         }
         this.§7!Z§.§1!'§(this.§="0§.§6&§());
         this.§7!Z§.§=!+§(this.§="0§.§?!'§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§@!j§())
         {
            _loc13_.§1`§ = §8!Q§;
            _loc13_.§&!C§ = 65535 & ~§?!f§;
         }
         else if(this.§@!'§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§@!'§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§1`§ = §?!f§;
            _loc13_.§&!C§ = 65535 & ~§8!Q§;
         }
         this.§7!Z§.§#Y§(_loc13_);
         this.§`[§ = this.§="0§.§#F§();
         if(this.§="0§.§@!#§ > 0)
         {
            this.§7!D§ = this.§@!#§ = this.§="0§.§@!#§;
         }
         else
         {
            this.§7!D§ = this.§@!#§ = Math.round(this.§2!Q§(true) * this.§="0§.§'!`§());
            if(this.§7!D§ < 1)
            {
               this.§7!D§ = this.§@!#§ = 1;
            }
         }
         if(this.§="0§.§4!J§ == §=!f§.§"!g§)
         {
            this.§5H§.visible = false;
         }
         else
         {
            this.§2!7§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§7!%§(param9);
         }
         this.§"!;§();
         this.§0s§(0,1);
         this.§2!7§.§0H§(this.§="0§.shape);
      }
      
      public static function §`m§(param1:int, param2:§>!&§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§,T§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§1![§;
            }
            §'!B§.§6d§(_loc4_,param3);
         }
      }
      
      public static function §4!`§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §>!U§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§5H§;
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
         return this.§`"§;
      }
      
      public function get front() : Boolean
      {
         return this.§3B§;
      }
      
      public function get §=8§() : Number
      {
         return this.§,8§.GetPosition().x;
      }
      
      public function get §#k§() : Number
      {
         return this.§,8§.GetPosition().y;
      }
      
      public function get §<3§() : §=!f§
      {
         return this.§="0§;
      }
      
      public function get §!!$§() : Boolean
      {
         return this.§`[§ >= 0;
      }
      
      public function get container() : §2"%§
      {
         return this.§?=§;
      }
      
      public function get §2!]§() : Boolean
      {
         return this.§?2§;
      }
      
      public function set §2!]§(param1:Boolean) : void
      {
         this.§?2§ = param1;
      }
      
      public function set §>!e§(param1:Boolean) : void
      {
         this.§`U§ = param1;
      }
      
      public function set §5!t§(param1:uint) : void
      {
         this.§0!R§.§5!t§ = param1;
      }
      
      public function get §5!t§() : uint
      {
         return this.§0!R§.§5!t§;
      }
      
      public function get §';§() : Boolean
      {
         return this.§67§;
      }
      
      public function set §';§(param1:Boolean) : void
      {
         this.§67§ = param1;
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
         return this.§1!R§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§1!R§ = param1;
      }
      
      public function §=Q§(param1:b2FilterData) : void
      {
         if(this.§7!Z§)
         {
            this.§7!Z§.§#Y§(param1);
         }
      }
      
      protected function §`d§(param1:String) : int
      {
         return §3"+§.§`d§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§="0§.§0!g§();
         _loc3_.§'" § = true;
         _loc3_.§%!y§ = true;
         _loc3_.§"W§ = true;
         _loc3_.§[-§ = 1;
         _loc3_.§8Q§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§1c§)
         {
            this.§1c§.§'"%§(this.getBody());
            this.§1c§ = null;
         }
         this.§2!7§.dispose();
         if(this.§5H§)
         {
            this.§5H§.dispose();
            this.§5H§ = null;
         }
         this.§7!Z§ = null;
         this.§?!Y§ = null;
         this.§="0§ = null;
      }
      
      public function §7!%§(param1:Number) : void
      {
         this.getBody().§7!^§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §@&§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §[!C§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§53§();
         }
         if(param3)
         {
            this.§1@§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§7!Z§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §&!B§(param1:b2Vec2) : void
      {
         this.§?!Y§ = param1;
      }
      
      public function §]! §() : void
      {
         if(this.§?!Y§)
         {
            this.§[!C§(this.§?!Y§,false);
            this.§?!Y§ = null;
         }
      }
      
      public function §53§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§@6§(0);
         }
         else
         {
            this.getBody().§@6§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §1@§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§7!%§(_loc2_);
      }
      
      public function §+!E§(param1:Number) : void
      {
         this.getBody().§@6§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§7!Z§ != null)
         {
            return this.§7!Z§.GetBody();
         }
         return null;
      }
      
      public function §#!n§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §-!K§.§"!C§;
         this.getBody().GetPosition().y = this.mY * §-!K§.§"!C§;
      }
      
      public function §0s§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§^"0§)
         {
            _loc3_ = true;
            this.§^"0§ = false;
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
            this.§2!7§.§>K§();
         }
         if(this.§9M§ > 1 && this.§2!7§.§1l§)
         {
            _loc4_ = 4 + (this.§2!7§.§1l§.blurX - 4 + param2 / 20) % 28;
            this.§2!7§.§1l§.blurX = _loc4_;
            this.§2!7§.§1l§.blurY = _loc4_;
         }
         this.§2!7§.§5Q§(param2);
         if(§1b§)
         {
            this.§9!S§(param1);
         }
         else
         {
            this.§-3§ = this.§]!+§;
            this.mX = this.§-C§;
            this.mY = this.§7!G§;
         }
         this.§5H§.x = Math.round(this.mX);
         this.§5H§.y = Math.round(this.mY);
         this.§5H§.rotation = this.§-3§ / 180 * Math.PI;
      }
      
      public function §"!;§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§1!,§ = this.§]!+§;
         this.§1"+§ = this.§-C§;
         this.§]!N§ = this.§7!G§;
         this.§]!+§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§-C§ = _loc1_ / §-!K§.§"!C§;
         this.§7!G§ = _loc2_ / §-!K§.§"!C§;
         this.§0!R§.§8!A§();
         this.§0!R§.§&!4§(this.getBody());
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
      
      public function §9!S§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §&F§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§?=§.§;!x§.§^J§.§?r§ * 1000;
         }
         param1 *= -1;
         if(this.§-C§ == this.§1"+§ || param1 == 0)
         {
            this.§ $§ = 0;
            this.mX = this.§-C§;
         }
         else
         {
            this.§ $§ = param1 * (this.§1"+§ - this.§-C§) / param2;
            this.mX = this.§-C§ + this.§ $§;
         }
         if(this.§7!G§ == this.§]!N§ || param1 == 0)
         {
            this.§"%§ = 0;
            this.mY = this.§7!G§;
         }
         else
         {
            this.§"%§ = param1 * (this.§]!N§ - this.§7!G§) / param2;
            this.mY = this.§7!G§ + this.§"%§;
         }
         if(this.§]!+§ == this.§1!,§ || param1 == 0)
         {
            this.§-3§ = this.§]!+§;
         }
         else if(this.§1!,§ > this.§]!+§ && this.§1!,§ - this.§]!+§ <= 180)
         {
            this.§-3§ = this.§]!+§ + param1 * (this.§1!,§ - this.§]!+§) / param2;
         }
         else if(this.§1!,§ > this.§]!+§ && this.§1!,§ - this.§]!+§ > 180)
         {
            this.§-3§ = this.§]!+§ + param1 * (this.§1!,§ - 360 - this.§]!+§) / param2;
         }
         else if(this.§1!,§ < this.§]!+§ && this.§]!+§ - this.§1!,§ <= 180)
         {
            this.§-3§ = this.§]!+§ + param1 * (this.§1!,§ - this.§]!+§) / param2;
         }
         else if(this.§1!,§ < this.§]!+§ && this.§]!+§ - this.§1!,§ > 180)
         {
            this.§-3§ = this.§]!+§ + param1 * (this.§1!,§ + 360 - this.§]!+§) / param2;
         }
      }
      
      public function get §;"&§() : Point
      {
         if(!§1b§)
         {
         }
         return null;
      }
      
      public function §@!j§() : Boolean
      {
         return this.§4!J§ == §=!f§.§[O§ || this.§4!J§ == §=!f§.§ in§;
      }
      
      public function §?!s§() : Boolean
      {
         return this.§4!J§ == §=!f§.§0-§;
      }
      
      public function §4"#§() : Boolean
      {
         return this.§4!J§ == §=!f§.§!#§;
      }
      
      public function §]!S§() : Boolean
      {
         return this.§4!J§ == §=!f§.§ in§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§4!J§ == §=!f§.§3"3§;
      }
      
      public function isGround() : Boolean
      {
         return this.§4!J§ == §=!f§.§"!g§;
      }
      
      public function §#!y§() : Boolean
      {
         return this.§4!J§ == §=!f§.§;n§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§4!J§ == §=!f§.§[Y§;
      }
      
      public function §0!e§() : Boolean
      {
         if(this.§@!'§ == "MISC_EXPLOSIVE_TNT" || this.§@!'§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §+m§() : Boolean
      {
         return (this.§?!s§() || this.§#!y§() || this.isMiscBlock()) && !this.§';§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §<M§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§4"#§())
         {
            return this.§7!D§;
         }
         if(!this.§?=§.§;!j§())
         {
            return this.§7!D§;
         }
         if(this.§`[§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§%i§(§>!&§.§%!5§);
            }
            else if(param1 > 12)
            {
               this.§%i§(§>!&§.§@+§);
            }
            else if(param1 > 3)
            {
               this.§%i§(§>!&§.§<!d§);
            }
            return this.§7!D§;
         }
         if(param1 <= this.§`[§)
         {
            if(param1 >= this.§`[§ / 2)
            {
               this.§%i§(§>!&§.§<!d§);
            }
            if(this.§@!j§() && this.§7!D§ == this.§@!#§)
            {
               this.§7!D§ = this.§@!#§ - 1;
            }
            return this.§7!D§;
         }
         param1 -= this.§`[§;
         if(param2 && this.§+m§())
         {
            _loc7_ = Math.min(this.§7!D§,int(param1));
            _loc8_ = §-!K§.§,j§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §-!K§.§2R§;
            }
            this.§?=§.§;!x§.addScore(_loc8_,§'=§.§>!c§,this.§7!D§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§3"+§.§%"0§(this.§@!'§));
         }
         if(!(param5 && this.§`U§))
         {
            this.§7!D§ -= param1;
         }
         if(this.§7!D§ < 1 && this.§@!j§())
         {
            this.§7!D§ = 1;
         }
         if(this.§7!D§ < 1)
         {
            this.§7!D§ = 0;
            §9!R§.§`m§(§>!&§.§%!5§,this.§="0§.§8"+§,"ChannelDestroyed");
         }
         else
         {
            this.§%i§(§>!&§.§@+§);
            this.addDamageParticles(this.§?=§.§;!x§.particles,param1);
         }
         this.§2!7§.setDamagedFrame();
         return this.§7!D§;
      }
      
      public function §%i§(param1:int) : void
      {
         §9!R§.§`m§(param1,this.§="0§.§8"+§);
      }
      
      public function §9"!§(param1:String) : Number
      {
         return this.§="0§.material.§5!@§(param1) * this.§9M§;
      }
      
      public function §?!^§(param1:String) : Number
      {
         return this.§="0§.material.§!!w§(param1);
      }
      
      public function §8-§() : String
      {
         return this.§="0§.material.mName;
      }
      
      public function §8!M§() : Number
      {
         return this.§="0§.§'!`§();
      }
      
      public function §#!L§() : int
      {
         return this.§="0§.§!!L§();
      }
      
      public function §`!d§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§@!j§() && this.§7!D§ == this.§@!#§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§`I§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §@_§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§!!"§();
      }
      
      protected function §!!"§() : Boolean
      {
         return this.§0!R§.§!!"§();
      }
      
      public function §]i§(param1:Number = 3) : void
      {
         this.§9M§ = param1;
         if(this.§9M§ > 1)
         {
            this.§2!7§.§#!A§();
         }
         else
         {
            this.§2!7§.§1l§ = null;
         }
      }
      
      public function §2!Q§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§="0§.§0!g§() == §>!y§.§%I§)
         {
            _loc2_ = this.§2!7§.mW * this.§2!7§.mH * (§-!K§.§"!C§ * §-!K§.§"!C§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§7!Z§.§@-§();
            if(param1)
            {
               _loc2_ *= this.§&!m§();
            }
            _loc2_ /= this.§`"§ * this.§`"§;
         }
         return _loc2_;
      }
      
      public function §&!m§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2!7§.§8!`§ - 1) / 10);
      }
      
      public function § "3§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§2"%§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5!Y§) : void
      {
      }
      
      public function addDamageParticles(param1:§5!Y§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §'i§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§3+§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§@&§()) + 360) % 360;
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
            this.§7!%§(_loc4_);
         }
         var _loc3_:Number = this.§@&§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§7!%§(_loc3_);
      }
      
      public function §8!Y§(param1:Number) : void
      {
         var _loc2_:Number = §4!`§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §>!U§(_loc2_);
         this.getBody().§7!^§(_loc2_);
      }
      
      public function §`v§(param1:Number, param2:Point) : void
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
         this.getBody().§3+§(_loc13_);
      }
   }
}
