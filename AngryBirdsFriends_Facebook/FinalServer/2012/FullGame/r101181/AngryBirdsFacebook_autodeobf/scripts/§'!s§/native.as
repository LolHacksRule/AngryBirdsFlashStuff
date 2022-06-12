package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §]!A§.;
   import flash.events.MouseEvent;
   
   public class native extends Popup
   {
       
      
      public function native(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§ "A§.§4[§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@"$§);
            }
            addr76:
         }
         loop1:
         while(true)
         {
            §#6§.pause();
            while(!_loc4_)
            {
               AngryBirdsFP11.§@<§.§#m§();
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break loop1;
               }
               §§goto(addr76);
            }
         }
      }
      
      private function §@"$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
         }
         while(true)
         {
            §#6§.resume();
            while(_loc2_ || this)
            {
               this.close();
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
