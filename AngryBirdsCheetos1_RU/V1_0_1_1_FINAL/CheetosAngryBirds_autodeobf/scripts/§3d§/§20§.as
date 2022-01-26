package §3d§
{
   import § N§.§]M§;
   import §!$§.§!!O§;
   import §&C§.§![§;
   import §&C§.§3!!§;
   import §&C§.§7!1§;
   import §&C§.§[b§;
   import §&C§.§`=§;
   import §0V§.§;9§;
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §4! §.b2Settings;
   import §9t§.b2Body;
   import §9t§.b2BodyDef;
   import §9t§.b2FilterData;
   import §9t§.b2Fixture;
   import §9t§.b2World;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §[!E§.b2PolygonShape;
   import §^q§.b2Vec2;
   import flash.geom.Point;
   
   public class §20§
   {
      
      public static const §&!P§:uint = 1 << 1;
      
      public static const §1!$§:uint = 1 << 2;
      
      public static const §6!B§:uint = 1 << 3;
      
      public static const §8p§:uint = 1 << 4;
      
      public static const §]j§:Boolean = true;
      
      public static const §"<§:Number = 5;
      
      public static const §1d§:Number = 10;
       
      
      private var §-!F§:String;
      
      private var §&o§:int;
      
      private var §4!1§:int;
      
      public var §6O§:String;
      
      public var §,$§:int;
      
      protected var §>!C§:§3!!§;
      
      private var §"!P§:§@?§;
      
      private var mWorld:b2World;
      
      protected var §6j§:String = "";
      
      protected var §6!,§:int = 1;
      
      private var §+!6§:b2Fixture;
      
      private var §?f§:b2Body;
      
      private var §#"§:b2Vec2;
      
      public var §2>§:Number;
      
      public var §,!,§:Number;
      
      private var §-s§:Number;
      
      private var §76§:Boolean = false;
      
      private var §=A§:Number;
      
      private var §,y§:Number;
      
      private var §,!>§:Number;
      
      private var §3!C§:Number;
      
      private var §&!Z§:Number;
      
      private var §!f§:Number;
      
      public var §+!R§:Number = 1;
      
      private var §#u§:Boolean = false;
      
      public var §",§:Number = 0;
      
      public var §!!P§:Number = 0;
      
      protected var §!>§:Boolean = false;
      
      public var §5!@§:§,Q§;
      
      private var §;!5§:Sprite;
      
      private var § W§:Number = 0;
      
      private var §9!9§:Number = 0;
      
      private var §],§:Number = 0;
      
      private var §3&§:Number = 1.0;
      
      private var §'!;§:Boolean = false;
      
      protected var §9h§:§0!I§;
      
      private var §[v§:Boolean = true;
      
      public function §20§(param1:§@?§, param2:Sprite, param3:b2World, param4:§`!O§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§6O§ = param6;
         this.§>!C§ = §[b§.§9R§(param6);
         this.§"!P§ = param1;
         this.§;!5§ = param2;
         this.§3&§ = param10;
         this.§'!;§ = param11;
         this.§&o§ = param5;
         this.§,$§ = this.§>!C§.§,$§;
         this.§4!1§ = this.§>!C§.§2!c§();
         this.§9h§ = new §0!I§(§"<§,§1d§);
         this.§5!@§ = new §,Q§(this,param2,param4);
         if(!this.§5!@§.§3!O§(param1.§!q§.§2!N§))
         {
            this.§5!@§.§@!7§(this.§4!1§,this.§>!C§.§9;§(),this.§>!C§.§"%§() / §`!O§.§?!O§,this.§>!C§.§8!7§() / §`!O§.§?!O§);
         }
         this.§5!@§.§=C§(this.§4!1§ == §![§.§"M§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§?f§ = this.mWorld.§&X§(_loc12_);
         this.§?f§.§]4§(this);
         if(this.§4!1§ == §![§.§[!W§)
         {
            _loc14_ = b2PolygonShape.§00§(this.§>!C§.shape.§=!T§ * param10,this.§>!C§.shape.§&n§ * param10);
            this.§+!6§ = this.§?f§.CreateFixture2(_loc14_,this.§>!C§.§>Y§());
         }
         else if(this.§4!1§ == §![§.§"M§ || this.§4!1§ == §![§.§<!6§)
         {
            this.§+!6§ = this.§?f§.CreateFixture2(this.§>!C§.shape.§1R§(param10),this.§>!C§.§>Y§());
         }
         this.§+!6§.§-7§(this.§>!C§.§95§());
         this.§+!6§.§5!"§(this.§>!C§.§3G§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§#P§())
         {
            _loc13_.§6X§ = §&!P§;
            _loc13_.§'w§ = 65535 & ~§1!$§;
         }
         else if(this.§6O§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§6O§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§6X§ = §1!$§;
            _loc13_.§'w§ = 65535 & ~§&!P§;
         }
         this.§+!6§.§6m§(_loc13_);
         this.§-s§ = this.§>!C§.§1c§();
         if(this.§>!C§.§,!,§ > 0)
         {
            this.§2>§ = this.§,!,§ = this.§>!C§.§,!,§;
         }
         else
         {
            this.§2>§ = this.§,!,§ = Math.round(this.§6p§(true) * this.§>!C§.§1!H§());
            if(this.§2>§ < 1)
            {
               this.§2>§ = this.§,!,§ = 1;
            }
         }
         if(this.§>!C§.§,$§ == §3!!§.§0!Y§)
         {
            this.§;!5§.visible = false;
         }
         else
         {
            this.§5!@§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§=!%§(param9);
         }
         this.§0z§();
         this.§?w§(0,1);
         this.§5!@§.§-k§(this.§>!C§.shape);
      }
      
      public static function §8F§(param1:int, param2:§7!1§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§+m§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§@U§;
            }
            §!!O§.§^3§(_loc4_,param3);
         }
      }
      
      public static function §&L§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §6b§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!5§;
      }
      
      public function get x() : Number
      {
         return this.§ W§;
      }
      
      public function get y() : Number
      {
         return this.§9!9§;
      }
      
      public function get scale() : Number
      {
         return this.§3&§;
      }
      
      public function get front() : Boolean
      {
         return this.§'!;§;
      }
      
      public function get §"v§() : Number
      {
         return this.§?f§.GetPosition().x;
      }
      
      public function get §8!C§() : Number
      {
         return this.§?f§.GetPosition().y;
      }
      
      public function get §+k§() : §3!!§
      {
         return this.§>!C§;
      }
      
      public function get §"d§() : Boolean
      {
         return this.§-s§ >= 0;
      }
      
      public function get container() : §@?§
      {
         return this.§"!P§;
      }
      
      public function get §@S§() : Boolean
      {
         return this.§[v§;
      }
      
      public function set §@S§(param1:Boolean) : void
      {
         this.§[v§ = param1;
      }
      
      public function set § ;§(param1:Boolean) : void
      {
         this.§76§ = param1;
      }
      
      public function set §7o§(param1:uint) : void
      {
         this.§9h§.§7o§ = param1;
      }
      
      public function get §7o§() : uint
      {
         return this.§9h§.§7o§;
      }
      
      public function get §]!<§() : Boolean
      {
         return this.§#u§;
      }
      
      public function set §]!<§(param1:Boolean) : void
      {
         this.§#u§ = param1;
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
         return this.§-!F§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§-!F§ = param1;
      }
      
      public function §"c§(param1:b2FilterData) : void
      {
         if(this.§+!6§)
         {
            this.§+!6§.§6m§(param1);
         }
      }
      
      protected function §8k§(param1:String) : int
      {
         return §7!%§.§8k§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§>!C§.§01§();
         _loc3_.§8!1§ = true;
         _loc3_.§ ^§ = true;
         _loc3_.§ !4§ = true;
         _loc3_.§&!O§ = 1;
         _loc3_.§7!8§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§@r§(this.§=!,§());
            this.mWorld = null;
         }
         this.§5!@§.dispose();
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
            this.§;!5§ = null;
         }
         this.§+!6§ = null;
         this.§#"§ = null;
         this.§>!C§ = null;
      }
      
      public function §=!%§(param1:Number) : void
      {
         this.§=!,§().§"N§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §%"§() : Number
      {
         return (360 - this.§=!,§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §,D§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§=!,§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§^[§();
         }
         if(param3)
         {
            this.§-!A§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§+!6§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§=!,§().GetPosition().x >= param3 && this.§=!,§().GetPosition().x <= param4 && this.§=!,§().GetPosition().y >= param1 && this.§=!,§().GetPosition().y <= param2;
      }
      
      public function §#!$§(param1:b2Vec2) : void
      {
         this.§#"§ = param1;
      }
      
      public function §&,§() : void
      {
         if(this.§#"§)
         {
            this.§,D§(this.§#"§,false);
            this.§#"§ = null;
         }
      }
      
      public function §^[§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§=!,§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§=!,§().§`0§(0);
         }
         else
         {
            this.§=!,§().§`0§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §-!A§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§=!,§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§=!%§(_loc2_);
      }
      
      public function §?5§(param1:Number) : void
      {
         this.§=!,§().§`0§(param1);
      }
      
      public function §=!,§() : b2Body
      {
         if(this.§+!6§ != null)
         {
            return this.§+!6§.GetBody();
         }
         return null;
      }
      
      public function §7y§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§ W§ = param1;
            this.§9!9§ = param2;
         }
         this.§=!,§().GetPosition().x = this.§ W§ * §`!O§.§?!O§;
         this.§=!,§().GetPosition().y = this.§9!9§ * §`!O§.§?!O§;
      }
      
      public function §?w§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§!>§)
         {
            _loc3_ = true;
            this.§!>§ = false;
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
            this.§5!@§.§?E§();
         }
         if(this.§+!R§ > 1 && this.§5!@§.§;!`§)
         {
            _loc4_ = 4 + (this.§5!@§.§;!`§.blurX - 4 + param2 / 20) % 28;
            this.§5!@§.§;!`§.blurX = _loc4_;
            this.§5!@§.§;!`§.blurY = _loc4_;
         }
         this.§5!@§.§6l§(param2);
         if(§]j§)
         {
            this.§`!,§(param1);
         }
         else
         {
            this.§],§ = this.§,!>§;
            this.§ W§ = this.§=A§;
            this.§9!9§ = this.§,y§;
         }
         this.§;!5§.x = Math.round(this.§ W§);
         this.§;!5§.y = Math.round(this.§9!9§);
         this.§;!5§.rotation = this.§],§ / 180 * Math.PI;
      }
      
      public function §0z§() : void
      {
         var _loc1_:Number = this.§=!,§().GetPosition().x;
         var _loc2_:Number = this.§=!,§().GetPosition().y;
         this.§!f§ = this.§,!>§;
         this.§3!C§ = this.§=A§;
         this.§&!Z§ = this.§,y§;
         this.§,!>§ = this.§=!,§().GetAngle() * (180 / Math.PI) % 360;
         this.§=A§ = _loc1_ / §`!O§.§?!O§;
         this.§,y§ = _loc2_ / §`!O§.§?!O§;
         this.§9h§.§ v§();
         this.§9h§.§<S§(this.§=!,§());
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
      
      public function §`!,§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §]M§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§"!P§.§!q§.mLevelEngine.§>!R§ * 1000;
         }
         param1 *= -1;
         if(this.§=A§ == this.§3!C§ || param1 == 0)
         {
            this.§",§ = 0;
            this.§ W§ = this.§=A§;
         }
         else
         {
            this.§",§ = param1 * (this.§3!C§ - this.§=A§) / param2;
            this.§ W§ = this.§=A§ + this.§",§;
         }
         if(this.§,y§ == this.§&!Z§ || param1 == 0)
         {
            this.§!!P§ = 0;
            this.§9!9§ = this.§,y§;
         }
         else
         {
            this.§!!P§ = param1 * (this.§&!Z§ - this.§,y§) / param2;
            this.§9!9§ = this.§,y§ + this.§!!P§;
         }
         if(this.§,!>§ == this.§!f§ || param1 == 0)
         {
            this.§],§ = this.§,!>§;
         }
         else if(this.§!f§ > this.§,!>§ && this.§!f§ - this.§,!>§ <= 180)
         {
            this.§],§ = this.§,!>§ + param1 * (this.§!f§ - this.§,!>§) / param2;
         }
         else if(this.§!f§ > this.§,!>§ && this.§!f§ - this.§,!>§ > 180)
         {
            this.§],§ = this.§,!>§ + param1 * (this.§!f§ - 360 - this.§,!>§) / param2;
         }
         else if(this.§!f§ < this.§,!>§ && this.§,!>§ - this.§!f§ <= 180)
         {
            this.§],§ = this.§,!>§ + param1 * (this.§!f§ - this.§,!>§) / param2;
         }
         else if(this.§!f§ < this.§,!>§ && this.§,!>§ - this.§!f§ > 180)
         {
            this.§],§ = this.§,!>§ + param1 * (this.§!f§ + 360 - this.§,!>§) / param2;
         }
      }
      
      public function get §9!8§() : Point
      {
         if(!§]j§)
         {
         }
         return null;
      }
      
      public function §#P§() : Boolean
      {
         return this.§,$§ == §3!!§.§<z§ || this.§,$§ == §3!!§.§@!5§;
      }
      
      public function §8! §() : Boolean
      {
         return this.§,$§ == §3!!§.§^!4§;
      }
      
      public function §@^§() : Boolean
      {
         return this.§,$§ == §3!!§.§>!G§;
      }
      
      public function §[!7§() : Boolean
      {
         return this.§,$§ == §3!!§.§@!5§;
      }
      
      public function § !L§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§,$§ == §3!!§.§<C§;
      }
      
      public function isGround() : Boolean
      {
         return this.§,$§ == §3!!§.§0!Y§;
      }
      
      public function §"!7§() : Boolean
      {
         return this.§,$§ == §3!!§.§'2§;
      }
      
      public function §0!;§() : Boolean
      {
         return this.§,$§ == §3!!§.§,M§;
      }
      
      public function §=4§() : Boolean
      {
         if(this.§6O§ == "MISC_EXPLOSIVE_TNT" || this.§6O§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §[!,§() : Boolean
      {
         return (this.§8! §() || this.§"!7§() || this.§0!;§()) && !this.§]!<§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §#;§() : Number
      {
         return Number(Math.sqrt(this.§=!,§().GetLinearVelocity().x * this.§=!,§().GetLinearVelocity().x + this.§=!,§().GetLinearVelocity().y * this.§=!,§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§@^§())
         {
            return this.§2>§;
         }
         if(!this.§"!P§.§<N§())
         {
            return this.§2>§;
         }
         if(this.§-s§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§96§(§7!1§.§=S§);
            }
            else if(param1 > 12)
            {
               this.§96§(§7!1§.§2!3§);
            }
            else if(param1 > 3)
            {
               this.§96§(§7!1§.§?I§);
            }
            return this.§2>§;
         }
         if(param1 <= this.§-s§)
         {
            if(param1 >= this.§-s§ / 2)
            {
               this.§96§(§7!1§.§?I§);
            }
            if(this.§#P§() && this.§2>§ == this.§,!,§)
            {
               this.§2>§ = this.§,!,§ - 1;
            }
            return this.§2>§;
         }
         param1 -= this.§-s§;
         if(param2 && this.§[!,§())
         {
            _loc7_ = Math.min(this.§2>§,int(param1));
            _loc8_ = §`!O§.§50§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §`!O§.§0!_§;
            }
            this.§"!P§.§!q§.addScore(_loc8_,§;9§.§";§,this.§2>§ > param1 && param3,this.§=!,§().GetPosition().x,this.§=!,§().GetPosition().y,§7!%§.§4B§(this.§6O§));
         }
         if(!(param5 && this.§76§))
         {
            this.§2>§ -= param1;
         }
         if(this.§2>§ < 1 && this.§#P§())
         {
            this.§2>§ = 1;
         }
         if(this.§2>§ < 1)
         {
            this.§2>§ = 0;
            §20§.§8F§(§7!1§.§=S§,this.§>!C§.§0y§,"ChannelDestroyed");
         }
         else
         {
            this.§96§(§7!1§.§2!3§);
            this.addDamageParticles(this.§"!P§.§!q§.particles,param1);
         }
         this.§5!@§.setDamagedFrame();
         return this.§2>§;
      }
      
      public function §96§(param1:int) : void
      {
         §20§.§8F§(param1,this.§>!C§.§0y§);
      }
      
      public function §-M§(param1:String) : Number
      {
         return this.§>!C§.material.§5! §(param1) * this.§+!R§;
      }
      
      public function §%!=§(param1:String) : Number
      {
         return this.§>!C§.material.§`!;§(param1);
      }
      
      public function §&!@§() : String
      {
         return this.§>!C§.material.mName;
      }
      
      public function §-!Q§() : Number
      {
         return this.§>!C§.§1!H§();
      }
      
      public function §7+§() : int
      {
         return this.§>!C§.§&I§();
      }
      
      public function §+!0§() : Boolean
      {
         return this.§=!,§().IsAwake() && (this.§#P§() && this.§2>§ == this.§,!,§ || Math.abs(this.§=!,§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§=!,§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§=!,§().§]@§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §9!<§() : Boolean
      {
         if(!this.§=!,§().IsAwake())
         {
            return true;
         }
         return !this.§[[§();
      }
      
      protected function §[[§() : Boolean
      {
         return this.§9h§.§[[§();
      }
      
      public function §-K§(param1:Number = 3) : void
      {
         this.§+!R§ = param1;
         if(this.§+!R§ > 1)
         {
            this.§5!@§.§8!9§();
         }
         else
         {
            this.§5!@§.§;!`§ = null;
         }
      }
      
      public function §6p§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§>!C§.§01§() == §`=§.§`!&§)
         {
            _loc2_ = this.§5!@§.mW * this.§5!@§.mH * (§`!O§.§?!O§ * §`!O§.§?!O§);
         }
         else
         {
            _loc2_ = this.§=!,§().GetMass() / this.§+!6§.§"![§();
            if(param1)
            {
               _loc2_ *= this.§-f§();
            }
            _loc2_ /= this.§3&§ * this.§3&§;
         }
         return _loc2_;
      }
      
      public function §-f§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§5!@§.§>W§ - 1) / 10);
      }
      
      public function §@!^§(param1:Number) : void
      {
         var _loc2_:Number = this.§=!,§().GetLinearVelocity().x;
         var _loc3_:Number = this.§=!,§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§=!,§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§@?§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§"^§) : void
      {
      }
      
      public function addDamageParticles(param1:§"^§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §5,§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§=!,§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§=!,§().§#!>§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§%"§()) + 360) % 360;
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
            this.§=!%§(_loc4_);
         }
         var _loc3_:Number = this.§%"§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§=!%§(_loc3_);
      }
      
      public function §1!-§(param1:Number) : void
      {
         var _loc2_:Number = §&L§(this.§=!,§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §6b§(_loc2_);
         this.§=!,§().§"N§(_loc2_);
      }
      
      public function §>y§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§=!,§().GetPosition().Copy();
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
         this.§=!,§().§#!>§(_loc13_);
      }
   }
}
