package §%Q§
{
   import §"R§.§ !Q§;
   import §'!9§.Sprite;
   import §,!5§.§;v§;
   import §,!5§.§^g§;
   import §2!+§.b2PolygonShape;
   import §7!u§.b2Settings;
   import §<!1§.§0"§;
   import §<!1§.§2!W§;
   import §<!1§.§9B§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §>H§.b2Vec2;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^_§.§!>§;
   import §`w§.b2Body;
   import §`w§.b2BodyDef;
   import §`w§.b2FilterData;
   import §`w§.b2Fixture;
   import §`w§.b2World;
   import flash.geom.Point;
   
   public class §`!<§
   {
      
      public static const §4%§:uint = 1 << 1;
      
      public static const §'!Y§:uint = 1 << 2;
      
      public static const §`!D§:uint = 1 << 3;
      
      public static const §!!M§:uint = 1 << 4;
      
      public static const §5!q§:Boolean = true;
       
      
      private var §73§:String;
      
      private var §#I§:int;
      
      private var §<![§:int;
      
      public var §<!]§:String;
      
      public var §6K§:int;
      
      private var §-!#§:§9B§;
      
      private var §'Q§:§=[§;
      
      private var mWorld:b2World;
      
      protected var §4!c§:String = "";
      
      protected var §!!?§:int = 1;
      
      private var §2I§:b2Fixture;
      
      private var §1F§:b2Body;
      
      private var §^E§:b2Vec2;
      
      public var §%!R§:Number;
      
      public var §-!!§:Number;
      
      private var §4E§:Number;
      
      private var §2#§:Boolean = false;
      
      private var §[G§:Number;
      
      private var §]<§:Number;
      
      private var §%U§:Number;
      
      private var §0!e§:Number;
      
      private var §=F§:Number;
      
      private var §9f§:Number;
      
      public var §]!G§:Number = 1;
      
      private var §0!6§:Boolean = false;
      
      public var §7^§:Number = 0;
      
      public var §4!w§:Number = 0;
      
      protected var §&=§:Boolean = false;
      
      public var §?!M§:§'!%§;
      
      private var §8X§:Sprite;
      
      private var §,G§:Number = 0;
      
      private var §78§:Number = 0;
      
      private var §-!n§:Number = 0;
      
      private var §'8§:Number = 1.0;
      
      private var §"n§:Boolean = false;
      
      private var §6$§:Vector.<Vector.<Number>>;
      
      private var §2j§:int = 10;
      
      private var §5!H§:Boolean = true;
      
      public function §`!<§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§6$§ = new Vector.<Vector.<Number>>();
         super();
         this.§<!]§ = param6;
         this.§-!#§ = §<F§.§1]§(param6);
         this.§'Q§ = param1;
         this.§8X§ = param2;
         this.§'8§ = param10;
         this.§"n§ = param11;
         this.§#I§ = param5;
         this.§6K§ = this.§-!#§.§6K§;
         this.§<![§ = this.§-!#§.§'!5§();
         this.§6$§[0] = new Vector.<Number>();
         this.§6$§[1] = new Vector.<Number>();
         this.§6$§[2] = new Vector.<Number>();
         this.§?!M§ = new §'!%§(this,param2,param4);
         if(!this.§?!M§.§%!]§(param1.§?l§.animationManager))
         {
            this.§?!M§.§=!>§(this.§<![§,this.§-!#§.§?!Y§(),this.§-!#§.§#]§() / §^g§.§^!S§,this.§-!#§.§4_§() / §^g§.§^!S§);
         }
         this.§?!M§.§?!T§(this.§<![§ == §2!W§.§=!i§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§1F§ = this.mWorld.§04§(_loc12_);
         this.§1F§.§`!N§(this);
         if(this.§<![§ == §2!W§.§,%§)
         {
            _loc14_ = b2PolygonShape.§#4§(this.§-!#§.shape.§'O§ * param10,this.§-!#§.shape.§!!A§ * param10);
            this.§2I§ = this.§1F§.CreateFixture2(_loc14_,this.§-!#§.§`!E§());
         }
         else if(this.§<![§ == §2!W§.§=!i§ || this.§<![§ == §2!W§.§"d§)
         {
            this.§2I§ = this.§1F§.CreateFixture2(this.§-!#§.shape.§>!D§(param10),this.§-!#§.§`!E§());
         }
         this.§2I§.§&!V§(this.§-!#§.§7E§());
         this.§2I§.§,t§(this.§-!#§.§`!B§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§ !"§())
         {
            _loc13_.§`!U§ = §4%§;
            _loc13_.§?!^§ = 65535 & ~§'!Y§;
         }
         else if(this.§<!]§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§<!]§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§`!U§ = §'!Y§;
            _loc13_.§?!^§ = 65535 & ~§4%§;
         }
         this.§2I§.§0S§(_loc13_);
         this.§4E§ = this.§-!#§.§]>§();
         if(this.§-!#§.§-!!§ > 0)
         {
            this.§%!R§ = this.§-!!§ = this.§-!#§.§-!!§;
         }
         else
         {
            this.§%!R§ = this.§-!!§ = Math.round(this.§#!g§(true) * this.§-!#§.§]8§());
            if(this.§%!R§ < 1)
            {
               this.§%!R§ = this.§-!!§ = 1;
            }
         }
         if(this.§-!#§.§6K§ == §9B§.§%!>§)
         {
            this.§8X§.visible = false;
         }
         else
         {
            this.§?!M§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§[!b§(param9);
         }
         this.§"k§();
         this.§!!7§(0,1);
         this.§?!M§.§9x§(this.§-!#§.shape);
      }
      
      public static function §6!$§(param1:int, param2:§<!R§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§-k§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8!c§;
            }
            § !Q§.§0!t§(_loc4_,param3);
         }
      }
      
      public static function §%z§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §2!n§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function get front() : Boolean
      {
         return this.§"n§;
      }
      
      public function get §]!0§() : Number
      {
         return this.§1F§.GetPosition().x;
      }
      
      public function get §""§() : Number
      {
         return this.§1F§.GetPosition().y;
      }
      
      public function get §9o§() : §9B§
      {
         return this.§-!#§;
      }
      
      public function get §"'§() : Boolean
      {
         return this.§4E§ >= 0;
      }
      
      protected function get §;H§() : §=[§
      {
         return this.§'Q§;
      }
      
      public function get §8!x§() : Boolean
      {
         return this.§5!H§;
      }
      
      public function set §8!x§(param1:Boolean) : void
      {
         this.§5!H§ = param1;
      }
      
      public function set §#L§(param1:Boolean) : void
      {
         this.§2#§ = param1;
      }
      
      public function set §`!Q§(param1:uint) : void
      {
         this.§2j§ = param1;
      }
      
      public function get §`!Q§() : uint
      {
         return this.§2j§;
      }
      
      public function get §=!W§() : Boolean
      {
         return this.§0!6§;
      }
      
      public function set §=!W§(param1:Boolean) : void
      {
         this.§0!6§ = param1;
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
         return this.§73§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§73§ = param1;
      }
      
      public function § !J§(param1:b2FilterData) : void
      {
         if(this.§2I§)
         {
            this.§2I§.§0S§(param1);
         }
      }
      
      protected function §"!J§(param1:String) : int
      {
         return §1!e§.§"!J§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§-!#§.§#!N§();
         _loc3_.§import§ = true;
         _loc3_.§,O§ = true;
         _loc3_.§!,§ = true;
         _loc3_.§!!J§ = 1;
         _loc3_.§,$§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§2R§(this.§5b§());
            this.mWorld = null;
         }
         this.§?!M§.dispose();
         if(this.§8X§)
         {
            this.§8X§.dispose();
            this.§8X§ = null;
         }
         this.§2I§ = null;
         this.§^E§ = null;
         this.§-!#§ = null;
      }
      
      public function §[!b§(param1:Number) : void
      {
         this.§5b§().§,v§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §2a§() : Number
      {
         return (360 - this.§5b§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §&!-§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§5b§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§>!>§();
         }
         if(param3)
         {
            this.§6&§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§2I§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§5b§().GetPosition().x >= param3 && this.§5b§().GetPosition().x <= param4 && this.§5b§().GetPosition().y >= param1 && this.§5b§().GetPosition().y <= param2;
      }
      
      public function §"q§(param1:b2Vec2) : void
      {
         this.§^E§ = param1;
      }
      
      public function §<!&§() : void
      {
         if(this.§^E§)
         {
            this.§&!-§(this.§^E§,false);
            this.§^E§ = null;
         }
      }
      
      public function §>!>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§5b§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§5b§().§@X§(0);
         }
         else
         {
            this.§5b§().§@X§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §6&§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§5b§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§[!b§(_loc2_);
      }
      
      public function §@a§(param1:Number) : void
      {
         this.§5b§().§@X§(param1);
      }
      
      public function §5b§() : b2Body
      {
         if(this.§2I§ != null)
         {
            return this.§2I§.GetBody();
         }
         return null;
      }
      
      public function §5!k§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§,G§ = param1;
            this.§78§ = param2;
         }
         this.§5b§().GetPosition().x = this.§,G§ * §^g§.§^!S§;
         this.§5b§().GetPosition().y = this.§78§ * §^g§.§^!S§;
      }
      
      public function §!!7§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§&=§)
         {
            _loc3_ = true;
            this.§&=§ = false;
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
            this.§?!M§.§true §();
         }
         if(this.§]!G§ > 1 && this.§?!M§.§3!m§)
         {
            _loc4_ = 4 + (this.§?!M§.§3!m§.blurX - 4 + param2 / 20) % 28;
            this.§?!M§.§3!m§.blurX = _loc4_;
            this.§?!M§.§3!m§.blurY = _loc4_;
         }
         this.§?!M§.§+!B§(param2);
         if(§5!q§)
         {
            this.§]'§(param1);
         }
         else
         {
            this.§-!n§ = this.§%U§;
            this.§,G§ = this.§[G§;
            this.§78§ = this.§]<§;
         }
         this.§8X§.x = Math.round(this.§,G§);
         this.§8X§.y = Math.round(this.§78§);
         this.§8X§.rotation = this.§-!n§ / 180 * Math.PI;
      }
      
      public function §"k§() : void
      {
         var _loc1_:Number = this.§5b§().GetPosition().x;
         var _loc2_:Number = this.§5b§().GetPosition().y;
         this.§9f§ = this.§%U§;
         this.§0!e§ = this.§[G§;
         this.§=F§ = this.§]<§;
         this.§%U§ = this.§5b§().GetAngle() * (180 / Math.PI) % 360;
         this.§[G§ = _loc1_ / §^g§.§^!S§;
         this.§]<§ = _loc2_ / §^g§.§^!S§;
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
      
      public function §]'§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §!>§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§'Q§.§?l§.mLevelEngine.§>w§ * 1000;
         }
         param1 *= -1;
         if(this.§[G§ == this.§0!e§ || param1 == 0)
         {
            this.§7^§ = 0;
            this.§,G§ = this.§[G§;
         }
         else
         {
            this.§7^§ = param1 * (this.§0!e§ - this.§[G§) / param2;
            this.§,G§ = this.§[G§ + this.§7^§;
         }
         if(this.§]<§ == this.§=F§ || param1 == 0)
         {
            this.§4!w§ = 0;
            this.§78§ = this.§]<§;
         }
         else
         {
            this.§4!w§ = param1 * (this.§=F§ - this.§]<§) / param2;
            this.§78§ = this.§]<§ + this.§4!w§;
         }
         if(this.§%U§ == this.§9f§ || param1 == 0)
         {
            this.§-!n§ = this.§%U§;
         }
         else if(this.§9f§ > this.§%U§ && this.§9f§ - this.§%U§ <= 180)
         {
            this.§-!n§ = this.§%U§ + param1 * (this.§9f§ - this.§%U§) / param2;
         }
         else if(this.§9f§ > this.§%U§ && this.§9f§ - this.§%U§ > 180)
         {
            this.§-!n§ = this.§%U§ + param1 * (this.§9f§ - 360 - this.§%U§) / param2;
         }
         else if(this.§9f§ < this.§%U§ && this.§%U§ - this.§9f§ <= 180)
         {
            this.§-!n§ = this.§%U§ + param1 * (this.§9f§ - this.§%U§) / param2;
         }
         else if(this.§9f§ < this.§%U§ && this.§%U§ - this.§9f§ > 180)
         {
            this.§-!n§ = this.§%U§ + param1 * (this.§9f§ + 360 - this.§%U§) / param2;
         }
      }
      
      public function get §6!E§() : Point
      {
         if(!§5!q§)
         {
         }
         return null;
      }
      
      public function § !"§() : Boolean
      {
         return this.§6K§ == §9B§.§]!=§ || this.§6K§ == §9B§.§;!r§;
      }
      
      public function §<+§() : Boolean
      {
         return this.§6K§ == §9B§.§#!s§;
      }
      
      public function §-!R§() : Boolean
      {
         return this.§6K§ == §9B§.§+!]§;
      }
      
      public function §+!O§() : Boolean
      {
         return this.§6K§ == §9B§.§;!r§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§6K§ == §9B§.§<I§;
      }
      
      public function isGround() : Boolean
      {
         return this.§6K§ == §9B§.§%!>§;
      }
      
      public function §=]§() : Boolean
      {
         return this.§6K§ == §9B§.§=!%§;
      }
      
      public function §'!U§() : Boolean
      {
         return this.§6K§ == §9B§.§4x§;
      }
      
      public function §&!&§() : Boolean
      {
         if(this.§<!]§ == "MISC_EXPLOSIVE_TNT" || this.§<!]§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §,!R§() : Boolean
      {
         return (this.§<+§() || this.§=]§() || this.§'!U§()) && !this.§=!W§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §+!P§() : Number
      {
         return Number(Math.sqrt(this.§5b§().GetLinearVelocity().x * this.§5b§().GetLinearVelocity().x + this.§5b§().GetLinearVelocity().y * this.§5b§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§-!R§())
         {
            return this.§%!R§;
         }
         if(!this.§'Q§.§3m§())
         {
            return this.§%!R§;
         }
         if(this.§4E§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@j§(§<!R§.§1!p§);
            }
            else if(param1 > 12)
            {
               this.§@j§(§<!R§.§5F§);
            }
            else if(param1 > 3)
            {
               this.§@j§(§<!R§.§!!c§);
            }
            return this.§%!R§;
         }
         if(param1 <= this.§4E§)
         {
            if(param1 >= this.§4E§ / 2)
            {
               this.§@j§(§<!R§.§!!c§);
            }
            if(this.§ !"§() && this.§%!R§ == this.§-!!§)
            {
               this.§%!R§ = this.§-!!§ - 1;
            }
            return this.§%!R§;
         }
         param1 -= this.§4E§;
         if(param2 && this.§,!R§())
         {
            _loc7_ = Math.min(this.§%!R§,int(param1));
            _loc8_ = §^g§.§>p§.getValue() * _loc7_;
            this.§'Q§.§?l§.addScore(_loc8_,§;v§.§+?§,this.§%!R§ > param1 && param3,this.§5b§().GetPosition().x,this.§5b§().GetPosition().y,§1!e§.§?L§(this.§<!]§));
         }
         if(!(param5 && this.§2#§))
         {
            this.§%!R§ -= param1;
         }
         if(this.§%!R§ < 1 && this.§ !"§())
         {
            this.§%!R§ = 1;
         }
         if(this.§%!R§ < 1)
         {
            this.§%!R§ = 0;
            §`!<§.§6!$§(§<!R§.§1!p§,this.§-!#§.§!9§,"ChannelDestroyed");
         }
         else
         {
            this.§@j§(§<!R§.§5F§);
            this.addDamageParticles(this.§'Q§.§?l§.particles,param1);
         }
         this.§?!M§.setDamagedFrame();
         return this.§%!R§;
      }
      
      public function §@j§(param1:int) : void
      {
         §`!<§.§6!$§(param1,this.§-!#§.§!9§);
      }
      
      public function §;!`§(param1:String) : Number
      {
         return this.§-!#§.material.§!^§(param1) * this.§]!G§;
      }
      
      public function §"!5§(param1:String) : Number
      {
         return this.§-!#§.material.§`!!§(param1);
      }
      
      public function §'!Q§() : String
      {
         return this.§-!#§.material.mName;
      }
      
      public function §<C§() : Number
      {
         return this.§-!#§.§]8§();
      }
      
      public function §;h§() : int
      {
         return this.§-!#§.§[!q§();
      }
      
      public function §8U§() : Boolean
      {
         return this.§5b§().IsAwake() && (this.§ !"§() && this.§%!R§ == this.§-!!§ || Math.abs(this.§5b§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§5b§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§5b§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §9!i§() : Boolean
      {
         if(!this.§5b§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§60§();
         if(Math.abs(this.§'!4§(this.§6$§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§'!4§(this.§6$§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§'!4§(this.§6$§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §'!4§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ += param1[_loc3_];
            _loc3_++;
         }
         return _loc2_ / param1.length;
      }
      
      private function §60§() : void
      {
         this.§6$§[0].push(this.§5b§().GetLinearVelocity().x);
         this.§6$§[1].push(this.§5b§().GetLinearVelocity().y);
         this.§6$§[2].push(this.§5b§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§6$§[_loc1_].length > this.§2j§)
            {
               this.§6$§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §+!4§(param1:Number = 3) : void
      {
         this.§]!G§ = param1;
         if(this.§]!G§ > 1)
         {
            this.§?!M§.§?1§();
         }
         else
         {
            this.§?!M§.§3!m§ = null;
         }
      }
      
      public function §#!g§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§-!#§.§#!N§() == §0"§.§5P§)
         {
            _loc2_ = this.§?!M§.mW * this.§?!M§.mH * (§^g§.§^!S§ * §^g§.§^!S§);
         }
         else
         {
            _loc2_ = this.§5b§().GetMass() / this.§2I§.§>z§();
            if(param1)
            {
               _loc2_ *= this.§<!p§();
            }
            _loc2_ /= this.§'8§ * this.§'8§;
         }
         return _loc2_;
      }
      
      public function §<!p§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§?!M§.§;!0§ - 1) / 10);
      }
      
      public function § !d§(param1:Number) : void
      {
         var _loc2_:Number = this.§5b§().GetLinearVelocity().x;
         var _loc3_:Number = this.§5b§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§5b§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§=[§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§+F§) : void
      {
      }
      
      public function addDamageParticles(param1:§+F§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §7@§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§5b§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§5b§().§`!'§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§2a§()) + 360) % 360;
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
            this.§[!b§(_loc4_);
         }
         var _loc3_:Number = this.§2a§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§[!b§(_loc3_);
      }
      
      public function §&!a§(param1:Number) : void
      {
         var _loc2_:Number = §%z§(this.§5b§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §2!n§(_loc2_);
         this.§5b§().§,v§(_loc2_);
      }
      
      public function §6!1§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§5b§().GetPosition().Copy();
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
         this.§5b§().§`!'§(_loc13_);
      }
   }
}
