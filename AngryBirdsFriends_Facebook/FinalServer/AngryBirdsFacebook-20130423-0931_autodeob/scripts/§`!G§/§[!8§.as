package §`!G§
{
   import §!"3§.b2PolygonShape;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §,"[§.b2Settings;
   import §-f§.§+"R§;
   import §-f§.§8!<§;
   import §-f§.§9L§;
   import §-f§.§@!M§;
   import §-f§.§[!J§;
   import §4!<§.§'!S§;
   import §4!<§.§;P§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2BodyDef;
   import §6"1§.b2FilterData;
   import §6"1§.b2Fixture;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import flash.geom.Point;
   
   public class §[!8§
   {
      
      public static const §<!k§:uint = 1 << 1;
      
      public static const §^"-§:uint = 1 << 2;
      
      public static const §18§:uint = 1 << 3;
      
      public static const §=!S§:uint = 1 << 4;
      
      public static const §`!"§:Boolean = true;
      
      public static const §,"A§:Number = 5;
      
      public static const §&!,§:Number = 10;
       
      
      private var §+7§:String;
      
      private var §[!q§:int;
      
      private var §#"'§:int;
      
      public var §@x§:String;
      
      public var §<!G§:int;
      
      protected var §!L§:§9L§;
      
      private var §>!=§:§8"=§;
      
      private var mWorld:b2World;
      
      protected var §0"9§:String = "";
      
      protected var §!"F§:int = 1;
      
      private var § !o§:b2Fixture;
      
      private var §7l§:b2Body;
      
      private var §4%§:b2Vec2;
      
      public var § d§:Number;
      
      public var §^!2§:Number;
      
      private var §2! §:Number;
      
      private var §;o§:Boolean = false;
      
      private var §1!3§:Number;
      
      private var §7!b§:Number;
      
      private var §#3§:Number;
      
      private var §9!t§:Number;
      
      private var §#c§:Number;
      
      private var §1!O§:Number;
      
      public var §-v§:Number = 1;
      
      private var §'!T§:Boolean = false;
      
      public var §8!N§:Number = 0;
      
      public var §?!>§:Number = 0;
      
      protected var §,d§:Boolean = false;
      
      public var §2!8§:§+T§;
      
      protected var §?!T§:Sprite;
      
      private var §4!K§:Number = 0;
      
      private var §7!#§:Number = 0;
      
      private var §!"W§:Number = 0;
      
      protected var §<[§:Number = 1.0;
      
      private var §>2§:Boolean = false;
      
      protected var §?"!§:§%"B§;
      
      private var §]=§:Boolean = true;
      
      public function §[!8§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§@x§ = param6;
         this.§!L§ = §8!<§.§3"[§(param6);
         this.§>!=§ = param1;
         this.§?!T§ = param2;
         this.§<[§ = param10;
         this.§>2§ = param11;
         this.§[!q§ = param5;
         this.§<!G§ = this.§!L§.§<!G§;
         this.§#"'§ = this.§!L§.§9C§();
         this.§?"!§ = new §%"B§(§,"A§,§&!,§);
         this.§2!8§ = new §+T§(this,param2,param4);
         if(!this.§2!8§.§2"0§(param1.mLevelMain.animationManager))
         {
            this.§2!8§.§=9§(this.§#"'§,this.§!L§.§9!+§(),this.§!L§.§6d§() / §'!S§.§2"<§,this.§!L§.§&"'§() / §'!S§.§2"<§);
         }
         this.§2!8§.§%c§(this.§#"'§ == §+"R§.§"c§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§7l§ = this.mWorld.§@H§(_loc12_);
         this.§7l§.§^!>§(this);
         if(this.§#"'§ == §+"R§.§[=§)
         {
            _loc14_ = b2PolygonShape.§`!P§(this.§!L§.shape.§,>§ * param10,this.§!L§.shape.§`;§ * param10);
            this.§ !o§ = this.§7l§.CreateFixture2(_loc14_,this.§!L§.§%o§());
         }
         else if(this.§#"'§ == §+"R§.§"c§ || this.§#"'§ == §+"R§.§[!>§)
         {
            this.§ !o§ = this.§7l§.CreateFixture2(this.§!L§.shape.§<7§(param10),this.§!L§.§%o§());
         }
         this.§ !o§.§5L§(this.§!L§.§'"3§());
         this.§ !o§.§-!e§(this.§!L§.§3"@§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§!!n§())
         {
            _loc13_.§@!1§ = §<!k§;
            _loc13_.§="[§ = 65535 & ~§^"-§;
         }
         else if(this.§@x§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§@x§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§@!1§ = §^"-§;
            _loc13_.§="[§ = 65535 & ~§<!k§;
         }
         this.§ !o§.§'y§(_loc13_);
         this.§2! § = this.§!L§.§3"M§();
         if(this.§!L§.§^!2§ > 0)
         {
            this.§ d§ = this.§^!2§ = this.§!L§.§^!2§;
         }
         else
         {
            this.§ d§ = this.§^!2§ = Math.round(this.§`!A§(true) * this.§!L§.§>!b§());
            if(this.§ d§ < 1)
            {
               this.§ d§ = this.§^!2§ = 1;
            }
         }
         if(this.§!L§.§<!G§ == §9L§.§7O§)
         {
            this.§?!T§.visible = false;
         }
         else
         {
            this.§2!8§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§6"!§(param9);
         }
         this.§=">§();
         this.§0P§(0,1);
         this.§2!8§.§#a§(this.§!L§.shape);
      }
      
      public static function § "3§(param1:int, param2:§[!J§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§9">§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§<"5§;
            }
            §@"M§.§"!0§(_loc4_,param3);
         }
      }
      
      public static function radiansToDegres(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §""@§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function get front() : Boolean
      {
         return this.§>2§;
      }
      
      public function get §?!l§() : Number
      {
         return this.§7l§.GetPosition().x;
      }
      
      public function get §68§() : Number
      {
         return this.§7l§.GetPosition().y;
      }
      
      public function get §^!f§() : §9L§
      {
         return this.§!L§;
      }
      
      public function get §[p§() : Boolean
      {
         return this.§2! § >= 0;
      }
      
      public function get container() : §8"=§
      {
         return this.§>!=§;
      }
      
      public function get §#!&§() : Boolean
      {
         return this.§]=§;
      }
      
      public function set §#!&§(param1:Boolean) : void
      {
         this.§]=§ = param1;
      }
      
      public function set §5!R§(param1:Boolean) : void
      {
         this.§;o§ = param1;
      }
      
      public function set §8!A§(param1:uint) : void
      {
         this.§?"!§.§8!A§ = param1;
      }
      
      public function get §8!A§() : uint
      {
         return this.§?"!§.§8!A§;
      }
      
      public function get §]"K§() : Boolean
      {
         return this.§'!T§;
      }
      
      public function set §]"K§(param1:Boolean) : void
      {
         this.§'!T§ = param1;
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
         return this.§+7§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§+7§ = param1;
      }
      
      public function §09§(param1:b2FilterData) : void
      {
         if(this.§ !o§)
         {
            this.§ !o§.§'y§(param1);
         }
      }
      
      protected function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         return §0i§.getParticleMaterialFromEngineMaterial(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§!L§.§`!§();
         _loc3_.§6!z§ = true;
         _loc3_.§""D§ = true;
         _loc3_.§2"X§ = true;
         _loc3_.§6"9§ = 1;
         _loc3_.§1p§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§#!O§(this.getBody());
            this.mWorld = null;
         }
         this.§2!8§.dispose();
         if(this.§?!T§)
         {
            this.§?!T§.dispose();
            this.§?!T§ = null;
         }
         this.§ !o§ = null;
         this.§4%§ = null;
         this.§!L§ = null;
      }
      
      public function §6"!§(param1:Number) : void
      {
         this.getBody().§^!c§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §,!c§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §+" §(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§`>§();
         }
         if(param3)
         {
            this.§8"F§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§ !o§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §4!+§(param1:b2Vec2) : void
      {
         this.§4%§ = param1;
      }
      
      public function §6!'§() : void
      {
         if(this.§4%§)
         {
            this.§+" §(this.§4%§,false);
            this.§4%§ = null;
         }
      }
      
      public function §`>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§["$§(0);
         }
         else
         {
            this.getBody().§["$§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §8"F§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§6"!§(_loc2_);
      }
      
      public function §0!?§(param1:Number) : void
      {
         this.getBody().§["$§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§ !o§ != null)
         {
            return this.§ !o§.GetBody();
         }
         return null;
      }
      
      public function §7!3§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§4!K§ = param1;
            this.§7!#§ = param2;
         }
         this.getBody().GetPosition().x = this.§4!K§ * §'!S§.§2"<§;
         this.getBody().GetPosition().y = this.§7!#§ * §'!S§.§2"<§;
      }
      
      public function §0P§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§,d§)
         {
            _loc3_ = true;
            this.§,d§ = false;
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
            this.§2!8§.§!!,§();
         }
         if(this.§-v§ > 1 && this.§2!8§.§`!D§)
         {
            _loc4_ = 4 + (this.§2!8§.§`!D§.blurX - 4 + param2 / 20) % 28;
            this.§2!8§.§`!D§.blurX = _loc4_;
            this.§2!8§.§`!D§.blurY = _loc4_;
         }
         this.§2!8§.§>!'§(param2);
         if(§`!"§)
         {
            this.§<!w§(param1);
         }
         else
         {
            this.§!"W§ = this.§#3§;
            this.§4!K§ = this.§1!3§;
            this.§7!#§ = this.§7!b§;
         }
         this.§?!T§.x = Math.round(this.§4!K§);
         this.§?!T§.y = Math.round(this.§7!#§);
         this.§?!T§.rotation = this.§!"W§ / 180 * Math.PI;
      }
      
      public function §=">§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§1!O§ = this.§#3§;
         this.§9!t§ = this.§1!3§;
         this.§#c§ = this.§7!b§;
         this.§#3§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§1!3§ = _loc1_ / §'!S§.§2"<§;
         this.§7!b§ = _loc2_ / §'!S§.§2"<§;
         this.§?"!§.§2!m§();
         this.§?"!§.§="!§(this.getBody());
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
      
      public function §<!w§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §;!=§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§>!=§.mLevelMain.mLevelEngine.§"![§ * 1000;
         }
         param1 *= -1;
         if(this.§1!3§ == this.§9!t§ || param1 == 0)
         {
            this.§8!N§ = 0;
            this.§4!K§ = this.§1!3§;
         }
         else
         {
            this.§8!N§ = param1 * (this.§9!t§ - this.§1!3§) / param2;
            this.§4!K§ = this.§1!3§ + this.§8!N§;
         }
         if(this.§7!b§ == this.§#c§ || param1 == 0)
         {
            this.§?!>§ = 0;
            this.§7!#§ = this.§7!b§;
         }
         else
         {
            this.§?!>§ = param1 * (this.§#c§ - this.§7!b§) / param2;
            this.§7!#§ = this.§7!b§ + this.§?!>§;
         }
         if(this.§#3§ == this.§1!O§ || param1 == 0)
         {
            this.§!"W§ = this.§#3§;
         }
         else if(this.§1!O§ > this.§#3§ && this.§1!O§ - this.§#3§ <= 180)
         {
            this.§!"W§ = this.§#3§ + param1 * (this.§1!O§ - this.§#3§) / param2;
         }
         else if(this.§1!O§ > this.§#3§ && this.§1!O§ - this.§#3§ > 180)
         {
            this.§!"W§ = this.§#3§ + param1 * (this.§1!O§ - 360 - this.§#3§) / param2;
         }
         else if(this.§1!O§ < this.§#3§ && this.§#3§ - this.§1!O§ <= 180)
         {
            this.§!"W§ = this.§#3§ + param1 * (this.§1!O§ - this.§#3§) / param2;
         }
         else if(this.§1!O§ < this.§#3§ && this.§#3§ - this.§1!O§ > 180)
         {
            this.§!"W§ = this.§#3§ + param1 * (this.§1!O§ + 360 - this.§#3§) / param2;
         }
      }
      
      public function get §]"R§() : Point
      {
         if(!§`!"§)
         {
         }
         return null;
      }
      
      public function §!!n§() : Boolean
      {
         return this.§<!G§ == §9L§.§7!V§ || this.§<!G§ == §9L§.§6!y§;
      }
      
      public function §&!y§() : Boolean
      {
         return this.§<!G§ == §9L§.§["-§;
      }
      
      public function §8!1§() : Boolean
      {
         return this.§<!G§ == §9L§.§=8§;
      }
      
      public function §#b§() : Boolean
      {
         return this.§<!G§ == §9L§.§6!y§;
      }
      
      public function shouldUpdate() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§<!G§ == §9L§.§"!-§;
      }
      
      public function isGround() : Boolean
      {
         return this.§<!G§ == §9L§.§7O§;
      }
      
      public function §]H§() : Boolean
      {
         return this.§<!G§ == §9L§.§'!8§;
      }
      
      public function §^!;§() : Boolean
      {
         return this.§<!G§ == §9L§.§+"W§;
      }
      
      public function §package§() : Boolean
      {
         if(this.§@x§ == "MISC_EXPLOSIVE_TNT" || this.§@x§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §`"4§() : Boolean
      {
         return (this.§&!y§() || this.§]H§() || this.§^!;§()) && !this.§]"K§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §4"Q§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§8!1§())
         {
            return this.§ d§;
         }
         if(!this.§>!=§.§%!Q§())
         {
            return this.§ d§;
         }
         if(this.§2! § < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§8X§(§[!J§.§2!M§);
            }
            else if(param1 > 12)
            {
               this.§8X§(§[!J§.§`!r§);
            }
            else if(param1 > 3)
            {
               this.§8X§(§[!J§.§>"H§);
            }
            return this.§ d§;
         }
         if(param1 <= this.§2! §)
         {
            if(param1 >= this.§2! § / 2)
            {
               this.§8X§(§[!J§.§>"H§);
            }
            if(this.§!!n§() && this.§ d§ == this.§^!2§)
            {
               this.§ d§ = this.§^!2§ - 1;
            }
            return this.§ d§;
         }
         param1 -= this.§2! §;
         if(param2 && this.§`"4§())
         {
            _loc7_ = Math.min(this.§ d§,int(param1));
            _loc8_ = §'!S§.§3"2§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §'!S§.§5k§;
            }
            this.§>!=§.mLevelMain.addScore(_loc8_,§;P§.§#"I§,this.§ d§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§0i§.§7R§(this.§@x§));
         }
         if(!(param5 && this.§;o§))
         {
            this.§ d§ -= param1;
         }
         if(this.§ d§ < 1 && this.§!!n§())
         {
            this.§ d§ = 1;
         }
         if(this.§ d§ < 1)
         {
            this.§ d§ = 0;
            §[!8§.§ "3§(§[!J§.§2!M§,this.§!L§.§!j§,"ChannelDestroyed");
         }
         else
         {
            this.§8X§(§[!J§.§`!r§);
            this.addDamageParticles(this.§>!=§.mLevelMain.particles,param1);
         }
         this.§2!8§.setDamagedFrame();
         return this.§ d§;
      }
      
      public function §8X§(param1:int) : void
      {
         §[!8§.§ "3§(param1,this.§!L§.§!j§);
      }
      
      public function §3"S§(param1:String) : Number
      {
         return this.§!L§.material.§'%§(param1) * this.§-v§;
      }
      
      public function §2!#§(param1:String) : Number
      {
         return this.§!L§.material.§@!+§(param1);
      }
      
      public function §?"R§() : String
      {
         return this.§!L§.material.mName;
      }
      
      public function §,!`§() : Number
      {
         return this.§!L§.§>!b§();
      }
      
      public function §>!-§() : int
      {
         return this.§!L§.§<!5§();
      }
      
      public function §=b§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§!!n§() && this.§ d§ == this.§^!2§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §]!!§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§%`§();
      }
      
      protected function §%`§() : Boolean
      {
         return this.§?"!§.§%`§();
      }
      
      public function §7!`§(param1:Number = 3) : void
      {
         this.§-v§ = param1;
         if(this.§-v§ > 1)
         {
            this.§2!8§.§#"R§();
         }
         else
         {
            this.§2!8§.§`!D§ = null;
         }
      }
      
      public function §`!A§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§!L§.§`!§() == §@!M§.§?K§)
         {
            _loc2_ = this.§2!8§.mW * this.§2!8§.mH * (§'!S§.§2"<§ * §'!S§.§2"<§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§ !o§.§?!=§();
            if(param1)
            {
               _loc2_ *= this.§61§();
            }
            _loc2_ /= this.§<[§ * this.§<[§;
         }
         return _loc2_;
      }
      
      public function §61§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2!8§.§="V§ - 1) / 10);
      }
      
      public function §%<§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§6!O§) : void
      {
      }
      
      public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §;!&§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§,!c§()) + 360) % 360;
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
            this.§6"!§(_loc4_);
         }
         var _loc3_:Number = this.§,!c§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§6"!§(_loc3_);
      }
      
      public function §?"2§(param1:Number) : void
      {
         var _loc2_:Number = radiansToDegres(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §""@§(_loc2_);
         this.getBody().§^!c§(_loc2_);
      }
      
      public function §0!`§(param1:Number, param2:Point) : void
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
         this.getBody().SetPosition(_loc13_);
      }
   }
}
