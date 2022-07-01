package § ""§
{
   import §+L§.b2Vec2;
   import §,!!§.§5!G§;
   import §,!!§.§>!]§;
   import §1!3§.b2PolygonShape;
   import §1!Y§.Sprite;
   import §1!v§.§7!=§;
   import §1!v§.§@%§;
   import §7z§.b2Body;
   import §7z§.b2BodyDef;
   import §7z§.b2FilterData;
   import §7z§.b2Fixture;
   import §7z§.b2World;
   import §8q§.§!g§;
   import §8q§.§+P§;
   import §8q§.§6n§;
   import §8q§.§=Y§;
   import §8q§.§@§;
   import §;X§.§ do§;
   import §?!k§.§0!t§;
   import §^+§.b2Settings;
   import flash.geom.Point;
   
   public class §%,§
   {
      
      public static const §""§:uint = 1 << 1;
      
      public static const §<!V§:uint = 1 << 2;
      
      public static const §8!Z§:uint = 1 << 3;
      
      public static const §[!I§:uint = 1 << 4;
      
      public static const §8n§:Boolean = true;
      
      public static const §9!x§:Number = 5;
      
      public static const §%!y§:Number = 10;
       
      
      private var §,7§:String;
      
      private var §`!P§:int;
      
      private var §-!g§:int;
      
      public var §"g§:String;
      
      public var §"W§:int;
      
      private var §]!V§:§6n§;
      
      private var § v§:§6!u§;
      
      private var §<"7§:b2World;
      
      protected var §5]§:String = "";
      
      protected var §5"-§:int = 1;
      
      private var §+!g§:b2Fixture;
      
      private var §<!o§:b2Body;
      
      private var §+!Q§:b2Vec2;
      
      public var §=!,§:Number;
      
      public var §,!f§:Number;
      
      private var §?p§:Number;
      
      private var §^H§:Boolean = false;
      
      private var §[s§:Number;
      
      private var §+!3§:Number;
      
      private var §3!Y§:Number;
      
      private var §6!C§:Number;
      
      private var §^!@§:Number;
      
      private var §^!5§:Number;
      
      public var §!y§:Number = 1;
      
      private var §=!w§:Boolean = false;
      
      public var §[!o§:Number = 0;
      
      public var §]O§:Number = 0;
      
      protected var §+"1§:Boolean = false;
      
      public var §>!M§:§<"6§;
      
      private var § "5§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §-U§:Number = 0;
      
      private var §"!f§:Number = 1.0;
      
      private var §1!c§:Boolean = false;
      
      protected var §1<§:§-!K§;
      
      private var §0!@§:Boolean = true;
      
      public function §%,§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§"g§ = param6;
         this.§]!V§ = §@§.§4"#§(param6);
         this.§ v§ = param1;
         this.§ "5§ = param2;
         this.§"!f§ = param10;
         this.§1!c§ = param11;
         this.§`!P§ = param5;
         this.§"W§ = this.§]!V§.§"W§;
         this.§-!g§ = this.§]!V§.§>!U§();
         this.§1<§ = new §-!K§(§9!x§,§%!y§);
         this.§>!M§ = new §<"6§(this,param2,param4);
         if(!this.§>!M§.§#"$§(param1.§]Z§.§%w§))
         {
            this.§>!M§.§"@§(this.§-!g§,this.§]!V§.§]G§(),this.§]!V§.§>!Z§() / §@%§.§?k§,this.§]!V§.§=k§() / §@%§.§?k§);
         }
         this.§>!M§.§#O§(this.§-!g§ == §!g§.§&!U§);
         this.§<"7§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§<!o§ = this.§<"7§.§4^§(_loc12_);
         this.§<!o§.§3T§(this);
         if(this.§-!g§ == §!g§.§<!@§)
         {
            _loc14_ = b2PolygonShape.§8!g§(this.§]!V§.shape.§1§ * param10,this.§]!V§.shape.§+!4§ * param10);
            this.§+!g§ = this.§<!o§.CreateFixture2(_loc14_,this.§]!V§.§9,§());
         }
         else if(this.§-!g§ == §!g§.§&!U§ || this.§-!g§ == §!g§.§<!t§)
         {
            this.§+!g§ = this.§<!o§.CreateFixture2(this.§]!V§.shape.§^!T§(param10),this.§]!V§.§9,§());
         }
         this.§+!g§.§#!d§(this.§]!V§.§+g§());
         this.§+!g§.§0§(this.§]!V§.§,!-§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§^!!§())
         {
            _loc13_.§<!r§ = §""§;
            _loc13_.§6P§ = 65535 & ~§<!V§;
         }
         else if(this.§"g§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§"g§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§<!r§ = §<!V§;
            _loc13_.§6P§ = 65535 & ~§""§;
         }
         this.§+!g§.§77§(_loc13_);
         this.§?p§ = this.§]!V§.§"! §();
         if(this.§]!V§.§,!f§ > 0)
         {
            this.§=!,§ = this.§,!f§ = this.§]!V§.§,!f§;
         }
         else
         {
            this.§=!,§ = this.§,!f§ = Math.round(this.§3C§(true) * this.§]!V§.§ !V§());
            if(this.§=!,§ < 1)
            {
               this.§=!,§ = this.§,!f§ = 1;
            }
         }
         if(this.§]!V§.§"W§ == §6n§.§5!1§)
         {
            this.§ "5§.visible = false;
         }
         else
         {
            this.§>!M§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§&!t§(param9);
         }
         this.§]y§();
         this.§9Q§(0,1);
         this.§>!M§.§!S§(this.§]!V§.shape);
      }
      
      public static function §8b§(param1:int, param2:§+P§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§3!9§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§7r§;
            }
            §0!t§.§>7§(_loc4_,param3);
         }
      }
      
      public static function §6X§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §0!<§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "5§;
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
         return this.§"!f§;
      }
      
      public function get front() : Boolean
      {
         return this.§1!c§;
      }
      
      public function get §4!V§() : Number
      {
         return this.§<!o§.GetPosition().x;
      }
      
      public function get §<!#§() : Number
      {
         return this.§<!o§.GetPosition().y;
      }
      
      public function get §switch§() : §6n§
      {
         return this.§]!V§;
      }
      
      public function get §&k§() : Boolean
      {
         return this.§?p§ >= 0;
      }
      
      public function get container() : §6!u§
      {
         return this.§ v§;
      }
      
      public function get §@"-§() : Boolean
      {
         return this.§0!@§;
      }
      
      public function set §@"-§(param1:Boolean) : void
      {
         this.§0!@§ = param1;
      }
      
      public function set §'",§(param1:Boolean) : void
      {
         this.§^H§ = param1;
      }
      
      public function set §+j§(param1:uint) : void
      {
         this.§1<§.§+j§ = param1;
      }
      
      public function get §+j§() : uint
      {
         return this.§1<§.§+j§;
      }
      
      public function get §;s§() : Boolean
      {
         return this.§=!w§;
      }
      
      public function set §;s§(param1:Boolean) : void
      {
         this.§=!w§ = param1;
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
         return this.§,7§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§,7§ = param1;
      }
      
      public function §8F§(param1:b2FilterData) : void
      {
         if(this.§+!g§)
         {
            this.§+!g§.§77§(param1);
         }
      }
      
      protected function §`!9§(param1:String) : int
      {
         return §>!]§.§`!9§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§]!V§.§!!6§();
         _loc3_.§3"4§ = true;
         _loc3_.§8Y§ = true;
         _loc3_.§^!u§ = true;
         _loc3_.§0!I§ = 1;
         _loc3_.§case§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§<"7§)
         {
            this.§<"7§.§]j§(this.getBody());
            this.§<"7§ = null;
         }
         this.§>!M§.dispose();
         if(this.§ "5§)
         {
            this.§ "5§.dispose();
            this.§ "5§ = null;
         }
         this.§+!g§ = null;
         this.§+!Q§ = null;
         this.§]!V§ = null;
      }
      
      public function §&!t§(param1:Number) : void
      {
         this.getBody().§@B§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §;!k§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §""4§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§?!>§();
         }
         if(param3)
         {
            this.§ "-§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§+!g§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §,"6§(param1:b2Vec2) : void
      {
         this.§+!Q§ = param1;
      }
      
      public function §&""§() : void
      {
         if(this.§+!Q§)
         {
            this.§""4§(this.§+!Q§,false);
            this.§+!Q§ = null;
         }
      }
      
      public function §?!>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§0!3§(0);
         }
         else
         {
            this.getBody().§0!3§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function § "-§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§&!t§(_loc2_);
      }
      
      public function §7!c§(param1:Number) : void
      {
         this.getBody().§0!3§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§+!g§ != null)
         {
            return this.§+!g§.GetBody();
         }
         return null;
      }
      
      public function §@"&§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §@%§.§?k§;
         this.getBody().GetPosition().y = this.mY * §@%§.§?k§;
      }
      
      public function §9Q§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§+"1§)
         {
            _loc3_ = true;
            this.§+"1§ = false;
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
            this.§>!M§.§7!2§();
         }
         if(this.§!y§ > 1 && this.§>!M§.§`p§)
         {
            _loc4_ = 4 + (this.§>!M§.§`p§.blurX - 4 + param2 / 20) % 28;
            this.§>!M§.§`p§.blurX = _loc4_;
            this.§>!M§.§`p§.blurY = _loc4_;
         }
         this.§>!M§.§+Z§(param2);
         if(§8n§)
         {
            this.§?!%§(param1);
         }
         else
         {
            this.§-U§ = this.§3!Y§;
            this.mX = this.§[s§;
            this.mY = this.§+!3§;
         }
         this.§ "5§.x = Math.round(this.mX);
         this.§ "5§.y = Math.round(this.mY);
         this.§ "5§.rotation = this.§-U§ / 180 * Math.PI;
      }
      
      public function §]y§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§^!5§ = this.§3!Y§;
         this.§6!C§ = this.§[s§;
         this.§^!@§ = this.§+!3§;
         this.§3!Y§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§[s§ = _loc1_ / §@%§.§?k§;
         this.§+!3§ = _loc2_ / §@%§.§?k§;
         this.§1<§.§]i§();
         this.§1<§.§4H§(this.getBody());
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
      
      public function §?!%§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            § do§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§ v§.§]Z§.§'A§.§'" § * 1000;
         }
         param1 *= -1;
         if(this.§[s§ == this.§6!C§ || param1 == 0)
         {
            this.§[!o§ = 0;
            this.mX = this.§[s§;
         }
         else
         {
            this.§[!o§ = param1 * (this.§6!C§ - this.§[s§) / param2;
            this.mX = this.§[s§ + this.§[!o§;
         }
         if(this.§+!3§ == this.§^!@§ || param1 == 0)
         {
            this.§]O§ = 0;
            this.mY = this.§+!3§;
         }
         else
         {
            this.§]O§ = param1 * (this.§^!@§ - this.§+!3§) / param2;
            this.mY = this.§+!3§ + this.§]O§;
         }
         if(this.§3!Y§ == this.§^!5§ || param1 == 0)
         {
            this.§-U§ = this.§3!Y§;
         }
         else if(this.§^!5§ > this.§3!Y§ && this.§^!5§ - this.§3!Y§ <= 180)
         {
            this.§-U§ = this.§3!Y§ + param1 * (this.§^!5§ - this.§3!Y§) / param2;
         }
         else if(this.§^!5§ > this.§3!Y§ && this.§^!5§ - this.§3!Y§ > 180)
         {
            this.§-U§ = this.§3!Y§ + param1 * (this.§^!5§ - 360 - this.§3!Y§) / param2;
         }
         else if(this.§^!5§ < this.§3!Y§ && this.§3!Y§ - this.§^!5§ <= 180)
         {
            this.§-U§ = this.§3!Y§ + param1 * (this.§^!5§ - this.§3!Y§) / param2;
         }
         else if(this.§^!5§ < this.§3!Y§ && this.§3!Y§ - this.§^!5§ > 180)
         {
            this.§-U§ = this.§3!Y§ + param1 * (this.§^!5§ + 360 - this.§3!Y§) / param2;
         }
      }
      
      public function get §'!=§() : Point
      {
         if(!§8n§)
         {
         }
         return null;
      }
      
      public function §^!!§() : Boolean
      {
         return this.§"W§ == §6n§.§,]§ || this.§"W§ == §6n§.§,!D§;
      }
      
      public function §@!e§() : Boolean
      {
         return this.§"W§ == §6n§.§@z§;
      }
      
      public function §"[§() : Boolean
      {
         return this.§"W§ == §6n§.§!6§;
      }
      
      public function §?",§() : Boolean
      {
         return this.§"W§ == §6n§.§,!D§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§"W§ == §6n§.§=!v§;
      }
      
      public function isGround() : Boolean
      {
         return this.§"W§ == §6n§.§5!1§;
      }
      
      public function §^6§() : Boolean
      {
         return this.§"W§ == §6n§.§3x§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§"W§ == §6n§.§9]§;
      }
      
      public function §,U§() : Boolean
      {
         if(this.§"g§ == "MISC_EXPLOSIVE_TNT" || this.§"g§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function § 2§() : Boolean
      {
         return (this.§@!e§() || this.§^6§() || this.isMiscBlock()) && !this.§;s§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §=!W§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§"[§())
         {
            return this.§=!,§;
         }
         if(!this.§ v§.§#!e§())
         {
            return this.§=!,§;
         }
         if(this.§?p§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§4!u§(§+P§.§2"4§);
            }
            else if(param1 > 12)
            {
               this.§4!u§(§+P§.§?H§);
            }
            else if(param1 > 3)
            {
               this.§4!u§(§+P§.§]!6§);
            }
            return this.§=!,§;
         }
         if(param1 <= this.§?p§)
         {
            if(param1 >= this.§?p§ / 2)
            {
               this.§4!u§(§+P§.§]!6§);
            }
            if(this.§^!!§() && this.§=!,§ == this.§,!f§)
            {
               this.§=!,§ = this.§,!f§ - 1;
            }
            return this.§=!,§;
         }
         param1 -= this.§?p§;
         if(param2 && this.§ 2§())
         {
            _loc7_ = Math.min(this.§=!,§,int(param1));
            _loc8_ = §@%§.§+-§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §@%§.§,!]§;
            }
            this.§ v§.§]Z§.addScore(_loc8_,§7!=§.§]!%§,this.§=!,§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§>!]§.§9!`§(this.§"g§));
         }
         if(!(param5 && this.§^H§))
         {
            this.§=!,§ -= param1;
         }
         if(this.§=!,§ < 1 && this.§^!!§())
         {
            this.§=!,§ = 1;
         }
         if(this.§=!,§ < 1)
         {
            this.§=!,§ = 0;
            §%,§.§8b§(§+P§.§2"4§,this.§]!V§.§2!_§,"ChannelDestroyed");
         }
         else
         {
            this.§4!u§(§+P§.§?H§);
            this.addDamageParticles(this.§ v§.§]Z§.particles,param1);
         }
         this.§>!M§.setDamagedFrame();
         return this.§=!,§;
      }
      
      public function §4!u§(param1:int) : void
      {
         §%,§.§8b§(param1,this.§]!V§.§2!_§);
      }
      
      public function §#o§(param1:String) : Number
      {
         return this.§]!V§.material.§2a§(param1) * this.§!y§;
      }
      
      public function §,!u§(param1:String) : Number
      {
         return this.§]!V§.material.§?!A§(param1);
      }
      
      public function §9G§() : String
      {
         return this.§]!V§.material.mName;
      }
      
      public function §8!-§() : Number
      {
         return this.§]!V§.§ !V§();
      }
      
      public function §;D§() : int
      {
         return this.§]!V§.§?N§();
      }
      
      public function §#!C§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§^!!§() && this.§=!,§ == this.§,!f§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§,!4§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §!!Q§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§`!3§();
      }
      
      protected function §`!3§() : Boolean
      {
         return this.§1<§.§`!3§();
      }
      
      public function §#!F§(param1:Number = 3) : void
      {
         this.§!y§ = param1;
         if(this.§!y§ > 1)
         {
            this.§>!M§.§<$§();
         }
         else
         {
            this.§>!M§.§`p§ = null;
         }
      }
      
      public function §3C§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§]!V§.§!!6§() == §=Y§.§8X§)
         {
            _loc2_ = this.§>!M§.mW * this.§>!M§.mH * (§@%§.§?k§ * §@%§.§?k§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§+!g§.§?v§();
            if(param1)
            {
               _loc2_ *= this.§5!4§();
            }
            _loc2_ /= this.§"!f§ * this.§"!f§;
         }
         return _loc2_;
      }
      
      public function §5!4§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§>!M§.§+!I§ - 1) / 10);
      }
      
      public function §0b§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§6!u§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5!G§) : void
      {
      }
      
      public function addDamageParticles(param1:§5!G§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §8!P§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§"1§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§;!k§()) + 360) % 360;
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
            this.§&!t§(_loc4_);
         }
         var _loc3_:Number = this.§;!k§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§&!t§(_loc3_);
      }
      
      public function §&!f§(param1:Number) : void
      {
         var _loc2_:Number = §6X§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §0!<§(_loc2_);
         this.getBody().§@B§(_loc2_);
      }
      
      public function §2_§(param1:Number, param2:Point) : void
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
         this.getBody().§"1§(_loc13_);
      }
   }
}
