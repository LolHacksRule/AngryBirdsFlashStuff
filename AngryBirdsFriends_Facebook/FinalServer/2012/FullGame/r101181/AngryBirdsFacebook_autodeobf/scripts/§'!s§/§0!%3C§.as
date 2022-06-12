package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §7"@§.§?'§;
   import §]!A§.;
   import flash.events.MouseEvent;
   
   public class §0!<§ extends Popup
   {
       
      
      public function §0!<§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(§ "A§.§4[§.Views.PopupTournamentNotFound[0],param1);
            while(true)
            {
               mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§`!a§);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §#6§.pause();
            if(_loc3_ || param2)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §3T§.§67§.§=!w§(§?'§.STATE_NAME);
            do
            {
               close();
            }
            while(!_loc2_);
            
         }
      }
   }
}
