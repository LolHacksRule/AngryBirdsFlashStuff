package §""c§
{
   import §!!k§.§0!B§;
   import §#g§.§?B§;
   import §`!v§.§7Z§;
   import §`!v§.§;!d§;
   import §`!v§.§`[§;
   import §use§.Sprite;
   
   public class §5"p§ extends §=!Y§
   {
       
      
      public function §5"p§(param1:§`[§, param2:Number, param3:§0!B§, param4:§?B§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         super.setScreenOffset(param1,param2,param3,param4,param5,param6,param7);
         if(§["A§ != null)
         {
            switch(§4!y§.id)
            {
               case "theme_deathstar_hangar_1":
                  §["A§.y += 220;
            }
         }
      }
      
      override protected function createLayer(param1:§;!d§, param2:Sprite, param3:§0!B§, param4:Number) : §2",§
      {
         var _loc5_:§7Z§ = null;
         if(param1 is §7Z§)
         {
            _loc5_ = param1 as §7Z§;
            return new §9!O§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
