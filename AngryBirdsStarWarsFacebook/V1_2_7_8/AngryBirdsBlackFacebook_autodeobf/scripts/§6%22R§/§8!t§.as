package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&"§;
   
   public class §8!t§ extends § !v§
   {
      
      public static const §^!3§:String = "LaserBird";
      
      protected static const §5"N§:Number = 350;
      
      protected static const §,E§:Number = 100;
       
      
      protected var §9"m§:int = 0;
      
      protected var §#a§:String;
      
      protected var §<"_§:Number;
      
      protected var § "Y§:Number;
      
      protected var §0"N§:int = 0;
      
      protected var §9!p§:Number = 0;
      
      protected var §2!e§:Number = 1.0;
      
      public function §8!t§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§9"m§ = param4.getNumberProperty("specialtyNumberOfShots");
         this.§#a§ = param4.getProperty("specialtyObject");
      }
      
      override protected function specialPower(param1:§""M§, param2:Number = 0.0, param3:Number = 0.0) : void
      {
         var _loc4_:§4"d§ = null;
         this.§<"_§ = param2;
         this.§ "Y§ = param3;
         if(this.§9"m§ > 0)
         {
            this.shoot(param1,param2,param3);
            this.§0"N§ = this.§9"m§ - 1;
            if(_loc4_ = param1 as §4"d§)
            {
               _loc4_.§8#3§(0,800,800,0.4);
               param1.addObject(reticleSprite,param2,param3,0,§super§.§4"D§,false,false,false,1,true);
            }
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function spawnParticlesOnSpecial(param1:§""M§, param2:Number = 0.0) : void
      {
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§2!e§ = param2.timeSpeedMultiplier;
         }
         if(this.§0"N§ > 0)
         {
            this.§9!p§ += param1 / this.§2!e§;
            if(this.§9!p§ > §5"N§)
            {
               --this.§0"N§;
               this.§9!p§ -= §5"N§;
               this.shoot(param2,this.§<"_§,this.§ "Y§);
            }
         }
      }
      
      protected function shoot(param1:§""M§, param2:Number, param3:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc4_:§4"d§;
         if(_loc4_ = param1 as §4"d§)
         {
            _loc5_ = §?"Z§().GetPosition().x;
            _loc6_ = §?"Z§().GetPosition().y;
            _loc7_ = §3!+§(param2,param3) * 180 / Math.PI;
            _loc4_.§^"L§(this.§#a§,_loc5_,_loc6_,_loc7_,§,E§,true);
         }
      }
   }
}
