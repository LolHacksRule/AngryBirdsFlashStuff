package §=!`§
{
   import §#!4§.§=f§;
   import §%z§.§&;§;
   import §%z§.§3!B§;
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.Sprite;
   import §,v§.b2BodyDef;
   import §,v§.b2FilterData;
   import §,v§.b2Fixture;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   import §@!6§.§3!5§;
   import §@h§.b2Settings;
   import §]k§.§9J§;
   import §]k§.§<S§;
   import flash.geom.Point;
   
   public class §^^§ extends §`?§
   {
      
      public static const §0U§:String = "normal";
      
      public static const §1[§:uint = 1 << 1;
      
      public static const §8E§:uint = 1 << 2;
      
      public static const §8%§:uint = 1 << 3;
      
      public static const §1!8§:uint = 1 << 4;
       
      
      private var §]! §:int;
      
      private var §1R§:int;
      
      private var §=3§:b2Vec2;
      
      private var §@!R§:b2Vec2;
      
      private var §%"$§:Number;
      
      private var §!r§:Number;
      
      private var §5O§:Number;
      
      private var §[!0§:Number = 1;
      
      private var § Z§:Boolean = false;
      
      protected var §8!p§:§]r§;
      
      private var §6!A§:§<W§;
      
      private var §?!C§:Number = 1.0;
      
      private var §9!;§:Boolean = true;
      
      private var §-M§:Boolean = false;
      
      private var §,p§:int = 0;
      
      protected var §`!&§:Number = -1.0;
      
      private var §;!e§:Boolean = false;
      
      private var §#i§:Boolean = false;
      
      public function §^^§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§@!R§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§6!A§ = param2;
         this.§?!C§ = param8;
         this.§1R§ = §<9§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§8!p§ = this.§;E§();
         this.§8!p§.§4!M§(§<9§.shape is §&;§);
         this.§]b§(param5,param6);
         this.§5O§ = §<9§.getItemDefence();
         if(§<9§.healthMax > 0)
         {
            this.initializeHealth(§<9§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§@0§(true) * §<9§.getItemStrength()));
         }
         if(§<9§.itemType == §9!n§.§>!y§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§@T§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§8!p§.§2G§(§<9§.shape);
      }
      
      public static function §,7§(param1:int, param2:§;#§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§;N§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§]!e§;
            }
            §3!5§.§class§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§%"$§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§%"$§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§!r§;
      }
      
      public function get itemName() : String
      {
         return §<9§.itemName;
      }
      
      public function get §-"-§() : Number
      {
         return this.§[!0§;
      }
      
      public function get §`9§() : §<W§
      {
         return this.§6!A§;
      }
      
      public function get x() : Number
      {
         return §@S§;
      }
      
      public function get y() : Number
      {
         return §#B§;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function get id() : int
      {
         return this.§,p§;
      }
      
      public function get §2!g§() : Boolean
      {
         return this.§5O§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§5O§;
      }
      
      public function get §<!O§() : Boolean
      {
         return this.§9!;§;
      }
      
      public function set §<!O§(param1:Boolean) : void
      {
         this.§9!;§ = param1;
      }
      
      public function get §5l§() : Number
      {
         return this.§`!&§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §9G§() : Boolean
      {
         return this.§;!e§;
      }
      
      public function set §9G§(param1:Boolean) : void
      {
         this.§;!e§ = param1;
      }
      
      public function get §`Y§() : Boolean
      {
         return this.§ Z§;
      }
      
      public function set §`Y§(param1:Boolean) : void
      {
         this.§ Z§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §9!$§() : §]r§
      {
         return this.§8!p§;
      }
      
      public final function §<"&§(param1:int) : void
      {
         if(!this.§-M§)
         {
            this.§-M§ = true;
            this.§,p§ = param1;
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
         this.§!r§ = param1;
         this.§%"$§ = param1;
      }
      
      protected function §4!n§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§%"$§ += param1;
         }
      }
      
      protected function §]b§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §6!`§ = §'!7§.CreateBody(_loc3_);
         §6!`§.SetUserData(this);
         §4"#§ = this.§"!1§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§ !W§(_loc4_);
      }
      
      protected function §"!1§() : b2Fixture
      {
         var _loc1_:b2Fixture = §6!`§.CreateFixture2(§<9§.shape.getB2Shape(),§<9§.getItemDensity());
         _loc1_.§8!_§(§<9§.getItemFriction());
         _loc1_.§#!X§(§<9§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §;E§() : §]r§
      {
         return new §]r§(this.§`9§,sprite);
      }
      
      public function § !W§(param1:b2FilterData) : void
      {
         if(§4"#§)
         {
            §4"#§.SetFilterData(param1);
         }
      }
      
      public function §9!c§(param1:§9!n§) : void
      {
         §<9§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §<9§.getItemBodyType();
         _loc3_.§6p§ = true;
         _loc3_.active = true;
         _loc3_.§@W§ = true;
         _loc3_.§8!H§ = 1;
         _loc3_.§#!6§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§8!p§.dispose();
         this.§=3§ = null;
         §<9§ = null;
      }
      
      public function §@T§(param1:Number) : void
      {
         §^",§().SetAngle(param1);
      }
      
      public function §6!j§() : Number
      {
         return §^",§().GetAngle();
      }
      
      public function §=!P§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §^",§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§4!'§();
         }
         if(param3)
         {
            this.§'!o§();
         }
      }
      
      public function §,!#§(param1:b2Vec2) : void
      {
         this.§=3§ = param1;
      }
      
      private function § D§() : void
      {
         if(this.§=3§)
         {
            this.§=!P§(this.§=3§,false);
            this.§=3§ = null;
         }
      }
      
      private function §""§() : void
      {
         if(§6!`§)
         {
            this.§@!R§.SetV(§6!`§.GetLinearVelocity());
         }
      }
      
      public function §+!L§() : b2Vec2
      {
         return this.§@!R§;
      }
      
      public function §4!'§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §^",§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §^",§().SetAngularVelocity(0);
         }
         else
         {
            §^",§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §'!o§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §^",§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§@T§(_loc2_);
      }
      
      public function §4B§(param1:Number) : void
      {
         §^",§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§8!p§.update(param1);
         sprite.x = §@S§;
         sprite.y = §#B§;
         sprite.rotation = §'j§;
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         this.§ D§();
         super.update(param1,param2);
         if(this.§`!&§ >= 0)
         {
            this.§`!&§ += param1;
         }
         this.§""§();
      }
      
      public function updateOutOfBounds(param1:§'`§) : void
      {
         this.§#i§ = true;
      }
      
      public function updateBeforeRemoving(param1:§'`§) : void
      {
         if(!this.§#i§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §4W§() : Boolean
      {
         return this.§1R§ == §9!n§.§,"'§;
      }
      
      public function §@!§() : Boolean
      {
         return this.§1R§ == §9!n§.§>!y§;
      }
      
      public function §+"6§() : Boolean
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
      
      public function §0!a§() : Number
      {
         return Number(Math.sqrt(§^",§().GetLinearVelocity().x * §^",§().GetLinearVelocity().x + §^",§().GetLinearVelocity().y * §^",§().GetLinearVelocity().y));
      }
      
      protected function §^"1§() : void
      {
         this.§`!&§ = 0;
      }
      
      protected function §3" §() : void
      {
      }
      
      protected function §]!r§() : void
      {
         this.§&!z§(§;#§.§]X§);
      }
      
      protected function §^!,§() : void
      {
         this.§&!z§(§;#§.§%!T§);
      }
      
      protected function §#o§() : void
      {
         this.§&!z§(§;#§.§@P§);
      }
      
      public function applyDamage(param1:Number, param2:§'`§, param3:§^^§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§`!&§ < 0)
         {
            this.§^"1§();
         }
         else
         {
            this.§3" §();
         }
         if(this.§5O§ < 0 || this.§5O§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§]!r§();
            }
            else if(param1 > 12)
            {
               this.§^!,§();
            }
            else if(param1 > 3)
            {
               this.§#o§();
            }
            return this.§%"$§;
         }
         if(param1 <= this.§5O§)
         {
            if(param1 > 3)
            {
               this.§#o§();
            }
            return this.§%"$§;
         }
         param1 -= this.§5O§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§%"$§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§9J§.§5^§,this.§%"$§ > param1,§^",§().GetPosition().x,§^",§().GetPosition().y,§=f§.§;"2§(this.itemName));
         }
         this.§%"$§ -= param1;
         if(this.§%"$§ < 1)
         {
            this.§%"$§ = 0;
            this.§]!r§();
         }
         else
         {
            this.§^!,§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§%"$§;
      }
      
      protected function setDamageState(param1:Number, param2:§'`§) : Boolean
      {
         return this.§8!p§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §&!z§(param1:int) : void
      {
         §^^§.§,7§(param1,§<9§.soundResource);
      }
      
      public function §"!G§(param1:String) : Number
      {
         return §<9§.getDamageMultiplier(param1) * this.§[!0§;
      }
      
      public function §'E§(param1:String) : Number
      {
         return §<9§.getVelocityMultiplier(param1);
      }
      
      public function §2!6§() : String
      {
         return §<9§.materialName;
      }
      
      public function §[r§() : Number
      {
         return §<9§.getItemStrength();
      }
      
      public function §9!u§() : Boolean
      {
         return §^",§().IsAwake() && (this is §6!-§ && this.§%"$§ == this.§!r§ || Math.abs(§^",§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§^",§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§^",§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §@,§() : Boolean
      {
         if(!§^",§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§^",§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§^",§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§^",§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §<!o§(param1:Number = 3) : void
      {
         this.§[!0§ = param1;
      }
      
      public function §@0§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§<9§.getItemBodyType() == §3!B§.§5w§)
         {
            _loc2_ = this.§8!p§.width * this.§8!p§.height * (§<S§.§;!Q§ * §<S§.§;!Q§);
         }
         else
         {
            _loc2_ = §^",§().GetMass() / §4"#§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§`k§();
            }
         }
         return _loc2_;
      }
      
      public function §`k§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§8!p§.§@!V§ - 1) / 10);
      }
      
      public function §`W§(param1:Number) : void
      {
         var _loc2_:Number = §^",§().GetLinearVelocity().x;
         var _loc3_:Number = §^",§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §^",§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§'`§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§'`§) : void
      {
      }
      
      public function addDamageParticles(param1:§'`§, param2:int) : void
      {
      }
      
      public function §>!h§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §^",§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §^",§().SetPosition(_loc4_);
      }
      
      public function §%%§(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return §^",§().IsAwake();
      }
   }
}
