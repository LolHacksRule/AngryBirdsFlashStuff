package §&!P§
{
   import §"J§.b2Body;
   import §"J§.b2BodyDef;
   import §"J§.b2FilterData;
   import §"J§.b2Fixture;
   import §"J§.b2World;
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §%!0§.§3!s§;
   import §+!-§.Sprite;
   import §2k§.b2PolygonShape;
   import §6]§.§,"0§;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §]";§.§!<§;
   import §]";§.§0A§;
   import §]";§.§1Y§;
   import §]";§.§34§;
   import §]";§.§4!p§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.geom.Point;
   
   public class §``§
   {
      
      public static const §]&§:uint = 1 << 1;
      
      public static const §@!A§:uint = 1 << 2;
      
      public static const §>!1§:uint = 1 << 3;
      
      public static const §3!,§:uint = 1 << 4;
      
      public static const §4M§:Boolean = true;
      
      public static const §5e§:Number = 5;
      
      public static const §=![§:Number = 10;
       
      
      private var §5!-§:String;
      
      private var §,!&§:int;
      
      private var § !W§:int;
      
      public var §+!A§:String;
      
      public var §@F§:int;
      
      protected var §@!G§:§4!p§;
      
      private var §,8§:§^!!§;
      
      private var §;!^§:b2World;
      
      protected var §,H§:String = "";
      
      protected var §'"$§:int = 1;
      
      private var §""3§:b2Fixture;
      
      private var §,,§:b2Body;
      
      private var §7U§:b2Vec2;
      
      public var §8W§:Number;
      
      public var §%5§:Number;
      
      private var §"h§:Number;
      
      private var §%!W§:Boolean = false;
      
      private var §3P§:Number;
      
      private var §&!I§:Number;
      
      private var § ]§:Number;
      
      private var §<!f§:Number;
      
      private var § -§:Number;
      
      private var §7[§:Number;
      
      public var §9T§:Number = 1;
      
      private var §%V§:Boolean = false;
      
      public var § r§:Number = 0;
      
      public var §[",§:Number = 0;
      
      protected var §[r§:Boolean = false;
      
      public var §8C§:§0;§;
      
      private var § D§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §0!>§:Number = 0;
      
      private var §=9§:Number = 1.0;
      
      private var §!%§:Boolean = false;
      
      protected var §^!?§:§6!^§;
      
      private var §67§:Boolean = true;
      
      public function §``§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§+!A§ = param6;
         this.§@!G§ = §!<§.§[!@§(param6);
         this.§,8§ = param1;
         this.§ D§ = param2;
         this.§=9§ = param10;
         this.§!%§ = param11;
         this.§,!&§ = param5;
         this.§@F§ = this.§@!G§.§@F§;
         this.§ !W§ = this.§@!G§.§6!3§();
         this.§^!?§ = new §6!^§(§5e§,§=![§);
         this.§8C§ = new §0;§(this,param2,param4);
         if(!this.§8C§.§@N§(param1.§`!G§.§00§))
         {
            this.§8C§.§'!m§(this.§ !W§,this.§@!G§.§<&§(),this.§@!G§.§6c§() / §,4§.§,^§,this.§@!G§.§<!A§() / §,4§.§,^§);
         }
         this.§8C§.§^!v§(this.§ !W§ == §1Y§.§;&§);
         this.§;!^§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§,,§ = this.§;!^§.§`0§(_loc12_);
         this.§,,§.§"%§(this);
         if(this.§ !W§ == §1Y§.§<2§)
         {
            _loc14_ = b2PolygonShape.§;"8§(this.§@!G§.shape.§",§ * param10,this.§@!G§.shape.§%"0§ * param10);
            this.§""3§ = this.§,,§.CreateFixture2(_loc14_,this.§@!G§.§9!-§());
         }
         else if(this.§ !W§ == §1Y§.§;&§ || this.§ !W§ == §1Y§.§0R§)
         {
            this.§""3§ = this.§,,§.CreateFixture2(this.§@!G§.shape.§!Q§(param10),this.§@!G§.§9!-§());
         }
         this.§""3§.§!!#§(this.§@!G§.§-!m§());
         this.§""3§.§1!2§(this.§@!G§.§+!F§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§'5§())
         {
            _loc13_.§=6§ = §]&§;
            _loc13_.§'"2§ = 65535 & ~§@!A§;
         }
         else if(this.§+!A§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§+!A§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§=6§ = §@!A§;
            _loc13_.§'"2§ = 65535 & ~§]&§;
         }
         this.§""3§.§#!v§(_loc13_);
         this.§"h§ = this.§@!G§.§2"3§();
         if(this.§@!G§.§%5§ > 0)
         {
            this.§8W§ = this.§%5§ = this.§@!G§.§%5§;
         }
         else
         {
            this.§8W§ = this.§%5§ = Math.round(this.§9!3§(true) * this.§@!G§.§#h§());
            if(this.§8W§ < 1)
            {
               this.§8W§ = this.§%5§ = 1;
            }
         }
         if(this.§@!G§.§@F§ == §4!p§.§>_§)
         {
            this.§ D§.visible = false;
         }
         else
         {
            this.§8C§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§5!D§(param9);
         }
         this.§'!8§();
         this.§0!j§(0,1);
         this.§8C§.§[!Q§(this.§@!G§.shape);
      }
      
      public static function §%!s§(param1:int, param2:§34§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§?!s§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§%`§;
            }
            §0"#§.§<!&§(_loc4_,param3);
         }
      }
      
      public static function §#!O§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §^t§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
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
         return this.§=9§;
      }
      
      public function get front() : Boolean
      {
         return this.§!%§;
      }
      
      public function get §#n§() : Number
      {
         return this.§,,§.GetPosition().x;
      }
      
      public function get §?y§() : Number
      {
         return this.§,,§.GetPosition().y;
      }
      
      public function get §4";§() : §4!p§
      {
         return this.§@!G§;
      }
      
      public function get §5"$§() : Boolean
      {
         return this.§"h§ >= 0;
      }
      
      public function get container() : §^!!§
      {
         return this.§,8§;
      }
      
      public function get §]!@§() : Boolean
      {
         return this.§67§;
      }
      
      public function set §]!@§(param1:Boolean) : void
      {
         this.§67§ = param1;
      }
      
      public function set §!"<§(param1:Boolean) : void
      {
         this.§%!W§ = param1;
      }
      
      public function set §8z§(param1:uint) : void
      {
         this.§^!?§.§8z§ = param1;
      }
      
      public function get §8z§() : uint
      {
         return this.§^!?§.§8z§;
      }
      
      public function get §#!X§() : Boolean
      {
         return this.§%V§;
      }
      
      public function set §#!X§(param1:Boolean) : void
      {
         this.§%V§ = param1;
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
         return this.§5!-§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§5!-§ = param1;
      }
      
      public function §,!A§(param1:b2FilterData) : void
      {
         if(this.§""3§)
         {
            this.§""3§.§#!v§(param1);
         }
      }
      
      protected function §]!I§(param1:String) : int
      {
         return §`!E§.§]!I§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§@!G§.§0-§();
         _loc3_.§-!3§ = true;
         _loc3_.§`!U§ = true;
         _loc3_.§9!'§ = true;
         _loc3_.§^"6§ = 1;
         _loc3_.§7@§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§;!^§)
         {
            this.§;!^§.§`E§(this.getBody());
            this.§;!^§ = null;
         }
         this.§8C§.dispose();
         if(this.§ D§)
         {
            this.§ D§.dispose();
            this.§ D§ = null;
         }
         this.§""3§ = null;
         this.§7U§ = null;
         this.§@!G§ = null;
      }
      
      public function §5!D§(param1:Number) : void
      {
         this.getBody().§4!Y§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §?"1§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §;E§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§?!5§();
         }
         if(param3)
         {
            this.§7y§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§""3§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function § >§(param1:b2Vec2) : void
      {
         this.§7U§ = param1;
      }
      
      public function §8<§() : void
      {
         if(this.§7U§)
         {
            this.§;E§(this.§7U§,false);
            this.§7U§ = null;
         }
      }
      
      public function §?!5§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§5'§(0);
         }
         else
         {
            this.getBody().§5'§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §7y§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§5!D§(_loc2_);
      }
      
      public function §0N§(param1:Number) : void
      {
         this.getBody().§5'§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§""3§ != null)
         {
            return this.§""3§.GetBody();
         }
         return null;
      }
      
      public function §3[§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §,4§.§,^§;
         this.getBody().GetPosition().y = this.mY * §,4§.§,^§;
      }
      
      public function §0!j§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§[r§)
         {
            _loc3_ = true;
            this.§[r§ = false;
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
            this.§8C§.§^!+§();
         }
         if(this.§9T§ > 1 && this.§8C§.§9!K§)
         {
            _loc4_ = 4 + (this.§8C§.§9!K§.blurX - 4 + param2 / 20) % 28;
            this.§8C§.§9!K§.blurX = _loc4_;
            this.§8C§.§9!K§.blurY = _loc4_;
         }
         this.§8C§.§1t§(param2);
         if(§4M§)
         {
            this.§"" §(param1);
         }
         else
         {
            this.§0!>§ = this.§ ]§;
            this.mX = this.§3P§;
            this.mY = this.§&!I§;
         }
         this.§ D§.x = Math.round(this.mX);
         this.§ D§.y = Math.round(this.mY);
         this.§ D§.rotation = this.§0!>§ / 180 * Math.PI;
      }
      
      public function §'!8§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§7[§ = this.§ ]§;
         this.§<!f§ = this.§3P§;
         this.§ -§ = this.§&!I§;
         this.§ ]§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§3P§ = _loc1_ / §,4§.§,^§;
         this.§&!I§ = _loc2_ / §,4§.§,^§;
         this.§^!?§.§=!'§();
         this.§^!?§.§5F§(this.getBody());
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
      
      public function §"" §(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §,"0§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§,8§.§`!G§.§?=§.§>T§ * 1000;
         }
         param1 *= -1;
         if(this.§3P§ == this.§<!f§ || param1 == 0)
         {
            this.§ r§ = 0;
            this.mX = this.§3P§;
         }
         else
         {
            this.§ r§ = param1 * (this.§<!f§ - this.§3P§) / param2;
            this.mX = this.§3P§ + this.§ r§;
         }
         if(this.§&!I§ == this.§ -§ || param1 == 0)
         {
            this.§[",§ = 0;
            this.mY = this.§&!I§;
         }
         else
         {
            this.§[",§ = param1 * (this.§ -§ - this.§&!I§) / param2;
            this.mY = this.§&!I§ + this.§[",§;
         }
         if(this.§ ]§ == this.§7[§ || param1 == 0)
         {
            this.§0!>§ = this.§ ]§;
         }
         else if(this.§7[§ > this.§ ]§ && this.§7[§ - this.§ ]§ <= 180)
         {
            this.§0!>§ = this.§ ]§ + param1 * (this.§7[§ - this.§ ]§) / param2;
         }
         else if(this.§7[§ > this.§ ]§ && this.§7[§ - this.§ ]§ > 180)
         {
            this.§0!>§ = this.§ ]§ + param1 * (this.§7[§ - 360 - this.§ ]§) / param2;
         }
         else if(this.§7[§ < this.§ ]§ && this.§ ]§ - this.§7[§ <= 180)
         {
            this.§0!>§ = this.§ ]§ + param1 * (this.§7[§ - this.§ ]§) / param2;
         }
         else if(this.§7[§ < this.§ ]§ && this.§ ]§ - this.§7[§ > 180)
         {
            this.§0!>§ = this.§ ]§ + param1 * (this.§7[§ + 360 - this.§ ]§) / param2;
         }
      }
      
      public function get §]!z§() : Point
      {
         if(!§4M§)
         {
         }
         return null;
      }
      
      public function §'5§() : Boolean
      {
         return this.§@F§ == §4!p§.§8!§ || this.§@F§ == §4!p§.§?!o§;
      }
      
      public function §>!r§() : Boolean
      {
         return this.§@F§ == §4!p§.§^"0§;
      }
      
      public function §!0§() : Boolean
      {
         return this.§@F§ == §4!p§.§?!$§;
      }
      
      public function §9!W§() : Boolean
      {
         return this.§@F§ == §4!p§.§?!o§;
      }
      
      public function §0!8§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§@F§ == §4!p§.§ z§;
      }
      
      public function isGround() : Boolean
      {
         return this.§@F§ == §4!p§.§>_§;
      }
      
      public function §^_§() : Boolean
      {
         return this.§@F§ == §4!p§.§#!U§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§@F§ == §4!p§.§+Q§;
      }
      
      public function §`!m§() : Boolean
      {
         if(this.§+!A§ == "MISC_EXPLOSIVE_TNT" || this.§+!A§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §8N§() : Boolean
      {
         return (this.§>!r§() || this.§^_§() || this.isMiscBlock()) && !this.§#!X§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §[!_§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§!0§())
         {
            return this.§8W§;
         }
         if(!this.§,8§.§ !'§())
         {
            return this.§8W§;
         }
         if(this.§"h§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§^!x§(§34§.§,!t§);
            }
            else if(param1 > 12)
            {
               this.§^!x§(§34§.§do§);
            }
            else if(param1 > 3)
            {
               this.§^!x§(§34§.§7-§);
            }
            return this.§8W§;
         }
         if(param1 <= this.§"h§)
         {
            if(param1 >= this.§"h§ / 2)
            {
               this.§^!x§(§34§.§7-§);
            }
            if(this.§'5§() && this.§8W§ == this.§%5§)
            {
               this.§8W§ = this.§%5§ - 1;
            }
            return this.§8W§;
         }
         param1 -= this.§"h§;
         if(param2 && this.§8N§())
         {
            _loc7_ = Math.min(this.§8W§,int(param1));
            _loc8_ = §,4§.§]O§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §,4§.§7!3§;
            }
            this.§,8§.§`!G§.addScore(_loc8_,§3!s§.§ !?§,this.§8W§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§`!E§.§6!%§(this.§+!A§));
         }
         if(!(param5 && this.§%!W§))
         {
            this.§8W§ -= param1;
         }
         if(this.§8W§ < 1 && this.§'5§())
         {
            this.§8W§ = 1;
         }
         if(this.§8W§ < 1)
         {
            this.§8W§ = 0;
            §``§.§%!s§(§34§.§,!t§,this.§@!G§.§9Y§,"ChannelDestroyed");
         }
         else
         {
            this.§^!x§(§34§.§do§);
            this.addDamageParticles(this.§,8§.§`!G§.particles,param1);
         }
         this.§8C§.setDamagedFrame();
         return this.§8W§;
      }
      
      public function §^!x§(param1:int) : void
      {
         §``§.§%!s§(param1,this.§@!G§.§9Y§);
      }
      
      public function §6J§(param1:String) : Number
      {
         return this.§@!G§.material.§7!D§(param1) * this.§9T§;
      }
      
      public function §><§(param1:String) : Number
      {
         return this.§@!G§.material.§^y§(param1);
      }
      
      public function §2@§() : String
      {
         return this.§@!G§.material.mName;
      }
      
      public function §>"6§() : Number
      {
         return this.§@!G§.§#h§();
      }
      
      public function §]"2§() : int
      {
         return this.§@!G§.§`!c§();
      }
      
      public function §=!8§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§'5§() && this.§8W§ == this.§%5§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§[A§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §+!>§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§7!]§();
      }
      
      protected function §7!]§() : Boolean
      {
         return this.§^!?§.§7!]§();
      }
      
      public function §+!<§(param1:Number = 3) : void
      {
         this.§9T§ = param1;
         if(this.§9T§ > 1)
         {
            this.§8C§.§0X§();
         }
         else
         {
            this.§8C§.§9!K§ = null;
         }
      }
      
      public function §9!3§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§@!G§.§0-§() == §0A§.§7"=§)
         {
            _loc2_ = this.§8C§.mW * this.§8C§.mH * (§,4§.§,^§ * §,4§.§,^§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§""3§.§^3§();
            if(param1)
            {
               _loc2_ *= this.§-1§();
            }
            _loc2_ /= this.§=9§ * this.§=9§;
         }
         return _loc2_;
      }
      
      public function §-1§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§8C§.§@i§ - 1) / 10);
      }
      
      public function §#!d§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§6!Q§) : void
      {
      }
      
      public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!h§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§8" §(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§?"1§()) + 360) % 360;
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
            this.§5!D§(_loc4_);
         }
         var _loc3_:Number = this.§?"1§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§5!D§(_loc3_);
      }
      
      public function §'n§(param1:Number) : void
      {
         var _loc2_:Number = §#!O§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §^t§(_loc2_);
         this.getBody().§4!Y§(_loc2_);
      }
      
      public function §>"?§(param1:Number, param2:Point) : void
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
         this.getBody().§8" §(_loc13_);
      }
   }
}
