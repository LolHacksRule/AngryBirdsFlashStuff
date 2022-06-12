package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §[!K§.§-k§;
   import §]!A§.;
   import flash.events.MouseEvent;
   
   public class §^3§ extends Popup
   {
       
      
      public function §^3§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(§ "A§.§4[§.Views.PopupTournamentEnded[0],param1);
            while(true)
            {
               mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§`!a§);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     §#6§.pause();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §3T§.§67§.§=!w§(§-k§.STATE_NAME);
            do
            {
               close();
            }
            while(!(_loc3_ || param1));
            
         }
      }
   }
}
