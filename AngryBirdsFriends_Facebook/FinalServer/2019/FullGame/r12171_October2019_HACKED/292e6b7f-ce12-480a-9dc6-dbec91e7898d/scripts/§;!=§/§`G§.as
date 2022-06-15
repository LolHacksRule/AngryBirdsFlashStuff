package §;!=§
{
   import § !N§.§2m§;
   import § !N§.§5"?§;
   import § !N§.§]!#§;
   import §'#K§.b2FilterData;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §`G§ extends §>"G§
   {
      
      private static const §4!v§:Number = 0.5;
      
      private static const §6o§:Number = 0.15;
      
      private static const §!$@§:Number = 9;
      
      private static const §9!s§:Number = 6;
       
      
      private var §%##§:§>"G§;
      
      private var §@"s§:Number = 0;
      
      private var §6!6§:Boolean;
      
      private var §="B§:Number;
      
      private var §4#'§:§]!#§;
      
      public function §`G§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§6!6§ = false;
         this.§="B§ = 2 * Math.PI * Math.random();
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§`R§(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§'#`§ = §[!u§;
         _loc1_.§<L§ = 65535;
         return _loc1_;
      }
      
      public function init(param1:b2Vec2, param2:Number) : void
      {
         getBody().SetLinearVelocity(param1);
         getBody().SetLinearDamping(param2);
      }
      
      public function §9#,§(param1:§>"G§) : void
      {
         if(this.§%##§)
         {
            this.§]#Y§();
         }
         this.§%##§ = param1;
         var _loc2_:§2m§ = new §2m§(§2m§.§@!I§,this.§%##§.id,this.id,new Point(0,0),new Point(0,0),false,false,-2 * Math.PI,2 * Math.PI);
         _loc2_.coordinateType = 2;
         this.§4#'§ = (§]$?§.§2#§.levelObjects as §&"^§).§'#k§(_loc2_);
         if(this.§%##§ && this.§%##§.§@#z§ == §"#-§.§!#E§)
         {
            this.§%##§.§@#z§ = §"#-§.DEFAULT;
         }
         if(§@#z§ == §"#-§.§!#E§)
         {
            §@#z§ = §"#-§.DEFAULT;
         }
         § b§.playSound("parachute_deployed_01","ChannelPowerups",0,0.5);
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3 != this.§%##§ && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§]#Y§();
         }
         return health;
      }
      
      public function §]#Y§() : void
      {
         this.§6!6§ = true;
         if(this.§4#'§)
         {
            §]$?§.§2#§.mLevelEngine.mWorld.§+M§(this.§4#'§.§?#§);
         }
         this.§%##§ = null;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§<L§ = 0;
         §`"=§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         super.update(param1,param2);
         this.§@"s§ += param1;
         if(this.§@"s§ == 0)
         {
            return;
         }
         if(this.§6!6§)
         {
            if(getBody().GetAngularVelocity() < 1)
            {
               getBody().SetAngularVelocity(1);
            }
            sprite.alpha = Math.max(0,sprite.alpha - param1 / 500);
            if(sprite.alpha == 0)
            {
               health = 0;
            }
         }
         else
         {
            _loc3_ = this.§="B§ + this.§@"s§ / 500 * Math.PI * §4!v§;
            _loc4_ = Math.sin(_loc3_);
            _loc5_ = Math.cos(_loc3_) * §6o§;
            getBody().SetAngle(_loc5_);
            if((_loc6_ = getBody().GetLinearVelocity()).y > §!$@§)
            {
               _loc6_.y = §!$@§;
            }
            _loc6_.x = _loc4_ * §9!s§;
            getBody().SetLinearVelocity(_loc6_);
         }
      }
      
      public function get §,#J§() : Boolean
      {
         return this.§6!6§;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         this.§]#Y§();
         super.dispose(param1);
      }
   }
}
