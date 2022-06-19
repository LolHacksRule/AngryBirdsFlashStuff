package §'_§
{
   import § !k§.b2Body;
   import § !k§.b2BodyDef;
   import § !k§.b2FilterData;
   import § !k§.b2Fixture;
   import § !k§.b2World;
   import §!"8§.b2Vec2;
   import §&I§.b2PolygonShape;
   import §0!?§.§'!$§;
   import §1k§.§%4§;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §3,§.§!" §;
   import §3,§.§[!;§;
   import §<%§.§%;§;
   import §<%§.§9q§;
   import §<%§.§<`§;
   import §<%§.§=!D§;
   import §<%§.§[p§;
   import §]&§.Sprite;
   import flash.geom.Point;
   import §in§.b2Settings;
   
   public class §9V§
   {
      
      public static const §`!h§:uint = 1 << 1;
      
      public static const §&,§:uint = 1 << 2;
      
      public static const § !Y§:uint = 1 << 3;
      
      public static const §]!k§:uint = 1 << 4;
      
      public static const §=!c§:Boolean = true;
      
      public static const §["6§:Number = 5;
      
      public static const §4"7§:Number = 10;
       
      
      private var §^x§:String;
      
      private var §7!2§:int;
      
      private var §^!1§:int;
      
      public var §+%§:String;
      
      public var §;!D§:int;
      
      private var §";§:§<`§;
      
      private var §="§:§=!&§;
      
      private var mWorld:b2World;
      
      protected var §"!$§:String = "";
      
      protected var §+!N§:int = 1;
      
      private var §<-§:b2Fixture;
      
      private var §!!B§:b2Body;
      
      private var §-o§:b2Vec2;
      
      public var §9"8§:Number;
      
      public var § i§:Number;
      
      private var §3!n§:Number;
      
      private var §#k§:Boolean = false;
      
      private var §2!+§:Number;
      
      private var §#!P§:Number;
      
      private var §@f§:Number;
      
      private var § l§:Number;
      
      private var §^R§:Number;
      
      private var §7!a§:Number;
      
      public var §62§:Number = 1;
      
      private var §-k§:Boolean = false;
      
      public var § "1§:Number = 0;
      
      public var §1%§:Number = 0;
      
      protected var §6"%§:Boolean = false;
      
      public var §@!'§:§5!;§;
      
      private var §3!b§:Sprite;
      
      private var §>U§:Number = 0;
      
      private var §>!c§:Number = 0;
      
      private var §8P§:Number = 0;
      
      private var §6!l§:Number = 1.0;
      
      private var §=!S§:Boolean = false;
      
      protected var §=!X§:§;!1§;
      
      private var §-X§:Boolean = true;
      
      public function §9V§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§+%§ = param6;
         this.§";§ = §%;§.§8!]§(param6);
         this.§="§ = param1;
         this.§3!b§ = param2;
         this.§6!l§ = param10;
         this.§=!S§ = param11;
         this.§7!2§ = param5;
         this.§;!D§ = this.§";§.§;!D§;
         this.§^!1§ = this.§";§.§[!R§();
         this.§=!X§ = new §;!1§(§["6§,§4"7§);
         this.§@!'§ = new §5!;§(this,param2,param4);
         if(!this.§@!'§.§<!r§(param1.§0!J§.animationManager))
         {
            this.§@!'§.§@r§(this.§^!1§,this.§";§.§`!,§(),this.§";§.§!!W§() / §[!;§.§4!O§,this.§";§.§';§() / §[!;§.§4!O§);
         }
         this.§@!'§.§<!U§(this.§^!1§ == §=!D§.§<c§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§!!B§ = this.mWorld.§7!V§(_loc12_);
         this.§!!B§.§'A§(this);
         if(this.§^!1§ == §=!D§.§`!!§)
         {
            _loc14_ = b2PolygonShape.§2P§(this.§";§.shape.§]"A§ * param10,this.§";§.shape.§>!>§ * param10);
            this.§<-§ = this.§!!B§.CreateFixture2(_loc14_,this.§";§.§@v§());
         }
         else if(this.§^!1§ == §=!D§.§<c§ || this.§^!1§ == §=!D§.§+2§)
         {
            this.§<-§ = this.§!!B§.CreateFixture2(this.§";§.shape.§#T§(param10),this.§";§.§@v§());
         }
         this.§<-§.§@" §(this.§";§.§&!6§());
         this.§<-§.§6i§(this.§";§.§0"%§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§]"B§())
         {
            _loc13_.§`!8§ = §`!h§;
            _loc13_.§#!N§ = 65535 & ~§&,§;
         }
         else if(this.§+%§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§+%§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§`!8§ = §&,§;
            _loc13_.§#!N§ = 65535 & ~§`!h§;
         }
         this.§<-§.§ !e§(_loc13_);
         this.§3!n§ = this.§";§.§-!k§();
         if(this.§";§.§ i§ > 0)
         {
            this.§9"8§ = this.§ i§ = this.§";§.§ i§;
         }
         else
         {
            this.§9"8§ = this.§ i§ = Math.round(this.§+"9§(true) * this.§";§.§-!2§());
            if(this.§9"8§ < 1)
            {
               this.§9"8§ = this.§ i§ = 1;
            }
         }
         if(this.§";§.§;!D§ == §<`§.§+!5§)
         {
            this.§3!b§.visible = false;
         }
         else
         {
            this.§@!'§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§=!_§(param9);
         }
         this.§""2§();
         this.§-!z§(0,1);
         this.§@!'§.§<!S§(this.§";§.shape);
      }
      
      public static function §?!k§(param1:int, param2:§9q§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§0c§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§`V§;
            }
            §%4§.§#"?§(_loc4_,param3);
         }
      }
      
      public static function §0!4§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §6!h§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!b§;
      }
      
      public function get x() : Number
      {
         return this.§>U§;
      }
      
      public function get y() : Number
      {
         return this.§>!c§;
      }
      
      public function get scale() : Number
      {
         return this.§6!l§;
      }
      
      public function get front() : Boolean
      {
         return this.§=!S§;
      }
      
      public function get §'$§() : Number
      {
         return this.§!!B§.GetPosition().x;
      }
      
      public function get §33§() : Number
      {
         return this.§!!B§.GetPosition().y;
      }
      
      public function get §98§() : §<`§
      {
         return this.§";§;
      }
      
      public function get §1j§() : Boolean
      {
         return this.§3!n§ >= 0;
      }
      
      public function get §7!>§() : §=!&§
      {
         return this.§="§;
      }
      
      public function get § L§() : Boolean
      {
         return this.§-X§;
      }
      
      public function set § L§(param1:Boolean) : void
      {
         this.§-X§ = param1;
      }
      
      public function set §65§(param1:Boolean) : void
      {
         this.§#k§ = param1;
      }
      
      public function set §?6§(param1:uint) : void
      {
         this.§=!X§.§?6§ = param1;
      }
      
      public function get §?6§() : uint
      {
         return this.§=!X§.§?6§;
      }
      
      public function get §&"8§() : Boolean
      {
         return this.§-k§;
      }
      
      public function set §&"8§(param1:Boolean) : void
      {
         this.§-k§ = param1;
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
         return this.§^x§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§^x§ = param1;
      }
      
      public function §'a§(param1:b2FilterData) : void
      {
         if(this.§<-§)
         {
            this.§<-§.§ !e§(param1);
         }
      }
      
      protected function §9!Z§(param1:String) : int
      {
         return §5!$§.§9!Z§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§";§.§?<§();
         _loc3_.§5!C§ = true;
         _loc3_.§ "$§ = true;
         _loc3_.§7x§ = true;
         _loc3_.§]=§ = 1;
         _loc3_.§@!%§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§4!>§(this.§2"7§());
            this.mWorld = null;
         }
         this.§@!'§.dispose();
         if(this.§3!b§)
         {
            this.§3!b§.dispose();
            this.§3!b§ = null;
         }
         this.§<-§ = null;
         this.§-o§ = null;
         this.§";§ = null;
      }
      
      public function §=!_§(param1:Number) : void
      {
         this.§2"7§().§-!H§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §8O§() : Number
      {
         return (360 - this.§2"7§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §`A§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§2"7§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§catch§();
         }
         if(param3)
         {
            this.§+!q§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§<-§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§2"7§().GetPosition().x >= param3 && this.§2"7§().GetPosition().x <= param4 && this.§2"7§().GetPosition().y >= param1 && this.§2"7§().GetPosition().y <= param2;
      }
      
      public function §2!f§(param1:b2Vec2) : void
      {
         this.§-o§ = param1;
      }
      
      public function §>"A§() : void
      {
         if(this.§-o§)
         {
            this.§`A§(this.§-o§,false);
            this.§-o§ = null;
         }
      }
      
      public function §catch§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§2"7§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§2"7§().§ ! §(0);
         }
         else
         {
            this.§2"7§().§ ! §(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §+!q§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§2"7§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§=!_§(_loc2_);
      }
      
      public function §=!k§(param1:Number) : void
      {
         this.§2"7§().§ ! §(param1);
      }
      
      public function §2"7§() : b2Body
      {
         if(this.§<-§ != null)
         {
            return this.§<-§.GetBody();
         }
         return null;
      }
      
      public function §^H§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§>U§ = param1;
            this.§>!c§ = param2;
         }
         this.§2"7§().GetPosition().x = this.§>U§ * §[!;§.§4!O§;
         this.§2"7§().GetPosition().y = this.§>!c§ * §[!;§.§4!O§;
      }
      
      public function §-!z§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§6"%§)
         {
            _loc3_ = true;
            this.§6"%§ = false;
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
            this.§@!'§.§;!e§();
         }
         if(this.§62§ > 1 && this.§@!'§.§ o§)
         {
            _loc4_ = 4 + (this.§@!'§.§ o§.blurX - 4 + param2 / 20) % 28;
            this.§@!'§.§ o§.blurX = _loc4_;
            this.§@!'§.§ o§.blurY = _loc4_;
         }
         this.§@!'§.§>=§(param2);
         if(§=!c§)
         {
            this.§`!U§(param1);
         }
         else
         {
            this.§8P§ = this.§@f§;
            this.§>U§ = this.§2!+§;
            this.§>!c§ = this.§#!P§;
         }
         this.§3!b§.x = Math.round(this.§>U§);
         this.§3!b§.y = Math.round(this.§>!c§);
         this.§3!b§.rotation = this.§8P§ / 180 * Math.PI;
      }
      
      public function §""2§() : void
      {
         var _loc1_:Number = this.§2"7§().GetPosition().x;
         var _loc2_:Number = this.§2"7§().GetPosition().y;
         this.§7!a§ = this.§@f§;
         this.§ l§ = this.§2!+§;
         this.§^R§ = this.§#!P§;
         this.§@f§ = this.§2"7§().GetAngle() * (180 / Math.PI) % 360;
         this.§2!+§ = _loc1_ / §[!;§.§4!O§;
         this.§#!P§ = _loc2_ / §[!;§.§4!O§;
         this.§=!X§.§ g§();
         this.§=!X§.§3D§(this.§2"7§());
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
      
      public function §`!U§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §'!$§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§="§.§0!J§.mLevelEngine.§52§ * 1000;
         }
         param1 *= -1;
         if(this.§2!+§ == this.§ l§ || param1 == 0)
         {
            this.§ "1§ = 0;
            this.§>U§ = this.§2!+§;
         }
         else
         {
            this.§ "1§ = param1 * (this.§ l§ - this.§2!+§) / param2;
            this.§>U§ = this.§2!+§ + this.§ "1§;
         }
         if(this.§#!P§ == this.§^R§ || param1 == 0)
         {
            this.§1%§ = 0;
            this.§>!c§ = this.§#!P§;
         }
         else
         {
            this.§1%§ = param1 * (this.§^R§ - this.§#!P§) / param2;
            this.§>!c§ = this.§#!P§ + this.§1%§;
         }
         if(this.§@f§ == this.§7!a§ || param1 == 0)
         {
            this.§8P§ = this.§@f§;
         }
         else if(this.§7!a§ > this.§@f§ && this.§7!a§ - this.§@f§ <= 180)
         {
            this.§8P§ = this.§@f§ + param1 * (this.§7!a§ - this.§@f§) / param2;
         }
         else if(this.§7!a§ > this.§@f§ && this.§7!a§ - this.§@f§ > 180)
         {
            this.§8P§ = this.§@f§ + param1 * (this.§7!a§ - 360 - this.§@f§) / param2;
         }
         else if(this.§7!a§ < this.§@f§ && this.§@f§ - this.§7!a§ <= 180)
         {
            this.§8P§ = this.§@f§ + param1 * (this.§7!a§ - this.§@f§) / param2;
         }
         else if(this.§7!a§ < this.§@f§ && this.§@f§ - this.§7!a§ > 180)
         {
            this.§8P§ = this.§@f§ + param1 * (this.§7!a§ + 360 - this.§@f§) / param2;
         }
      }
      
      public function get §"§() : Point
      {
         if(!§=!c§)
         {
         }
         return null;
      }
      
      public function §]"B§() : Boolean
      {
         return this.§;!D§ == §<`§.§8s§ || this.§;!D§ == §<`§.§5!s§;
      }
      
      public function §=!4§() : Boolean
      {
         return this.§;!D§ == §<`§.§,"+§;
      }
      
      public function §!m§() : Boolean
      {
         return this.§;!D§ == §<`§.§1"@§;
      }
      
      public function §;Y§() : Boolean
      {
         return this.§;!D§ == §<`§.§5!s§;
      }
      
      public function §@!J§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§;!D§ == §<`§.§?!C§;
      }
      
      public function isGround() : Boolean
      {
         return this.§;!D§ == §<`§.§+!5§;
      }
      
      public function §=J§() : Boolean
      {
         return this.§;!D§ == §<`§.§+!l§;
      }
      
      public function §`!]§() : Boolean
      {
         return this.§;!D§ == §<`§.§+!E§;
      }
      
      public function §;!#§() : Boolean
      {
         if(this.§+%§ == "MISC_EXPLOSIVE_TNT" || this.§+%§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §try§() : Boolean
      {
         return (this.§=!4§() || this.§=J§() || this.§`!]§()) && !this.§&"8§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §5y§() : Number
      {
         return Number(Math.sqrt(this.§2"7§().GetLinearVelocity().x * this.§2"7§().GetLinearVelocity().x + this.§2"7§().GetLinearVelocity().y * this.§2"7§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§!m§())
         {
            return this.§9"8§;
         }
         if(!this.§="§.§!5§())
         {
            return this.§9"8§;
         }
         if(this.§3!n§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§-H§(§9q§.§>!k§);
            }
            else if(param1 > 12)
            {
               this.§-H§(§9q§.§9g§);
            }
            else if(param1 > 3)
            {
               this.§-H§(§9q§.§!P§);
            }
            return this.§9"8§;
         }
         if(param1 <= this.§3!n§)
         {
            if(param1 >= this.§3!n§ / 2)
            {
               this.§-H§(§9q§.§!P§);
            }
            if(this.§]"B§() && this.§9"8§ == this.§ i§)
            {
               this.§9"8§ = this.§ i§ - 1;
            }
            return this.§9"8§;
         }
         param1 -= this.§3!n§;
         if(param2 && this.§try§())
         {
            _loc7_ = Math.min(this.§9"8§,int(param1));
            _loc8_ = §[!;§.§%"§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §[!;§.§8a§;
            }
            this.§="§.§0!J§.addScore(_loc8_,§!" §.§4!P§,this.§9"8§ > param1 && param3,this.§2"7§().GetPosition().x,this.§2"7§().GetPosition().y,§5!$§.§=!H§(this.§+%§));
         }
         if(!(param5 && this.§#k§))
         {
            this.§9"8§ -= param1;
         }
         if(this.§9"8§ < 1 && this.§]"B§())
         {
            this.§9"8§ = 1;
         }
         if(this.§9"8§ < 1)
         {
            this.§9"8§ = 0;
            §9V§.§?!k§(§9q§.§>!k§,this.§";§.§#t§,"ChannelDestroyed");
         }
         else
         {
            this.§-H§(§9q§.§9g§);
            this.addDamageParticles(this.§="§.§0!J§.particles,param1);
         }
         this.§@!'§.setDamagedFrame();
         return this.§9"8§;
      }
      
      public function §-H§(param1:int) : void
      {
         §9V§.§?!k§(param1,this.§";§.§#t§);
      }
      
      public function §4!]§(param1:String) : Number
      {
         return this.§";§.material.§6"§(param1) * this.§62§;
      }
      
      public function §while§(param1:String) : Number
      {
         return this.§";§.material.§@!§(param1);
      }
      
      public function §'!1§() : String
      {
         return this.§";§.material.mName;
      }
      
      public function §!@§() : Number
      {
         return this.§";§.§-!2§();
      }
      
      public function §#R§() : int
      {
         return this.§";§.§<!i§();
      }
      
      public function §9!1§() : Boolean
      {
         return this.§2"7§().IsAwake() && (this.§]"B§() && this.§9"8§ == this.§ i§ || Math.abs(this.§2"7§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§2"7§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§2"7§().§[R§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §'1§() : Boolean
      {
         if(!this.§2"7§().IsAwake())
         {
            return true;
         }
         return !this.§;"&§();
      }
      
      protected function §;"&§() : Boolean
      {
         return this.§=!X§.§;"&§();
      }
      
      public function §9v§(param1:Number = 3) : void
      {
         this.§62§ = param1;
         if(this.§62§ > 1)
         {
            this.§@!'§.§%7§();
         }
         else
         {
            this.§@!'§.§ o§ = null;
         }
      }
      
      public function §+"9§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§";§.§?<§() == §[p§.§#w§)
         {
            _loc2_ = this.§@!'§.mW * this.§@!'§.mH * (§[!;§.§4!O§ * §[!;§.§4!O§);
         }
         else
         {
            _loc2_ = this.§2"7§().GetMass() / this.§<-§.§#9§();
            if(param1)
            {
               _loc2_ *= this.§?!<§();
            }
            _loc2_ /= this.§6!l§ * this.§6!l§;
         }
         return _loc2_;
      }
      
      public function §?!<§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§@!'§.§37§ - 1) / 10);
      }
      
      public function §6t§(param1:Number) : void
      {
         var _loc2_:Number = this.§2"7§().GetLinearVelocity().x;
         var _loc3_:Number = this.§2"7§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§2"7§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§=!&§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§,>§) : void
      {
      }
      
      public function addDamageParticles(param1:§,>§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §%"5§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§2"7§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§2"7§().§#H§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§8O§()) + 360) % 360;
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
            this.§=!_§(_loc4_);
         }
         var _loc3_:Number = this.§8O§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§=!_§(_loc3_);
      }
      
      public function §[!Q§(param1:Number) : void
      {
         var _loc2_:Number = §0!4§(this.§2"7§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §6!h§(_loc2_);
         this.§2"7§().§-!H§(_loc2_);
      }
      
      public function §1";§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§2"7§().GetPosition().Copy();
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
         this.§2"7§().§#H§(_loc13_);
      }
   }
}
