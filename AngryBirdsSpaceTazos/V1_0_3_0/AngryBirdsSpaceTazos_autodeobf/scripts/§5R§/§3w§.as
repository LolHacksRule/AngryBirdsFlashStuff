package §5R§
{
   import §4",§.§&!q§;
   import §4",§.§,!j§;
   import §6!M§.§3Y§;
   
   public class §3w§ extends §#n§
   {
       
      
      public function §3w§(param1:§,!j§, param2:§3Y§)
      {
         super(param1,param2);
      }
      
      public function §0!h§() : String
      {
         return §;"C§("birds.lua","space_birds");
      }
      
      public function §-!i§() : String
      {
         return §;"C§("soundManager.lua","core");
      }
      
      public function §`!Z§() : String
      {
         return §;"C§("blocks_levelgoals.lua","space_pigs");
      }
      
      public function §,"G§() : String
      {
         return §;"C§("particles.lua","space_blocks");
      }
      
      public function §+!A§() : String
      {
         return §;"C§("starLimits.lua","core");
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§&!q§ = null;
         if(!§]m§.getLevelForId(param1))
         {
            _loc3_ = §&!q§.§]!]§(§;"C§(param2));
            _loc3_.name = param1;
            §]m§.addLevel(param1,_loc3_);
         }
      }
   }
}
