package §%!P§
{
   import §1z§.§;!L§;
   import §1z§.§^!@§;
   import §3>§.§[8§;
   
   public class §0![§ extends §-!y§
   {
       
      
      public function §0![§(param1:§^!@§, param2:§[8§)
      {
         super(param1,param2);
      }
      
      public function §1!j§() : String
      {
         return §9!=§("birds.lua","space_birds");
      }
      
      public function §[!<§() : String
      {
         return §9!=§("soundManager.lua","core");
      }
      
      public function §-w§() : String
      {
         return §9!=§("blocks_levelgoals.lua","space_pigs");
      }
      
      public function §6!t§() : String
      {
         return §9!=§("particles.lua","space_blocks");
      }
      
      public function §continue§() : String
      {
         return §9!=§("starLimits.lua","core");
      }
      
      override protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§;!L§ = null;
         if(!§#"=§.getLevelForId(param1))
         {
            _loc3_ = §;!L§.§&!,§(§9!=§(param2));
            _loc3_.name = param1;
            §#"=§.addLevel(param1,_loc3_);
         }
      }
   }
}
