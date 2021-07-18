package §7#W§
{
   import § "4§.§7q§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §2"Y§.§>"X§;
   import §<"c§.§6"k§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   
   public class §2O§ extends §6"k§
   {
      
      public static const §^!7§:String = "tournamentLevelLoad";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!7§ = "tournamentLevelLoad";
         }
      }
      
      public function §2O§(param1:§+"2§, param2:§>"X§, param3:§5"H§, param4:Boolean, param5:String = "tournamentLevelLoad")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function isLoadingReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§7q§(§4#;§.singleton.dataModel.userProgress).§4r§);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  §§goto(addr45);
               }
               §§goto(addr49);
            }
            addr45:
            if(§§pop())
            {
               if(_loc1_)
               {
                  addr49:
                  §§pop();
                  addr50:
                  §§push(super.isLoadingReady());
                  if(_loc1_ || this)
                  {
                  }
                  §§goto(addr70);
               }
               §§push(Boolean(§§pop()));
            }
            addr70:
            return §§pop();
         }
         §§goto(addr50);
      }
      
      override protected function loadPlayToken() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
         if(!(_loc2_ && _loc2_))
         {
            if(!_loc1_.§3!@§)
            {
               while(true)
               {
                  _loc1_.§@#K§(_loc1_.energy - 1);
                  while(true)
                  {
                  }
               }
               addr81:
            }
            do
            {
               §7q§(§4#;§.singleton.dataModel.userProgress).§9"t§(§+!b§.currentLevel,true);
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
            }
            while(!_loc3_);
            
            return;
         }
         §§goto(addr81);
      }
      
      override protected function getPlayState() : String
      {
         return §2&§.§^!7§;
      }
   }
}
