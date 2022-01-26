package §9!T§
{
   import §+D§.§5!P§;
   import §+D§.§6+§;
   import §,!3§.b2Vec2;
   import §1!K§.§>!<§;
   import §2!Q§.§'[§;
   import §3'§.b2Settings;
   import §8!I§.§,6§;
   import §8!I§.§0!^§;
   import §8!I§.§1!_§;
   import §8!I§.§4A§;
   import §8!I§.§=]§;
   import §=u§.b2PolygonShape;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §?!F§.b2Body;
   import §?!F§.b2BodyDef;
   import §?!F§.b2FilterData;
   import §?!F§.b2Fixture;
   import §?!F§.b2World;
   import §[=§.Sprite;
   import flash.geom.Point;
   
   public class §;!"§
   {
      
      public static const §8B§:uint = 1 << 1;
      
      public static const §1!c§:uint = 1 << 2;
      
      public static const §"!+§:uint = 1 << 3;
      
      public static const §`K§:uint = 1 << 4;
      
      public static const §;v§:Boolean = true;
       
      
      private var §>!'§:String;
      
      private var §#[§:int;
      
      private var §-y§:int;
      
      public var §%!1§:String;
      
      public var §9?§:int;
      
      private var §+!&§:§,6§;
      
      private var §,E§:§;!_§;
      
      private var mWorld:b2World;
      
      protected var §=W§:String = "";
      
      protected var §?!G§:int = 1;
      
      private var §1!S§:b2Fixture;
      
      private var §26§:b2Body;
      
      private var §%_§:b2Vec2;
      
      public var §1K§:Number;
      
      public var §0!a§:Number;
      
      private var §';§:Number;
      
      private var §-!6§:Boolean = false;
      
      private var §;!,§:Number;
      
      private var §2!2§:Number;
      
      private var §#!_§:Number;
      
      private var §&+§:Number;
      
      private var §-n§:Number;
      
      private var §,I§:Number;
      
      public var §9j§:Number = 1;
      
      private var §4+§:Boolean = false;
      
      public var §[b§:Number = 0;
      
      public var §%^§:Number = 0;
      
      protected var §0!D§:Boolean = false;
      
      public var §1I§:§@1§;
      
      private var §%@§:Sprite;
      
      private var §<O§:Number = 0;
      
      private var §92§:Number = 0;
      
      private var §>1§:Number = 0;
      
      private var §!!4§:Number = 1.0;
      
      private var §"!b§:Boolean = false;
      
      private var §`!R§:Vector.<Vector.<Number>>;
      
      private var §`e§:int = 10;
      
      private var §["§:Boolean = true;
      
      public function §;!"§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§`!R§ = new Vector.<Vector.<Number>>();
         super();
         this.§%!1§ = param6;
         this.§+!&§ = §=]§.§^]§(param6);
         this.§,E§ = param1;
         this.§%@§ = param2;
         this.§!!4§ = param10;
         this.§"!b§ = param11;
         this.§#[§ = param5;
         this.§9?§ = this.§+!&§.§9?§;
         this.§-y§ = this.§+!&§.§;!>§();
         this.§`!R§[0] = new Vector.<Number>();
         this.§`!R§[1] = new Vector.<Number>();
         this.§`!R§[2] = new Vector.<Number>();
         this.§1I§ = new §@1§(this,param2,param4);
         if(!this.§1I§.§<3§(param1.§^!4§.§]!%§))
         {
            this.§1I§.§8!A§(this.§-y§,this.§+!&§.§2C§(),this.§+!&§.§>^§() / §5!P§.§>M§,this.§+!&§.§"x§() / §5!P§.§>M§);
         }
         this.§1I§.§^!Y§(this.§-y§ == §0!^§.§>!,§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§26§ = this.mWorld.§7!c§(_loc12_);
         this.§26§.§0%§(this);
         if(this.§-y§ == §0!^§.§-b§)
         {
            _loc14_ = b2PolygonShape.§@!'§(this.§+!&§.shape.§,d§ * param10,this.§+!&§.shape.§"q§ * param10);
            this.§1!S§ = this.§26§.CreateFixture2(_loc14_,this.§+!&§.§8M§());
         }
         else if(this.§-y§ == §0!^§.§>!,§ || this.§-y§ == §0!^§.§-!J§)
         {
            this.§1!S§ = this.§26§.CreateFixture2(this.§+!&§.shape.§5K§(param10),this.§+!&§.§8M§());
         }
         this.§1!S§.§>!=§(this.§+!&§.§+!!§());
         this.§1!S§.§6!A§(this.§+!&§.§%!`§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§7D§())
         {
            _loc13_.§%R§ = §8B§;
            _loc13_.§,!§ = 65535 & ~§1!c§;
         }
         else if(this.§%!1§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§%!1§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§%R§ = §1!c§;
            _loc13_.§,!§ = 65535 & ~§8B§;
         }
         this.§1!S§.§get §(_loc13_);
         this.§';§ = this.§+!&§.§,s§();
         if(this.§+!&§.§0!a§ > 0)
         {
            this.§1K§ = this.§0!a§ = this.§+!&§.§0!a§;
         }
         else
         {
            this.§1K§ = this.§0!a§ = Math.round(this.§&@§(true) * this.§+!&§.§#!F§());
            if(this.§1K§ < 1)
            {
               this.§1K§ = this.§0!a§ = 1;
            }
         }
         if(this.§+!&§.§9?§ == §,6§.§+!$§)
         {
            this.§%@§.visible = false;
         }
         else
         {
            this.§1I§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§;G§(param9);
         }
         this.§8!%§();
         this.§#<§(0,1);
         this.§1I§.§9V§(this.§+!&§.shape);
      }
      
      public static function §,^§(param1:int, param2:§4A§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§,_§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§0m§;
            }
            §'[§.§ !T§(_loc4_,param3);
         }
      }
      
      public static function §+M§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §@Z§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§%@§;
      }
      
      public function get x() : Number
      {
         return this.§<O§;
      }
      
      public function get y() : Number
      {
         return this.§92§;
      }
      
      public function get scale() : Number
      {
         return this.§!!4§;
      }
      
      public function get front() : Boolean
      {
         return this.§"!b§;
      }
      
      public function get §@!S§() : Number
      {
         return this.§26§.GetPosition().x;
      }
      
      public function get §>R§() : Number
      {
         return this.§26§.GetPosition().y;
      }
      
      public function get §+R§() : §,6§
      {
         return this.§+!&§;
      }
      
      public function get §5!!§() : Boolean
      {
         return this.§';§ >= 0;
      }
      
      protected function get container() : §;!_§
      {
         return this.§,E§;
      }
      
      public function get §3t§() : Boolean
      {
         return this.§["§;
      }
      
      public function set §3t§(param1:Boolean) : void
      {
         this.§["§ = param1;
      }
      
      public function set §'A§(param1:Boolean) : void
      {
         this.§-!6§ = param1;
      }
      
      public function set §<_§(param1:uint) : void
      {
         this.§`e§ = param1;
      }
      
      public function get §<_§() : uint
      {
         return this.§`e§;
      }
      
      public function get §-!?§() : Boolean
      {
         return this.§4+§;
      }
      
      public function set §-!?§(param1:Boolean) : void
      {
         this.§4+§ = param1;
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
         return this.§>!'§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§>!'§ = param1;
      }
      
      public function §`q§(param1:b2FilterData) : void
      {
         if(this.§1!S§)
         {
            this.§1!S§.§get §(param1);
         }
      }
      
      protected function §1!2§(param1:String) : int
      {
         return §^!U§.§1!2§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§+!&§.§%!D§();
         _loc3_.§ !G§ = true;
         _loc3_.§8d§ = true;
         _loc3_.§=!1§ = true;
         _loc3_.§;!%§ = 1;
         _loc3_.§+l§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§9G§(this.§<k§());
            this.mWorld = null;
         }
         this.§1I§.dispose();
         if(this.§%@§)
         {
            this.§%@§.dispose();
            this.§%@§ = null;
         }
         this.§1!S§ = null;
         this.§%_§ = null;
         this.§+!&§ = null;
      }
      
      public function §;G§(param1:Number) : void
      {
         this.§<k§().§!r§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §0b§() : Number
      {
         return (360 - this.§<k§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §^,§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§<k§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§]!A§();
         }
         if(param3)
         {
            this.§1!>§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§1!S§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§<k§().GetPosition().x >= param3 && this.§<k§().GetPosition().x <= param4 && this.§<k§().GetPosition().y >= param1 && this.§<k§().GetPosition().y <= param2;
      }
      
      public function §!!C§(param1:b2Vec2) : void
      {
         this.§%_§ = param1;
      }
      
      public function §9!X§() : void
      {
         if(this.§%_§)
         {
            this.§^,§(this.§%_§,false);
            this.§%_§ = null;
         }
      }
      
      public function §]!A§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§<k§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§<k§().§;w§(0);
         }
         else
         {
            this.§<k§().§;w§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §1!>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§<k§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§;G§(_loc2_);
      }
      
      public function §>`§(param1:Number) : void
      {
         this.§<k§().§;w§(param1);
      }
      
      public function §<k§() : b2Body
      {
         if(this.§1!S§ != null)
         {
            return this.§1!S§.GetBody();
         }
         return null;
      }
      
      public function §5-§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§<O§ = param1;
            this.§92§ = param2;
         }
         this.§<k§().GetPosition().x = this.§<O§ * §5!P§.§>M§;
         this.§<k§().GetPosition().y = this.§92§ * §5!P§.§>M§;
      }
      
      public function §#<§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§0!D§)
         {
            _loc3_ = true;
            this.§0!D§ = false;
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
            this.§1I§.§3H§();
         }
         if(this.§9j§ > 1 && this.§1I§.§4W§)
         {
            _loc4_ = 4 + (this.§1I§.§4W§.blurX - 4 + param2 / 20) % 28;
            this.§1I§.§4W§.blurX = _loc4_;
            this.§1I§.§4W§.blurY = _loc4_;
         }
         this.§1I§.§2!S§(param2);
         if(§;v§)
         {
            this.§!p§(param1);
         }
         else
         {
            this.§>1§ = this.§#!_§;
            this.§<O§ = this.§;!,§;
            this.§92§ = this.§2!2§;
         }
         this.§%@§.x = Math.round(this.§<O§);
         this.§%@§.y = Math.round(this.§92§);
         this.§%@§.rotation = this.§>1§ / 180 * Math.PI;
      }
      
      public function §8!%§() : void
      {
         var _loc1_:Number = this.§<k§().GetPosition().x;
         var _loc2_:Number = this.§<k§().GetPosition().y;
         this.§,I§ = this.§#!_§;
         this.§&+§ = this.§;!,§;
         this.§-n§ = this.§2!2§;
         this.§#!_§ = this.§<k§().GetAngle() * (180 / Math.PI) % 360;
         this.§;!,§ = _loc1_ / §5!P§.§>M§;
         this.§2!2§ = _loc2_ / §5!P§.§>M§;
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
      
      public function §!p§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §>!<§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§,E§.§^!4§.mLevelEngine.§2!5§ * 1000;
         }
         param1 *= -1;
         if(this.§;!,§ == this.§&+§ || param1 == 0)
         {
            this.§[b§ = 0;
            this.§<O§ = this.§;!,§;
         }
         else
         {
            this.§[b§ = param1 * (this.§&+§ - this.§;!,§) / param2;
            this.§<O§ = this.§;!,§ + this.§[b§;
         }
         if(this.§2!2§ == this.§-n§ || param1 == 0)
         {
            this.§%^§ = 0;
            this.§92§ = this.§2!2§;
         }
         else
         {
            this.§%^§ = param1 * (this.§-n§ - this.§2!2§) / param2;
            this.§92§ = this.§2!2§ + this.§%^§;
         }
         if(this.§#!_§ == this.§,I§ || param1 == 0)
         {
            this.§>1§ = this.§#!_§;
         }
         else if(this.§,I§ > this.§#!_§ && this.§,I§ - this.§#!_§ <= 180)
         {
            this.§>1§ = this.§#!_§ + param1 * (this.§,I§ - this.§#!_§) / param2;
         }
         else if(this.§,I§ > this.§#!_§ && this.§,I§ - this.§#!_§ > 180)
         {
            this.§>1§ = this.§#!_§ + param1 * (this.§,I§ - 360 - this.§#!_§) / param2;
         }
         else if(this.§,I§ < this.§#!_§ && this.§#!_§ - this.§,I§ <= 180)
         {
            this.§>1§ = this.§#!_§ + param1 * (this.§,I§ - this.§#!_§) / param2;
         }
         else if(this.§,I§ < this.§#!_§ && this.§#!_§ - this.§,I§ > 180)
         {
            this.§>1§ = this.§#!_§ + param1 * (this.§,I§ + 360 - this.§#!_§) / param2;
         }
      }
      
      public function get §6j§() : Point
      {
         if(!§;v§)
         {
         }
         return null;
      }
      
      public function §7D§() : Boolean
      {
         return this.§9?§ == §,6§.§0=§ || this.§9?§ == §,6§.§5!M§;
      }
      
      public function §8! §() : Boolean
      {
         return this.§9?§ == §,6§.§4v§;
      }
      
      public function §9!C§() : Boolean
      {
         return this.§9?§ == §,6§.§!$§;
      }
      
      public function § !S§() : Boolean
      {
         return this.§9?§ == §,6§.§5!M§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§9?§ == §,6§.§-B§;
      }
      
      public function isGround() : Boolean
      {
         return this.§9?§ == §,6§.§+!$§;
      }
      
      public function §2!L§() : Boolean
      {
         return this.§9?§ == §,6§.§%G§;
      }
      
      public function §1-§() : Boolean
      {
         return this.§9?§ == §,6§.§'V§;
      }
      
      public function §+$§() : Boolean
      {
         if(this.§%!1§ == "MISC_EXPLOSIVE_TNT" || this.§%!1§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §;+§() : Boolean
      {
         return (this.§8! §() || this.§2!L§() || this.§1-§()) && !this.§-!?§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §^1§() : Number
      {
         return Number(Math.sqrt(this.§<k§().GetLinearVelocity().x * this.§<k§().GetLinearVelocity().x + this.§<k§().GetLinearVelocity().y * this.§<k§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§9!C§())
         {
            return this.§1K§;
         }
         if(!this.§,E§.§7!9§())
         {
            return this.§1K§;
         }
         if(this.§';§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§1!#§(§4A§.§^v§);
            }
            else if(param1 > 12)
            {
               this.§1!#§(§4A§.§<N§);
            }
            else if(param1 > 3)
            {
               this.§1!#§(§4A§.§+G§);
            }
            return this.§1K§;
         }
         if(param1 <= this.§';§)
         {
            if(param1 >= this.§';§ / 2)
            {
               this.§1!#§(§4A§.§+G§);
            }
            if(this.§7D§() && this.§1K§ == this.§0!a§)
            {
               this.§1K§ = this.§0!a§ - 1;
            }
            return this.§1K§;
         }
         param1 -= this.§';§;
         if(param2 && this.§;+§())
         {
            _loc7_ = Math.min(this.§1K§,int(param1));
            _loc8_ = §5!P§.§&!2§.getValue() * _loc7_;
            this.§,E§.§^!4§.addScore(_loc8_,§6+§.§`+§,this.§1K§ > param1 && param3,this.§<k§().GetPosition().x,this.§<k§().GetPosition().y,§^!U§.§^!W§(this.§%!1§));
         }
         if(!(param5 && this.§-!6§))
         {
            this.§1K§ -= param1;
         }
         if(this.§1K§ < 1 && this.§7D§())
         {
            this.§1K§ = 1;
         }
         if(this.§1K§ < 1)
         {
            this.§1K§ = 0;
            §;!"§.§,^§(§4A§.§^v§,this.§+!&§.§ !N§,"ChannelDestroyed");
         }
         else
         {
            this.§1!#§(§4A§.§<N§);
            this.addDamageParticles(this.§,E§.§^!4§.particles,param1);
         }
         this.§1I§.setDamagedFrame();
         return this.§1K§;
      }
      
      public function §1!#§(param1:int) : void
      {
         §;!"§.§,^§(param1,this.§+!&§.§ !N§);
      }
      
      public function §-2§(param1:String) : Number
      {
         return this.§+!&§.material.§use §(param1) * this.§9j§;
      }
      
      public function §`!X§(param1:String) : Number
      {
         return this.§+!&§.material.§5!N§(param1);
      }
      
      public function §`Q§() : String
      {
         return this.§+!&§.material.mName;
      }
      
      public function §`!]§() : Number
      {
         return this.§+!&§.§#!F§();
      }
      
      public function §`!J§() : int
      {
         return this.§+!&§.§]q§();
      }
      
      public function §]%§() : Boolean
      {
         return this.§<k§().IsAwake() && (this.§7D§() && this.§1K§ == this.§0!a§ || Math.abs(this.§<k§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§<k§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§<k§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §?!Q§() : Boolean
      {
         if(!this.§<k§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§>!$§();
         if(Math.abs(this.§'!_§(this.§`!R§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§'!_§(this.§`!R§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§'!_§(this.§`!R§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §'!_§(param1:Vector.<Number>) : Number
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
      
      private function §>!$§() : void
      {
         this.§`!R§[0].push(this.§<k§().GetLinearVelocity().x);
         this.§`!R§[1].push(this.§<k§().GetLinearVelocity().y);
         this.§`!R§[2].push(this.§<k§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§`!R§[_loc1_].length > this.§`e§)
            {
               this.§`!R§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §"K§(param1:Number = 3) : void
      {
         this.§9j§ = param1;
         if(this.§9j§ > 1)
         {
            this.§1I§.§<!=§();
         }
         else
         {
            this.§1I§.§4W§ = null;
         }
      }
      
      public function §&@§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§+!&§.§%!D§() == §1!_§.§%!?§)
         {
            _loc2_ = this.§1I§.mW * this.§1I§.mH * (§5!P§.§>M§ * §5!P§.§>M§);
         }
         else
         {
            _loc2_ = this.§<k§().GetMass() / this.§1!S§.§5a§();
            if(param1)
            {
               _loc2_ *= this.§"r§();
            }
            _loc2_ /= this.§!!4§ * this.§!!4§;
         }
         return _loc2_;
      }
      
      public function §"r§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§1I§.§]b§ - 1) / 10);
      }
      
      public function §6&§(param1:Number) : void
      {
         var _loc2_:Number = this.§<k§().GetLinearVelocity().x;
         var _loc3_:Number = this.§<k§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§<k§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§;!_§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§[,§) : void
      {
      }
      
      public function addDamageParticles(param1:§[,§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!!Y§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§<k§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§<k§().§<F§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§0b§()) + 360) % 360;
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
            this.§;G§(_loc4_);
         }
         var _loc3_:Number = this.§0b§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§;G§(_loc3_);
      }
      
      public function §0R§(param1:Number) : void
      {
         var _loc2_:Number = §+M§(this.§<k§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §@Z§(_loc2_);
         this.§<k§().§!r§(_loc2_);
      }
      
      public function §<H§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§<k§().GetPosition().Copy();
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
         this.§<k§().§<F§(_loc13_);
      }
   }
}
