package §+!8§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§ !;§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2Body;
   import §3!R§.b2BodyDef;
   import §3!R§.b2FilterData;
   import §3!R§.b2Fixture;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   import §7q§.b2PolygonShape;
   import §@0§.§ $§;
   import §@0§.§!k§;
   import §@0§.§3U§;
   import §@0§.§56§;
   import §@0§.§`>§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^P§.b2Settings;
   import flash.geom.Point;
   
   public class §,_§
   {
      
      public static const §2P§:uint = 1 << 1;
      
      public static const §2!<§:uint = 1 << 2;
      
      public static const §[!B§:uint = 1 << 3;
      
      public static const §]! §:uint = 1 << 4;
      
      public static const §6!b§:Boolean = true;
      
      public static const §^2§:Number = 5;
      
      public static const §?n§:Number = 10;
       
      
      private var §7!+§:String;
      
      private var §=!N§:int;
      
      private var §'R§:int;
      
      public var §>R§:String;
      
      public var §7!?§:int;
      
      private var §0!b§:§ $§;
      
      private var §6!"§:§-!N§;
      
      private var mWorld:b2World;
      
      protected var §<b§:String = "";
      
      protected var §"$§:int = 1;
      
      private var §!8§:b2Fixture;
      
      private var §?'§:b2Body;
      
      private var §?-§:b2Vec2;
      
      public var §[h§:Number;
      
      public var §'!V§:Number;
      
      private var §[!$§:Number;
      
      private var §9!-§:Boolean = false;
      
      private var §4d§:Number;
      
      private var §>d§:Number;
      
      private var §5D§:Number;
      
      private var §'!_§:Number;
      
      private var §@!2§:Number;
      
      private var §finally§:Number;
      
      public var §^!O§:Number = 1;
      
      private var §?^§:Boolean = false;
      
      public var §=H§:Number = 0;
      
      public var §]g§:Number = 0;
      
      protected var §"!^§:Boolean = false;
      
      public var §[r§:§&!_§;
      
      private var §;=§:Sprite;
      
      private var §"!d§:Number = 0;
      
      private var §,!W§:Number = 0;
      
      private var §^Y§:Number = 0;
      
      private var get:Number = 1.0;
      
      private var §class§:Boolean = false;
      
      protected var §!w§:§^w§;
      
      private var §2E§:Boolean = true;
      
      public function §,_§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§>R§ = param6;
         this.§0!b§ = §`>§.§<!>§(param6);
         this.§6!"§ = param1;
         this.§;=§ = param2;
         this.get = param10;
         this.§class§ = param11;
         this.§=!N§ = param5;
         this.§7!?§ = this.§0!b§.§7!?§;
         this.§'R§ = this.§0!b§.§2!N§();
         this.§!w§ = new §^w§(§^2§,§?n§);
         this.§[r§ = new §&!_§(this,param2,param4);
         if(!this.§[r§.§`!3§(param1.§=!V§.§?!O§))
         {
            this.§[r§.§0>§(this.§'R§,this.§0!b§.§2!1§(),this.§0!b§.§9"§() / §^!2§.§3!S§,this.§0!b§.§2!&§() / §^!2§.§3!S§);
         }
         this.§[r§.§9p§(this.§'R§ == §3U§.§=P§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§?'§ = this.mWorld.§#m§(_loc12_);
         this.§?'§.§-N§(this);
         if(this.§'R§ == §3U§.§1!7§)
         {
            _loc14_ = b2PolygonShape.§4Y§(this.§0!b§.shape.§@!-§ * param10,this.§0!b§.shape.§3S§ * param10);
            this.§!8§ = this.§?'§.CreateFixture2(_loc14_,this.§0!b§.§try§());
         }
         else if(this.§'R§ == §3U§.§=P§ || this.§'R§ == §3U§.§?t§)
         {
            this.§!8§ = this.§?'§.CreateFixture2(this.§0!b§.shape.§7!O§(param10),this.§0!b§.§try§());
         }
         this.§!8§.§@9§(this.§0!b§.§'B§());
         this.§!8§.§>!X§(this.§0!b§.§]E§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§`P§())
         {
            _loc13_.§]!&§ = §2P§;
            _loc13_.§+Q§ = 65535 & ~§2!<§;
         }
         else if(this.§>R§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§>R§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§]!&§ = §2!<§;
            _loc13_.§+Q§ = 65535 & ~§2P§;
         }
         this.§!8§.§8a§(_loc13_);
         this.§[!$§ = this.§0!b§.§,!U§();
         if(this.§0!b§.§'!V§ > 0)
         {
            this.§[h§ = this.§'!V§ = this.§0!b§.§'!V§;
         }
         else
         {
            this.§[h§ = this.§'!V§ = Math.round(this.§[x§(true) * this.§0!b§.§=W§());
            if(this.§[h§ < 1)
            {
               this.§[h§ = this.§'!V§ = 1;
            }
         }
         if(this.§0!b§.§7!?§ == § $§.§[!W§)
         {
            this.§;=§.visible = false;
         }
         else
         {
            this.§[r§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§`X§(param9);
         }
         this.§4!2§();
         this.§&!G§(0,1);
         this.§[r§.§3!^§(this.§0!b§.shape);
      }
      
      public static function §>!C§(param1:int, param2:§!k§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§?J§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§?6§;
            }
            §&M§.§<!_§(_loc4_,param3);
         }
      }
      
      public static function §,O§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §3!]§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§;=§;
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function get scale() : Number
      {
         return this.get;
      }
      
      public function get front() : Boolean
      {
         return this.§class§;
      }
      
      public function get §!!A§() : Number
      {
         return this.§?'§.GetPosition().x;
      }
      
      public function get §"#§() : Number
      {
         return this.§?'§.GetPosition().y;
      }
      
      public function get §-h§() : § $§
      {
         return this.§0!b§;
      }
      
      public function get §4>§() : Boolean
      {
         return this.§[!$§ >= 0;
      }
      
      public function get container() : §-!N§
      {
         return this.§6!"§;
      }
      
      public function get §`!J§() : Boolean
      {
         return this.§2E§;
      }
      
      public function set §`!J§(param1:Boolean) : void
      {
         this.§2E§ = param1;
      }
      
      public function set §[!A§(param1:Boolean) : void
      {
         this.§9!-§ = param1;
      }
      
      public function set §!!>§(param1:uint) : void
      {
         this.§!w§.§!!>§ = param1;
      }
      
      public function get §!!>§() : uint
      {
         return this.§!w§.§!!>§;
      }
      
      public function get §0!>§() : Boolean
      {
         return this.§?^§;
      }
      
      public function set §0!>§(param1:Boolean) : void
      {
         this.§?^§ = param1;
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
         return this.§7!+§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§7!+§ = param1;
      }
      
      public function §5!G§(param1:b2FilterData) : void
      {
         if(this.§!8§)
         {
            this.§!8§.§8a§(param1);
         }
      }
      
      protected function §9Z§(param1:String) : int
      {
         return §!U§.§9Z§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§0!b§.§`K§();
         _loc3_.§>6§ = true;
         _loc3_.§40§ = true;
         _loc3_.§?L§ = true;
         _loc3_.§5!T§ = 1;
         _loc3_.§,r§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§3![§(this.§0c§());
            this.mWorld = null;
         }
         this.§[r§.dispose();
         if(this.§;=§)
         {
            this.§;=§.dispose();
            this.§;=§ = null;
         }
         this.§!8§ = null;
         this.§?-§ = null;
         this.§0!b§ = null;
      }
      
      public function §`X§(param1:Number) : void
      {
         this.§0c§().§7&§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §4!W§() : Number
      {
         return (360 - this.§0c§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §[!8§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§0c§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§+%§();
         }
         if(param3)
         {
            this.§!c§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§!8§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§0c§().GetPosition().x >= param3 && this.§0c§().GetPosition().x <= param4 && this.§0c§().GetPosition().y >= param1 && this.§0c§().GetPosition().y <= param2;
      }
      
      public function §"!7§(param1:b2Vec2) : void
      {
         this.§?-§ = param1;
      }
      
      public function §0j§() : void
      {
         if(this.§?-§)
         {
            this.§[!8§(this.§?-§,false);
            this.§?-§ = null;
         }
      }
      
      public function §+%§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§0c§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§0c§().§"l§(0);
         }
         else
         {
            this.§0c§().§"l§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §!c§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§0c§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§`X§(_loc2_);
      }
      
      public function §+X§(param1:Number) : void
      {
         this.§0c§().§"l§(param1);
      }
      
      public function §0c§() : b2Body
      {
         if(this.§!8§ != null)
         {
            return this.§!8§.GetBody();
         }
         return null;
      }
      
      public function § !@§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§"!d§ = param1;
            this.§,!W§ = param2;
         }
         this.§0c§().GetPosition().x = this.§"!d§ * §^!2§.§3!S§;
         this.§0c§().GetPosition().y = this.§,!W§ * §^!2§.§3!S§;
      }
      
      public function §&!G§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§"!^§)
         {
            _loc3_ = true;
            this.§"!^§ = false;
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
            this.§[r§.§8=§();
         }
         if(this.§^!O§ > 1 && this.§[r§.§ ! §)
         {
            _loc4_ = 4 + (this.§[r§.§ ! §.blurX - 4 + param2 / 20) % 28;
            this.§[r§.§ ! §.blurX = _loc4_;
            this.§[r§.§ ! §.blurY = _loc4_;
         }
         this.§[r§.§super§(param2);
         if(§6!b§)
         {
            this.§%7§(param1);
         }
         else
         {
            this.§^Y§ = this.§5D§;
            this.§"!d§ = this.§4d§;
            this.§,!W§ = this.§>d§;
         }
         this.§;=§.x = Math.round(this.§"!d§);
         this.§;=§.y = Math.round(this.§,!W§);
         this.§;=§.rotation = this.§^Y§ / 180 * Math.PI;
      }
      
      public function §4!2§() : void
      {
         var _loc1_:Number = this.§0c§().GetPosition().x;
         var _loc2_:Number = this.§0c§().GetPosition().y;
         this.§finally§ = this.§5D§;
         this.§'!_§ = this.§4d§;
         this.§@!2§ = this.§>d§;
         this.§5D§ = this.§0c§().GetAngle() * (180 / Math.PI) % 360;
         this.§4d§ = _loc1_ / §^!2§.§3!S§;
         this.§>d§ = _loc2_ / §^!2§.§3!S§;
         this.§!w§.§;B§();
         this.§!w§.§ !U§(this.§0c§());
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
      
      public function §%7§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §4,§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§6!"§.§=!V§.mLevelEngine.§2t§ * 1000;
         }
         param1 *= -1;
         if(this.§4d§ == this.§'!_§ || param1 == 0)
         {
            this.§=H§ = 0;
            this.§"!d§ = this.§4d§;
         }
         else
         {
            this.§=H§ = param1 * (this.§'!_§ - this.§4d§) / param2;
            this.§"!d§ = this.§4d§ + this.§=H§;
         }
         if(this.§>d§ == this.§@!2§ || param1 == 0)
         {
            this.§]g§ = 0;
            this.§,!W§ = this.§>d§;
         }
         else
         {
            this.§]g§ = param1 * (this.§@!2§ - this.§>d§) / param2;
            this.§,!W§ = this.§>d§ + this.§]g§;
         }
         if(this.§5D§ == this.§finally§ || param1 == 0)
         {
            this.§^Y§ = this.§5D§;
         }
         else if(this.§finally§ > this.§5D§ && this.§finally§ - this.§5D§ <= 180)
         {
            this.§^Y§ = this.§5D§ + param1 * (this.§finally§ - this.§5D§) / param2;
         }
         else if(this.§finally§ > this.§5D§ && this.§finally§ - this.§5D§ > 180)
         {
            this.§^Y§ = this.§5D§ + param1 * (this.§finally§ - 360 - this.§5D§) / param2;
         }
         else if(this.§finally§ < this.§5D§ && this.§5D§ - this.§finally§ <= 180)
         {
            this.§^Y§ = this.§5D§ + param1 * (this.§finally§ - this.§5D§) / param2;
         }
         else if(this.§finally§ < this.§5D§ && this.§5D§ - this.§finally§ > 180)
         {
            this.§^Y§ = this.§5D§ + param1 * (this.§finally§ + 360 - this.§5D§) / param2;
         }
      }
      
      public function get §%L§() : Point
      {
         if(!§6!b§)
         {
         }
         return null;
      }
      
      public function §`P§() : Boolean
      {
         return this.§7!?§ == § $§.§try § || this.§7!?§ == § $§.§<!O§;
      }
      
      public function §0T§() : Boolean
      {
         return this.§7!?§ == § $§.§?r§;
      }
      
      public function §,h§() : Boolean
      {
         return this.§7!?§ == § $§.§!!$§;
      }
      
      public function §9!5§() : Boolean
      {
         return this.§7!?§ == § $§.§<!O§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§7!?§ == § $§.§2C§;
      }
      
      public function isGround() : Boolean
      {
         return this.§7!?§ == § $§.§[!W§;
      }
      
      public function §^M§() : Boolean
      {
         return this.§7!?§ == § $§.§2G§;
      }
      
      public function §%t§() : Boolean
      {
         return this.§7!?§ == § $§.§#J§;
      }
      
      public function §`!^§() : Boolean
      {
         if(this.§>R§ == "MISC_EXPLOSIVE_TNT" || this.§>R§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function § !^§() : Boolean
      {
         return (this.§0T§() || this.§^M§() || this.§%t§()) && !this.§0!>§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §;D§() : Number
      {
         return Number(Math.sqrt(this.§0c§().GetLinearVelocity().x * this.§0c§().GetLinearVelocity().x + this.§0c§().GetLinearVelocity().y * this.§0c§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§,h§())
         {
            return this.§[h§;
         }
         if(!this.§6!"§.§[m§())
         {
            return this.§[h§;
         }
         if(this.§[!$§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§^!H§(§!k§.§]^§);
            }
            else if(param1 > 12)
            {
               this.§^!H§(§!k§.§[a§);
            }
            else if(param1 > 3)
            {
               this.§^!H§(§!k§.§%n§);
            }
            return this.§[h§;
         }
         if(param1 <= this.§[!$§)
         {
            if(param1 >= this.§[!$§ / 2)
            {
               this.§^!H§(§!k§.§%n§);
            }
            if(this.§`P§() && this.§[h§ == this.§'!V§)
            {
               this.§[h§ = this.§'!V§ - 1;
            }
            return this.§[h§;
         }
         param1 -= this.§[!$§;
         if(param2 && this.§ !^§())
         {
            _loc7_ = Math.min(this.§[h§,int(param1));
            _loc8_ = §^!2§.§&6§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §^!2§.§<!1§;
            }
            this.§6!"§.§=!V§.addScore(_loc8_,§ !;§.§[F§,this.§[h§ > param1 && param3,this.§0c§().GetPosition().x,this.§0c§().GetPosition().y,§!U§.§03§(this.§>R§));
         }
         if(!(param5 && this.§9!-§))
         {
            this.§[h§ -= param1;
         }
         if(this.§[h§ < 1 && this.§`P§())
         {
            this.§[h§ = 1;
         }
         if(this.§[h§ < 1)
         {
            this.§[h§ = 0;
            §,_§.§>!C§(§!k§.§]^§,this.§0!b§.§[v§,"ChannelDestroyed");
         }
         else
         {
            this.§^!H§(§!k§.§[a§);
            this.addDamageParticles(this.§6!"§.§=!V§.particles,param1);
         }
         this.§[r§.setDamagedFrame();
         return this.§[h§;
      }
      
      public function §^!H§(param1:int) : void
      {
         §,_§.§>!C§(param1,this.§0!b§.§[v§);
      }
      
      public function §>T§(param1:String) : Number
      {
         return this.§0!b§.material.§[1§(param1) * this.§^!O§;
      }
      
      public function §8l§(param1:String) : Number
      {
         return this.§0!b§.material.§`!F§(param1);
      }
      
      public function §if §() : String
      {
         return this.§0!b§.material.mName;
      }
      
      public function §^R§() : Number
      {
         return this.§0!b§.§=W§();
      }
      
      public function §?!E§() : int
      {
         return this.§0!b§.§?=§();
      }
      
      public function §8j§() : Boolean
      {
         return this.§0c§().IsAwake() && (this.§`P§() && this.§[h§ == this.§'!V§ || Math.abs(this.§0c§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§0c§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§0c§().§4^§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §[b§() : Boolean
      {
         if(!this.§0c§().IsAwake())
         {
            return true;
         }
         return !this.§<!=§();
      }
      
      protected function §<!=§() : Boolean
      {
         return this.§!w§.§<!=§();
      }
      
      public function §3=§(param1:Number = 3) : void
      {
         this.§^!O§ = param1;
         if(this.§^!O§ > 1)
         {
            this.§[r§.§"! §();
         }
         else
         {
            this.§[r§.§ ! § = null;
         }
      }
      
      public function §[x§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§0!b§.§`K§() == §56§.§&f§)
         {
            _loc2_ = this.§[r§.mW * this.§[r§.mH * (§^!2§.§3!S§ * §^!2§.§3!S§);
         }
         else
         {
            _loc2_ = this.§0c§().GetMass() / this.§!8§.§ !E§();
            if(param1)
            {
               _loc2_ *= this.§6K§();
            }
            _loc2_ /= this.get * this.get;
         }
         return _loc2_;
      }
      
      public function §6K§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§[r§.§5+§ - 1) / 10);
      }
      
      public function §'!T§(param1:Number) : void
      {
         var _loc2_:Number = this.§0c§().GetLinearVelocity().x;
         var _loc3_:Number = this.§0c§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§0c§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§?F§) : void
      {
      }
      
      public function addDamageParticles(param1:§?F§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §+,§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§0c§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§0c§().§5!@§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§4!W§()) + 360) % 360;
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
            this.§`X§(_loc4_);
         }
         var _loc3_:Number = this.§4!W§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§`X§(_loc3_);
      }
      
      public function §+!"§(param1:Number) : void
      {
         var _loc2_:Number = §,O§(this.§0c§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §3!]§(_loc2_);
         this.§0c§().§7&§(_loc2_);
      }
      
      public function §%!§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§0c§().GetPosition().Copy();
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
         this.§0c§().§5!@§(_loc13_);
      }
   }
}
