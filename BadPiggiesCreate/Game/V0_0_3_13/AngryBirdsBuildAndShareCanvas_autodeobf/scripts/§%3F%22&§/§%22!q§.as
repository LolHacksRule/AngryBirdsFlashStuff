package §?"&§
{
   import § ""§.§4!n§;
   import § ""§.§7Q§;
   import § ""§.§<9§;
   import § ""§.§["?§;
   import § ""§.§]k§;
   import §&W§.§7L§;
   import §1!z§.b2Vec2;
   import §5!]§.b2PolygonShape;
   import §7!q§.b2Body;
   import §7!q§.b2BodyDef;
   import §7!q§.b2FilterData;
   import §7!q§.b2Fixture;
   import §7!q§.b2World;
   import §8!E§.§9!S§;
   import §8!E§.§?!X§;
   import §>Z§.§5;§;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §[M§.b2Settings;
   import §`L§.Sprite;
   import flash.geom.Point;
   
   public class §"!q§
   {
      
      public static const §<g§:uint = 1 << 1;
      
      public static const §="6§:uint = 1 << 2;
      
      public static const §`!v§:uint = 1 << 3;
      
      public static const §<"1§:uint = 1 << 4;
      
      public static const §>^§:Boolean = true;
      
      public static const §[!0§:Number = 5;
      
      public static const §'"?§:Number = 10;
       
      
      private var §4!a§:String;
      
      private var §4!%§:int;
      
      private var §&!#§:int;
      
      public var §=!+§:String;
      
      public var §!"3§:int;
      
      protected var §<@§:§]k§;
      
      private var §'"&§:§5b§;
      
      private var §2!J§:b2World;
      
      protected var §,#§:String = "";
      
      protected var §]o§:int = 1;
      
      private var §&"3§:b2Fixture;
      
      private var §each §:b2Body;
      
      private var §`!g§:b2Vec2;
      
      public var §`X§:Number;
      
      public var §&<§:Number;
      
      private var §&"2§:Number;
      
      private var §9!X§:Boolean = false;
      
      private var §1!Z§:Number;
      
      private var §-c§:Number;
      
      private var §<",§:Number;
      
      private var §=!u§:Number;
      
      private var §5!'§:Number;
      
      private var §;i§:Number;
      
      public var §]H§:Number = 1;
      
      private var §9<§:Boolean = false;
      
      public var §?!0§:Number = 0;
      
      public var §&!x§:Number = 0;
      
      protected var §9!g§:Boolean = false;
      
      public var §!!8§:§"f§;
      
      private var §`B§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §%B§:Number = 0;
      
      private var §#"0§:Number = 1.0;
      
      private var §=6§:Boolean = false;
      
      protected var §<!p§:§?!k§;
      
      private var §4!"§:Boolean = true;
      
      public function §"!q§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§=!+§ = param6;
         this.§<@§ = §4!n§.§]4§(param6);
         this.§'"&§ = param1;
         this.§`B§ = param2;
         this.§#"0§ = param10;
         this.§=6§ = param11;
         this.§4!%§ = param5;
         this.§!"3§ = this.§<@§.§!"3§;
         this.§&!#§ = this.§<@§.§="?§();
         this.§<!p§ = new §?!k§(§[!0§,§'"?§);
         this.§!!8§ = new §"f§(this,param2,param4);
         if(!this.§!!8§.§#!W§(param1.§7!;§.§1!,§))
         {
            this.§!!8§.§^k§(this.§&!#§,this.§<@§.§;,§(),this.§<@§.§2W§() / §?!X§.§57§,this.§<@§.§8">§() / §?!X§.§57§);
         }
         this.§!!8§.§+!d§(this.§&!#§ == §["?§.§2!`§);
         this.§2!J§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§each § = this.§2!J§.§+!q§(_loc12_);
         this.§each §.§?!5§(this);
         if(this.§&!#§ == §["?§.§@!%§)
         {
            _loc14_ = b2PolygonShape.§+D§(this.§<@§.shape.§+!C§ * param10,this.§<@§.shape.§1z§ * param10);
            this.§&"3§ = this.§each §.CreateFixture2(_loc14_,this.§<@§.§-"<§());
         }
         else if(this.§&!#§ == §["?§.§2!`§ || this.§&!#§ == §["?§.§;E§)
         {
            this.§&"3§ = this.§each §.CreateFixture2(this.§<@§.shape.§,!9§(param10),this.§<@§.§-"<§());
         }
         this.§&"3§.§"!#§(this.§<@§.§ !Z§());
         this.§&"3§.§'!c§(this.§<@§.§,6§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§^!u§())
         {
            _loc13_.§1'§ = §<g§;
            _loc13_.§4!L§ = 65535 & ~§="6§;
         }
         else if(this.§=!+§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§=!+§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§1'§ = §="6§;
            _loc13_.§4!L§ = 65535 & ~§<g§;
         }
         this.§&"3§.§-!J§(_loc13_);
         this.§&"2§ = this.§<@§.§]+§();
         if(this.§<@§.§&<§ > 0)
         {
            this.§`X§ = this.§&<§ = this.§<@§.§&<§;
         }
         else
         {
            this.§`X§ = this.§&<§ = Math.round(this.§,!U§(true) * this.§<@§.§&!R§());
            if(this.§`X§ < 1)
            {
               this.§`X§ = this.§&<§ = 1;
            }
         }
         if(this.§<@§.§!"3§ == §]k§.§9O§)
         {
            this.§`B§.visible = false;
         }
         else
         {
            this.§!!8§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§%[§(param9);
         }
         this.§5!A§();
         this.§=R§(0,1);
         this.§!!8§.§4!d§(this.§<@§.shape);
      }
      
      public static function §2z§(param1:int, param2:§<9§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§0!R§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§?!x§;
            }
            §5;§.§#r§(_loc4_,param3);
         }
      }
      
      public static function §+!,§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §,![§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§`B§;
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
         return this.§#"0§;
      }
      
      public function get front() : Boolean
      {
         return this.§=6§;
      }
      
      public function get §&!V§() : Number
      {
         return this.§each §.GetPosition().x;
      }
      
      public function get §%!g§() : Number
      {
         return this.§each §.GetPosition().y;
      }
      
      public function get §5U§() : §]k§
      {
         return this.§<@§;
      }
      
      public function get §=!E§() : Boolean
      {
         return this.§&"2§ >= 0;
      }
      
      public function get container() : §5b§
      {
         return this.§'"&§;
      }
      
      public function get §[!b§() : Boolean
      {
         return this.§4!"§;
      }
      
      public function set §[!b§(param1:Boolean) : void
      {
         this.§4!"§ = param1;
      }
      
      public function set §&!N§(param1:Boolean) : void
      {
         this.§9!X§ = param1;
      }
      
      public function set §^=§(param1:uint) : void
      {
         this.§<!p§.§^=§ = param1;
      }
      
      public function get §^=§() : uint
      {
         return this.§<!p§.§^=§;
      }
      
      public function get §<!f§() : Boolean
      {
         return this.§9<§;
      }
      
      public function set §<!f§(param1:Boolean) : void
      {
         this.§9<§ = param1;
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
         return this.§4!a§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§4!a§ = param1;
      }
      
      public function §&">§(param1:b2FilterData) : void
      {
         if(this.§&"3§)
         {
            this.§&"3§.§-!J§(param1);
         }
      }
      
      protected function §6z§(param1:String) : int
      {
         return §=!i§.§6z§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§<@§.§!!9§();
         _loc3_.§'2§ = true;
         _loc3_.§^O§ = true;
         _loc3_.§-C§ = true;
         _loc3_.§%!G§ = 1;
         _loc3_.§!!s§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§2!J§)
         {
            this.§2!J§.§2_§(this.getBody());
            this.§2!J§ = null;
         }
         this.§!!8§.dispose();
         if(this.§`B§)
         {
            this.§`B§.dispose();
            this.§`B§ = null;
         }
         this.§&"3§ = null;
         this.§`!g§ = null;
         this.§<@§ = null;
      }
      
      public function §%[§(param1:Number) : void
      {
         this.getBody().§4z§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §#!q§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §^!6§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§+" §();
         }
         if(param3)
         {
            this.§+W§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§&"3§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §7!@§(param1:b2Vec2) : void
      {
         this.§`!g§ = param1;
      }
      
      public function §9A§() : void
      {
         if(this.§`!g§)
         {
            this.§^!6§(this.§`!g§,false);
            this.§`!g§ = null;
         }
      }
      
      public function §+" §(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§9J§(0);
         }
         else
         {
            this.getBody().§9J§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §+W§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§%[§(_loc2_);
      }
      
      public function §2u§(param1:Number) : void
      {
         this.getBody().§9J§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§&"3§ != null)
         {
            return this.§&"3§.GetBody();
         }
         return null;
      }
      
      public function §?'§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §?!X§.§57§;
         this.getBody().GetPosition().y = this.mY * §?!X§.§57§;
      }
      
      public function §=R§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§9!g§)
         {
            _loc3_ = true;
            this.§9!g§ = false;
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
            this.§!!8§.§=Y§();
         }
         if(this.§]H§ > 1 && this.§!!8§.§ n§)
         {
            _loc4_ = 4 + (this.§!!8§.§ n§.blurX - 4 + param2 / 20) % 28;
            this.§!!8§.§ n§.blurX = _loc4_;
            this.§!!8§.§ n§.blurY = _loc4_;
         }
         this.§!!8§.§=L§(param2);
         if(§>^§)
         {
            this.§1q§(param1);
         }
         else
         {
            this.§%B§ = this.§<",§;
            this.mX = this.§1!Z§;
            this.mY = this.§-c§;
         }
         this.§`B§.x = Math.round(this.mX);
         this.§`B§.y = Math.round(this.mY);
         this.§`B§.rotation = this.§%B§ / 180 * Math.PI;
      }
      
      public function §5!A§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§;i§ = this.§<",§;
         this.§=!u§ = this.§1!Z§;
         this.§5!'§ = this.§-c§;
         this.§<",§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§1!Z§ = _loc1_ / §?!X§.§57§;
         this.§-c§ = _loc2_ / §?!X§.§57§;
         this.§<!p§.§-!K§();
         this.§<!p§.§&V§(this.getBody());
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
      
      public function §1q§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §7L§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§'"&§.§7!;§.§1!-§.§5"2§ * 1000;
         }
         param1 *= -1;
         if(this.§1!Z§ == this.§=!u§ || param1 == 0)
         {
            this.§?!0§ = 0;
            this.mX = this.§1!Z§;
         }
         else
         {
            this.§?!0§ = param1 * (this.§=!u§ - this.§1!Z§) / param2;
            this.mX = this.§1!Z§ + this.§?!0§;
         }
         if(this.§-c§ == this.§5!'§ || param1 == 0)
         {
            this.§&!x§ = 0;
            this.mY = this.§-c§;
         }
         else
         {
            this.§&!x§ = param1 * (this.§5!'§ - this.§-c§) / param2;
            this.mY = this.§-c§ + this.§&!x§;
         }
         if(this.§<",§ == this.§;i§ || param1 == 0)
         {
            this.§%B§ = this.§<",§;
         }
         else if(this.§;i§ > this.§<",§ && this.§;i§ - this.§<",§ <= 180)
         {
            this.§%B§ = this.§<",§ + param1 * (this.§;i§ - this.§<",§) / param2;
         }
         else if(this.§;i§ > this.§<",§ && this.§;i§ - this.§<",§ > 180)
         {
            this.§%B§ = this.§<",§ + param1 * (this.§;i§ - 360 - this.§<",§) / param2;
         }
         else if(this.§;i§ < this.§<",§ && this.§<",§ - this.§;i§ <= 180)
         {
            this.§%B§ = this.§<",§ + param1 * (this.§;i§ - this.§<",§) / param2;
         }
         else if(this.§;i§ < this.§<",§ && this.§<",§ - this.§;i§ > 180)
         {
            this.§%B§ = this.§<",§ + param1 * (this.§;i§ + 360 - this.§<",§) / param2;
         }
      }
      
      public function get §2!%§() : Point
      {
         if(!§>^§)
         {
         }
         return null;
      }
      
      public function §^!u§() : Boolean
      {
         return this.§!"3§ == §]k§.§%!5§ || this.§!"3§ == §]k§.§%"9§;
      }
      
      public function §0"1§() : Boolean
      {
         return this.§!"3§ == §]k§.§'!o§;
      }
      
      public function §?l§() : Boolean
      {
         return this.§!"3§ == §]k§.§>U§;
      }
      
      public function §23§() : Boolean
      {
         return this.§!"3§ == §]k§.§%"9§;
      }
      
      public function §'y§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§!"3§ == §]k§.§'U§;
      }
      
      public function isGround() : Boolean
      {
         return this.§!"3§ == §]k§.§9O§;
      }
      
      public function §-E§() : Boolean
      {
         return this.§!"3§ == §]k§.§8"$§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§!"3§ == §]k§.§%!A§;
      }
      
      public function §7i§() : Boolean
      {
         if(this.§=!+§ == "MISC_EXPLOSIVE_TNT" || this.§=!+§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §'W§() : Boolean
      {
         return (this.§0"1§() || this.§-E§() || this.isMiscBlock()) && !this.§<!f§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §]X§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§?l§())
         {
            return this.§`X§;
         }
         if(!this.§'"&§.§2$§())
         {
            return this.§`X§;
         }
         if(this.§&"2§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@!,§(§<9§.§%!b§);
            }
            else if(param1 > 12)
            {
               this.§@!,§(§<9§.§3=§);
            }
            else if(param1 > 3)
            {
               this.§@!,§(§<9§.§;!J§);
            }
            return this.§`X§;
         }
         if(param1 <= this.§&"2§)
         {
            if(param1 >= this.§&"2§ / 2)
            {
               this.§@!,§(§<9§.§;!J§);
            }
            if(this.§^!u§() && this.§`X§ == this.§&<§)
            {
               this.§`X§ = this.§&<§ - 1;
            }
            return this.§`X§;
         }
         param1 -= this.§&"2§;
         if(param2 && this.§'W§())
         {
            _loc7_ = Math.min(this.§`X§,int(param1));
            _loc8_ = §?!X§.§%!O§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §?!X§.§7"5§;
            }
            this.§'"&§.§7!;§.addScore(_loc8_,§9!S§.§'$§,this.§`X§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§=!i§.§ !2§(this.§=!+§));
         }
         if(!(param5 && this.§9!X§))
         {
            this.§`X§ -= param1;
         }
         if(this.§`X§ < 1 && this.§^!u§())
         {
            this.§`X§ = 1;
         }
         if(this.§`X§ < 1)
         {
            this.§`X§ = 0;
            §"!q§.§2z§(§<9§.§%!b§,this.§<@§.§@X§,"ChannelDestroyed");
         }
         else
         {
            this.§@!,§(§<9§.§3=§);
            this.addDamageParticles(this.§'"&§.§7!;§.particles,param1);
         }
         this.§!!8§.setDamagedFrame();
         return this.§`X§;
      }
      
      public function §@!,§(param1:int) : void
      {
         §"!q§.§2z§(param1,this.§<@§.§@X§);
      }
      
      public function §%!e§(param1:String) : Number
      {
         return this.§<@§.material.§6[§(param1) * this.§]H§;
      }
      
      public function §?!4§(param1:String) : Number
      {
         return this.§<@§.material.§=!k§(param1);
      }
      
      public function §<!z§() : String
      {
         return this.§<@§.material.mName;
      }
      
      public function §61§() : Number
      {
         return this.§<@§.§&!R§();
      }
      
      public function §,!g§() : int
      {
         return this.§<@§.§^d§();
      }
      
      public function §1"§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§^!u§() && this.§`X§ == this.§&<§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§9%§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §<!s§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§9V§();
      }
      
      protected function §9V§() : Boolean
      {
         return this.§<!p§.§9V§();
      }
      
      public function §&!n§(param1:Number = 3) : void
      {
         this.§]H§ = param1;
         if(this.§]H§ > 1)
         {
            this.§!!8§.§!!j§();
         }
         else
         {
            this.§!!8§.§ n§ = null;
         }
      }
      
      public function §,!U§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§<@§.§!!9§() == §7Q§.§!?§)
         {
            _loc2_ = this.§!!8§.mW * this.§!!8§.mH * (§?!X§.§57§ * §?!X§.§57§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§&"3§.§,!D§();
            if(param1)
            {
               _loc2_ *= this.§3y§();
            }
            _loc2_ /= this.§#"0§ * this.§#"0§;
         }
         return _loc2_;
      }
      
      public function §3y§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§!!8§.§1!O§ - 1) / 10);
      }
      
      public function §0H§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§5b§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§ !>§) : void
      {
      }
      
      public function addDamageParticles(param1:§ !>§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §#!;§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§"!2§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§#!q§()) + 360) % 360;
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
            this.§%[§(_loc4_);
         }
         var _loc3_:Number = this.§#!q§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§%[§(_loc3_);
      }
      
      public function §9g§(param1:Number) : void
      {
         var _loc2_:Number = §+!,§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §,![§(_loc2_);
         this.getBody().§4z§(_loc2_);
      }
      
      public function §+0§(param1:Number, param2:Point) : void
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
         this.getBody().§"!2§(_loc13_);
      }
   }
}
