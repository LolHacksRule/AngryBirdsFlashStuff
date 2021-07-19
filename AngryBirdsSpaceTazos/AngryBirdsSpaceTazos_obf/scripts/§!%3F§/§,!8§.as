package §!?§
{
   import §"!&§.§8"F§;
   import §`!j§.§+!A§;
   import §`!j§.§9"!§;
   
   public class §,!8§ extends §'!y§
   {
       
      
      public function §,!8§(param1:§9"!§, param2:§8"F§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§+!A§ = null;
         if(_loc4_)
         {
            if(!§6u§.getLevelForId(param1))
            {
               _loc3_ = §+!A§.§<!P§(§""@§(param2));
               addr25:
               if(!(_loc5_ && this))
               {
                  _loc3_.name = param1;
                  if(_loc4_ || param1)
                  {
                     §6u§.addLevel(param1,_loc3_);
                  }
               }
            }
            return;
         }
         §§goto(addr25);
      }
   }
}
