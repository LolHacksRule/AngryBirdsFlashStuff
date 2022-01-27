package §7!S§
{
   import §+"f§.§!r§;
   import §+"f§.§'!5§;
   import §+"f§.§`!1§;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §>P§.§?[§;
   
   public class §,!O§ extends § !x§
   {
       
      
      public function §,!O§(param1:§`!1§, param2:Number, param3:§&"0§, param4:§?[§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         super.setScreenOffset(param1,param2,param3,param4,param5,param6,param7);
         if(§4"'§ != null)
         {
            switch(§2!B§.id)
            {
               case "theme_deathstar_hangar_1":
                  §4"'§.y += 220;
            }
         }
      }
      
      override protected function createLayer(param1:§!r§, param2:Sprite, param3:§&"0§, param4:Number) : §@=§
      {
         var _loc5_:§'!5§ = null;
         if(param1 is §'!5§)
         {
            _loc5_ = param1 as §'!5§;
            return new §[Q§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
