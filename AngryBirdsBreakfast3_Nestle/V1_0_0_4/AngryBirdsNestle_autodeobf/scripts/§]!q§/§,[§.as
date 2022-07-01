package §]!q§
{
   import §&!>§.§3!k§;
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §0I§.§!!p§;
   import §0I§.§2"3§;
   import §3g§.§?!d§;
   import §5!7§.§2!E§;
   import §5!7§.§3!Y§;
   import §5!7§.§3@§;
   import §5!7§.§7!R§;
   import §6_§.§6k§;
   import §9"5§.b2BodyDef;
   import §9"5§.b2FilterData;
   import §9"5§.b2Fixture;
   import §9"5§.b2World;
   import §>!R§.b2Settings;
   import flash.geom.Point;
   
   public class §,[§ extends § !D§
   {
      
      public static const §0h§:String = "normal";
      
      public static const §>!'§:uint = 1 << 1;
      
      public static const §0=§:uint = 1 << 2;
      
      public static const §!Y§:uint = 1 << 3;
      
      public static const §9!H§:uint = 1 << 4;
       
      
      private var §^@§:int;
      
      private var §@!+§:int;
      
      private var §&K§:b2Vec2;
      
      private var §2+§:b2Vec2;
      
      private var § G§:Number;
      
      private var §]1§:Number;
      
      private var §3N§:Number;
      
      private var §8k§:Number = 1;
      
      private var §3,§:Boolean = false;
      
      protected var §3<§:§<2§;
      
      private var §?!W§:§6k§;
      
      private var §79§:Number = 1.0;
      
      private var §0!]§:Boolean = true;
      
      private var §@7§:Boolean = false;
      
      private var §[![§:int = 0;
      
      protected var §%!5§:Number = -1.0;
      
      private var §&!c§:Boolean = false;
      
      private var §"5§:Boolean = false;
      
      public function §,[§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§2+§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§?!W§ = param2;
         this.§79§ = param8;
         this.§@!+§ = §9!w§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§3<§ = this.§%0§();
         this.§3<§.§^%§(§9!w§.shape is §2!E§);
         this.§"!E§(param5,param6);
         this.§3N§ = §9!w§.getItemDefence();
         if(§9!w§.healthMax > 0)
         {
            this.initializeHealth(§9!w§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§3[§(true) * §9!w§.getItemStrength()));
         }
         if(§9!w§.itemType == §3!Y§.§!+§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§5!L§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§3<§.§`r§(§9!w§.shape);
      }
      
      public static function §%!M§(param1:int, param2:§7!R§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§%!m§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§["&§;
            }
            §3!k§.§;5§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§ G§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§ G§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§]1§;
      }
      
      public function get itemName() : String
      {
         return §9!w§.itemName;
      }
      
      public function get §#b§() : Number
      {
         return this.§8k§;
      }
      
      public function get §,7§() : §6k§
      {
         return this.§?!W§;
      }
      
      public function get x() : Number
      {
         return §0!'§;
      }
      
      public function get y() : Number
      {
         return §#<§;
      }
      
      public function get scale() : Number
      {
         return this.§79§;
      }
      
      public function get id() : int
      {
         return this.§[![§;
      }
      
      public function get §1+§() : Boolean
      {
         return this.§3N§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§3N§;
      }
      
      public function get §1!i§() : Boolean
      {
         return this.§0!]§;
      }
      
      public function set §1!i§(param1:Boolean) : void
      {
         this.§0!]§ = param1;
      }
      
      public function get §]!U§() : Number
      {
         return this.§%!5§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §8j§() : Boolean
      {
         return this.§&!c§;
      }
      
      public function set §8j§(param1:Boolean) : void
      {
         this.§&!c§ = param1;
      }
      
      public function get §4!J§() : Boolean
      {
         return this.§3,§;
      }
      
      public function set §4!J§(param1:Boolean) : void
      {
         this.§3,§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §`!G§() : §<2§
      {
         return this.§3<§;
      }
      
      public final function §0#§(param1:int) : void
      {
         if(!this.§@7§)
         {
            this.§@7§ = true;
            this.§[![§ = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§]1§ = param1;
         this.§ G§ = param1;
      }
      
      protected function §@"2§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§ G§ += param1;
         }
      }
      
      protected function §"!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §+!R§ = §,'§.CreateBody(_loc3_);
         §+!R§.SetUserData(this);
         §1V§ = this.§]%§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§]>§(_loc4_);
      }
      
      protected function §]%§() : b2Fixture
      {
         var _loc1_:b2Fixture = §+!R§.CreateFixture2(§9!w§.shape.getB2Shape(),§9!w§.getItemDensity());
         _loc1_.§+!Q§(§9!w§.getItemFriction());
         _loc1_.§%C§(§9!w§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §%0§() : §<2§
      {
         return new §<2§(this.§,7§,sprite);
      }
      
      public function §]>§(param1:b2FilterData) : void
      {
         if(§1V§)
         {
            §1V§.SetFilterData(param1);
         }
      }
      
      public function §>]§(param1:§3!Y§) : void
      {
         §9!w§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §9!w§.getItemBodyType();
         _loc3_.§#"!§ = true;
         _loc3_.active = true;
         _loc3_.§0u§ = true;
         _loc3_.§!?§ = 1;
         _loc3_.§+5§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§3<§.dispose();
         this.§&K§ = null;
         §9!w§ = null;
      }
      
      public function §5!L§(param1:Number) : void
      {
         §4!7§().SetAngle(param1);
      }
      
      public function §-!q§() : Number
      {
         return §4!7§().GetAngle();
      }
      
      public function §@"%§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §4!7§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§!!!§();
         }
         if(param3)
         {
            this.§'g§();
         }
      }
      
      public function §&"'§(param1:b2Vec2) : void
      {
         this.§&K§ = param1;
      }
      
      private function §8!n§() : void
      {
         if(this.§&K§)
         {
            this.§@"%§(this.§&K§,false);
            this.§&K§ = null;
         }
      }
      
      private function §0"'§() : void
      {
         if(§+!R§)
         {
            this.§2+§.SetV(§+!R§.GetLinearVelocity());
         }
      }
      
      public function §=`§() : b2Vec2
      {
         return this.§2+§;
      }
      
      public function §!!!§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §4!7§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §4!7§().SetAngularVelocity(0);
         }
         else
         {
            §4!7§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §'g§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §4!7§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§5!L§(_loc2_);
      }
      
      public function §=G§(param1:Number) : void
      {
         §4!7§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§3<§.update(param1);
         sprite.x = §0!'§;
         sprite.y = §#<§;
         sprite.rotation = §-!w§;
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         this.§8!n§();
         super.update(param1,param2);
         if(this.§%!5§ >= 0)
         {
            this.§%!5§ += param1;
         }
         this.§0"'§();
      }
      
      public function updateOutOfBounds(param1:§5z§) : void
      {
         this.§"5§ = true;
      }
      
      public function updateBeforeRemoving(param1:§5z§) : void
      {
         if(!this.§"5§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §'!,§() : Boolean
      {
         return this.§@!+§ == §3!Y§.§1!V§;
      }
      
      public function §-t§() : Boolean
      {
         return this.§@!+§ == §3!Y§.§!+§;
      }
      
      public function §+#§() : Boolean
      {
         if(this.itemName == "MISC_EXPLOSIVE_TNT" || this.itemName == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return false;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §%=§() : Number
      {
         return Number(Math.sqrt(§4!7§().GetLinearVelocity().x * §4!7§().GetLinearVelocity().x + §4!7§().GetLinearVelocity().y * §4!7§().GetLinearVelocity().y));
      }
      
      protected function §6[§() : void
      {
         this.§%!5§ = 0;
      }
      
      protected function §;!3§() : void
      {
      }
      
      protected function §<!e§() : void
      {
         this.§?[§(§7!R§.§[e§);
      }
      
      protected function §]h§() : void
      {
         this.§?[§(§7!R§.§@!v§);
      }
      
      protected function §[O§() : void
      {
         this.§?[§(§7!R§.§1!r§);
      }
      
      public function applyDamage(param1:Number, param2:§5z§, param3:§,[§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§%!5§ < 0)
         {
            this.§6[§();
         }
         else
         {
            this.§;!3§();
         }
         if(this.§3N§ < 0 || this.§3N§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§<!e§();
            }
            else if(param1 > 12)
            {
               this.§]h§();
            }
            else if(param1 > 3)
            {
               this.§[O§();
            }
            return this.§ G§;
         }
         if(param1 <= this.§3N§)
         {
            if(param1 > 3)
            {
               this.§[O§();
            }
            return this.§ G§;
         }
         param1 -= this.§3N§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§ G§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§2"3§.§@E§,this.§ G§ > param1,§4!7§().GetPosition().x,§4!7§().GetPosition().y,§?!d§.§7%§(this.itemName));
         }
         this.§ G§ -= param1;
         if(this.§ G§ < 1)
         {
            this.§ G§ = 0;
            this.§<!e§();
         }
         else
         {
            this.§]h§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§ G§;
      }
      
      protected function setDamageState(param1:Number, param2:§5z§) : Boolean
      {
         return this.§3<§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §?[§(param1:int) : void
      {
         §,[§.§%!M§(param1,§9!w§.soundResource);
      }
      
      public function §7!x§(param1:String) : Number
      {
         return §9!w§.getDamageMultiplier(param1) * this.§8k§;
      }
      
      public function §%I§(param1:String) : Number
      {
         return §9!w§.getVelocityMultiplier(param1);
      }
      
      public function §4"#§() : String
      {
         return §9!w§.materialName;
      }
      
      public function §6Z§() : Number
      {
         return §9!w§.getItemStrength();
      }
      
      public function §-"+§() : Boolean
      {
         return §4!7§().IsAwake() && (this is §,6§ && this.§ G§ == this.§]1§ || Math.abs(§4!7§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§4!7§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§4!7§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §;0§() : Boolean
      {
         if(!§4!7§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§4!7§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§4!7§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§4!7§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §>!`§(param1:Number = 3) : void
      {
         this.§8k§ = param1;
      }
      
      public function §3[§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§9!w§.getItemBodyType() == §3@§.§1!5§)
         {
            _loc2_ = this.§3<§.width * this.§3<§.height * (§!!p§.§6L§ * §!!p§.§6L§);
         }
         else
         {
            _loc2_ = §4!7§().GetMass() / §1V§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§5e§();
            }
         }
         return _loc2_;
      }
      
      public function §5e§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§3<§.§<1§ - 1) / 10);
      }
      
      public function §^&§(param1:Number) : void
      {
         var _loc2_:Number = §4!7§().GetLinearVelocity().x;
         var _loc3_:Number = §4!7§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §4!7§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§5z§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§5z§) : void
      {
      }
      
      public function addDamageParticles(param1:§5z§, param2:int) : void
      {
      }
      
      public function §&"!§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §4!7§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §4!7§().SetPosition(_loc4_);
      }
      
      public function §!F§(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return §4!7§().IsAwake();
      }
   }
}
