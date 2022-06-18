package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2FilterData;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§%L§;
   import §9$+§.§5t§;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §21§ extends §8"J§
   {
      
      private static const §-"U§:Number = 0.5;
      
      private static const §`$3§:Number = 0.15;
      
      private static const §7X§:Number = 9;
      
      private static const §2",§:Number = 6;
       
      
      private var §]!Y§:§8"J§;
      
      private var §'"Q§:Number = 0;
      
      private var §<#N§:Boolean;
      
      private var §@#p§:Number;
      
      private var §<!m§:§%L§;
      
      public function §21§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§<#N§ = false;
         this.§@#p§ = 2 * Math.PI * Math.random();
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§'" §(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§`!+§ = §[!n§;
         _loc1_.§#"5§ = 65535;
         return _loc1_;
      }
      
      public function init(param1:b2Vec2, param2:Number) : void
      {
         getBody().SetLinearVelocity(param1);
         getBody().SetLinearDamping(param2);
      }
      
      public function §`#l§(param1:§8"J§) : void
      {
         if(this.§]!Y§)
         {
            this.§=#Z§();
         }
         this.§]!Y§ = param1;
         var _loc2_:§5t§ = new §5t§(§5t§.§0#i§,this.§]!Y§.id,this.id,new Point(0,0),new Point(0,0),false,false,-2 * Math.PI,2 * Math.PI);
         _loc2_.coordinateType = 2;
         this.§<!m§ = (§%"T§.§;`§.levelObjects as §`h§).§7!§(_loc2_);
         if(this.§]!Y§ && this.§]!Y§.§&"X§ == §-#L§.§9"u§)
         {
            this.§]!Y§.§&"X§ = §-#L§.DEFAULT;
         }
         if(§&"X§ == §-#L§.§9"u§)
         {
            §&"X§ = §-#L§.DEFAULT;
         }
         §[#%§.playSound("parachute_deployed_01","ChannelPowerups",0,0.5);
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3 != this.§]!Y§ && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§=#Z§();
         }
         return health;
      }
      
      public function §=#Z§() : void
      {
         this.§<#N§ = true;
         if(this.§<!m§)
         {
            §%"T§.§;`§.mLevelEngine.mWorld.§;"C§(this.§<!m§.§8!E§);
         }
         this.§]!Y§ = null;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§#"5§ = 0;
         §5#y§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         super.update(param1,param2);
         this.§'"Q§ += param1;
         if(this.§'"Q§ == 0)
         {
            return;
         }
         if(this.§<#N§)
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
            _loc3_ = this.§@#p§ + this.§'"Q§ / 500 * Math.PI * §-"U§;
            _loc4_ = Math.sin(_loc3_);
            _loc5_ = Math.cos(_loc3_) * §`$3§;
            getBody().SetAngle(_loc5_);
            if((_loc6_ = getBody().GetLinearVelocity()).y > §7X§)
            {
               _loc6_.y = §7X§;
            }
            _loc6_.x = _loc4_ * §2",§;
            getBody().SetLinearVelocity(_loc6_);
         }
      }
      
      public function get §<"3§() : Boolean
      {
         return this.§<#N§;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         this.§=#Z§();
         super.dispose(param1);
      }
   }
}
