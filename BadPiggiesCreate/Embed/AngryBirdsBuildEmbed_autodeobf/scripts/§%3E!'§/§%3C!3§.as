package §>!'§
{
   import § !r§.§`![§;
   import § !t§.b2Body;
   import § !t§.b2BodyDef;
   import § !t§.b2FilterData;
   import § !t§.b2Fixture;
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §#b§.b2PolygonShape;
   import §-!`§.Sprite;
   import §1?§.§+!§;
   import §<!<§.§ !p§;
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   import §?!6§.§"!0§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   import §?!6§.§]!@§;
   import §?!6§.§`4§;
   import §?s§.b2Settings;
   import flash.geom.Point;
   
   public class §<!3§
   {
      
      public static const §4!Q§:uint = 1 << 1;
      
      public static const §[l§:uint = 1 << 2;
      
      public static const §,!p§:uint = 1 << 3;
      
      public static const §,Q§:uint = 1 << 4;
      
      public static const §30§:Boolean = true;
       
      
      private var §<!g§:int;
      
      private var §-o§:int;
      
      public var §>p§:String;
      
      public var §&!j§:int;
      
      private var §2h§:§]!@§;
      
      private var §7f§:§'!Y§;
      
      private var §&4§:b2World;
      
      private var §4!%§:b2Fixture;
      
      private var §^[§:b2Body;
      
      private var §7!b§:b2Vec2;
      
      public var §!!>§:Number;
      
      public var §1!s§:Number;
      
      private var §3z§:Number;
      
      private var §8B§:Boolean = false;
      
      private var § t§:Number;
      
      private var §0t§:Number;
      
      private var §4v§:Number;
      
      private var §2!h§:Number;
      
      private var §;8§:Number;
      
      private var §+!^§:Number;
      
      public var §^3§:Number = 1;
      
      private var §02§:Boolean = false;
      
      public var §,!R§:Number = 0;
      
      public var §'!f§:Number = 0;
      
      protected var §[W§:Boolean = false;
      
      public var §0!E§:§6!N§;
      
      private var §>E§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §;i§:Number = 0;
      
      private var §7P§:Number = 1.0;
      
      private var §>r§:Boolean = false;
      
      private var §[v§:Boolean = true;
      
      public function §<!3§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§>p§ = param6;
         this.§2h§ = §1!!§.§#P§(param6);
         this.§7f§ = param1;
         this.§>E§ = param2;
         this.§7P§ = param10;
         this.§>r§ = param11;
         this.§<!g§ = param5;
         this.§&!j§ = this.§2h§.§&!j§;
         this.§-o§ = this.§2h§.§36§();
         this.§0!E§ = new §6!N§(this,param2,param4);
         if(!this.§0!E§.§3!F§(param1.§-n§.§@!o§))
         {
            this.§0!E§.§-!,§(this.§-o§,this.§2h§.§'!0§(),this.§2h§.§`!C§() / §7E§.§8!'§,this.§2h§.§@!H§() / §7E§.§8!'§);
         }
         this.§0!E§.§in §(this.§-o§ == §"!0§.§3I§);
         this.§&4§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§^[§ = this.§&4§.§ i§(_loc12_);
         this.§^[§.§[!X§(this);
         if(this.§-o§ == §"!0§.§'5§)
         {
            _loc14_ = b2PolygonShape.§4J§(this.§2h§.shape.§4!L§ * param10,this.§2h§.shape.§"!C§ * param10);
            this.§4!%§ = this.§^[§.CreateFixture2(_loc14_,this.§2h§.§?W§());
         }
         else if(this.§-o§ == §"!0§.§3I§ || this.§-o§ == §"!0§.§`C§)
         {
            this.§4!%§ = this.§^[§.CreateFixture2(this.§2h§.shape.§8!8§(param10),this.§2h§.§?W§());
         }
         this.§4!%§.§3R§(this.§2h§.§4!'§());
         this.§4!%§.§<p§(this.§2h§.§ U§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§;L§())
         {
            _loc13_.§]!J§ = §4!Q§;
            _loc13_.§#$§ = 65535 & ~§[l§;
         }
         else if(this.§>p§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§>p§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§]!J§ = §[l§;
            _loc13_.§#$§ = 65535 & ~§4!Q§;
         }
         this.§4!%§.§1!i§(_loc13_);
         this.§3z§ = this.§2h§.§?!l§();
         if(this.§2h§.§1!s§ > 0)
         {
            this.§!!>§ = this.§1!s§ = this.§2h§.§1!s§;
         }
         else
         {
            this.§!!>§ = this.§1!s§ = Math.round(this.§'J§(true) * this.§2h§.§2!A§());
            if(this.§!!>§ < 1)
            {
               this.§!!>§ = this.§1!s§ = 1;
            }
         }
         if(this.§2h§.§&!j§ == §]!@§.§!!3§)
         {
            this.§>E§.visible = false;
         }
         else
         {
            this.§0!E§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§?!1§(param9);
         }
         this.§=!_§();
         this.§[!o§(0,1);
         this.§0!E§.§&u§(this.§2h§.shape);
      }
      
      public static function §1a§(param1:int, param2:§@T§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§#"§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§>t§;
            }
            §+!§.§&!b§(_loc4_,param3);
         }
      }
      
      public static function §8!&§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §9!<§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
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
         return this.§7P§;
      }
      
      public function get front() : Boolean
      {
         return this.§>r§;
      }
      
      public function get §1!M§() : Number
      {
         return this.§^[§.GetPosition().x;
      }
      
      public function get §7"§() : Number
      {
         return this.§^[§.GetPosition().y;
      }
      
      public function get §9U§() : §]!@§
      {
         return this.§2h§;
      }
      
      public function get §7T§() : Boolean
      {
         return this.§3z§ >= 0;
      }
      
      protected function get container() : §'!Y§
      {
         return this.§7f§;
      }
      
      public function get §[U§() : Boolean
      {
         return this.§[v§;
      }
      
      public function set §[U§(param1:Boolean) : void
      {
         this.§[v§ = param1;
      }
      
      public function set §?!A§(param1:Boolean) : void
      {
         this.§8B§ = param1;
      }
      
      public function get §3!6§() : Boolean
      {
         return this.§02§;
      }
      
      public function set §3!6§(param1:Boolean) : void
      {
         this.§02§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §>!e§(param1:b2FilterData) : void
      {
         if(this.§4!%§)
         {
            this.§4!%§.§1!i§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§2h§.§2<§();
         _loc3_.§[_§ = true;
         _loc3_.active = true;
         _loc3_.§5@§ = true;
         _loc3_.§<!A§ = 1;
         _loc3_.§@x§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§&4§)
         {
            this.§&4§.§[!F§(this.getBody());
            this.§&4§ = null;
         }
         this.§0!E§.dispose();
         if(this.§>E§)
         {
            this.§>E§.dispose();
            this.§>E§ = null;
         }
         this.§4!%§ = null;
         this.§7!b§ = null;
         this.§2h§ = null;
      }
      
      public function §?!1§(param1:Number) : void
      {
         this.getBody().§]<§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §;x§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §`w§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§'!U§();
         }
         if(param3)
         {
            this.§9P§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§4!%§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §'!S§(param1:b2Vec2) : void
      {
         this.§7!b§ = param1;
      }
      
      public function §2!<§() : void
      {
         if(this.§7!b§)
         {
            this.§`w§(this.§7!b§,false);
            this.§7!b§ = null;
         }
      }
      
      public function §'!U§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().SetAngularVelocity(0);
         }
         else
         {
            this.getBody().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §9P§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§?!1§(_loc2_);
      }
      
      public function §>!,§(param1:Number) : void
      {
         this.getBody().SetAngularVelocity(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§4!%§ != null)
         {
            return this.§4!%§.GetBody();
         }
         return null;
      }
      
      public function §'=§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §7E§.§8!'§;
         this.getBody().GetPosition().y = this.mY * §7E§.§8!'§;
      }
      
      public function §[!o§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§[W§)
         {
            _loc3_ = true;
            this.§[W§ = false;
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
            this.§0!E§.§]T§();
         }
         if(this.§^3§ > 1 && this.§0!E§.§4!3§)
         {
            _loc4_ = 4 + (this.§0!E§.§4!3§.blurX - 4 + param2 / 20) % 28;
            this.§0!E§.§4!3§.blurX = _loc4_;
            this.§0!E§.§4!3§.blurY = _loc4_;
         }
         this.§0!E§.§2!g§(param2);
         if(§30§)
         {
            this.§6l§(param1);
         }
         else
         {
            this.§;i§ = this.§4v§;
            this.mX = this.§ t§;
            this.mY = this.§0t§;
         }
         this.§>E§.x = Math.round(this.mX);
         this.§>E§.y = Math.round(this.mY);
         this.§>E§.rotation = this.§;i§ / 180 * Math.PI;
      }
      
      public function §=!_§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§+!^§ = this.§4v§;
         this.§2!h§ = this.§ t§;
         this.§;8§ = this.§0t§;
         this.§4v§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§ t§ = _loc1_ / §7E§.§8!'§;
         this.§0t§ = _loc2_ / §7E§.§8!'§;
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
      
      public function §6l§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §`![§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§7f§.§-n§.§[!U§.§6!"§ * 1000;
         }
         param1 *= -1;
         if(this.§ t§ == this.§2!h§ || param1 == 0)
         {
            this.§,!R§ = 0;
            this.mX = this.§ t§;
         }
         else
         {
            this.§,!R§ = param1 * (this.§2!h§ - this.§ t§) / param2;
            this.mX = this.§ t§ + this.§,!R§;
         }
         if(this.§0t§ == this.§;8§ || param1 == 0)
         {
            this.§'!f§ = 0;
            this.mY = this.§0t§;
         }
         else
         {
            this.§'!f§ = param1 * (this.§;8§ - this.§0t§) / param2;
            this.mY = this.§0t§ + this.§'!f§;
         }
         if(this.§4v§ == this.§+!^§ || param1 == 0)
         {
            this.§;i§ = this.§4v§;
         }
         else if(this.§+!^§ > this.§4v§ && this.§+!^§ - this.§4v§ <= 180)
         {
            this.§;i§ = this.§4v§ + param1 * (this.§+!^§ - this.§4v§) / param2;
         }
         else if(this.§+!^§ > this.§4v§ && this.§+!^§ - this.§4v§ > 180)
         {
            this.§;i§ = this.§4v§ + param1 * (this.§+!^§ - 360 - this.§4v§) / param2;
         }
         else if(this.§+!^§ < this.§4v§ && this.§4v§ - this.§+!^§ <= 180)
         {
            this.§;i§ = this.§4v§ + param1 * (this.§+!^§ - this.§4v§) / param2;
         }
         else if(this.§+!^§ < this.§4v§ && this.§4v§ - this.§+!^§ > 180)
         {
            this.§;i§ = this.§4v§ + param1 * (this.§+!^§ + 360 - this.§4v§) / param2;
         }
      }
      
      public function get §9!f§() : Point
      {
         if(!§30§)
         {
         }
         return null;
      }
      
      public function §;L§() : Boolean
      {
         return this.§&!j§ == §]!@§.§`<§ || this.§&!j§ == §]!@§.§6!<§;
      }
      
      public function §%P§() : Boolean
      {
         return this.§&!j§ == §]!@§.§]4§;
      }
      
      public function §='§() : Boolean
      {
         return this.§&!j§ == §]!@§.§>K§;
      }
      
      public function §4!t§() : Boolean
      {
         return this.§&!j§ == §]!@§.§6!<§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§&!j§ == §]!@§.§0>§;
      }
      
      public function isGround() : Boolean
      {
         return this.§&!j§ == §]!@§.§!!3§;
      }
      
      public function §;!Z§() : Boolean
      {
         return this.§&!j§ == §]!@§.§&l§;
      }
      
      public function §`T§() : Boolean
      {
         return this.§&!j§ == §]!@§.§6!r§;
      }
      
      public function §`x§() : Boolean
      {
         if(this.§>p§ == "MISC_EXPLOSIVE_TNT" || this.§>p§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §'c§() : Boolean
      {
         return (this.§%P§() || this.§;!Z§() || this.§`T§()) && !this.§3!6§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §^![§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§='§())
         {
            return this.§!!>§;
         }
         if(!this.§7f§.§=!C§())
         {
            return this.§!!>§;
         }
         if(this.§3z§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§97§(§@T§.§9A§);
            }
            else if(param1 > 12)
            {
               this.§97§(§@T§.§"!=§);
            }
            else if(param1 > 3)
            {
               this.§97§(§@T§.§0!o§);
            }
            return this.§!!>§;
         }
         if(param1 <= this.§3z§)
         {
            if(param1 >= this.§3z§ / 2)
            {
               this.§97§(§@T§.§0!o§);
            }
            if(this.§;L§() && this.§!!>§ == this.§1!s§)
            {
               this.§!!>§ = this.§1!s§ - 1;
            }
            return this.§!!>§;
         }
         param1 -= this.§3z§;
         if(param2 && this.§'c§())
         {
            _loc7_ = Math.min(this.§!!>§,int(param1));
            _loc8_ = §7E§.§5X§.getValue() * _loc7_;
            this.§7f§.§-n§.addScore(_loc8_,§ !p§.§>F§,this.§!!>§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§!r§.§&M§(this.§>p§));
         }
         if(!(param5 && this.§8B§))
         {
            this.§!!>§ -= param1;
         }
         if(this.§!!>§ < 1 && this.§;L§())
         {
            this.§!!>§ = 1;
         }
         if(this.§!!>§ < 1)
         {
            this.§!!>§ = 0;
            §<!3§.§1a§(§@T§.§9A§,this.§2h§.§1!B§,"ChannelDestroyed");
         }
         else
         {
            this.§97§(§@T§.§"!=§);
            this.addDamageParticles(this.§7f§.§-n§.particles,param1);
         }
         this.§0!E§.setDamagedFrame();
         return this.§!!>§;
      }
      
      public function §97§(param1:int) : void
      {
         §<!3§.§1a§(param1,this.§2h§.§1!B§);
      }
      
      public function §!&§(param1:String) : Number
      {
         return this.§2h§.material.§-!?§(param1) * this.§^3§;
      }
      
      public function §-p§(param1:String) : Number
      {
         return this.§2h§.material.§+v§(param1);
      }
      
      public function §^!a§() : String
      {
         return this.§2h§.material.mName;
      }
      
      public function §1L§() : Number
      {
         return this.§2h§.§2!A§();
      }
      
      public function §9Z§() : int
      {
         return this.§2h§.§2]§();
      }
      
      public function §8l§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§;L§() && this.§!!>§ == this.§1!s§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §^!%§() : Boolean
      {
         return !this.getBody().IsAwake();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §^!E§(param1:Number = 3) : void
      {
         this.§^3§ = param1;
         if(this.§^3§ > 1)
         {
            this.§0!E§.§-!Q§();
         }
         else
         {
            this.§0!E§.§4!3§ = null;
         }
      }
      
      public function §'J§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§2h§.§2<§() == §`4§.§4A§)
         {
            _loc2_ = this.§0!E§.mW * this.§0!E§.mH * (§7E§.§8!'§ * §7E§.§8!'§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§4!%§.§3!r§();
            if(param1)
            {
               _loc2_ *= this.§7n§();
            }
            _loc2_ /= this.§7P§ * this.§7P§;
         }
         return _loc2_;
      }
      
      public function §7n§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§0!E§.§2F§ - 1) / 10);
      }
      
      public function § !>§(param1:Number) : void
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
      
      public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§<!r§) : void
      {
      }
      
      public function addDamageParticles(param1:§<!r§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §0!?§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§&!%§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§;x§();
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
            this.§?!1§(_loc3_);
         }
         this.§?!1§(this.§;x§() + param1);
      }
      
      public function §9p§(param1:Number) : void
      {
         var _loc2_:Number = §8!&§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §9!<§(_loc2_);
         this.getBody().§]<§(_loc2_);
      }
      
      public function § !-§(param1:Number, param2:Point) : void
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
         this.getBody().§&!%§(_loc13_);
      }
   }
}
