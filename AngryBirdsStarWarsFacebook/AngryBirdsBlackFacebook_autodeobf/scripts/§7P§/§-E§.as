package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §-E§ extends §9"k§
   {
      
      public static const §+"§:String = "LaserBird";
      
      protected static const §%]§:Number = 350;
      
      protected static const §!"Z§:Number = 100;
       
      
      protected var §`[§:int = 0;
      
      protected var §%#3§:String;
      
      protected var § "]§:Number;
      
      protected var §8U§:Number;
      
      protected var §+2§:int = 0;
      
      protected var §2!%§:Number = 0;
      
      protected var §1#%§:Number = 1.0;
      
      public function §-E§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§`[§ = param4.getNumberProperty("specialtyNumberOfShots");
         this.§%#3§ = param4.getProperty("specialtyObject");
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0.0, param3:Number = 0.0) : void
      {
         var _loc4_:§ [§ = null;
         this.§ "]§ = param2;
         this.§8U§ = param3;
         if(this.§`[§ > 0)
         {
            this.shoot(param1,param2,param3);
            this.§+2§ = this.§`[§ - 1;
            if(_loc4_ = param1 as § [§)
            {
               _loc4_.§&Q§(0,800,800,0.4);
               param1.addObject(reticleSprite,param2,param3,0,§;=§.§""3§,false,false,false,1,true);
            }
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function spawnParticlesOnSpecial(param1:§;$§, param2:Number = 0.0) : void
      {
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§1#%§ = param2.timeSpeedMultiplier;
         }
         if(this.§+2§ > 0)
         {
            this.§2!%§ += param1 / this.§1#%§;
            if(this.§2!%§ > §%]§)
            {
               --this.§+2§;
               this.§2!%§ -= §%]§;
               this.shoot(param2,this.§ "]§,this.§8U§);
            }
         }
      }
      
      protected function shoot(param1:§;$§, param2:Number, param3:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc4_:§ [§;
         if(_loc4_ = param1 as § [§)
         {
            _loc5_ = §3!t§().GetPosition().x;
            _loc6_ = §3!t§().GetPosition().y;
            _loc7_ = §>#8§(param2,param3) * 180 / Math.PI;
            _loc4_.§#!#§(this.§%#3§,_loc5_,_loc6_,_loc7_,§!"Z§,true);
         }
      }
   }
}
