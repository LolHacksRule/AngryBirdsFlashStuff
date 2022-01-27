package §""%§
{
   import §;!0§.;
   import §;!0§.§]w§;
   import §;"=§.§6!<§;
   
   public class §7"§ extends §3!Y§
   {
       
      
      public function §7"§(param1:§#2§, param2:§6!<§)
      {
         super(param1,param2);
      }
      
      public function §7"<§() : String
      {
         return §;9§("birds.lua","space_birds");
      }
      
      public function §;D§() : String
      {
         return §;9§("soundManager.lua","core");
      }
      
      public function §#"6§() : String
      {
         return §;9§("blocks_levelgoals.lua","space_pigs");
      }
      
      public function §8"#§() : String
      {
         return §;9§("particles.lua","space_blocks");
      }
      
      public function §8" §() : String
      {
         return §;9§("starLimits.lua","core");
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§]w§ = null;
         if(!§,W§.getLevelForId(param1))
         {
            _loc3_ = §]w§.§4!p§(§;9§(param2));
            _loc3_.name = param1;
            §,W§.addLevel(param1,_loc3_);
         }
      }
   }
}
