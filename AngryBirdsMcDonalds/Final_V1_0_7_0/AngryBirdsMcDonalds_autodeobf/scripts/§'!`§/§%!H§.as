package §'!`§
{
   import §+!o§.b2PolygonShape;
   import §-0§.b2Body;
   import §-0§.b2BodyDef;
   import §-0§.b2FilterData;
   import §-0§.b2Fixture;
   import §-0§.b2World;
   import §0@§.Sprite;
   import §0i§.§4!%§;
   import §3G§.§!C§;
   import §3G§.§-s§;
   import §3G§.§9! §;
   import §3G§.§9!S§;
   import §3G§.§9!g§;
   import §55§.§1!g§;
   import §55§.§>![§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   import §@g§.b2Settings;
   import §]^§.§7G§;
   import §^!%§.b2Vec2;
   import flash.geom.Point;
   
   public class §%!H§
   {
      
      public static const §+!J§:uint = 1 << 1;
      
      public static const §;!J§:uint = 1 << 2;
      
      public static const §+!"§:uint = 1 << 3;
      
      public static const §2!K§:uint = 1 << 4;
      
      public static const §5Z§:Boolean = true;
      
      public static const §8!S§:Number = 5;
      
      public static const §<W§:Number = 10;
       
      
      private var §,!$§:String;
      
      private var §+8§:int;
      
      private var §-m§:int;
      
      public var §8+§:String;
      
      public var §=4§:int;
      
      private var §3z§:§!C§;
      
      private var §in§:§for§;
      
      private var mWorld:b2World;
      
      protected var §8!8§:String = "";
      
      protected var §1G§:int = 1;
      
      private var §&!H§:b2Fixture;
      
      private var §4!o§:b2Body;
      
      private var §&!!§:b2Vec2;
      
      public var §0!8§:Number;
      
      public var §6w§:Number;
      
      private var §8z§:Number;
      
      private var §implements§:Boolean = false;
      
      private var §?!#§:Number;
      
      private var §1![§:Number;
      
      private var §'#§:Number;
      
      private var §%!;§:Number;
      
      private var §`>§:Number;
      
      private var §]G§:Number;
      
      public var §-A§:Number = 1;
      
      private var §=!f§:Boolean = false;
      
      public var §1!j§:Number = 0;
      
      public var §4! §:Number = 0;
      
      protected var §9H§:Boolean = false;
      
      public var §@!5§:§-!W§;
      
      private var §#Y§:Sprite;
      
      private var §=!=§:Number = 0;
      
      private var §[!;§:Number = 0;
      
      private var §?!g§:Number = 0;
      
      private var §9n§:Number = 1.0;
      
      private var §!N§:Boolean = false;
      
      protected var §`T§:§<!e§;
      
      private var §7!3§:Boolean = true;
      
      public function §%!H§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§8+§ = param6;
         this.§3z§ = §-s§.§[!G§(param6);
         this.§in§ = param1;
         this.§#Y§ = param2;
         this.§9n§ = param10;
         this.§!N§ = param11;
         this.§+8§ = param5;
         this.§=4§ = this.§3z§.§=4§;
         this.§-m§ = this.§3z§.§+!9§();
         this.§`T§ = new §<!e§(§8!S§,§<W§);
         this.§@!5§ = new §-!W§(this,param2,param4);
         if(!this.§@!5§.§2j§(param1.mLevelMain.animationManager))
         {
            this.§@!5§.§<9§(this.§-m§,this.§3z§.§`!o§(),this.§3z§.§#! §() / §>![§.§%!k§,this.§3z§.§%Z§() / §>![§.§%!k§);
         }
         this.§@!5§.§-!Y§(this.§-m§ == §9!g§.§]!6§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§4!o§ = this.mWorld.§4F§(_loc12_);
         this.§4!o§.§`!8§(this);
         if(this.§-m§ == §9!g§.§^!<§)
         {
            _loc14_ = b2PolygonShape.§-!m§(this.§3z§.shape.§"§ * param10,this.§3z§.shape.§&'§ * param10);
            this.§&!H§ = this.§4!o§.CreateFixture2(_loc14_,this.§3z§.§4x§());
         }
         else if(this.§-m§ == §9!g§.§]!6§ || this.§-m§ == §9!g§.§,d§)
         {
            this.§&!H§ = this.§4!o§.CreateFixture2(this.§3z§.shape.§'!!§(param10),this.§3z§.§4x§());
         }
         this.§&!H§.§^!7§(this.§3z§.§?!D§());
         this.§&!H§.§+[§(this.§3z§.§ !h§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§^G§())
         {
            _loc13_.§+!;§ = §+!J§;
            _loc13_.§1!§ = 65535 & ~§;!J§;
         }
         else if(this.§8+§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§8+§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§+!;§ = §;!J§;
            _loc13_.§1!§ = 65535 & ~§+!J§;
         }
         this.§&!H§.§%![§(_loc13_);
         this.§8z§ = this.§3z§.§;a§();
         if(this.§3z§.§6w§ > 0)
         {
            this.§0!8§ = this.§6w§ = this.§3z§.§6w§;
         }
         else
         {
            this.§0!8§ = this.§6w§ = Math.round(this.§ !$§(true) * this.§3z§.§[,§());
            if(this.§0!8§ < 1)
            {
               this.§0!8§ = this.§6w§ = 1;
            }
         }
         if(this.§3z§.§=4§ == §!C§.§]X§)
         {
            this.§#Y§.visible = false;
         }
         else
         {
            this.§@!5§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§>!$§(param9);
         }
         this.§0!M§();
         this.§;y§(0,1);
         this.§@!5§.§=V§(this.§3z§.shape);
      }
      
      public static function §>!J§(param1:int, param2:§9! §, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§"c§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§17§;
            }
            §7G§.§`!D§(_loc4_,param3);
         }
      }
      
      public static function §3!a§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §+X§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§#Y§;
      }
      
      public function get x() : Number
      {
         return this.§=!=§;
      }
      
      public function get y() : Number
      {
         return this.§[!;§;
      }
      
      public function get scale() : Number
      {
         return this.§9n§;
      }
      
      public function get front() : Boolean
      {
         return this.§!N§;
      }
      
      public function get §;!2§() : Number
      {
         return this.§4!o§.GetPosition().x;
      }
      
      public function get §3m§() : Number
      {
         return this.§4!o§.GetPosition().y;
      }
      
      public function get §<!&§() : §!C§
      {
         return this.§3z§;
      }
      
      public function get §'!8§() : Boolean
      {
         return this.§8z§ >= 0;
      }
      
      public function get container() : §for§
      {
         return this.§in§;
      }
      
      public function get §import§() : Boolean
      {
         return this.§7!3§;
      }
      
      public function set §import§(param1:Boolean) : void
      {
         this.§7!3§ = param1;
      }
      
      public function set §;S§(param1:Boolean) : void
      {
         this.§implements§ = param1;
      }
      
      public function set §4+§(param1:uint) : void
      {
         this.§`T§.§4+§ = param1;
      }
      
      public function get §4+§() : uint
      {
         return this.§`T§.§4+§;
      }
      
      public function get §`!=§() : Boolean
      {
         return this.§=!f§;
      }
      
      public function set §`!=§(param1:Boolean) : void
      {
         this.§=!f§ = param1;
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
         return this.§,!$§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§,!$§ = param1;
      }
      
      public function § 2§(param1:b2FilterData) : void
      {
         if(this.§&!H§)
         {
            this.§&!H§.§%![§(param1);
         }
      }
      
      protected function §-!Z§(param1:String) : int
      {
         return §3!f§.§-!Z§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§3z§.§8Q§();
         _loc3_.§&!#§ = true;
         _loc3_.§8!p§ = true;
         _loc3_.§!Z§ = true;
         _loc3_.§1!=§ = 1;
         _loc3_.§"5§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§[!h§(this.§&!p§());
            this.mWorld = null;
         }
         this.§@!5§.dispose();
         if(this.§#Y§)
         {
            this.§#Y§.dispose();
            this.§#Y§ = null;
         }
         this.§&!H§ = null;
         this.§&!!§ = null;
         this.§3z§ = null;
      }
      
      public function §>!$§(param1:Number) : void
      {
         this.§&!p§().§1!<§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §#!$§() : Number
      {
         return (360 - this.§&!p§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §%z§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§&!p§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§=-§();
         }
         if(param3)
         {
            this.§'O§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§&!H§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§&!p§().GetPosition().x >= param3 && this.§&!p§().GetPosition().x <= param4 && this.§&!p§().GetPosition().y >= param1 && this.§&!p§().GetPosition().y <= param2;
      }
      
      public function §,M§(param1:b2Vec2) : void
      {
         this.§&!!§ = param1;
      }
      
      public function §!!V§() : void
      {
         if(this.§&!!§)
         {
            this.§%z§(this.§&!!§,false);
            this.§&!!§ = null;
         }
      }
      
      public function §=-§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§&!p§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§&!p§().§&!'§(0);
         }
         else
         {
            this.§&!p§().§&!'§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §'O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§&!p§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§>!$§(_loc2_);
      }
      
      public function §9!e§(param1:Number) : void
      {
         this.§&!p§().§&!'§(param1);
      }
      
      public function §&!p§() : b2Body
      {
         if(this.§&!H§ != null)
         {
            return this.§&!H§.GetBody();
         }
         return null;
      }
      
      public function §0!G§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§=!=§ = param1;
            this.§[!;§ = param2;
         }
         this.§&!p§().GetPosition().x = this.§=!=§ * §>![§.§%!k§;
         this.§&!p§().GetPosition().y = this.§[!;§ * §>![§.§%!k§;
      }
      
      public function §;y§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§9H§)
         {
            _loc3_ = true;
            this.§9H§ = false;
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
            this.§@!5§.§0%§();
         }
         if(this.§-A§ > 1 && this.§@!5§.§&!S§)
         {
            _loc4_ = 4 + (this.§@!5§.§&!S§.blurX - 4 + param2 / 20) % 28;
            this.§@!5§.§&!S§.blurX = _loc4_;
            this.§@!5§.§&!S§.blurY = _loc4_;
         }
         this.§@!5§.§[!4§(param2);
         if(§5Z§)
         {
            this.§@!1§(param1);
         }
         else
         {
            this.§?!g§ = this.§'#§;
            this.§=!=§ = this.§?!#§;
            this.§[!;§ = this.§1![§;
         }
         this.§#Y§.x = Math.round(this.§=!=§);
         this.§#Y§.y = Math.round(this.§[!;§);
         this.§#Y§.rotation = this.§?!g§ / 180 * Math.PI;
      }
      
      public function §0!M§() : void
      {
         var _loc1_:Number = this.§&!p§().GetPosition().x;
         var _loc2_:Number = this.§&!p§().GetPosition().y;
         this.§]G§ = this.§'#§;
         this.§%!;§ = this.§?!#§;
         this.§`>§ = this.§1![§;
         this.§'#§ = this.§&!p§().GetAngle() * (180 / Math.PI) % 360;
         this.§?!#§ = _loc1_ / §>![§.§%!k§;
         this.§1![§ = _loc2_ / §>![§.§%!k§;
         this.§`T§.§#9§();
         this.§`T§.§2f§(this.§&!p§());
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
      
      public function §@!1§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §4!%§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§in§.mLevelMain.mLevelEngine.§^<§ * 1000;
         }
         param1 *= -1;
         if(this.§?!#§ == this.§%!;§ || param1 == 0)
         {
            this.§1!j§ = 0;
            this.§=!=§ = this.§?!#§;
         }
         else
         {
            this.§1!j§ = param1 * (this.§%!;§ - this.§?!#§) / param2;
            this.§=!=§ = this.§?!#§ + this.§1!j§;
         }
         if(this.§1![§ == this.§`>§ || param1 == 0)
         {
            this.§4! § = 0;
            this.§[!;§ = this.§1![§;
         }
         else
         {
            this.§4! § = param1 * (this.§`>§ - this.§1![§) / param2;
            this.§[!;§ = this.§1![§ + this.§4! §;
         }
         if(this.§'#§ == this.§]G§ || param1 == 0)
         {
            this.§?!g§ = this.§'#§;
         }
         else if(this.§]G§ > this.§'#§ && this.§]G§ - this.§'#§ <= 180)
         {
            this.§?!g§ = this.§'#§ + param1 * (this.§]G§ - this.§'#§) / param2;
         }
         else if(this.§]G§ > this.§'#§ && this.§]G§ - this.§'#§ > 180)
         {
            this.§?!g§ = this.§'#§ + param1 * (this.§]G§ - 360 - this.§'#§) / param2;
         }
         else if(this.§]G§ < this.§'#§ && this.§'#§ - this.§]G§ <= 180)
         {
            this.§?!g§ = this.§'#§ + param1 * (this.§]G§ - this.§'#§) / param2;
         }
         else if(this.§]G§ < this.§'#§ && this.§'#§ - this.§]G§ > 180)
         {
            this.§?!g§ = this.§'#§ + param1 * (this.§]G§ + 360 - this.§'#§) / param2;
         }
      }
      
      public function get §[!-§() : Point
      {
         if(!§5Z§)
         {
         }
         return null;
      }
      
      public function §^G§() : Boolean
      {
         return this.§=4§ == §!C§.§>!6§ || this.§=4§ == §!C§.§continue§;
      }
      
      public function §=!M§() : Boolean
      {
         return this.§=4§ == §!C§.§^!p§;
      }
      
      public function §3!!§() : Boolean
      {
         return this.§=4§ == §!C§.§3!q§;
      }
      
      public function §=B§() : Boolean
      {
         return this.§=4§ == §!C§.§continue§;
      }
      
      public function §#!&§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§=4§ == §!C§.§&!c§;
      }
      
      public function isGround() : Boolean
      {
         return this.§=4§ == §!C§.§]X§;
      }
      
      public function §3!C§() : Boolean
      {
         return this.§=4§ == §!C§.§ W§;
      }
      
      public function §-x§() : Boolean
      {
         return this.§=4§ == §!C§.§%!8§;
      }
      
      public function §@!3§() : Boolean
      {
         if(this.§8+§ == "MISC_EXPLOSIVE_TNT" || this.§8+§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §]§() : Boolean
      {
         return (this.§=!M§() || this.§3!C§() || this.§-x§()) && !this.§`!=§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §,8§() : Number
      {
         return Number(Math.sqrt(this.§&!p§().GetLinearVelocity().x * this.§&!p§().GetLinearVelocity().x + this.§&!p§().GetLinearVelocity().y * this.§&!p§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§3!!§())
         {
            return this.§0!8§;
         }
         if(!this.§in§.§>!@§())
         {
            return this.§0!8§;
         }
         if(this.§8z§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§0!"§(§9! §.§%!A§);
            }
            else if(param1 > 12)
            {
               this.§0!"§(§9! §.§1!o§);
            }
            else if(param1 > 3)
            {
               this.§0!"§(§9! §.§-!D§);
            }
            return this.§0!8§;
         }
         if(param1 <= this.§8z§)
         {
            if(param1 >= this.§8z§ / 2)
            {
               this.§0!"§(§9! §.§-!D§);
            }
            if(this.§^G§() && this.§0!8§ == this.§6w§)
            {
               this.§0!8§ = this.§6w§ - 1;
            }
            return this.§0!8§;
         }
         param1 -= this.§8z§;
         if(param2 && this.§]§())
         {
            _loc7_ = Math.min(this.§0!8§,int(param1));
            _loc8_ = §>![§.§[]§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §>![§.§`O§;
            }
            this.§in§.mLevelMain.addScore(_loc8_,§1!g§.§@!f§,this.§0!8§ > param1 && param3,this.§&!p§().GetPosition().x,this.§&!p§().GetPosition().y,§3!f§.§?0§(this.§8+§));
         }
         if(!(param5 && this.§implements§))
         {
            this.§0!8§ -= param1;
         }
         if(this.§0!8§ < 1 && this.§^G§())
         {
            this.§0!8§ = 1;
         }
         if(this.§0!8§ < 1)
         {
            this.§0!8§ = 0;
            §%!H§.§>!J§(§9! §.§%!A§,this.§3z§.§[u§,"ChannelDestroyed");
         }
         else
         {
            this.§0!"§(§9! §.§1!o§);
            this.addDamageParticles(this.§in§.mLevelMain.particles,param1);
         }
         this.§@!5§.setDamagedFrame();
         return this.§0!8§;
      }
      
      public function §0!"§(param1:int) : void
      {
         §%!H§.§>!J§(param1,this.§3z§.§[u§);
      }
      
      public function §3!8§(param1:String) : Number
      {
         return this.§3z§.material.§ !"§(param1) * this.§-A§;
      }
      
      public function §8X§(param1:String) : Number
      {
         return this.§3z§.material.§9!F§(param1);
      }
      
      public function §9O§() : String
      {
         return this.§3z§.material.mName;
      }
      
      public function §='§() : Number
      {
         return this.§3z§.§[,§();
      }
      
      public function §1#§() : int
      {
         return this.§3z§.§]!+§();
      }
      
      public function §?!S§() : Boolean
      {
         return this.§&!p§().IsAwake() && (this.§^G§() && this.§0!8§ == this.§6w§ || Math.abs(this.§&!p§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§&!p§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§&!p§().§^!&§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §1-§() : Boolean
      {
         if(!this.§&!p§().IsAwake())
         {
            return true;
         }
         return !this.§[!2§();
      }
      
      protected function §[!2§() : Boolean
      {
         return this.§`T§.§[!2§();
      }
      
      public function §=1§(param1:Number = 3) : void
      {
         this.§-A§ = param1;
         if(this.§-A§ > 1)
         {
            this.§@!5§.§2!!§();
         }
         else
         {
            this.§@!5§.§&!S§ = null;
         }
      }
      
      public function § !$§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§3z§.§8Q§() == §9!S§.§&!i§)
         {
            _loc2_ = this.§@!5§.mW * this.§@!5§.mH * (§>![§.§%!k§ * §>![§.§%!k§);
         }
         else
         {
            _loc2_ = this.§&!p§().GetMass() / this.§&!H§.§`!X§();
            if(param1)
            {
               _loc2_ *= this.§[B§();
            }
            _loc2_ /= this.§9n§ * this.§9n§;
         }
         return _loc2_;
      }
      
      public function §[B§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§@!5§.§;!p§ - 1) / 10);
      }
      
      public function §7!n§(param1:Number) : void
      {
         var _loc2_:Number = this.§&!p§().GetLinearVelocity().x;
         var _loc3_:Number = this.§&!p§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§&!p§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§for§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§,!j§) : void
      {
      }
      
      public function addDamageParticles(param1:§,!j§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §?!W§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§&!p§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§&!p§().§%K§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§#!$§()) + 360) % 360;
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
            this.§>!$§(_loc4_);
         }
         var _loc3_:Number = this.§#!$§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§>!$§(_loc3_);
      }
      
      public function §"D§(param1:Number) : void
      {
         var _loc2_:Number = §3!a§(this.§&!p§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §+X§(_loc2_);
         this.§&!p§().§1!<§(_loc2_);
      }
      
      public function §>!m§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§&!p§().GetPosition().Copy();
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
         this.§&!p§().§%K§(_loc13_);
      }
   }
}
