package §#v§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.Sprite;
   import §&N§.§@,§;
   import §,B§.§1F§;
   import §,B§.§9x§;
   import §,B§.§;V§;
   import §,B§.§<!2§;
   import §,B§.§?7§;
   import §1!H§.b2PolygonShape;
   import §2!6§.§%!$§;
   import §;]§.b2Settings;
   import §=E§.b2Vec2;
   import §?!0§.b2Body;
   import §?!0§.b2BodyDef;
   import §?!0§.b2FilterData;
   import §?!0§.b2Fixture;
   import §?!0§.b2World;
   import §?'§.§74§;
   import §?'§.§9N§;
   import flash.geom.Point;
   
   public class §#3§
   {
      
      public static const §8q§:uint = 1 << 1;
      
      public static const §"!=§:uint = 1 << 2;
      
      public static const §[!-§:uint = 1 << 3;
      
      public static const §-!V§:uint = 1 << 4;
      
      public static const §>!$§:Boolean = true;
       
      
      private var §@m§:int;
      
      private var §-!"§:int;
      
      public var §,!§:String;
      
      public var § h§:int;
      
      private var §!R§:§<!2§;
      
      private var §8!B§:§-!7§;
      
      private var mWorld:b2World;
      
      private var §6"§:b2Fixture;
      
      private var §&!T§:b2Body;
      
      private var §<7§:b2Vec2;
      
      public var §;!A§:Number;
      
      public var §]p§:Number;
      
      private var §4^§:Number;
      
      private var §9!B§:Boolean = false;
      
      private var §2!2§:Number;
      
      private var §5!0§:Number;
      
      private var §-e§:Number;
      
      private var §<!,§:Number;
      
      private var §?!B§:Number;
      
      private var §;!S§:Number;
      
      public var §&§:Number = 1;
      
      private var §`o§:Boolean = false;
      
      public var §;v§:Number = 0;
      
      public var §?g§:Number = 0;
      
      protected var §9K§:Boolean = false;
      
      public var §5-§:§"d§;
      
      private var §=!<§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §&!;§:Number = 0;
      
      private var §7<§:Number = 1.0;
      
      private var §,>§:Boolean = false;
      
      private var §%n§:Boolean = true;
      
      public function §#3§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§,!§ = param6;
         this.§!R§ = §?7§.§`1§(param6);
         this.§8!B§ = param1;
         this.§=!<§ = param2;
         this.§7<§ = param10;
         this.§,>§ = param11;
         this.§@m§ = param5;
         this.§ h§ = this.§!R§.§ h§;
         this.§-!"§ = this.§!R§.§;!H§();
         this.§5-§ = new §"d§(this,param2,param4);
         if(!this.§5-§.§ #§(param1.§;c§.§+S§))
         {
            this.§5-§.§"e§(this.§-!"§,this.§!R§.§ s§(),this.§!R§.§?!P§() / §9N§.§8!5§,this.§!R§.§8!H§() / §9N§.§8!5§);
         }
         this.§5-§.§?!7§(this.§-!"§ == §;V§.§;A§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§&!T§ = this.mWorld.§1[§(_loc12_);
         this.§&!T§.§,!P§(this);
         if(this.§-!"§ == §;V§.§,i§)
         {
            _loc14_ = b2PolygonShape.§ !5§(this.§!R§.shape.§6!>§ * param10,this.§!R§.shape.§?l§ * param10);
            this.§6"§ = this.§&!T§.CreateFixture2(_loc14_,this.§!R§.§^!Q§());
         }
         else if(this.§-!"§ == §;V§.§;A§ || this.§-!"§ == §;V§.§=§)
         {
            this.§6"§ = this.§&!T§.CreateFixture2(this.§!R§.shape.§!!<§(param10),this.§!R§.§^!Q§());
         }
         this.§6"§.§0!=§(this.§!R§.§45§());
         this.§6"§.§9+§(this.§!R§.§#=§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§[P§())
         {
            _loc13_.§?p§ = §8q§;
            _loc13_.§]@§ = 65535 & ~§"!=§;
         }
         else if(this.§,!§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§,!§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§?p§ = §"!=§;
            _loc13_.§]@§ = 65535 & ~§8q§;
         }
         this.§6"§.§&!"§(_loc13_);
         this.§4^§ = this.§!R§.§%f§();
         if(this.§!R§.§]p§ > 0)
         {
            this.§;!A§ = this.§]p§ = this.§!R§.§]p§;
         }
         else
         {
            this.§;!A§ = this.§]p§ = Math.round(this.§&c§(true) * this.§!R§.§0G§());
            if(this.§;!A§ < 1)
            {
               this.§;!A§ = this.§]p§ = 1;
            }
         }
         if(this.§!R§.§ h§ == §<!2§.§2#§)
         {
            this.§=!<§.visible = false;
         }
         else
         {
            this.§5-§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§`!K§(param9);
         }
         this.§"!;§();
         this.§'!P§(0,1);
         this.§5-§.§;D§(this.§!R§.shape);
      }
      
      public static function § for§(param1:int, param2:§1F§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§=!5§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§3l§;
            }
            §%!$§.§+f§(_loc4_,param3);
         }
      }
      
      public static function §??§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §3!X§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!<§;
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
         return this.§7<§;
      }
      
      public function get front() : Boolean
      {
         return this.§,>§;
      }
      
      public function get §2Z§() : Number
      {
         return this.§&!T§.GetPosition().x;
      }
      
      public function get §+-§() : Number
      {
         return this.§&!T§.GetPosition().y;
      }
      
      public function get §9!V§() : §<!2§
      {
         return this.§!R§;
      }
      
      public function get §8!Q§() : Boolean
      {
         return this.§4^§ >= 0;
      }
      
      protected function get container() : §-!7§
      {
         return this.§8!B§;
      }
      
      public function get §2!X§() : Boolean
      {
         return this.§%n§;
      }
      
      public function set §2!X§(param1:Boolean) : void
      {
         this.§%n§ = param1;
      }
      
      public function set §4!'§(param1:Boolean) : void
      {
         this.§9!B§ = param1;
      }
      
      public function get §>C§() : Boolean
      {
         return this.§`o§;
      }
      
      public function set §>C§(param1:Boolean) : void
      {
         this.§`o§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §0=§(param1:b2FilterData) : void
      {
         if(this.§6"§)
         {
            this.§6"§.§&!"§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§!R§.§>E§();
         _loc3_.§='§ = true;
         _loc3_.§5d§ = true;
         _loc3_.§=q§ = true;
         _loc3_.§[!8§ = 1;
         _loc3_.§ v§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§&!Y§(this.§#a§());
            this.mWorld = null;
         }
         this.§5-§.dispose();
         if(this.§=!<§)
         {
            this.§=!<§.dispose();
            this.§=!<§ = null;
         }
         this.§6"§ = null;
         this.§<7§ = null;
         this.§!R§ = null;
      }
      
      public function §`!K§(param1:Number) : void
      {
         this.§#a§().§0!%§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §@L§() : Number
      {
         return (360 - this.§#a§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §?!"§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§#a§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§-r§();
         }
         if(param3)
         {
            this.§]!-§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§6"§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§#a§().GetPosition().x >= param3 && this.§#a§().GetPosition().x <= param4 && this.§#a§().GetPosition().y >= param1 && this.§#a§().GetPosition().y <= param2;
      }
      
      public function §%!K§(param1:b2Vec2) : void
      {
         this.§<7§ = param1;
      }
      
      public function §,!%§() : void
      {
         if(this.§<7§)
         {
            this.§?!"§(this.§<7§,false);
            this.§<7§ = null;
         }
      }
      
      public function §-r§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§#a§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§#a§().§if§(0);
         }
         else
         {
            this.§#a§().§if§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §]!-§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§#a§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§`!K§(_loc2_);
      }
      
      public function §3!=§(param1:Number) : void
      {
         this.§#a§().§if§(param1);
      }
      
      public function §#a§() : b2Body
      {
         if(this.§6"§ != null)
         {
            return this.§6"§.GetBody();
         }
         return null;
      }
      
      public function §`!#§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§#a§().GetPosition().x = this.mX * §9N§.§8!5§;
         this.§#a§().GetPosition().y = this.mY * §9N§.§8!5§;
      }
      
      public function §'!P§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§9K§)
         {
            _loc3_ = true;
            this.§9K§ = false;
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
            this.§5-§.§;!Q§();
         }
         if(this.§&§ > 1 && this.§5-§.§-t§)
         {
            _loc4_ = 4 + (this.§5-§.§-t§.blurX - 4 + param2 / 20) % 28;
            this.§5-§.§-t§.blurX = _loc4_;
            this.§5-§.§-t§.blurY = _loc4_;
         }
         this.§5-§.§6!F§(param2);
         if(§>!$§)
         {
            this.§7!+§(param1);
         }
         else
         {
            this.§&!;§ = this.§-e§;
            this.mX = this.§2!2§;
            this.mY = this.§5!0§;
         }
         this.§=!<§.x = Math.round(this.mX);
         this.§=!<§.y = Math.round(this.mY);
         this.§=!<§.rotation = this.§&!;§ / 180 * Math.PI;
      }
      
      public function §"!;§() : void
      {
         var _loc1_:Number = this.§#a§().GetPosition().x;
         var _loc2_:Number = this.§#a§().GetPosition().y;
         this.§;!S§ = this.§-e§;
         this.§<!,§ = this.§2!2§;
         this.§?!B§ = this.§5!0§;
         this.§-e§ = this.§#a§().GetAngle() * (180 / Math.PI) % 360;
         this.§2!2§ = _loc1_ / §9N§.§8!5§;
         this.§5!0§ = _loc2_ / §9N§.§8!5§;
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
      
      public function §7!+§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §@,§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§8!B§.§;c§.mLevelEngine.§9!@§ * 1000;
         }
         param1 *= -1;
         if(this.§2!2§ == this.§<!,§ || param1 == 0)
         {
            this.§;v§ = 0;
            this.mX = this.§2!2§;
         }
         else
         {
            this.§;v§ = param1 * (this.§<!,§ - this.§2!2§) / param2;
            this.mX = this.§2!2§ + this.§;v§;
         }
         if(this.§5!0§ == this.§?!B§ || param1 == 0)
         {
            this.§?g§ = 0;
            this.mY = this.§5!0§;
         }
         else
         {
            this.§?g§ = param1 * (this.§?!B§ - this.§5!0§) / param2;
            this.mY = this.§5!0§ + this.§?g§;
         }
         if(this.§-e§ == this.§;!S§ || param1 == 0)
         {
            this.§&!;§ = this.§-e§;
         }
         else if(this.§;!S§ > this.§-e§ && this.§;!S§ - this.§-e§ <= 180)
         {
            this.§&!;§ = this.§-e§ + param1 * (this.§;!S§ - this.§-e§) / param2;
         }
         else if(this.§;!S§ > this.§-e§ && this.§;!S§ - this.§-e§ > 180)
         {
            this.§&!;§ = this.§-e§ + param1 * (this.§;!S§ - 360 - this.§-e§) / param2;
         }
         else if(this.§;!S§ < this.§-e§ && this.§-e§ - this.§;!S§ <= 180)
         {
            this.§&!;§ = this.§-e§ + param1 * (this.§;!S§ - this.§-e§) / param2;
         }
         else if(this.§;!S§ < this.§-e§ && this.§-e§ - this.§;!S§ > 180)
         {
            this.§&!;§ = this.§-e§ + param1 * (this.§;!S§ + 360 - this.§-e§) / param2;
         }
      }
      
      public function get §0c§() : Point
      {
         if(!§>!$§)
         {
         }
         return null;
      }
      
      public function §[P§() : Boolean
      {
         return this.§ h§ == §<!2§.§&J§ || this.§ h§ == §<!2§.§"!V§;
      }
      
      public function § !?§() : Boolean
      {
         return this.§ h§ == §<!2§.§&!Q§;
      }
      
      public function §7!?§() : Boolean
      {
         return this.§ h§ == §<!2§.§?T§;
      }
      
      public function §;!B§() : Boolean
      {
         return this.§ h§ == §<!2§.§"!V§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§ h§ == §<!2§.§!?§;
      }
      
      public function isGround() : Boolean
      {
         return this.§ h§ == §<!2§.§2#§;
      }
      
      public function §?u§() : Boolean
      {
         return this.§ h§ == §<!2§.§"A§;
      }
      
      public function §?!<§() : Boolean
      {
         return this.§ h§ == §<!2§.§@!%§;
      }
      
      public function §<!<§() : Boolean
      {
         if(this.§,!§ == "MISC_EXPLOSIVE_TNT" || this.§,!§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §;Q§() : Boolean
      {
         return (this.§ !?§() || this.§?u§() || this.§?!<§()) && !this.§>C§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §"!J§() : Number
      {
         return Number(Math.sqrt(this.§#a§().GetLinearVelocity().x * this.§#a§().GetLinearVelocity().x + this.§#a§().GetLinearVelocity().y * this.§#a§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§7!?§())
         {
            return this.§;!A§;
         }
         if(!this.§8!B§.§=s§())
         {
            return this.§;!A§;
         }
         if(this.§4^§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§0K§(§1F§.§,! §);
            }
            else if(param1 > 12)
            {
               this.§0K§(§1F§.§3!P§);
            }
            else if(param1 > 3)
            {
               this.§0K§(§1F§.§ _§);
            }
            return this.§;!A§;
         }
         if(param1 < this.§4^§)
         {
            if(param1 >= this.§4^§ / 2)
            {
               this.§0K§(§1F§.§ _§);
            }
            if(this.§[P§() && this.§;!A§ == this.§]p§)
            {
               this.§;!A§ = this.§]p§ - 1;
            }
            return this.§;!A§;
         }
         param1 -= this.§4^§;
         if(param2 && this.§;Q§())
         {
            _loc7_ = Math.min(this.§;!A§,int(param1));
            _loc8_ = §9N§.§01§.getValue() * _loc7_;
            this.§8!B§.§;c§.addScore(_loc8_,§74§.§^_§,this.§;!A§ > param1 && param3,this.§#a§().GetPosition().x,this.§#a§().GetPosition().y,§?f§.§%6§(this.§,!§));
         }
         if(!(param5 && this.§9!B§))
         {
            this.§;!A§ -= param1;
         }
         if(this.§;!A§ < 1 && this.§[P§())
         {
            this.§;!A§ = 1;
         }
         if(this.§;!A§ < 1)
         {
            this.§;!A§ = 0;
            §#3§.§ for§(§1F§.§,! §,this.§!R§.§%b§,"ChannelDestroyed");
         }
         else
         {
            this.§0K§(§1F§.§3!P§);
            this.addDamageParticles(this.§8!B§.§;c§.particles,param1);
         }
         this.§5-§.setDamagedFrame();
         return this.§;!A§;
      }
      
      public function §0K§(param1:int) : void
      {
         §#3§.§ for§(param1,this.§!R§.§%b§);
      }
      
      public function §,!L§(param1:String) : Number
      {
         return this.§!R§.material.§<8§(param1) * this.§&§;
      }
      
      public function §=d§(param1:String) : Number
      {
         return this.§!R§.material.§1a§(param1);
      }
      
      public function §<=§() : String
      {
         return this.§!R§.material.mName;
      }
      
      public function §7J§() : Number
      {
         return this.§!R§.§0G§();
      }
      
      public function §0J§() : int
      {
         return this.§!R§.§^!;§();
      }
      
      public function §#X§() : Boolean
      {
         return this.§#a§().IsAwake() && (this.§[P§() && this.§;!A§ == this.§]p§ || Math.abs(this.§#a§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§#a§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§#a§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §`9§() : Boolean
      {
         if(!this.§#a§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§#a§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§#a§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§#a§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §5!@§(param1:Number = 3) : void
      {
         this.§&§ = param1;
         if(this.§&§ > 1)
         {
            this.§5-§.§9;§();
         }
         else
         {
            this.§5-§.§-t§ = null;
         }
      }
      
      public function §&c§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§!R§.§>E§() == §9x§.§"!Q§)
         {
            _loc2_ = this.§5-§.mW * this.§5-§.mH * (§9N§.§8!5§ * §9N§.§8!5§);
         }
         else
         {
            _loc2_ = this.§#a§().GetMass() / this.§6"§.§&o§();
            if(param1)
            {
               _loc2_ *= this.§>!&§();
            }
            _loc2_ /= this.§7<§ * this.§7<§;
         }
         return _loc2_;
      }
      
      public function §>!&§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§5-§.§'x§ - 1) / 10);
      }
      
      public function §5R§(param1:Number) : void
      {
         var _loc2_:Number = this.§#a§().GetLinearVelocity().x;
         var _loc3_:Number = this.§#a§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§#a§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§-!7§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§7!W§) : void
      {
      }
      
      public function addDamageParticles(param1:§7!W§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §1!0§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§#a§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§#a§().§^!N§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§@L§();
            _loc3_ = (_loc3_ + 360) % 360;
            _loc4_ = 0;
            if(param1 != 0)
            {
               _loc4_ = _loc3_ % param1;
            }
            if(_loc4_ < param1 / 2)
            {
               _loc3_ -= _loc4_;
            }
            else
            {
               _loc3_ += param1 - _loc4_;
            }
            this.§`!K§(_loc3_);
         }
         this.§`!K§(this.§@L§() + param1);
      }
      
      public function §!K§(param1:Number) : void
      {
         var _loc2_:Number = §??§(this.§#a§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §3!X§(_loc2_);
         this.§#a§().§0!%§(_loc2_);
      }
      
      public function §6q§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§#a§().GetPosition().Copy();
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
         this.§#a§().§^!N§(_loc13_);
      }
   }
}
