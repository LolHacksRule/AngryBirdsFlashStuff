package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §71§ extends §2!a§
   {
      
      public static const §5!L§:String = "LaserBird";
      
      protected static const §&v§:Number = 350;
      
      protected static const §#"#§:Number = 100;
       
      
      protected var §>M§:int = 0;
      
      protected var §&X§:String;
      
      protected var §#v§:Number;
      
      protected var §8",§:Number;
      
      protected var §7#&§:int = 0;
      
      protected var §;b§:Number = 0;
      
      protected var §6!@§:Number = 1.0;
      
      public function §71§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§>M§ = param4.getNumberProperty("specialtyNumberOfShots");
         this.§&X§ = param4.getProperty("specialtyObject");
      }
      
      override protected function specialPower(param1:§'=§, param2:Number = 0.0, param3:Number = 0.0) : void
      {
         var _loc4_:§;"9§ = null;
         this.§#v§ = param2;
         this.§8",§ = param3;
         if(this.§>M§ > 0)
         {
            this.shoot(param1,param2,param3);
            this.§7#&§ = this.§>M§ - 1;
            if(_loc4_ = param1 as §;"9§)
            {
               _loc4_.§["a§(0,800,800,0.4);
               param1.addObject(reticleSprite,param2,param3,0,§9"f§.§["_§,false,false,false,1,true);
            }
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function spawnParticlesOnSpecial(param1:§'=§, param2:Number = 0.0) : void
      {
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§6!@§ = param2.timeSpeedMultiplier;
         }
         if(this.§7#&§ > 0)
         {
            this.§;b§ += param1 / this.§6!@§;
            if(this.§;b§ > §&v§)
            {
               --this.§7#&§;
               this.§;b§ -= §&v§;
               this.shoot(param2,this.§#v§,this.§8",§);
            }
         }
      }
      
      protected function shoot(param1:§'=§, param2:Number, param3:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc4_:§;"9§;
         if(_loc4_ = param1 as §;"9§)
         {
            _loc5_ = §3"s§().GetPosition().x;
            _loc6_ = §3"s§().GetPosition().y;
            _loc7_ = §'#7§(param2,param3) * 180 / Math.PI;
            _loc4_.§=-§(this.§&X§,_loc5_,_loc6_,_loc7_,§#"#§,true);
         }
      }
   }
}
