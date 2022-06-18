package §[>§
{
   import §"x§.b2PolygonShape;
   import §#,§.b2Settings;
   import §'G§.§1n§;
   import §'G§.§2!]§;
   import §'G§.§5e§;
   import §'G§.§6!]§;
   import §'G§.§?[§;
   import §4]§.b2Body;
   import §4]§.b2BodyDef;
   import §4]§.b2FilterData;
   import §4]§.b2Fixture;
   import §4]§.b2World;
   import §7!7§.§return§;
   import §7!P§.§-3§;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §9!a§.Sprite;
   import §9T§.§2s§;
   import §9T§.§=!^§;
   import §[R§.b2Vec2;
   import flash.geom.Point;
   
   public class §`,§
   {
      
      public static const §#T§:uint = 1 << 1;
      
      public static const §3!&§:uint = 1 << 2;
      
      public static const §'!H§:uint = 1 << 3;
      
      public static const §^z§:uint = 1 << 4;
      
      public static const §`f§:Boolean = true;
      
      public static const §@x§:Number = 5;
      
      public static const §]j§:Number = 10;
       
      
      private var §'y§:String;
      
      private var §@!B§:int;
      
      private var §[7§:int;
      
      public var §@!]§:String;
      
      public var §!!&§:int;
      
      private var §]9§:§1n§;
      
      private var §0!"§:§'!'§;
      
      private var mWorld:b2World;
      
      protected var §<v§:String = "";
      
      protected var §!"§:int = 1;
      
      private var §-d§:b2Fixture;
      
      private var §3!A§:b2Body;
      
      private var § try§:b2Vec2;
      
      public var §8!?§:Number;
      
      public var §6!_§:Number;
      
      private var §&;§:Number;
      
      private var §<!8§:Boolean = false;
      
      private var §;>§:Number;
      
      private var §`q§:Number;
      
      private var §%!A§:Number;
      
      private var §-b§:Number;
      
      private var §[j§:Number;
      
      private var §"]§:Number;
      
      public var §@!X§:Number = 1;
      
      private var §,!E§:Boolean = false;
      
      public var §4H§:Number = 0;
      
      public var §3!Y§:Number = 0;
      
      protected var §>!G§:Boolean = false;
      
      public var §#!9§:§]S§;
      
      private var §"$§:Sprite;
      
      private var §!-§:Number = 0;
      
      private var §[4§:Number = 0;
      
      private var §0x§:Number = 0;
      
      private var §;!X§:Number = 1.0;
      
      private var §%!@§:Boolean = false;
      
      protected var §[!U§:§ do§;
      
      private var §]!@§:Boolean = true;
      
      public function §`,§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§@!]§ = param6;
         this.§]9§ = §6!]§.§'!Q§(param6);
         this.§0!"§ = param1;
         this.§"$§ = param2;
         this.§;!X§ = param10;
         this.§%!@§ = param11;
         this.§@!B§ = param5;
         this.§!!&§ = this.§]9§.§!!&§;
         this.§[7§ = this.§]9§.§[!'§();
         this.§[!U§ = new § do§(§@x§,§]j§);
         this.§#!9§ = new §]S§(this,param2,param4);
         if(!this.§#!9§.§`!@§(param1.§&?§.§'!;§))
         {
            this.§#!9§.§&!Z§(this.§[7§,this.§]9§.§60§(),this.§]9§.§4!S§() / §=!^§.§4#§,this.§]9§.§%x§() / §=!^§.§4#§);
         }
         this.§#!9§.§,!L§(this.§[7§ == §2!]§.§[r§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§3!A§ = this.mWorld.§8!&§(_loc12_);
         this.§3!A§.§?l§(this);
         if(this.§[7§ == §2!]§.§79§)
         {
            _loc14_ = b2PolygonShape.§1!A§(this.§]9§.shape.§!!V§ * param10,this.§]9§.shape.§!`§ * param10);
            this.§-d§ = this.§3!A§.CreateFixture2(_loc14_,this.§]9§.§%t§());
         }
         else if(this.§[7§ == §2!]§.§[r§ || this.§[7§ == §2!]§.§6!$§)
         {
            this.§-d§ = this.§3!A§.CreateFixture2(this.§]9§.shape.§4g§(param10),this.§]9§.§%t§());
         }
         this.§-d§.§"7§(this.§]9§.§else §());
         this.§-d§.§1S§(this.§]9§.§5=§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§ !Y§())
         {
            _loc13_.§@v§ = §#T§;
            _loc13_.§%!^§ = 65535 & ~§3!&§;
         }
         else if(this.§@!]§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§@!]§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§@v§ = §3!&§;
            _loc13_.§%!^§ = 65535 & ~§#T§;
         }
         this.§-d§.§"!C§(_loc13_);
         this.§&;§ = this.§]9§.§@!8§();
         if(this.§]9§.§6!_§ > 0)
         {
            this.§8!?§ = this.§6!_§ = this.§]9§.§6!_§;
         }
         else
         {
            this.§8!?§ = this.§6!_§ = Math.round(this.§`!<§(true) * this.§]9§.§+!@§());
            if(this.§8!?§ < 1)
            {
               this.§8!?§ = this.§6!_§ = 1;
            }
         }
         if(this.§]9§.§!!&§ == §1n§.§3Q§)
         {
            this.§"$§.visible = false;
         }
         else
         {
            this.§#!9§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§[q§(param9);
         }
         this.§=!5§();
         this.§[l§(0,1);
         this.§#!9§.§&B§(this.§]9§.shape);
      }
      
      public static function §@![§(param1:int, param2:§5e§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§-!b§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§+p§;
            }
            §return§.§"T§(_loc4_,param3);
         }
      }
      
      public static function §!,§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §%!6§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§"$§;
      }
      
      public function get x() : Number
      {
         return this.§!-§;
      }
      
      public function get y() : Number
      {
         return this.§[4§;
      }
      
      public function get scale() : Number
      {
         return this.§;!X§;
      }
      
      public function get front() : Boolean
      {
         return this.§%!@§;
      }
      
      public function get §3`§() : Number
      {
         return this.§3!A§.GetPosition().x;
      }
      
      public function get §3!0§() : Number
      {
         return this.§3!A§.GetPosition().y;
      }
      
      public function get §!P§() : §1n§
      {
         return this.§]9§;
      }
      
      public function get §-!K§() : Boolean
      {
         return this.§&;§ >= 0;
      }
      
      public function get container() : §'!'§
      {
         return this.§0!"§;
      }
      
      public function get §8;§() : Boolean
      {
         return this.§]!@§;
      }
      
      public function set §8;§(param1:Boolean) : void
      {
         this.§]!@§ = param1;
      }
      
      public function set §0!_§(param1:Boolean) : void
      {
         this.§<!8§ = param1;
      }
      
      public function set §>!;§(param1:uint) : void
      {
         this.§[!U§.§>!;§ = param1;
      }
      
      public function get §>!;§() : uint
      {
         return this.§[!U§.§>!;§;
      }
      
      public function get §`m§() : Boolean
      {
         return this.§,!E§;
      }
      
      public function set §`m§(param1:Boolean) : void
      {
         this.§,!E§ = param1;
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
         return this.§'y§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§'y§ = param1;
      }
      
      public function § Y§(param1:b2FilterData) : void
      {
         if(this.§-d§)
         {
            this.§-d§.§"!C§(param1);
         }
      }
      
      protected function §!v§(param1:String) : int
      {
         return §%v§.§!v§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§]9§.§%j§();
         _loc3_.§?n§ = true;
         _loc3_.§#i§ = true;
         _loc3_.§;0§ = true;
         _loc3_.§3!F§ = 1;
         _loc3_.§%X§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§#;§(this.§7!<§());
            this.mWorld = null;
         }
         this.§#!9§.dispose();
         if(this.§"$§)
         {
            this.§"$§.dispose();
            this.§"$§ = null;
         }
         this.§-d§ = null;
         this.§ try§ = null;
         this.§]9§ = null;
      }
      
      public function §[q§(param1:Number) : void
      {
         this.§7!<§().§?!Z§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §9!4§() : Number
      {
         return (360 - this.§7!<§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §4r§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§7!<§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§#!<§();
         }
         if(param3)
         {
            this.§]2§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§-d§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§7!<§().GetPosition().x >= param3 && this.§7!<§().GetPosition().x <= param4 && this.§7!<§().GetPosition().y >= param1 && this.§7!<§().GetPosition().y <= param2;
      }
      
      public function §<!W§(param1:b2Vec2) : void
      {
         this.§ try§ = param1;
      }
      
      public function §^!I§() : void
      {
         if(this.§ try§)
         {
            this.§4r§(this.§ try§,false);
            this.§ try§ = null;
         }
      }
      
      public function §#!<§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§7!<§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§7!<§().§&![§(0);
         }
         else
         {
            this.§7!<§().§&![§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §]2§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§7!<§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§[q§(_loc2_);
      }
      
      public function §6t§(param1:Number) : void
      {
         this.§7!<§().§&![§(param1);
      }
      
      public function §7!<§() : b2Body
      {
         if(this.§-d§ != null)
         {
            return this.§-d§.GetBody();
         }
         return null;
      }
      
      public function §+@§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§!-§ = param1;
            this.§[4§ = param2;
         }
         this.§7!<§().GetPosition().x = this.§!-§ * §=!^§.§4#§;
         this.§7!<§().GetPosition().y = this.§[4§ * §=!^§.§4#§;
      }
      
      public function §[l§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§>!G§)
         {
            _loc3_ = true;
            this.§>!G§ = false;
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
            this.§#!9§.§&8§();
         }
         if(this.§@!X§ > 1 && this.§#!9§.§]!O§)
         {
            _loc4_ = 4 + (this.§#!9§.§]!O§.blurX - 4 + param2 / 20) % 28;
            this.§#!9§.§]!O§.blurX = _loc4_;
            this.§#!9§.§]!O§.blurY = _loc4_;
         }
         this.§#!9§.§7!0§(param2);
         if(§`f§)
         {
            this.§0u§(param1);
         }
         else
         {
            this.§0x§ = this.§%!A§;
            this.§!-§ = this.§;>§;
            this.§[4§ = this.§`q§;
         }
         this.§"$§.x = Math.round(this.§!-§);
         this.§"$§.y = Math.round(this.§[4§);
         this.§"$§.rotation = this.§0x§ / 180 * Math.PI;
      }
      
      public function §=!5§() : void
      {
         var _loc1_:Number = this.§7!<§().GetPosition().x;
         var _loc2_:Number = this.§7!<§().GetPosition().y;
         this.§"]§ = this.§%!A§;
         this.§-b§ = this.§;>§;
         this.§[j§ = this.§`q§;
         this.§%!A§ = this.§7!<§().GetAngle() * (180 / Math.PI) % 360;
         this.§;>§ = _loc1_ / §=!^§.§4#§;
         this.§`q§ = _loc2_ / §=!^§.§4#§;
         this.§[!U§.§%!B§();
         this.§[!U§.§7x§(this.§7!<§());
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
      
      public function §0u§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §-3§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§0!"§.§&?§.mLevelEngine.§=!D§ * 1000;
         }
         param1 *= -1;
         if(this.§;>§ == this.§-b§ || param1 == 0)
         {
            this.§4H§ = 0;
            this.§!-§ = this.§;>§;
         }
         else
         {
            this.§4H§ = param1 * (this.§-b§ - this.§;>§) / param2;
            this.§!-§ = this.§;>§ + this.§4H§;
         }
         if(this.§`q§ == this.§[j§ || param1 == 0)
         {
            this.§3!Y§ = 0;
            this.§[4§ = this.§`q§;
         }
         else
         {
            this.§3!Y§ = param1 * (this.§[j§ - this.§`q§) / param2;
            this.§[4§ = this.§`q§ + this.§3!Y§;
         }
         if(this.§%!A§ == this.§"]§ || param1 == 0)
         {
            this.§0x§ = this.§%!A§;
         }
         else if(this.§"]§ > this.§%!A§ && this.§"]§ - this.§%!A§ <= 180)
         {
            this.§0x§ = this.§%!A§ + param1 * (this.§"]§ - this.§%!A§) / param2;
         }
         else if(this.§"]§ > this.§%!A§ && this.§"]§ - this.§%!A§ > 180)
         {
            this.§0x§ = this.§%!A§ + param1 * (this.§"]§ - 360 - this.§%!A§) / param2;
         }
         else if(this.§"]§ < this.§%!A§ && this.§%!A§ - this.§"]§ <= 180)
         {
            this.§0x§ = this.§%!A§ + param1 * (this.§"]§ - this.§%!A§) / param2;
         }
         else if(this.§"]§ < this.§%!A§ && this.§%!A§ - this.§"]§ > 180)
         {
            this.§0x§ = this.§%!A§ + param1 * (this.§"]§ + 360 - this.§%!A§) / param2;
         }
      }
      
      public function get §@!@§() : Point
      {
         if(!§`f§)
         {
         }
         return null;
      }
      
      public function § !Y§() : Boolean
      {
         return this.§!!&§ == §1n§.§[E§ || this.§!!&§ == §1n§.§8!T§;
      }
      
      public function §7Q§() : Boolean
      {
         return this.§!!&§ == §1n§.§!!S§;
      }
      
      public function §throw§() : Boolean
      {
         return this.§!!&§ == §1n§.§"!Z§;
      }
      
      public function §8!<§() : Boolean
      {
         return this.§!!&§ == §1n§.§8!T§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§!!&§ == §1n§.§&!#§;
      }
      
      public function isGround() : Boolean
      {
         return this.§!!&§ == §1n§.§3Q§;
      }
      
      public function §-S§() : Boolean
      {
         return this.§!!&§ == §1n§.§1w§;
      }
      
      public function §2i§() : Boolean
      {
         return this.§!!&§ == §1n§.§;!H§;
      }
      
      public function §#P§() : Boolean
      {
         if(this.§@!]§ == "MISC_EXPLOSIVE_TNT" || this.§@!]§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function § f§() : Boolean
      {
         return (this.§7Q§() || this.§-S§() || this.§2i§()) && !this.§`m§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §5z§() : Number
      {
         return Number(Math.sqrt(this.§7!<§().GetLinearVelocity().x * this.§7!<§().GetLinearVelocity().x + this.§7!<§().GetLinearVelocity().y * this.§7!<§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§throw§())
         {
            return this.§8!?§;
         }
         if(!this.§0!"§.§-!Y§())
         {
            return this.§8!?§;
         }
         if(this.§&;§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§]!%§(§5e§.§2!_§);
            }
            else if(param1 > 12)
            {
               this.§]!%§(§5e§.§9_§);
            }
            else if(param1 > 3)
            {
               this.§]!%§(§5e§.§8!0§);
            }
            return this.§8!?§;
         }
         if(param1 <= this.§&;§)
         {
            if(param1 >= this.§&;§ / 2)
            {
               this.§]!%§(§5e§.§8!0§);
            }
            if(this.§ !Y§() && this.§8!?§ == this.§6!_§)
            {
               this.§8!?§ = this.§6!_§ - 1;
            }
            return this.§8!?§;
         }
         param1 -= this.§&;§;
         if(param2 && this.§ f§())
         {
            _loc7_ = Math.min(this.§8!?§,int(param1));
            _loc8_ = §=!^§.§=;§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §=!^§.§15§;
            }
            this.§0!"§.§&?§.addScore(_loc8_,§2s§.§!!1§,this.§8!?§ > param1 && param3,this.§7!<§().GetPosition().x,this.§7!<§().GetPosition().y,§%v§.§]§(this.§@!]§));
         }
         if(!(param5 && this.§<!8§))
         {
            this.§8!?§ -= param1;
         }
         if(this.§8!?§ < 1 && this.§ !Y§())
         {
            this.§8!?§ = 1;
         }
         if(this.§8!?§ < 1)
         {
            this.§8!?§ = 0;
            §`,§.§@![§(§5e§.§2!_§,this.§]9§.§]_§,"ChannelDestroyed");
         }
         else
         {
            this.§]!%§(§5e§.§9_§);
            this.addDamageParticles(this.§0!"§.§&?§.particles,param1);
         }
         this.§#!9§.setDamagedFrame();
         return this.§8!?§;
      }
      
      public function §]!%§(param1:int) : void
      {
         §`,§.§@![§(param1,this.§]9§.§]_§);
      }
      
      public function §>!D§(param1:String) : Number
      {
         return this.§]9§.material.§0z§(param1) * this.§@!X§;
      }
      
      public function §<Q§(param1:String) : Number
      {
         return this.§]9§.material.§6!&§(param1);
      }
      
      public function §=!8§() : String
      {
         return this.§]9§.material.mName;
      }
      
      public function §3!§() : Number
      {
         return this.§]9§.§+!@§();
      }
      
      public function §=D§() : int
      {
         return this.§]9§.§&!5§();
      }
      
      public function §1G§() : Boolean
      {
         return this.§7!<§().IsAwake() && (this.§ !Y§() && this.§8!?§ == this.§6!_§ || Math.abs(this.§7!<§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§7!<§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§7!<§().§5W§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §'[§() : Boolean
      {
         if(!this.§7!<§().IsAwake())
         {
            return true;
         }
         return !this.§^m§();
      }
      
      protected function §^m§() : Boolean
      {
         return this.§[!U§.§^m§();
      }
      
      public function §9!@§(param1:Number = 3) : void
      {
         this.§@!X§ = param1;
         if(this.§@!X§ > 1)
         {
            this.§#!9§.§&3§();
         }
         else
         {
            this.§#!9§.§]!O§ = null;
         }
      }
      
      public function §`!<§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§]9§.§%j§() == §?[§.§0!S§)
         {
            _loc2_ = this.§#!9§.mW * this.§#!9§.mH * (§=!^§.§4#§ * §=!^§.§4#§);
         }
         else
         {
            _loc2_ = this.§7!<§().GetMass() / this.§-d§.§!O§();
            if(param1)
            {
               _loc2_ *= this.§`!9§();
            }
            _loc2_ /= this.§;!X§ * this.§;!X§;
         }
         return _loc2_;
      }
      
      public function §`!9§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§#!9§.§4[§ - 1) / 10);
      }
      
      public function §4!?§(param1:Number) : void
      {
         var _loc2_:Number = this.§7!<§().GetLinearVelocity().x;
         var _loc3_:Number = this.§7!<§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§7!<§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§'!'§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§2!4§) : void
      {
      }
      
      public function addDamageParticles(param1:§2!4§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §^j§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§7!<§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§7!<§().§,t§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§9!4§()) + 360) % 360;
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
            this.§[q§(_loc4_);
         }
         var _loc3_:Number = this.§9!4§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§[q§(_loc3_);
      }
      
      public function §,2§(param1:Number) : void
      {
         var _loc2_:Number = §!,§(this.§7!<§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §%!6§(_loc2_);
         this.§7!<§().§?!Z§(_loc2_);
      }
      
      public function § !7§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§7!<§().GetPosition().Copy();
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
         this.§7!<§().§,t§(_loc13_);
      }
   }
}
