package §4!O§
{
   import § !9§.§'!U§;
   import §"!R§.b2Settings;
   import §'&§.b2PolygonShape;
   import §5!?§.§&%§;
   import §5!?§.§>"§;
   import §6!Q§.§7!7§;
   import §;t§.Sprite;
   import §=!U§.b2Body;
   import §=!U§.b2BodyDef;
   import §=!U§.b2FilterData;
   import §=!U§.b2Fixture;
   import §=!U§.b2World;
   import §@!>§.§<!J§;
   import §@!>§.§=!R§;
   import §[o§.§3!M§;
   import §[o§.§4C§;
   import §[o§.§4L§;
   import §[o§.§9n§;
   import §[o§.§@N§;
   import flash.geom.Point;
   import §implements§.b2Vec2;
   
   public class §&+§
   {
      
      public static const §<F§:uint = 1 << 1;
      
      public static const §+S§:uint = 1 << 2;
      
      public static const §,!M§:uint = 1 << 3;
      
      public static const §]Q§:uint = 1 << 4;
      
      public static const §6T§:Boolean = true;
       
      
      private var §'!^§:String;
      
      private var §,!=§:int;
      
      private var §0B§:int;
      
      public var §7!0§:String;
      
      public var §,d§:int;
      
      private var §2!4§:§9n§;
      
      private var §3=§:§+K§;
      
      private var mWorld:b2World;
      
      private var §0%§:b2Fixture;
      
      private var §]!6§:b2Body;
      
      private var §3[§:b2Vec2;
      
      public var §8!B§:Number;
      
      public var §6!N§:Number;
      
      private var §;!<§:Number;
      
      private var §>z§:Boolean = false;
      
      private var §'!A§:Number;
      
      private var §?1§:Number;
      
      private var §^O§:Number;
      
      private var §9e§:Number;
      
      private var §8!;§:Number;
      
      private var §;4§:Number;
      
      public var §=M§:Number = 1;
      
      private var §]!N§:Boolean = false;
      
      public var §#!9§:Number = 0;
      
      public var §%u§:Number = 0;
      
      protected var §]!=§:Boolean = false;
      
      public var §^!M§:§^e§;
      
      private var §8q§:Sprite;
      
      private var §?H§:Number = 0;
      
      private var §>!a§:Number = 0;
      
      private var §+!6§:Number = 0;
      
      private var §`z§:Number = 1.0;
      
      private var §^m§:Boolean = false;
      
      private var §;w§:Boolean = true;
      
      public function §&+§(param1:§+K§, param2:Sprite, param3:b2World, param4:§>"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§7!0§ = param6;
         this.§2!4§ = §4L§.§+6§(param6);
         this.§3=§ = param1;
         this.§8q§ = param2;
         this.§`z§ = param10;
         this.§^m§ = param11;
         this.§,!=§ = param5;
         this.§,d§ = this.§2!4§.§,d§;
         this.§0B§ = this.§2!4§.§[!&§();
         this.§^!M§ = new §^e§(this,param2,param4);
         if(!this.§^!M§.§?7§(param1.mLevelMain.§6!M§))
         {
            this.§^!M§.§5!R§(this.§0B§,this.§2!4§.§;f§(),this.§2!4§.§,"§() / §>"§.§'!S§,this.§2!4§.§1!=§() / §>"§.§'!S§);
         }
         this.§^!M§.§'!=§(this.§0B§ == §4C§.§7!3§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§]!6§ = this.mWorld.§6G§(_loc12_);
         this.§]!6§.§=!=§(this);
         if(this.§0B§ == §4C§.§8!P§)
         {
            _loc14_ = b2PolygonShape.§7!S§(this.§2!4§.shape.§=$§ * param10,this.§2!4§.shape.§1T§ * param10);
            this.§0%§ = this.§]!6§.CreateFixture2(_loc14_,this.§2!4§.§38§());
         }
         else if(this.§0B§ == §4C§.§7!3§ || this.§0B§ == §4C§.§=m§)
         {
            this.§0%§ = this.§]!6§.CreateFixture2(this.§2!4§.shape.§ Y§(param10),this.§2!4§.§38§());
         }
         this.§0%§.§!o§(this.§2!4§.§>W§());
         this.§0%§.§^!B§(this.§2!4§.include());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§4!C§())
         {
            _loc13_.§+7§ = §<F§;
            _loc13_.§!i§ = 65535 & ~§+S§;
         }
         else if(this.§7!0§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§7!0§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§+7§ = §+S§;
            _loc13_.§!i§ = 65535 & ~§<F§;
         }
         this.§0%§.§<!3§(_loc13_);
         this.§;!<§ = this.§2!4§.§>!]§();
         if(this.§2!4§.§6!N§ > 0)
         {
            this.§8!B§ = this.§6!N§ = this.§2!4§.§6!N§;
         }
         else
         {
            this.§8!B§ = this.§6!N§ = Math.round(this.§81§(true) * this.§2!4§.§=v§());
            if(this.§8!B§ < 1)
            {
               this.§8!B§ = this.§6!N§ = 1;
            }
         }
         if(this.§2!4§.§,d§ == §9n§.§continue§)
         {
            this.§8q§.visible = false;
         }
         else
         {
            this.§^!M§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§[§(param9);
         }
         this.§>!4§();
         this.§0q§(0,1);
         this.§^!M§.§8]§(this.§2!4§.shape);
      }
      
      public static function §=R§(param1:int, param2:§3!M§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§!U§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§`5§;
            }
            §'!U§.§ !%§(_loc4_,param3);
         }
      }
      
      public static function §"!J§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §[%§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§8q§;
      }
      
      public function get x() : Number
      {
         return this.§?H§;
      }
      
      public function get y() : Number
      {
         return this.§>!a§;
      }
      
      public function get scale() : Number
      {
         return this.§`z§;
      }
      
      public function get front() : Boolean
      {
         return this.§^m§;
      }
      
      public function get §65§() : Number
      {
         return this.§]!6§.GetPosition().x;
      }
      
      public function get §5!G§() : Number
      {
         return this.§]!6§.GetPosition().y;
      }
      
      public function get §false§() : §9n§
      {
         return this.§2!4§;
      }
      
      public function get §#W§() : Boolean
      {
         return this.§;!<§ >= 0;
      }
      
      protected function get container() : §+K§
      {
         return this.§3=§;
      }
      
      public function get § !K§() : Boolean
      {
         return this.§;w§;
      }
      
      public function set § !K§(param1:Boolean) : void
      {
         this.§;w§ = param1;
      }
      
      public function set §;D§(param1:Boolean) : void
      {
         this.§>z§ = param1;
      }
      
      public function get §=g§() : Boolean
      {
         return this.§]!N§;
      }
      
      public function set §=g§(param1:Boolean) : void
      {
         this.§]!N§ = param1;
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
         return this.§'!^§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§'!^§ = param1;
      }
      
      public function §8Z§(param1:b2FilterData) : void
      {
         if(this.§0%§)
         {
            this.§0%§.§<!3§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§2!4§.§8!#§();
         _loc3_.§,V§ = true;
         _loc3_.§]!5§ = true;
         _loc3_.§3!6§ = true;
         _loc3_.§,w§ = 1;
         _loc3_.§0-§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§"!]§(this.§?!7§());
            this.mWorld = null;
         }
         this.§^!M§.dispose();
         if(this.§8q§)
         {
            this.§8q§.dispose();
            this.§8q§ = null;
         }
         this.§0%§ = null;
         this.§3[§ = null;
         this.§2!4§ = null;
      }
      
      public function §[§(param1:Number) : void
      {
         this.§?!7§().§+!O§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §`!D§() : Number
      {
         return (360 - this.§?!7§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §!!7§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§?!7§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§]A§();
         }
         if(param3)
         {
            this.§[!T§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§0%§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?!7§().GetPosition().x >= param3 && this.§?!7§().GetPosition().x <= param4 && this.§?!7§().GetPosition().y >= param1 && this.§?!7§().GetPosition().y <= param2;
      }
      
      public function §9!C§(param1:b2Vec2) : void
      {
         this.§3[§ = param1;
      }
      
      public function §#>§() : void
      {
         if(this.§3[§)
         {
            this.§!!7§(this.§3[§,false);
            this.§3[§ = null;
         }
      }
      
      public function §]A§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?!7§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§?!7§().§0z§(0);
         }
         else
         {
            this.§?!7§().§0z§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §[!T§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?!7§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§[§(_loc2_);
      }
      
      public function §?8§(param1:Number) : void
      {
         this.§?!7§().§0z§(param1);
      }
      
      public function §?!7§() : b2Body
      {
         if(this.§0%§ != null)
         {
            return this.§0%§.GetBody();
         }
         return null;
      }
      
      public function §!T§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§?H§ = param1;
            this.§>!a§ = param2;
         }
         this.§?!7§().GetPosition().x = this.§?H§ * §>"§.§'!S§;
         this.§?!7§().GetPosition().y = this.§>!a§ * §>"§.§'!S§;
      }
      
      public function §0q§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§]!=§)
         {
            _loc3_ = true;
            this.§]!=§ = false;
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
            this.§^!M§.§2`§();
         }
         if(this.§=M§ > 1 && this.§^!M§.§>o§)
         {
            _loc4_ = 4 + (this.§^!M§.§>o§.blurX - 4 + param2 / 20) % 28;
            this.§^!M§.§>o§.blurX = _loc4_;
            this.§^!M§.§>o§.blurY = _loc4_;
         }
         this.§^!M§.§<!U§(param2);
         if(§6T§)
         {
            this.§[!K§(param1);
         }
         else
         {
            this.§+!6§ = this.§^O§;
            this.§?H§ = this.§'!A§;
            this.§>!a§ = this.§?1§;
         }
         this.§8q§.x = Math.round(this.§?H§);
         this.§8q§.y = Math.round(this.§>!a§);
         this.§8q§.rotation = this.§+!6§ / 180 * Math.PI;
      }
      
      public function §>!4§() : void
      {
         var _loc1_:Number = this.§?!7§().GetPosition().x;
         var _loc2_:Number = this.§?!7§().GetPosition().y;
         this.§;4§ = this.§^O§;
         this.§9e§ = this.§'!A§;
         this.§8!;§ = this.§?1§;
         this.§^O§ = this.§?!7§().GetAngle() * (180 / Math.PI) % 360;
         this.§'!A§ = _loc1_ / §>"§.§'!S§;
         this.§?1§ = _loc2_ / §>"§.§'!S§;
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
      
      public function §[!K§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §7!7§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§3=§.mLevelMain.mLevelEngine.§!!"§ * 1000;
         }
         param1 *= -1;
         if(this.§'!A§ == this.§9e§ || param1 == 0)
         {
            this.§#!9§ = 0;
            this.§?H§ = this.§'!A§;
         }
         else
         {
            this.§#!9§ = param1 * (this.§9e§ - this.§'!A§) / param2;
            this.§?H§ = this.§'!A§ + this.§#!9§;
         }
         if(this.§?1§ == this.§8!;§ || param1 == 0)
         {
            this.§%u§ = 0;
            this.§>!a§ = this.§?1§;
         }
         else
         {
            this.§%u§ = param1 * (this.§8!;§ - this.§?1§) / param2;
            this.§>!a§ = this.§?1§ + this.§%u§;
         }
         if(this.§^O§ == this.§;4§ || param1 == 0)
         {
            this.§+!6§ = this.§^O§;
         }
         else if(this.§;4§ > this.§^O§ && this.§;4§ - this.§^O§ <= 180)
         {
            this.§+!6§ = this.§^O§ + param1 * (this.§;4§ - this.§^O§) / param2;
         }
         else if(this.§;4§ > this.§^O§ && this.§;4§ - this.§^O§ > 180)
         {
            this.§+!6§ = this.§^O§ + param1 * (this.§;4§ - 360 - this.§^O§) / param2;
         }
         else if(this.§;4§ < this.§^O§ && this.§^O§ - this.§;4§ <= 180)
         {
            this.§+!6§ = this.§^O§ + param1 * (this.§;4§ - this.§^O§) / param2;
         }
         else if(this.§;4§ < this.§^O§ && this.§^O§ - this.§;4§ > 180)
         {
            this.§+!6§ = this.§^O§ + param1 * (this.§;4§ + 360 - this.§^O§) / param2;
         }
      }
      
      public function get §!2§() : Point
      {
         if(!§6T§)
         {
         }
         return null;
      }
      
      public function §4!C§() : Boolean
      {
         return this.§,d§ == §9n§.§&!A§ || this.§,d§ == §9n§.§"!Y§;
      }
      
      public function §!!T§() : Boolean
      {
         return this.§,d§ == §9n§.§?P§;
      }
      
      public function §`u§() : Boolean
      {
         return this.§,d§ == §9n§.§5i§;
      }
      
      public function §,!-§() : Boolean
      {
         return this.§,d§ == §9n§.§"!Y§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§,d§ == §9n§.§ !<§;
      }
      
      public function isGround() : Boolean
      {
         return this.§,d§ == §9n§.§continue§;
      }
      
      public function §^p§() : Boolean
      {
         return this.§,d§ == §9n§.§5j§;
      }
      
      public function §0!3§() : Boolean
      {
         return this.§,d§ == §9n§.dynamic;
      }
      
      public function §%!;§() : Boolean
      {
         if(this.§7!0§ == "MISC_EXPLOSIVE_TNT" || this.§7!0§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §`7§() : Boolean
      {
         return (this.§!!T§() || this.§^p§() || this.§0!3§()) && !this.§=g§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §=w§() : Number
      {
         return Number(Math.sqrt(this.§?!7§().GetLinearVelocity().x * this.§?!7§().GetLinearVelocity().x + this.§?!7§().GetLinearVelocity().y * this.§?!7§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§`u§())
         {
            return this.§8!B§;
         }
         if(!this.§3=§.§]!V§())
         {
            return this.§8!B§;
         }
         if(this.§;!<§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§>!_§(§3!M§.§=0§);
            }
            else if(param1 > 12)
            {
               this.§>!_§(§3!M§.§ !G§);
            }
            else if(param1 > 3)
            {
               this.§>!_§(§3!M§.§#!#§);
            }
            return this.§8!B§;
         }
         if(param1 <= this.§;!<§)
         {
            if(param1 >= this.§;!<§ / 2)
            {
               this.§>!_§(§3!M§.§#!#§);
            }
            if(this.§4!C§() && this.§8!B§ == this.§6!N§)
            {
               this.§8!B§ = this.§6!N§ - 1;
            }
            return this.§8!B§;
         }
         param1 -= this.§;!<§;
         if(param2 && this.§`7§())
         {
            _loc7_ = Math.min(this.§8!B§,int(param1));
            _loc8_ = §>"§.§'W§.getValue() * _loc7_;
            this.§3=§.mLevelMain.addScore(_loc8_,§&%§.§-S§,this.§8!B§ > param1 && param3,this.§?!7§().GetPosition().x,this.§?!7§().GetPosition().y,§<!J§.§'!B§(this.§7!0§));
         }
         if(!(param5 && this.§>z§))
         {
            this.§8!B§ -= param1;
         }
         if(this.§8!B§ < 1 && this.§4!C§())
         {
            this.§8!B§ = 1;
         }
         if(this.§8!B§ < 1)
         {
            this.§8!B§ = 0;
            §&+§.§=R§(§3!M§.§=0§,this.§2!4§.§#J§,"ChannelDestroyed");
         }
         else
         {
            this.§>!_§(§3!M§.§ !G§);
            this.addDamageParticles(this.§3=§.mLevelMain.particles,param1);
         }
         this.§^!M§.setDamagedFrame();
         return this.§8!B§;
      }
      
      public function §>!_§(param1:int) : void
      {
         §&+§.§=R§(param1,this.§2!4§.§#J§);
      }
      
      public function §-=§(param1:String) : Number
      {
         return this.§2!4§.material.§0!&§(param1) * this.§=M§;
      }
      
      public function §-0§(param1:String) : Number
      {
         return this.§2!4§.material.§ #§(param1);
      }
      
      public function §2!9§() : String
      {
         return this.§2!4§.material.mName;
      }
      
      public function §"!H§() : Number
      {
         return this.§2!4§.§=v§();
      }
      
      public function §9!]§() : int
      {
         return this.§2!4§.§<Q§();
      }
      
      public function §0p§() : Boolean
      {
         return this.§?!7§().IsAwake() && (this.§4!C§() && this.§8!B§ == this.§6!N§ || Math.abs(this.§?!7§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?!7§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?!7§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §@T§() : Boolean
      {
         if(!this.§?!7§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§?!7§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§?!7§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§?!7§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §8!`§(param1:Number = 3) : void
      {
         this.§=M§ = param1;
         if(this.§=M§ > 1)
         {
            this.§^!M§.§^!U§();
         }
         else
         {
            this.§^!M§.§>o§ = null;
         }
      }
      
      public function §81§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§2!4§.§8!#§() == §@N§.§5`§)
         {
            _loc2_ = this.§^!M§.mW * this.§^!M§.mH * (§>"§.§'!S§ * §>"§.§'!S§);
         }
         else
         {
            _loc2_ = this.§?!7§().GetMass() / this.§0%§.§-@§();
            if(param1)
            {
               _loc2_ *= this.§9$§();
            }
            _loc2_ /= this.§`z§ * this.§`z§;
         }
         return _loc2_;
      }
      
      public function §9$§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§^!M§.§9Y§ - 1) / 10);
      }
      
      public function §]!^§(param1:Number) : void
      {
         var _loc2_:Number = this.§?!7§().GetLinearVelocity().x;
         var _loc3_:Number = this.§?!7§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§?!7§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§+K§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§=!R§) : void
      {
      }
      
      public function addDamageParticles(param1:§=!R§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §,!N§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§?!7§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§?!7§().§-y§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§`!D§()) + 360) % 360;
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
            this.§[§(_loc4_);
         }
         var _loc3_:Number = this.§`!D§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§[§(_loc3_);
      }
      
      public function §>!F§(param1:Number) : void
      {
         var _loc2_:Number = §"!J§(this.§?!7§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §[%§(_loc2_);
         this.§?!7§().§+!O§(_loc2_);
      }
      
      public function §'D§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§?!7§().GetPosition().Copy();
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
         this.§?!7§().§-y§(_loc13_);
      }
   }
}
