package §-!7§
{
   import §%!$§.§=m§;
   import §&!"§.b2Body;
   import §&!"§.b2BodyDef;
   import §&!"§.b2FilterData;
   import §&!"§.b2Fixture;
   import §&!"§.b2World;
   import §-!C§.b2PolygonShape;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §9N§.§^_§;
   import §>!@§.b2Settings;
   import §?7§.§!S§;
   import §?7§.§#!+§;
   import §?7§.§&!5§;
   import §?7§.§,!§;
   import §?7§.§=!5§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §@,§.§4h§;
   import §`a§.Sprite;
   import flash.geom.Point;
   
   public class §@m§
   {
      
      public static const §"!=§:uint = 1 << 1;
      
      public static const §[!-§:uint = 1 << 2;
      
      public static const §-!V§:uint = 1 << 3;
      
      public static const §>!$§:uint = 1 << 4;
      
      public static const § for§:Boolean = true;
       
      
      private var §-!"§:int;
      
      private var §!R§:int;
      
      public var § h§:String;
      
      public var §5x§:int;
      
      private var §6"§:§,!§;
      
      private var §08§:§&$§;
      
      private var mWorld:b2World;
      
      private var §&!T§:b2Fixture;
      
      private var §<7§:b2Body;
      
      private var §;!A§:b2Vec2;
      
      public var §4^§:Number;
      
      public var §,>§:Number;
      
      private var §9!B§:Number;
      
      private var §2!2§:Boolean = false;
      
      private var §5!0§:Number;
      
      private var §-e§:Number;
      
      private var §<!,§:Number;
      
      private var §?!B§:Number;
      
      private var §;!S§:Number;
      
      private var §`o§:Number;
      
      public var §"6§:Number = 1;
      
      private var §;v§:Boolean = false;
      
      public var §?g§:Number = 0;
      
      public var §9K§:Number = 0;
      
      protected var §5-§:Boolean = false;
      
      public var §%n§:§'x§;
      
      private var §9!A§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §,E§:Number = 0;
      
      private var §7<§:Number = 1.0;
      
      private var §8!X§:Boolean = false;
      
      private var §2Z§:Boolean = true;
      
      public function §@m§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§ h§ = param6;
         this.§6"§ = §&!5§.§;@§(param6);
         this.§08§ = param1;
         this.§9!A§ = param2;
         this.§7<§ = param10;
         this.§8!X§ = param11;
         this.§-!"§ = param5;
         this.§5x§ = this.§6"§.§5x§;
         this.§!R§ = this.§6"§.§?!P§();
         this.§%n§ = new §'x§(this,param2,param4);
         if(!this.§%n§.§#?§(param1.§8@§.§"B§))
         {
            this.§%n§.§?!7§(this.§!R§,this.§6"§.§%f§(),this.§6"§.§8!H§() / §9!%§.§catch§,this.§6"§.§^!Q§() / §9!%§.§catch§);
         }
         this.§%n§.§;D§(this.§!R§ == §!S§.§=§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§<7§ = this.mWorld.§&!Y§(_loc12_);
         this.§<7§.§,!P§(this);
         if(this.§!R§ == §!S§.§;A§)
         {
            _loc14_ = b2PolygonShape.§,b§(this.§6"§.shape.§?l§ * param10,this.§6"§.shape.§+G§ * param10);
            this.§&!T§ = this.§<7§.CreateFixture2(_loc14_,this.§6"§.§>E§());
         }
         else if(this.§!R§ == §!S§.§=§ || this.§!R§ == §!S§.§1F§)
         {
            this.§&!T§ = this.§<7§.CreateFixture2(this.§6"§.shape.§-x§(param10),this.§6"§.§>E§());
         }
         this.§&!T§.§"!<§(this.§6"§.§#=§());
         this.§&!T§.§3-§(this.§6"§.§0G§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§ !?§())
         {
            _loc13_.§]@§ = §"!=§;
            _loc13_.§+!0§ = 65535 & ~§[!-§;
         }
         else if(this.§ h§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§ h§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§]@§ = §[!-§;
            _loc13_.§+!0§ = 65535 & ~§"!=§;
         }
         this.§&!T§.§'!+§(_loc13_);
         this.§9!B§ = this.§6"§.§45§();
         if(this.§6"§.§,>§ > 0)
         {
            this.§4^§ = this.§,>§ = this.§6"§.§,>§;
         }
         else
         {
            this.§4^§ = this.§,>§ = Math.round(this.§>!&§(true) * this.§6"§.§^!;§());
            if(this.§4^§ < 1)
            {
               this.§4^§ = this.§,>§ = 1;
            }
         }
         if(this.§6"§.§5x§ == §,!§.§&J§)
         {
            this.§9!A§.visible = false;
         }
         else
         {
            this.§%n§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§@L§(param9);
         }
         this.§7!+§();
         this.§>!=§(0,1);
         this.§%n§.§%!W§(this.§6"§.shape);
      }
      
      public static function §??§(param1:int, param2:§=!5§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§3l§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§ _§;
            }
            §=m§.§break§(_loc4_,param3);
         }
      }
      
      public static function §3!X§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §"d§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
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
         return this.§8!X§;
      }
      
      public function get §+-§() : Number
      {
         return this.§<7§.GetPosition().x;
      }
      
      public function get §9!V§() : Number
      {
         return this.§<7§.GetPosition().y;
      }
      
      public function get §8!Q§() : §,!§
      {
         return this.§6"§;
      }
      
      public function get §2!X§() : Boolean
      {
         return this.§9!B§ >= 0;
      }
      
      protected function get container() : §&$§
      {
         return this.§08§;
      }
      
      public function get §4!'§() : Boolean
      {
         return this.§2Z§;
      }
      
      public function set §4!'§(param1:Boolean) : void
      {
         this.§2Z§ = param1;
      }
      
      public function set §>C§(param1:Boolean) : void
      {
         this.§2!2§ = param1;
      }
      
      public function get §0=§() : Boolean
      {
         return this.§;v§;
      }
      
      public function set §0=§(param1:Boolean) : void
      {
         this.§;v§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §`!K§(param1:b2FilterData) : void
      {
         if(this.§&!T§)
         {
            this.§&!T§.§'!+§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§6"§.§ s§();
         _loc3_.§=q§ = true;
         _loc3_.§?c§ = true;
         _loc3_.§8!T§ = true;
         _loc3_.§='§ = 1;
         _loc3_.§ Q§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§#!P§(this.§`!#§());
            this.mWorld = null;
         }
         this.§%n§.dispose();
         if(this.§9!A§)
         {
            this.§9!A§.dispose();
            this.§9!A§ = null;
         }
         this.§&!T§ = null;
         this.§;!A§ = null;
         this.§6"§ = null;
      }
      
      public function §@L§(param1:Number) : void
      {
         this.§`!#§().§!j§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §?!"§() : Number
      {
         return (360 - this.§`!#§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §%!K§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§`!#§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§]!-§();
         }
         if(param3)
         {
            this.§3!=§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§&!T§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`!#§().GetPosition().x >= param3 && this.§`!#§().GetPosition().x <= param4 && this.§`!#§().GetPosition().y >= param1 && this.§`!#§().GetPosition().y <= param2;
      }
      
      public function §,!%§(param1:b2Vec2) : void
      {
         this.§;!A§ = param1;
      }
      
      public function §-r§() : void
      {
         if(this.§;!A§)
         {
            this.§%!K§(this.§;!A§,false);
            this.§;!A§ = null;
         }
      }
      
      public function §]!-§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`!#§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§`!#§().§;[§(0);
         }
         else
         {
            this.§`!#§().§;[§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §3!=§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`!#§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§@L§(_loc2_);
      }
      
      public function §#a§(param1:Number) : void
      {
         this.§`!#§().§;[§(param1);
      }
      
      public function §`!#§() : b2Body
      {
         if(this.§&!T§ != null)
         {
            return this.§&!T§.GetBody();
         }
         return null;
      }
      
      public function §"!;§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§`!#§().GetPosition().x = this.mX * §9!%§.§catch§;
         this.§`!#§().GetPosition().y = this.mY * §9!%§.§catch§;
      }
      
      public function §>!=§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§5-§)
         {
            _loc3_ = true;
            this.§5-§ = false;
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
            this.§%n§.§3f§();
         }
         if(this.§"6§ > 1 && this.§%n§.§6?§)
         {
            _loc4_ = 4 + (this.§%n§.§6?§.blurX - 4 + param2 / 20) % 28;
            this.§%n§.§6?§.blurX = _loc4_;
            this.§%n§.§6?§.blurY = _loc4_;
         }
         this.§%n§.§1-§(param2);
         if(§ for§)
         {
            this.§0c§(param1);
         }
         else
         {
            this.§,E§ = this.§<!,§;
            this.mX = this.§5!0§;
            this.mY = this.§-e§;
         }
         this.§9!A§.x = Math.round(this.mX);
         this.§9!A§.y = Math.round(this.mY);
         this.§9!A§.rotation = this.§,E§ / 180 * Math.PI;
      }
      
      public function §7!+§() : void
      {
         var _loc1_:Number = this.§`!#§().GetPosition().x;
         var _loc2_:Number = this.§`!#§().GetPosition().y;
         this.§`o§ = this.§<!,§;
         this.§?!B§ = this.§5!0§;
         this.§;!S§ = this.§-e§;
         this.§<!,§ = this.§`!#§().GetAngle() * (180 / Math.PI) % 360;
         this.§5!0§ = _loc1_ / §9!%§.§catch§;
         this.§-e§ = _loc2_ / §9!%§.§catch§;
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
      
      public function §0c§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §4h§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§08§.§8@§.mLevelEngine.§@2§ * 1000;
         }
         param1 *= -1;
         if(this.§5!0§ == this.§?!B§ || param1 == 0)
         {
            this.§?g§ = 0;
            this.mX = this.§5!0§;
         }
         else
         {
            this.§?g§ = param1 * (this.§?!B§ - this.§5!0§) / param2;
            this.mX = this.§5!0§ + this.§?g§;
         }
         if(this.§-e§ == this.§;!S§ || param1 == 0)
         {
            this.§9K§ = 0;
            this.mY = this.§-e§;
         }
         else
         {
            this.§9K§ = param1 * (this.§;!S§ - this.§-e§) / param2;
            this.mY = this.§-e§ + this.§9K§;
         }
         if(this.§<!,§ == this.§`o§ || param1 == 0)
         {
            this.§,E§ = this.§<!,§;
         }
         else if(this.§`o§ > this.§<!,§ && this.§`o§ - this.§<!,§ <= 180)
         {
            this.§,E§ = this.§<!,§ + param1 * (this.§`o§ - this.§<!,§) / param2;
         }
         else if(this.§`o§ > this.§<!,§ && this.§`o§ - this.§<!,§ > 180)
         {
            this.§,E§ = this.§<!,§ + param1 * (this.§`o§ - 360 - this.§<!,§) / param2;
         }
         else if(this.§`o§ < this.§<!,§ && this.§<!,§ - this.§`o§ <= 180)
         {
            this.§,E§ = this.§<!,§ + param1 * (this.§`o§ - this.§<!,§) / param2;
         }
         else if(this.§`o§ < this.§<!,§ && this.§<!,§ - this.§`o§ > 180)
         {
            this.§,E§ = this.§<!,§ + param1 * (this.§`o§ + 360 - this.§<!,§) / param2;
         }
      }
      
      public function get §[P§() : Point
      {
         if(!§ for§)
         {
         }
         return null;
      }
      
      public function § !?§() : Boolean
      {
         return this.§5x§ == §,!§.§?T§ || this.§5x§ == §,!§.§"A§;
      }
      
      public function §7!?§() : Boolean
      {
         return this.§5x§ == §,!§.§@!%§;
      }
      
      public function §;!B§() : Boolean
      {
         return this.§5x§ == §,!§.§"!V§;
      }
      
      public function §?u§() : Boolean
      {
         return this.§5x§ == §,!§.§"A§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§5x§ == §,!§.§^!J§;
      }
      
      public function isGround() : Boolean
      {
         return this.§5x§ == §,!§.§&J§;
      }
      
      public function §?!<§() : Boolean
      {
         return this.§5x§ == §,!§.§&!Q§;
      }
      
      public function §<!<§() : Boolean
      {
         return this.§5x§ == §,!§.§!?§;
      }
      
      public function §"!J§() : Boolean
      {
         if(this.§ h§ == "MISC_EXPLOSIVE_TNT" || this.§ h§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §!!A§() : Boolean
      {
         return (this.§7!?§() || this.§?!<§() || this.§<!<§()) && !this.§0=§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §0K§() : Number
      {
         return Number(Math.sqrt(this.§`!#§().GetLinearVelocity().x * this.§`!#§().GetLinearVelocity().x + this.§`!#§().GetLinearVelocity().y * this.§`!#§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§;!B§())
         {
            return this.§4^§;
         }
         if(!this.§08§.§1c§())
         {
            return this.§4^§;
         }
         if(this.§9!B§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§,!L§(§=!5§.§^!X§);
            }
            else if(param1 > 12)
            {
               this.§,!L§(§=!5§.§,! §);
            }
            else if(param1 > 3)
            {
               this.§,!L§(§=!5§.§3!P§);
            }
            return this.§4^§;
         }
         if(param1 < this.§9!B§)
         {
            if(param1 >= this.§9!B§ / 2)
            {
               this.§,!L§(§=!5§.§3!P§);
            }
            if(this.§ !?§() && this.§4^§ == this.§,>§)
            {
               this.§4^§ = this.§,>§ - 1;
            }
            return this.§4^§;
         }
         param1 -= this.§9!B§;
         if(param2 && this.§!!A§())
         {
            _loc7_ = Math.min(this.§4^§,int(param1));
            _loc8_ = §9!%§.§#6§.getValue() * _loc7_;
            this.§08§.§8@§.addScore(_loc8_,§^_§.§][§,this.§4^§ > param1 && param3,this.§`!#§().GetPosition().x,this.§`!#§().GetPosition().y,§-&§.§7!W§(this.§ h§));
         }
         if(!(param5 && this.§2!2§))
         {
            this.§4^§ -= param1;
         }
         if(this.§4^§ < 1 && this.§ !?§())
         {
            this.§4^§ = 1;
         }
         if(this.§4^§ < 1)
         {
            this.§4^§ = 0;
            §@m§.§??§(§=!5§.§^!X§,this.§6"§.§2#§,"ChannelDestroyed");
         }
         else
         {
            this.§,!L§(§=!5§.§,! §);
            this.addDamageParticles(this.§08§.§8@§.particles,param1);
         }
         this.§%n§.setDamagedFrame();
         return this.§4^§;
      }
      
      public function §,!L§(param1:int) : void
      {
         §@m§.§??§(param1,this.§6"§.§2#§);
      }
      
      public function §=d§(param1:String) : Number
      {
         return this.§6"§.material.§1a§(param1) * this.§"6§;
      }
      
      public function §<=§(param1:String) : Number
      {
         return this.§6"§.material.§-f§(param1);
      }
      
      public function §7J§() : String
      {
         return this.§6"§.material.mName;
      }
      
      public function §#X§() : Number
      {
         return this.§6"§.§^!;§();
      }
      
      public function §0J§() : int
      {
         return this.§6"§.§%b§();
      }
      
      public function §`9§() : Boolean
      {
         return this.§`!#§().IsAwake() && (this.§ !?§() && this.§4^§ == this.§,>§ || Math.abs(this.§`!#§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`!#§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`!#§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §5!@§() : Boolean
      {
         if(!this.§`!#§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§`!#§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§`!#§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§`!#§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §&c§(param1:Number = 3) : void
      {
         this.§"6§ = param1;
         if(this.§"6§ > 1)
         {
            this.§%n§.§7f§();
         }
         else
         {
            this.§%n§.§6?§ = null;
         }
      }
      
      public function §>!&§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§6"§.§ s§() == §#!+§.§#D§)
         {
            _loc2_ = this.§%n§.mW * this.§%n§.mH * (§9!%§.§catch§ * §9!%§.§catch§);
         }
         else
         {
            _loc2_ = this.§`!#§().GetMass() / this.§&!T§.§4! §();
            if(param1)
            {
               _loc2_ *= this.§5R§();
            }
            _loc2_ /= this.§7<§ * this.§7<§;
         }
         return _loc2_;
      }
      
      public function §5R§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§%n§.§#i§ - 1) / 10);
      }
      
      public function §1!0§(param1:Number) : void
      {
         var _loc2_:Number = this.§`!#§().GetLinearVelocity().x;
         var _loc3_:Number = this.§`!#§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§`!#§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§&$§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§,v§) : void
      {
      }
      
      public function addDamageParticles(param1:§,v§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!K§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§`!#§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§`!#§().§0!%§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§?!"§();
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
            this.§@L§(_loc3_);
         }
         this.§@L§(this.§?!"§() + param1);
      }
      
      public function §6q§(param1:Number) : void
      {
         var _loc2_:Number = §3!X§(this.§`!#§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §"d§(_loc2_);
         this.§`!#§().§!j§(_loc2_);
      }
      
      public function §8q§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§`!#§().GetPosition().Copy();
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
         this.§`!#§().§0!%§(_loc13_);
      }
   }
}
