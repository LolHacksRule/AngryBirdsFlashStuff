package §9#@§
{
   import §!!U§.Sprite;
   import §2"Y§.§%"3§;
   import §69§.§""H§;
   import §69§.§'U§;
   import §69§.§>!b§;
   import §7!F§.§7§;
   
   public class §##D§ extends §1"6§
   {
       
      
      public function §##D§(param1:§""H§, param2:Number, param3:§7#5§, param4:§%"3§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         super.setScreenOffset(param1,param2,param3,param4,param5,param6,param7);
         if(§@#+§ != null)
         {
            switch(§?"I§.id)
            {
               case "theme_deathstar_hangar_1":
                  §@#+§.y += 220;
            }
         }
      }
      
      override protected function createLayer(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number) : §2"A§
      {
         var _loc5_:§'U§ = null;
         if(param1 is §'U§)
         {
            _loc5_ = param1 as §'U§;
            return new §>#0§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
