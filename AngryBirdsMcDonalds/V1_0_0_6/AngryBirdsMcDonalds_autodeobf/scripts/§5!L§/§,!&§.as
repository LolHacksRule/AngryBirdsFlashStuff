package §5!L§
{
   import §%!h§.b2PolygonShape;
   import §2![§.Sprite;
   import §7!5§.b2Body;
   import §7!5§.b2BodyDef;
   import §7!5§.b2FilterData;
   import §7!5§.b2Fixture;
   import §7!5§.b2World;
   import §7!Y§.b2Settings;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §8<§.§<!7§;
   import §<L§.§!!G§;
   import §<L§.§4S§;
   import §?!'§.§ 8§;
   import §?!'§.§-M§;
   import §?!'§.§0!g§;
   import §?!'§.§3!^§;
   import §?!'§.§[!S§;
   import §@![§.b2Vec2;
   import §^!K§.§ !$§;
   import flash.geom.Point;
   
   public class §,!&§
   {
      
      public static const §2h§:uint = 1 << 1;
      
      public static const §]!1§:uint = 1 << 2;
      
      public static const §-!C§:uint = 1 << 3;
      
      public static const §extends§:uint = 1 << 4;
      
      public static const §82§:Boolean = true;
      
      public static const §'!C§:Number = 5;
      
      public static const §9w§:Number = 10;
       
      
      private var §9u§:String;
      
      private var §`k§:int;
      
      private var §"!C§:int;
      
      public var §%!O§:String;
      
      public var §4x§:int;
      
      private var §]c§:§0!g§;
      
      private var §0!h§:§?8§;
      
      private var mWorld:b2World;
      
      protected var §?3§:String = "";
      
      protected var §null §:int = 1;
      
      private var §]z§:b2Fixture;
      
      private var §%!K§:b2Body;
      
      private var §1!>§:b2Vec2;
      
      public var §3o§:Number;
      
      public var §'6§:Number;
      
      private var §%!J§:Number;
      
      private var §[!6§:Boolean = false;
      
      private var §;!3§:Number;
      
      private var §'-§:Number;
      
      private var §1P§:Number;
      
      private var §]!@§:Number;
      
      private var §0>§:Number;
      
      private var §]!n§:Number;
      
      public var §9Z§:Number = 1;
      
      private var §>!`§:Boolean = false;
      
      public var §6E§:Number = 0;
      
      public var §4!V§:Number = 0;
      
      protected var §,!Y§:Boolean = false;
      
      public var §<i§:§+!+§;
      
      private var §%!l§:Sprite;
      
      private var §+p§:Number = 0;
      
      private var §,,§:Number = 0;
      
      private var §4!9§:Number = 0;
      
      private var §6R§:Number = 1.0;
      
      private var §&2§:Boolean = false;
      
      protected var §8g§:§&!V§;
      
      private var §+!>§:Boolean = true;
      
      public function §,!&§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§%!O§ = param6;
         this.§]c§ = §[!S§.§;Z§(param6);
         this.§0!h§ = param1;
         this.§%!l§ = param2;
         this.§6R§ = param10;
         this.§&2§ = param11;
         this.§`k§ = param5;
         this.§4x§ = this.§]c§.§4x§;
         this.§"!C§ = this.§]c§.§&!c§();
         this.§8g§ = new §&!V§(§'!C§,§9w§);
         this.§<i§ = new §+!+§(this,param2,param4);
         if(!this.§<i§.§&B§(param1.mLevelMain.animationManager))
         {
            this.§<i§.§4q§(this.§"!C§,this.§]c§.§3!;§(),this.§]c§.§4!]§() / §!!G§.§ !E§,this.§]c§.§!i§() / §!!G§.§ !E§);
         }
         this.§<i§.§&5§(this.§"!C§ == §-M§.§;![§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§%!K§ = this.mWorld.§>!Z§(_loc12_);
         this.§%!K§.§6]§(this);
         if(this.§"!C§ == §-M§.§ ;§)
         {
            _loc14_ = b2PolygonShape.§!,§(this.§]c§.shape.§3y§ * param10,this.§]c§.shape.§ 5§ * param10);
            this.§]z§ = this.§%!K§.CreateFixture2(_loc14_,this.§]c§.§`!l§());
         }
         else if(this.§"!C§ == §-M§.§;![§ || this.§"!C§ == §-M§.§18§)
         {
            this.§]z§ = this.§%!K§.CreateFixture2(this.§]c§.shape.§ !J§(param10),this.§]c§.§`!l§());
         }
         this.§]z§.§6!6§(this.§]c§.§<!-§());
         this.§]z§.§'!g§(this.§]c§.§&L§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§>!U§())
         {
            _loc13_.§`!%§ = §2h§;
            _loc13_.§2]§ = 65535 & ~§]!1§;
         }
         else if(this.§%!O§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§%!O§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§`!%§ = §]!1§;
            _loc13_.§2]§ = 65535 & ~§2h§;
         }
         this.§]z§.§5M§(_loc13_);
         this.§%!J§ = this.§]c§.§<!C§();
         if(this.§]c§.§'6§ > 0)
         {
            this.§3o§ = this.§'6§ = this.§]c§.§'6§;
         }
         else
         {
            this.§3o§ = this.§'6§ = Math.round(this.§6k§(true) * this.§]c§.§@!<§());
            if(this.§3o§ < 1)
            {
               this.§3o§ = this.§'6§ = 1;
            }
         }
         if(this.§]c§.§4x§ == §0!g§.§>!P§)
         {
            this.§%!l§.visible = false;
         }
         else
         {
            this.§<i§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§'!M§(param9);
         }
         this.§?!E§();
         this.§4Q§(0,1);
         this.§<i§.§8!h§(this.§]c§.shape);
      }
      
      public static function §8^§(param1:int, param2:§3!^§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§[R§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§^!W§;
            }
            § !$§.§!!k§(_loc4_,param3);
         }
      }
      
      public static function §@K§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §1!]§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!l§;
      }
      
      public function get x() : Number
      {
         return this.§+p§;
      }
      
      public function get y() : Number
      {
         return this.§,,§;
      }
      
      public function get scale() : Number
      {
         return this.§6R§;
      }
      
      public function get front() : Boolean
      {
         return this.§&2§;
      }
      
      public function get §0!4§() : Number
      {
         return this.§%!K§.GetPosition().x;
      }
      
      public function get §+!]§() : Number
      {
         return this.§%!K§.GetPosition().y;
      }
      
      public function get §<M§() : §0!g§
      {
         return this.§]c§;
      }
      
      public function get §?9§() : Boolean
      {
         return this.§%!J§ >= 0;
      }
      
      public function get container() : §?8§
      {
         return this.§0!h§;
      }
      
      public function get §-!Z§() : Boolean
      {
         return this.§+!>§;
      }
      
      public function set §-!Z§(param1:Boolean) : void
      {
         this.§+!>§ = param1;
      }
      
      public function set §#N§(param1:Boolean) : void
      {
         this.§[!6§ = param1;
      }
      
      public function set §-W§(param1:uint) : void
      {
         this.§8g§.§-W§ = param1;
      }
      
      public function get §-W§() : uint
      {
         return this.§8g§.§-W§;
      }
      
      public function get §94§() : Boolean
      {
         return this.§>!`§;
      }
      
      public function set §94§(param1:Boolean) : void
      {
         this.§>!`§ = param1;
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
         return this.§9u§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§9u§ = param1;
      }
      
      public function §9@§(param1:b2FilterData) : void
      {
         if(this.§]z§)
         {
            this.§]z§.§5M§(param1);
         }
      }
      
      protected function §4!^§(param1:String) : int
      {
         return §9!-§.§4!^§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§]c§.§=9§();
         _loc3_.§'!@§ = true;
         _loc3_.§0r§ = true;
         _loc3_.§]9§ = true;
         _loc3_.§3!-§ = 1;
         _loc3_.§!!O§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§8Z§(this.§;G§());
            this.mWorld = null;
         }
         this.§<i§.dispose();
         if(this.§%!l§)
         {
            this.§%!l§.dispose();
            this.§%!l§ = null;
         }
         this.§]z§ = null;
         this.§1!>§ = null;
         this.§]c§ = null;
      }
      
      public function §'!M§(param1:Number) : void
      {
         this.§;G§().§9!'§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §3E§() : Number
      {
         return (360 - this.§;G§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §%!o§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§;G§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§0!c§();
         }
         if(param3)
         {
            this.§9z§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]z§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§;G§().GetPosition().x >= param3 && this.§;G§().GetPosition().x <= param4 && this.§;G§().GetPosition().y >= param1 && this.§;G§().GetPosition().y <= param2;
      }
      
      public function § S§(param1:b2Vec2) : void
      {
         this.§1!>§ = param1;
      }
      
      public function §1!9§() : void
      {
         if(this.§1!>§)
         {
            this.§%!o§(this.§1!>§,false);
            this.§1!>§ = null;
         }
      }
      
      public function §0!c§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§;G§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§;G§().§^!c§(0);
         }
         else
         {
            this.§;G§().§^!c§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §9z§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§;G§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§'!M§(_loc2_);
      }
      
      public function §`!E§(param1:Number) : void
      {
         this.§;G§().§^!c§(param1);
      }
      
      public function §;G§() : b2Body
      {
         if(this.§]z§ != null)
         {
            return this.§]z§.GetBody();
         }
         return null;
      }
      
      public function §@'§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§+p§ = param1;
            this.§,,§ = param2;
         }
         this.§;G§().GetPosition().x = this.§+p§ * §!!G§.§ !E§;
         this.§;G§().GetPosition().y = this.§,,§ * §!!G§.§ !E§;
      }
      
      public function §4Q§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§,!Y§)
         {
            _loc3_ = true;
            this.§,!Y§ = false;
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
            this.§<i§.§'Z§();
         }
         if(this.§9Z§ > 1 && this.§<i§.§ !W§)
         {
            _loc4_ = 4 + (this.§<i§.§ !W§.blurX - 4 + param2 / 20) % 28;
            this.§<i§.§ !W§.blurX = _loc4_;
            this.§<i§.§ !W§.blurY = _loc4_;
         }
         this.§<i§.§#!a§(param2);
         if(§82§)
         {
            this.§#!#§(param1);
         }
         else
         {
            this.§4!9§ = this.§1P§;
            this.§+p§ = this.§;!3§;
            this.§,,§ = this.§'-§;
         }
         this.§%!l§.x = Math.round(this.§+p§);
         this.§%!l§.y = Math.round(this.§,,§);
         this.§%!l§.rotation = this.§4!9§ / 180 * Math.PI;
      }
      
      public function §?!E§() : void
      {
         var _loc1_:Number = this.§;G§().GetPosition().x;
         var _loc2_:Number = this.§;G§().GetPosition().y;
         this.§]!n§ = this.§1P§;
         this.§]!@§ = this.§;!3§;
         this.§0>§ = this.§'-§;
         this.§1P§ = this.§;G§().GetAngle() * (180 / Math.PI) % 360;
         this.§;!3§ = _loc1_ / §!!G§.§ !E§;
         this.§'-§ = _loc2_ / §!!G§.§ !E§;
         this.§8g§.§=s§();
         this.§8g§.§^y§(this.§;G§());
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
      
      public function §#!#§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §<!7§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§0!h§.mLevelMain.mLevelEngine.§,R§ * 1000;
         }
         param1 *= -1;
         if(this.§;!3§ == this.§]!@§ || param1 == 0)
         {
            this.§6E§ = 0;
            this.§+p§ = this.§;!3§;
         }
         else
         {
            this.§6E§ = param1 * (this.§]!@§ - this.§;!3§) / param2;
            this.§+p§ = this.§;!3§ + this.§6E§;
         }
         if(this.§'-§ == this.§0>§ || param1 == 0)
         {
            this.§4!V§ = 0;
            this.§,,§ = this.§'-§;
         }
         else
         {
            this.§4!V§ = param1 * (this.§0>§ - this.§'-§) / param2;
            this.§,,§ = this.§'-§ + this.§4!V§;
         }
         if(this.§1P§ == this.§]!n§ || param1 == 0)
         {
            this.§4!9§ = this.§1P§;
         }
         else if(this.§]!n§ > this.§1P§ && this.§]!n§ - this.§1P§ <= 180)
         {
            this.§4!9§ = this.§1P§ + param1 * (this.§]!n§ - this.§1P§) / param2;
         }
         else if(this.§]!n§ > this.§1P§ && this.§]!n§ - this.§1P§ > 180)
         {
            this.§4!9§ = this.§1P§ + param1 * (this.§]!n§ - 360 - this.§1P§) / param2;
         }
         else if(this.§]!n§ < this.§1P§ && this.§1P§ - this.§]!n§ <= 180)
         {
            this.§4!9§ = this.§1P§ + param1 * (this.§]!n§ - this.§1P§) / param2;
         }
         else if(this.§]!n§ < this.§1P§ && this.§1P§ - this.§]!n§ > 180)
         {
            this.§4!9§ = this.§1P§ + param1 * (this.§]!n§ + 360 - this.§1P§) / param2;
         }
      }
      
      public function get §-@§() : Point
      {
         if(!§82§)
         {
         }
         return null;
      }
      
      public function §>!U§() : Boolean
      {
         return this.§4x§ == §0!g§.§5!&§ || this.§4x§ == §0!g§.§]d§;
      }
      
      public function §@F§() : Boolean
      {
         return this.§4x§ == §0!g§.§7-§;
      }
      
      public function §!p§() : Boolean
      {
         return this.§4x§ == §0!g§.§;!C§;
      }
      
      public function §]!+§() : Boolean
      {
         return this.§4x§ == §0!g§.§]d§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§4x§ == §0!g§.§1h§;
      }
      
      public function isGround() : Boolean
      {
         return this.§4x§ == §0!g§.§>!P§;
      }
      
      public function §#!P§() : Boolean
      {
         return this.§4x§ == §0!g§.§'0§;
      }
      
      public function §%b§() : Boolean
      {
         return this.§4x§ == §0!g§.§9!h§;
      }
      
      public function §]!§() : Boolean
      {
         if(this.§%!O§ == "MISC_EXPLOSIVE_TNT" || this.§%!O§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §<F§() : Boolean
      {
         return (this.§@F§() || this.§#!P§() || this.§%b§()) && !this.§94§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §]!N§() : Number
      {
         return Number(Math.sqrt(this.§;G§().GetLinearVelocity().x * this.§;G§().GetLinearVelocity().x + this.§;G§().GetLinearVelocity().y * this.§;G§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§!p§())
         {
            return this.§3o§;
         }
         if(!this.§0!h§.§,V§())
         {
            return this.§3o§;
         }
         if(this.§%!J§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§=W§(§3!^§.§,!<§);
            }
            else if(param1 > 12)
            {
               this.§=W§(§3!^§.§ h§);
            }
            else if(param1 > 3)
            {
               this.§=W§(§3!^§.§ >§);
            }
            return this.§3o§;
         }
         if(param1 <= this.§%!J§)
         {
            if(param1 >= this.§%!J§ / 2)
            {
               this.§=W§(§3!^§.§ >§);
            }
            if(this.§>!U§() && this.§3o§ == this.§'6§)
            {
               this.§3o§ = this.§'6§ - 1;
            }
            return this.§3o§;
         }
         param1 -= this.§%!J§;
         if(param2 && this.§<F§())
         {
            _loc7_ = Math.min(this.§3o§,int(param1));
            _loc8_ = §!!G§.§-!b§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §!!G§.§#;§;
            }
            this.§0!h§.mLevelMain.addScore(_loc8_,§4S§.§>!n§,this.§3o§ > param1 && param3,this.§;G§().GetPosition().x,this.§;G§().GetPosition().y,§9!-§.§'r§(this.§%!O§));
         }
         if(!(param5 && this.§[!6§))
         {
            this.§3o§ -= param1;
         }
         if(this.§3o§ < 1 && this.§>!U§())
         {
            this.§3o§ = 1;
         }
         if(this.§3o§ < 1)
         {
            this.§3o§ = 0;
            §,!&§.§8^§(§3!^§.§,!<§,this.§]c§.§1D§,"ChannelDestroyed");
         }
         else
         {
            this.§=W§(§3!^§.§ h§);
            this.addDamageParticles(this.§0!h§.mLevelMain.particles,param1);
         }
         this.§<i§.setDamagedFrame();
         return this.§3o§;
      }
      
      public function §=W§(param1:int) : void
      {
         §,!&§.§8^§(param1,this.§]c§.§1D§);
      }
      
      public function §=z§(param1:String) : Number
      {
         return this.§]c§.material.§=!M§(param1) * this.§9Z§;
      }
      
      public function §>!&§(param1:String) : Number
      {
         return this.§]c§.material.§ !o§(param1);
      }
      
      public function §'!j§() : String
      {
         return this.§]c§.material.mName;
      }
      
      public function §4!_§() : Number
      {
         return this.§]c§.§@!<§();
      }
      
      public function §#!§() : int
      {
         return this.§]c§.§@!O§();
      }
      
      public function §^-§() : Boolean
      {
         return this.§;G§().IsAwake() && (this.§>!U§() && this.§3o§ == this.§'6§ || Math.abs(this.§;G§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§;G§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§;G§().§3!k§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §?E§() : Boolean
      {
         if(!this.§;G§().IsAwake())
         {
            return true;
         }
         return !this.§^!?§();
      }
      
      protected function §^!?§() : Boolean
      {
         return this.§8g§.§^!?§();
      }
      
      public function §]i§(param1:Number = 3) : void
      {
         this.§9Z§ = param1;
         if(this.§9Z§ > 1)
         {
            this.§<i§.§9!0§();
         }
         else
         {
            this.§<i§.§ !W§ = null;
         }
      }
      
      public function §6k§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§]c§.§=9§() == § 8§.§=<§)
         {
            _loc2_ = this.§<i§.mW * this.§<i§.mH * (§!!G§.§ !E§ * §!!G§.§ !E§);
         }
         else
         {
            _loc2_ = this.§;G§().GetMass() / this.§]z§.§<!&§();
            if(param1)
            {
               _loc2_ *= this.§=!W§();
            }
            _loc2_ /= this.§6R§ * this.§6R§;
         }
         return _loc2_;
      }
      
      public function §=!W§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§<i§.§-O§ - 1) / 10);
      }
      
      public function §#A§(param1:Number) : void
      {
         var _loc2_:Number = this.§;G§().GetLinearVelocity().x;
         var _loc3_:Number = this.§;G§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§;G§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?8§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§'F§) : void
      {
      }
      
      public function addDamageParticles(param1:§'F§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §%!]§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§;G§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§;G§().§@c§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§3E§()) + 360) % 360;
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
            this.§'!M§(_loc4_);
         }
         var _loc3_:Number = this.§3E§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§'!M§(_loc3_);
      }
      
      public function §]!8§(param1:Number) : void
      {
         var _loc2_:Number = §@K§(this.§;G§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §1!]§(_loc2_);
         this.§;G§().§9!'§(_loc2_);
      }
      
      public function §1B§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§;G§().GetPosition().Copy();
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
         this.§;G§().§@c§(_loc13_);
      }
   }
}
