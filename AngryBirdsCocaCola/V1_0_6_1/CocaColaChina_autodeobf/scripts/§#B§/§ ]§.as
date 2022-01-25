package §#B§
{
   import § y§.b2Body;
   import § y§.b2BodyDef;
   import § y§.b2FilterData;
   import § y§.b2Fixture;
   import § y§.b2World;
   import §,-§.§ q§;
   import §,-§.§#o§;
   import §,-§.§'i§;
   import §,-§.§7i§;
   import §,-§.§;!F§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§%!&§;
   import §2!G§.§2!V§;
   import §54§.b2Settings;
   import §;h§.b2Vec2;
   import §<!!§.§-"§;
   import §<!$§.Sprite;
   import §=L§.§@E§;
   import §]!7§.b2PolygonShape;
   import flash.geom.Point;
   
   public class § ]§
   {
      
      public static const §;!H§:uint = 1 << 1;
      
      public static const §5H§:uint = 1 << 2;
      
      public static const §5q§:uint = 1 << 3;
      
      public static const §4<§:uint = 1 << 4;
      
      public static const §]'§:Boolean = true;
       
      
      private var §^%§:String;
      
      private var §';§:int;
      
      private var §%7§:int;
      
      public var §3a§:String;
      
      public var §+=§:int;
      
      private var §]!R§:§7i§;
      
      private var §&!'§:§ ! §;
      
      private var mWorld:b2World;
      
      private var §-!N§:b2Fixture;
      
      private var §6!@§:b2Body;
      
      private var §&i§:b2Vec2;
      
      public var §=1§:Number;
      
      public var §?G§:Number;
      
      private var §6d§:Number;
      
      private var §#!"§:Boolean = false;
      
      private var §4u§:Number;
      
      private var §2r§:Number;
      
      private var §"!&§:Number;
      
      private var §5`§:Number;
      
      private var §6!W§:Number;
      
      private var §5!`§:Number;
      
      public var §'!V§:Number = 1;
      
      private var §;!]§:Boolean = false;
      
      public var §'!J§:Number = 0;
      
      public var §`!V§:Number = 0;
      
      protected var §@3§:Boolean = false;
      
      public var §#8§:§-!I§;
      
      private var §1!?§:Sprite;
      
      private var §;i§:Number = 0;
      
      private var §%i§:Number = 0;
      
      private var §33§:Number = 0;
      
      private var §3!T§:Number = 1.0;
      
      private var §>N§:Boolean = false;
      
      private var §25§:Boolean = true;
      
      public function § ]§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§3a§ = param6;
         this.§]!R§ = §'i§.§6!R§(param6);
         this.§&!'§ = param1;
         this.§1!?§ = param2;
         this.§3!T§ = param10;
         this.§>N§ = param11;
         this.§';§ = param5;
         this.§+=§ = this.§]!R§.§+=§;
         this.§%7§ = this.§]!R§.§]!2§();
         this.§#8§ = new §-!I§(this,param2,param4);
         if(!this.§#8§.§!g§(param1.mLevelMain.§%S§))
         {
            this.§#8§.§-!=§(this.§%7§,this.§]!R§.§&!"§(),this.§]!R§.§5L§() / §2!V§.§-!3§,this.§]!R§.§6!5§() / §2!V§.§-!3§);
         }
         this.§#8§.§=`§(this.§%7§ == §;!F§.§"!"§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§6!@§ = this.mWorld.§9[§(_loc12_);
         this.§6!@§.§'!W§(this);
         if(this.§%7§ == §;!F§.§>,§)
         {
            _loc14_ = b2PolygonShape.§implements§(this.§]!R§.shape.§,E§ * param10,this.§]!R§.shape.§4X§ * param10);
            this.§-!N§ = this.§6!@§.CreateFixture2(_loc14_,this.§]!R§.§0w§());
         }
         else if(this.§%7§ == §;!F§.§"!"§ || this.§%7§ == §;!F§.§#s§)
         {
            this.§-!N§ = this.§6!@§.CreateFixture2(this.§]!R§.shape.§-!#§(param10),this.§]!R§.§0w§());
         }
         this.§-!N§.§@9§(this.§]!R§.§2&§());
         this.§-!N§.§6D§(this.§]!R§.§;O§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§`-§())
         {
            _loc13_.§8!9§ = §;!H§;
            _loc13_.§,6§ = 65535 & ~§5H§;
         }
         else if(this.§3a§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§3a§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§8!9§ = §5H§;
            _loc13_.§,6§ = 65535 & ~§;!H§;
         }
         this.§-!N§.§;'§(_loc13_);
         this.§6d§ = this.§]!R§.§%?§();
         if(this.§]!R§.§?G§ > 0)
         {
            this.§=1§ = this.§?G§ = this.§]!R§.§?G§;
         }
         else
         {
            this.§=1§ = this.§?G§ = Math.round(this.§62§(true) * this.§]!R§.§0!!§());
            if(this.§=1§ < 1)
            {
               this.§=1§ = this.§?G§ = 1;
            }
         }
         if(this.§]!R§.§+=§ == §7i§.§#]§)
         {
            this.§1!?§.visible = false;
         }
         else
         {
            this.§#8§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§?J§(param9);
         }
         this.§=!`§();
         this.§]!;§(0,1);
         this.§#8§.§=!@§(this.§]!R§.shape);
      }
      
      public static function §,I§(param1:int, param2:§#o§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§[J§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§2!&§;
            }
            §@E§.§`d§(_loc4_,param3);
         }
      }
      
      public static function §[e§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §<!A§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!?§;
      }
      
      public function get x() : Number
      {
         return this.§;i§;
      }
      
      public function get y() : Number
      {
         return this.§%i§;
      }
      
      public function get scale() : Number
      {
         return this.§3!T§;
      }
      
      public function get front() : Boolean
      {
         return this.§>N§;
      }
      
      public function get §>!,§() : Number
      {
         return this.§6!@§.GetPosition().x;
      }
      
      public function get §3!$§() : Number
      {
         return this.§6!@§.GetPosition().y;
      }
      
      public function get §5K§() : §7i§
      {
         return this.§]!R§;
      }
      
      public function get §&;§() : Boolean
      {
         return this.§6d§ >= 0;
      }
      
      protected function get container() : § ! §
      {
         return this.§&!'§;
      }
      
      public function get §;!X§() : Boolean
      {
         return this.§25§;
      }
      
      public function set §;!X§(param1:Boolean) : void
      {
         this.§25§ = param1;
      }
      
      public function set §!C§(param1:Boolean) : void
      {
         this.§#!"§ = param1;
      }
      
      public function get §7M§() : Boolean
      {
         return this.§;!]§;
      }
      
      public function set §7M§(param1:Boolean) : void
      {
         this.§;!]§ = param1;
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
         return this.§^%§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§^%§ = param1;
      }
      
      public function § !X§(param1:b2FilterData) : void
      {
         if(this.§-!N§)
         {
            this.§-!N§.§;'§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§]!R§.§?!0§();
         _loc3_.§5l§ = true;
         _loc3_.§=S§ = true;
         _loc3_.§5E§ = true;
         _loc3_.§`k§ = 1;
         _loc3_.§=R§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§true§(this.§4g§());
            this.mWorld = null;
         }
         this.§#8§.dispose();
         if(this.§1!?§)
         {
            this.§1!?§.dispose();
            this.§1!?§ = null;
         }
         this.§-!N§ = null;
         this.§&i§ = null;
         this.§]!R§ = null;
      }
      
      public function §?J§(param1:Number) : void
      {
         this.§4g§().§9@§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §;]§() : Number
      {
         return (360 - this.§4g§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §'!-§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§4g§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§?!1§();
         }
         if(param3)
         {
            this.§4N§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§-!N§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§4g§().GetPosition().x >= param3 && this.§4g§().GetPosition().x <= param4 && this.§4g§().GetPosition().y >= param1 && this.§4g§().GetPosition().y <= param2;
      }
      
      public function §?c§(param1:b2Vec2) : void
      {
         this.§&i§ = param1;
      }
      
      public function §?u§() : void
      {
         if(this.§&i§)
         {
            this.§'!-§(this.§&i§,false);
            this.§&i§ = null;
         }
      }
      
      public function §?!1§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§4g§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§4g§().§6!D§(0);
         }
         else
         {
            this.§4g§().§6!D§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §4N§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§4g§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§?J§(_loc2_);
      }
      
      public function §?@§(param1:Number) : void
      {
         this.§4g§().§6!D§(param1);
      }
      
      public function §4g§() : b2Body
      {
         if(this.§-!N§ != null)
         {
            return this.§-!N§.GetBody();
         }
         return null;
      }
      
      public function §=f§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§;i§ = param1;
            this.§%i§ = param2;
         }
         this.§4g§().GetPosition().x = this.§;i§ * §2!V§.§-!3§;
         this.§4g§().GetPosition().y = this.§%i§ * §2!V§.§-!3§;
      }
      
      public function §]!;§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§@3§)
         {
            _loc3_ = true;
            this.§@3§ = false;
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
            this.§#8§.§1J§();
         }
         if(this.§'!V§ > 1 && this.§#8§.§3i§)
         {
            _loc4_ = 4 + (this.§#8§.§3i§.blurX - 4 + param2 / 20) % 28;
            this.§#8§.§3i§.blurX = _loc4_;
            this.§#8§.§3i§.blurY = _loc4_;
         }
         this.§#8§.§'7§(param2);
         if(§]'§)
         {
            this.§=w§(param1);
         }
         else
         {
            this.§33§ = this.§"!&§;
            this.§;i§ = this.§4u§;
            this.§%i§ = this.§2r§;
         }
         this.§1!?§.x = Math.round(this.§;i§);
         this.§1!?§.y = Math.round(this.§%i§);
         this.§1!?§.rotation = this.§33§ / 180 * Math.PI;
      }
      
      public function §=!`§() : void
      {
         var _loc1_:Number = this.§4g§().GetPosition().x;
         var _loc2_:Number = this.§4g§().GetPosition().y;
         this.§5!`§ = this.§"!&§;
         this.§5`§ = this.§4u§;
         this.§6!W§ = this.§2r§;
         this.§"!&§ = this.§4g§().GetAngle() * (180 / Math.PI) % 360;
         this.§4u§ = _loc1_ / §2!V§.§-!3§;
         this.§2r§ = _loc2_ / §2!V§.§-!3§;
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
      
      public function §=w§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §-"§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§&!'§.mLevelMain.mLevelEngine.§[,§ * 1000;
         }
         param1 *= -1;
         if(this.§4u§ == this.§5`§ || param1 == 0)
         {
            this.§'!J§ = 0;
            this.§;i§ = this.§4u§;
         }
         else
         {
            this.§'!J§ = param1 * (this.§5`§ - this.§4u§) / param2;
            this.§;i§ = this.§4u§ + this.§'!J§;
         }
         if(this.§2r§ == this.§6!W§ || param1 == 0)
         {
            this.§`!V§ = 0;
            this.§%i§ = this.§2r§;
         }
         else
         {
            this.§`!V§ = param1 * (this.§6!W§ - this.§2r§) / param2;
            this.§%i§ = this.§2r§ + this.§`!V§;
         }
         if(this.§"!&§ == this.§5!`§ || param1 == 0)
         {
            this.§33§ = this.§"!&§;
         }
         else if(this.§5!`§ > this.§"!&§ && this.§5!`§ - this.§"!&§ <= 180)
         {
            this.§33§ = this.§"!&§ + param1 * (this.§5!`§ - this.§"!&§) / param2;
         }
         else if(this.§5!`§ > this.§"!&§ && this.§5!`§ - this.§"!&§ > 180)
         {
            this.§33§ = this.§"!&§ + param1 * (this.§5!`§ - 360 - this.§"!&§) / param2;
         }
         else if(this.§5!`§ < this.§"!&§ && this.§"!&§ - this.§5!`§ <= 180)
         {
            this.§33§ = this.§"!&§ + param1 * (this.§5!`§ - this.§"!&§) / param2;
         }
         else if(this.§5!`§ < this.§"!&§ && this.§"!&§ - this.§5!`§ > 180)
         {
            this.§33§ = this.§"!&§ + param1 * (this.§5!`§ + 360 - this.§"!&§) / param2;
         }
      }
      
      public function get §36§() : Point
      {
         if(!§]'§)
         {
         }
         return null;
      }
      
      public function §`-§() : Boolean
      {
         return this.§+=§ == §7i§.§`!L§ || this.§+=§ == §7i§.§]d§;
      }
      
      public function §=M§() : Boolean
      {
         return this.§+=§ == §7i§.§]4§;
      }
      
      public function §2R§() : Boolean
      {
         return this.§+=§ == §7i§.§-!b§;
      }
      
      public function §6!"§() : Boolean
      {
         return this.§+=§ == §7i§.§]d§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§+=§ == §7i§.§-W§;
      }
      
      public function isGround() : Boolean
      {
         return this.§+=§ == §7i§.§#]§;
      }
      
      public function §]5§() : Boolean
      {
         return this.§+=§ == §7i§.include;
      }
      
      public function §]K§() : Boolean
      {
         return this.§+=§ == §7i§.§ !d§;
      }
      
      public function §@"§() : Boolean
      {
         if(this.§3a§ == "MISC_EXPLOSIVE_TNT" || this.§3a§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §4w§() : Boolean
      {
         return (this.§=M§() || this.§]5§() || this.§]K§()) && !this.§7M§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §',§() : Number
      {
         return Number(Math.sqrt(this.§4g§().GetLinearVelocity().x * this.§4g§().GetLinearVelocity().x + this.§4g§().GetLinearVelocity().y * this.§4g§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§2R§())
         {
            return this.§=1§;
         }
         if(!this.§&!'§.§&e§())
         {
            return this.§=1§;
         }
         if(this.§6d§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§;!J§(§#o§.§@1§);
            }
            else if(param1 > 12)
            {
               this.§;!J§(§#o§.§?I§);
            }
            else if(param1 > 3)
            {
               this.§;!J§(§#o§.§>!Y§);
            }
            return this.§=1§;
         }
         if(param1 <= this.§6d§)
         {
            if(param1 >= this.§6d§ / 2)
            {
               this.§;!J§(§#o§.§>!Y§);
            }
            if(this.§`-§() && this.§=1§ == this.§?G§)
            {
               this.§=1§ = this.§?G§ - 1;
            }
            return this.§=1§;
         }
         param1 -= this.§6d§;
         if(param2 && this.§4w§())
         {
            _loc7_ = Math.min(this.§=1§,int(param1));
            _loc8_ = §2!V§.§5R§.getValue() * _loc7_;
            this.§&!'§.mLevelMain.addScore(_loc8_,§%!&§.§2c§,this.§=1§ > param1 && param3,this.§4g§().GetPosition().x,this.§4g§().GetPosition().y,§&!^§.§+!F§(this.§3a§));
         }
         if(!(param5 && this.§#!"§))
         {
            this.§=1§ -= param1;
         }
         if(this.§=1§ < 1 && this.§`-§())
         {
            this.§=1§ = 1;
         }
         if(this.§=1§ < 1)
         {
            this.§=1§ = 0;
            § ]§.§,I§(§#o§.§@1§,this.§]!R§.§-!1§,"ChannelDestroyed");
         }
         else
         {
            this.§;!J§(§#o§.§?I§);
            this.addDamageParticles(this.§&!'§.mLevelMain.particles,param1);
         }
         this.§#8§.setDamagedFrame();
         return this.§=1§;
      }
      
      public function §;!J§(param1:int) : void
      {
         § ]§.§,I§(param1,this.§]!R§.§-!1§);
      }
      
      public function §'u§(param1:String) : Number
      {
         return this.§]!R§.material.§6p§(param1) * this.§'!V§;
      }
      
      public function §^!c§(param1:String) : Number
      {
         return this.§]!R§.material.§]w§(param1);
      }
      
      public function §;!&§() : String
      {
         return this.§]!R§.material.mName;
      }
      
      public function §,"§() : Number
      {
         return this.§]!R§.§0!!§();
      }
      
      public function §]R§() : int
      {
         return this.§]!R§.§%!A§();
      }
      
      public function § Y§() : Boolean
      {
         return this.§4g§().IsAwake() && (this.§`-§() && this.§=1§ == this.§?G§ || Math.abs(this.§4g§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§4g§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§4g§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §9!T§() : Boolean
      {
         if(!this.§4g§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§4g§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§4g§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§4g§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §2!4§(param1:Number = 3) : void
      {
         this.§'!V§ = param1;
         if(this.§'!V§ > 1)
         {
            this.§#8§.§5!?§();
         }
         else
         {
            this.§#8§.§3i§ = null;
         }
      }
      
      public function §62§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§]!R§.§?!0§() == § q§.§-2§)
         {
            _loc2_ = this.§#8§.mW * this.§#8§.mH * (§2!V§.§-!3§ * §2!V§.§-!3§);
         }
         else
         {
            _loc2_ = this.§4g§().GetMass() / this.§-!N§.§+!Q§();
            if(param1)
            {
               _loc2_ *= this.§]!L§();
            }
            _loc2_ /= this.§3!T§ * this.§3!T§;
         }
         return _loc2_;
      }
      
      public function §]!L§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§#8§.§^b§ - 1) / 10);
      }
      
      public function §%#§(param1:Number) : void
      {
         var _loc2_:Number = this.§4g§().GetLinearVelocity().x;
         var _loc3_:Number = this.§4g§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§4g§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§ ! §) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§]s§) : void
      {
      }
      
      public function addDamageParticles(param1:§]s§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §9C§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§4g§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§4g§().§2^§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§;]§()) + 360) % 360;
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
            this.§?J§(_loc4_);
         }
         var _loc3_:Number = this.§;]§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§?J§(_loc3_);
      }
      
      public function §8S§(param1:Number) : void
      {
         var _loc2_:Number = §[e§(this.§4g§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §<!A§(_loc2_);
         this.§4g§().§9@§(_loc2_);
      }
      
      public function §^$§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§4g§().GetPosition().Copy();
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
         this.§4g§().§2^§(_loc13_);
      }
   }
}
