package §!?§
{
   import §"!&§.§8"F§;
   import §`!j§.§+!A§;
   import §`!j§.§9"!§;
   
   public class §,!8§ extends §'!y§
   {
       
      
      public function §,!8§(param1:§9"!§, param2:§8"F§)
      {
         super(param1,param2);
      }
      
      public function §0=§() : String
      {
         return §""@§("birds.lua","space_birds");
      }
      
      public function §"!-§() : String
      {
         return §""@§("soundManager.lua","core");
      }
      
      public function §![§() : String
      {
         return §""@§("blocks_levelgoals.lua","space_pigs");
      }
      
      public function §38§() : String
      {
         return §""@§("particles.lua","space_blocks");
      }
      
      public function §',§() : String
      {
         return §""@§("starLimits.lua","core");
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§+!A§ = null;
         if(!§6u§.getLevelForId(param1))
         {
            _loc3_ = §+!A§.§<!P§(§""@§(param2));
            _loc3_.name = param1;
            §6u§.addLevel(param1,_loc3_);
         }
      }
   }
}
