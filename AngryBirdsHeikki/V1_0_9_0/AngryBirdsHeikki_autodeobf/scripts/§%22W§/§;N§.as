package §"W§
{
   import § !_§.b2Vec2;
   import § d§.§'!"§;
   import § d§.§]!_§;
   import §"§.§"@§;
   import §"§.§2z§;
   import §#!f§.Sprite;
   import §%i§.§#`§;
   import §+&§.b2Settings;
   import §-!!§.b2PolygonShape;
   import §0i§.§]_§;
   import §^!Z§.b2Body;
   import §^!Z§.b2BodyDef;
   import §^!Z§.b2FilterData;
   import §^!Z§.b2Fixture;
   import §^!Z§.b2World;
   import §^-§.§#!3§;
   import §^-§.§'!!§;
   import §^-§.§4!`§;
   import §^-§.§;!f§;
   import §^-§.§=!B§;
   import flash.geom.Point;
   
   public class §;N§
   {
      
      public static const §<!E§:uint = 1 << 1;
      
      public static const §@c§:uint = 1 << 2;
      
      public static const § n§:uint = 1 << 3;
      
      public static const §,b§:uint = 1 << 4;
      
      public static const §!Q§:Boolean = true;
      
      public static const §`L§:Number = 5;
      
      public static const §"!%§:Number = 10;
       
      
      private var §=#§:String;
      
      private var §]!N§:int;
      
      private var §#!H§:int;
      
      public var §]D§:String;
      
      public var §`O§:int;
      
      private var §^!2§:§4!`§;
      
      private var § !2§:§?!T§;
      
      private var mWorld:b2World;
      
      protected var §&p§:String = "";
      
      protected var §&!c§:int = 1;
      
      private var §3!?§:b2Fixture;
      
      private var §&`§:b2Body;
      
      private var §19§:b2Vec2;
      
      public var §>[§:Number;
      
      public var §&J§:Number;
      
      private var §5i§:Number;
      
      private var §07§:Boolean = false;
      
      private var §#R§:Number;
      
      private var §;<§:Number;
      
      private var static:Number;
      
      private var §&u§:Number;
      
      private var §+! §:Number;
      
      private var §16§:Number;
      
      public var §[!e§:Number = 1;
      
      private var §"!M§:Boolean = false;
      
      public var §+D§:Number = 0;
      
      public var §;!9§:Number = 0;
      
      protected var §@h§:Boolean = false;
      
      public var §%f§:§0f§;
      
      private var §3![§:Sprite;
      
      private var §`B§:Number = 0;
      
      private var §,!9§:Number = 0;
      
      private var §=$§:Number = 0;
      
      private var §0!^§:Number = 1.0;
      
      private var §#!^§:Boolean = false;
      
      protected var §@!C§:§;V§;
      
      private var §=-§:Boolean = true;
      
      public function §;N§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§]D§ = param6;
         this.§^!2§ = §;!f§.§]!L§(param6);
         this.§ !2§ = param1;
         this.§3![§ = param2;
         this.§0!^§ = param10;
         this.§#!^§ = param11;
         this.§]!N§ = param5;
         this.§`O§ = this.§^!2§.§`O§;
         this.§#!H§ = this.§^!2§.§6W§();
         this.§@!C§ = new §;V§(§`L§,§"!%§);
         this.§%f§ = new §0f§(this,param2,param4);
         if(!this.§%f§.§7!H§(param1.§"2§.§4!2§))
         {
            this.§%f§.§`=§(this.§#!H§,this.§^!2§.§>!I§(),this.§^!2§.§!L§() / §'!"§.§#3§,this.§^!2§.§=L§() / §'!"§.§#3§);
         }
         this.§%f§.§?!A§(this.§#!H§ == §=!B§.§5!W§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§&`§ = this.mWorld.§;!"§(_loc12_);
         this.§&`§.§0!@§(this);
         if(this.§#!H§ == §=!B§.§"!d§)
         {
            _loc14_ = b2PolygonShape.§&]§(this.§^!2§.shape.§>5§ * param10,this.§^!2§.shape.§`!I§ * param10);
            this.§3!?§ = this.§&`§.CreateFixture2(_loc14_,this.§^!2§.§'R§());
         }
         else if(this.§#!H§ == §=!B§.§5!W§ || this.§#!H§ == §=!B§.§6[§)
         {
            this.§3!?§ = this.§&`§.CreateFixture2(this.§^!2§.shape.§'a§(param10),this.§^!2§.§'R§());
         }
         this.§3!?§.§,!'§(this.§^!2§.§@!_§());
         this.§3!?§.§4!4§(this.§^!2§.§&!1§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§#!-§())
         {
            _loc13_.§'y§ = §<!E§;
            _loc13_.§]!D§ = 65535 & ~§@c§;
         }
         else if(this.§]D§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§]D§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§'y§ = §@c§;
            _loc13_.§]!D§ = 65535 & ~§<!E§;
         }
         this.§3!?§.§5!P§(_loc13_);
         this.§5i§ = this.§^!2§.§3!9§();
         if(this.§^!2§.§&J§ > 0)
         {
            this.§>[§ = this.§&J§ = this.§^!2§.§&J§;
         }
         else
         {
            this.§>[§ = this.§&J§ = Math.round(this.§<!R§(true) * this.§^!2§.§"! §());
            if(this.§>[§ < 1)
            {
               this.§>[§ = this.§&J§ = 1;
            }
         }
         if(this.§^!2§.§`O§ == §4!`§.§ [§)
         {
            this.§3![§.visible = false;
         }
         else
         {
            this.§%f§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§5S§(param9);
         }
         this.§]z§();
         this.§^!N§(0,1);
         this.§%f§.§<!F§(this.§^!2§.shape);
      }
      
      public static function §<r§(param1:int, param2:§'!!§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§@n§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§"!Y§;
            }
            §#`§.§]!&§(_loc4_,param3);
         }
      }
      
      public static function §%!0§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §@S§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§3![§;
      }
      
      public function get x() : Number
      {
         return this.§`B§;
      }
      
      public function get y() : Number
      {
         return this.§,!9§;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function get front() : Boolean
      {
         return this.§#!^§;
      }
      
      public function get §",§() : Number
      {
         return this.§&`§.GetPosition().x;
      }
      
      public function get §^!U§() : Number
      {
         return this.§&`§.GetPosition().y;
      }
      
      public function get §6J§() : §4!`§
      {
         return this.§^!2§;
      }
      
      public function get §7$§() : Boolean
      {
         return this.§5i§ >= 0;
      }
      
      public function get container() : §?!T§
      {
         return this.§ !2§;
      }
      
      public function get §!!<§() : Boolean
      {
         return this.§=-§;
      }
      
      public function set §!!<§(param1:Boolean) : void
      {
         this.§=-§ = param1;
      }
      
      public function set §-!"§(param1:Boolean) : void
      {
         this.§07§ = param1;
      }
      
      public function set §&0§(param1:uint) : void
      {
         this.§@!C§.§&0§ = param1;
      }
      
      public function get §&0§() : uint
      {
         return this.§@!C§.§&0§;
      }
      
      public function get §2!6§() : Boolean
      {
         return this.§"!M§;
      }
      
      public function set §2!6§(param1:Boolean) : void
      {
         this.§"!M§ = param1;
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
         return this.§=#§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§=#§ = param1;
      }
      
      public function §2!H§(param1:b2FilterData) : void
      {
         if(this.§3!?§)
         {
            this.§3!?§.§5!P§(param1);
         }
      }
      
      protected function §?1§(param1:String) : int
      {
         return §2z§.§?1§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§^!2§.§%!3§();
         _loc3_.§?i§ = true;
         _loc3_.§2R§ = true;
         _loc3_.§=!c§ = true;
         _loc3_.§`!J§ = 1;
         _loc3_.§&,§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§5M§(this.§"!H§());
            this.mWorld = null;
         }
         this.§%f§.dispose();
         if(this.§3![§)
         {
            this.§3![§.dispose();
            this.§3![§ = null;
         }
         this.§3!?§ = null;
         this.§19§ = null;
         this.§^!2§ = null;
      }
      
      public function §5S§(param1:Number) : void
      {
         this.§"!H§().§`M§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §1!N§() : Number
      {
         return (360 - this.§"!H§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §+!@§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§"!H§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§^!G§();
         }
         if(param3)
         {
            this.§5!&§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§3!?§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§"!H§().GetPosition().x >= param3 && this.§"!H§().GetPosition().x <= param4 && this.§"!H§().GetPosition().y >= param1 && this.§"!H§().GetPosition().y <= param2;
      }
      
      public function §!-§(param1:b2Vec2) : void
      {
         this.§19§ = param1;
      }
      
      public function §"n§() : void
      {
         if(this.§19§)
         {
            this.§+!@§(this.§19§,false);
            this.§19§ = null;
         }
      }
      
      public function §^!G§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§"!H§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§"!H§().§-V§(0);
         }
         else
         {
            this.§"!H§().§-V§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §5!&§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§"!H§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§5S§(_loc2_);
      }
      
      public function §-N§(param1:Number) : void
      {
         this.§"!H§().§-V§(param1);
      }
      
      public function §"!H§() : b2Body
      {
         if(this.§3!?§ != null)
         {
            return this.§3!?§.GetBody();
         }
         return null;
      }
      
      public function §5!#§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§`B§ = param1;
            this.§,!9§ = param2;
         }
         this.§"!H§().GetPosition().x = this.§`B§ * §'!"§.§#3§;
         this.§"!H§().GetPosition().y = this.§,!9§ * §'!"§.§#3§;
      }
      
      public function §^!N§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§@h§)
         {
            _loc3_ = true;
            this.§@h§ = false;
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
            this.§%f§.§[]§();
         }
         if(this.§[!e§ > 1 && this.§%f§.§,^§)
         {
            _loc4_ = 4 + (this.§%f§.§,^§.blurX - 4 + param2 / 20) % 28;
            this.§%f§.§,^§.blurX = _loc4_;
            this.§%f§.§,^§.blurY = _loc4_;
         }
         this.§%f§.§9!$§(param2);
         if(§!Q§)
         {
            this.§"]§(param1);
         }
         else
         {
            this.§=$§ = this.static;
            this.§`B§ = this.§#R§;
            this.§,!9§ = this.§;<§;
         }
         this.§3![§.x = Math.round(this.§`B§);
         this.§3![§.y = Math.round(this.§,!9§);
         this.§3![§.rotation = this.§=$§ / 180 * Math.PI;
      }
      
      public function §]z§() : void
      {
         var _loc1_:Number = this.§"!H§().GetPosition().x;
         var _loc2_:Number = this.§"!H§().GetPosition().y;
         this.§16§ = this.static;
         this.§&u§ = this.§#R§;
         this.§+! § = this.§;<§;
         this.static = this.§"!H§().GetAngle() * (180 / Math.PI) % 360;
         this.§#R§ = _loc1_ / §'!"§.§#3§;
         this.§;<§ = _loc2_ / §'!"§.§#3§;
         this.§@!C§.§1!8§();
         this.§@!C§.§'0§(this.§"!H§());
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
      
      public function §"]§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §]_§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§ !2§.§"2§.mLevelEngine.§?!$§ * 1000;
         }
         param1 *= -1;
         if(this.§#R§ == this.§&u§ || param1 == 0)
         {
            this.§+D§ = 0;
            this.§`B§ = this.§#R§;
         }
         else
         {
            this.§+D§ = param1 * (this.§&u§ - this.§#R§) / param2;
            this.§`B§ = this.§#R§ + this.§+D§;
         }
         if(this.§;<§ == this.§+! § || param1 == 0)
         {
            this.§;!9§ = 0;
            this.§,!9§ = this.§;<§;
         }
         else
         {
            this.§;!9§ = param1 * (this.§+! § - this.§;<§) / param2;
            this.§,!9§ = this.§;<§ + this.§;!9§;
         }
         if(this.static == this.§16§ || param1 == 0)
         {
            this.§=$§ = this.static;
         }
         else if(this.§16§ > this.static && this.§16§ - this.static <= 180)
         {
            this.§=$§ = this.static + param1 * (this.§16§ - this.static) / param2;
         }
         else if(this.§16§ > this.static && this.§16§ - this.static > 180)
         {
            this.§=$§ = this.static + param1 * (this.§16§ - 360 - this.static) / param2;
         }
         else if(this.§16§ < this.static && this.static - this.§16§ <= 180)
         {
            this.§=$§ = this.static + param1 * (this.§16§ - this.static) / param2;
         }
         else if(this.§16§ < this.static && this.static - this.§16§ > 180)
         {
            this.§=$§ = this.static + param1 * (this.§16§ + 360 - this.static) / param2;
         }
      }
      
      public function get §@!O§() : Point
      {
         if(!§!Q§)
         {
         }
         return null;
      }
      
      public function §#!-§() : Boolean
      {
         return this.§`O§ == §4!`§.§-Q§ || this.§`O§ == §4!`§.§,!#§;
      }
      
      public function §`!D§() : Boolean
      {
         return this.§`O§ == §4!`§.§8V§;
      }
      
      public function §0E§() : Boolean
      {
         return this.§`O§ == §4!`§.§7@§;
      }
      
      public function §-!;§() : Boolean
      {
         return this.§`O§ == §4!`§.§,!#§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§`O§ == §4!`§.§;w§;
      }
      
      public function isGround() : Boolean
      {
         return this.§`O§ == §4!`§.§ [§;
      }
      
      public function §!`§() : Boolean
      {
         return this.§`O§ == §4!`§.§?7§;
      }
      
      public function §#!F§() : Boolean
      {
         return this.§`O§ == §4!`§.§&M§;
      }
      
      public function §#j§() : Boolean
      {
         if(this.§]D§ == "MISC_EXPLOSIVE_TNT" || this.§]D§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §8!V§() : Boolean
      {
         return (this.§`!D§() || this.§!`§() || this.§#!F§()) && !this.§2!6§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §4L§() : Number
      {
         return Number(Math.sqrt(this.§"!H§().GetLinearVelocity().x * this.§"!H§().GetLinearVelocity().x + this.§"!H§().GetLinearVelocity().y * this.§"!H§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§0E§())
         {
            return this.§>[§;
         }
         if(!this.§ !2§.§11§())
         {
            return this.§>[§;
         }
         if(this.§5i§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§,!^§(§'!!§.§?!f§);
            }
            else if(param1 > 12)
            {
               this.§,!^§(§'!!§.§!V§);
            }
            else if(param1 > 3)
            {
               this.§,!^§(§'!!§.§%!H§);
            }
            return this.§>[§;
         }
         if(param1 <= this.§5i§)
         {
            if(param1 >= this.§5i§ / 2)
            {
               this.§,!^§(§'!!§.§%!H§);
            }
            if(this.§#!-§() && this.§>[§ == this.§&J§)
            {
               this.§>[§ = this.§&J§ - 1;
            }
            return this.§>[§;
         }
         param1 -= this.§5i§;
         if(param2 && this.§8!V§())
         {
            _loc7_ = Math.min(this.§>[§,int(param1));
            _loc8_ = §'!"§.§5H§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §'!"§.§[!A§;
            }
            this.§ !2§.§"2§.addScore(_loc8_,§]!_§.§&I§,this.§>[§ > param1 && param3,this.§"!H§().GetPosition().x,this.§"!H§().GetPosition().y,§2z§.§=6§(this.§]D§));
         }
         if(!(param5 && this.§07§))
         {
            this.§>[§ -= param1;
         }
         if(this.§>[§ < 1 && this.§#!-§())
         {
            this.§>[§ = 1;
         }
         if(this.§>[§ < 1)
         {
            this.§>[§ = 0;
            §;N§.§<r§(§'!!§.§?!f§,this.§^!2§.§5n§,"ChannelDestroyed");
         }
         else
         {
            this.§,!^§(§'!!§.§!V§);
            this.addDamageParticles(this.§ !2§.§"2§.particles,param1);
         }
         this.§%f§.setDamagedFrame();
         return this.§>[§;
      }
      
      public function §,!^§(param1:int) : void
      {
         §;N§.§<r§(param1,this.§^!2§.§5n§);
      }
      
      public function §&"§(param1:String) : Number
      {
         return this.§^!2§.material.§[!G§(param1) * this.§[!e§;
      }
      
      public function §[!S§(param1:String) : Number
      {
         return this.§^!2§.material.§"+§(param1);
      }
      
      public function §9W§() : String
      {
         return this.§^!2§.material.mName;
      }
      
      public function §5j§() : Number
      {
         return this.§^!2§.§"! §();
      }
      
      public function §&L§() : int
      {
         return this.§^!2§.§1§();
      }
      
      public function §#u§() : Boolean
      {
         return this.§"!H§().IsAwake() && (this.§#!-§() && this.§>[§ == this.§&J§ || Math.abs(this.§"!H§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§"!H§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§"!H§().§87§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §?g§() : Boolean
      {
         if(!this.§"!H§().IsAwake())
         {
            return true;
         }
         return !this.§<j§();
      }
      
      protected function §<j§() : Boolean
      {
         return this.§@!C§.§<j§();
      }
      
      public function §1!Z§(param1:Number = 3) : void
      {
         this.§[!e§ = param1;
         if(this.§[!e§ > 1)
         {
            this.§%f§.§?S§();
         }
         else
         {
            this.§%f§.§,^§ = null;
         }
      }
      
      public function §<!R§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§^!2§.§%!3§() == §#!3§.§>I§)
         {
            _loc2_ = this.§%f§.mW * this.§%f§.mH * (§'!"§.§#3§ * §'!"§.§#3§);
         }
         else
         {
            _loc2_ = this.§"!H§().GetMass() / this.§3!?§.§5`§();
            if(param1)
            {
               _loc2_ *= this.§#%§();
            }
            _loc2_ /= this.§0!^§ * this.§0!^§;
         }
         return _loc2_;
      }
      
      public function §#%§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§%f§.§^!e§ - 1) / 10);
      }
      
      public function §0!T§(param1:Number) : void
      {
         var _loc2_:Number = this.§"!H§().GetLinearVelocity().x;
         var _loc3_:Number = this.§"!H§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§"!H§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?!T§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§"@§) : void
      {
      }
      
      public function addDamageParticles(param1:§"@§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §=!?§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§"!H§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§"!H§().§return§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§1!N§()) + 360) % 360;
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
            this.§5S§(_loc4_);
         }
         var _loc3_:Number = this.§1!N§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§5S§(_loc3_);
      }
      
      public function §!j§(param1:Number) : void
      {
         var _loc2_:Number = §%!0§(this.§"!H§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §@S§(_loc2_);
         this.§"!H§().§`M§(_loc2_);
      }
      
      public function §[D§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§"!H§().GetPosition().Copy();
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
         this.§"!H§().§return§(_loc13_);
      }
   }
}
