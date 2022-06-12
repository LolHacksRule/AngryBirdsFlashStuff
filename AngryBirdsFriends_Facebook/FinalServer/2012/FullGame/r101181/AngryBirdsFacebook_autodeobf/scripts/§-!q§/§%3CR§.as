package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §[!K§.StateLastWeeksTournamentResults;
   
   public class §<R§ extends StateLastWeeksTournamentResults
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            STATE_NAME = "StateLastWeeksTournamentResults";
         }
      }
      
      public function §<R§(param1:Boolean = false, param2:String = "StateLastWeeksTournamentResults")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
         }
         while(true)
         {
            §6w§ = new §7!A§(this);
            while(!(_loc2_ && this))
            {
               §6w§.init(§ "A§.§4[§.Views.View_BrandedTournamentPrevious[0]);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
