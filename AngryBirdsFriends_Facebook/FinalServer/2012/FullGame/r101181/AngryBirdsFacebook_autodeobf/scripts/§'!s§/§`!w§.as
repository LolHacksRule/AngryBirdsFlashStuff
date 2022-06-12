package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §+N§.§@!]§;
   import §]!A§.;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §`!w§ extends Popup
   {
       
      
      public function §`!w§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(§ "A§.§4[§.Views.PopupServerUpdated_Error[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§`!a§);
               loop1:
               for(; _loc4_; while(_loc4_ || this)
               {
                  AngryBirdsFP11.§@<§.§#m§();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr35);
               })
               {
                  §]"5§ = §97§;
                  do
                  {
                     §#6§.pause();
                     continue loop1;
                  }
                  while(_loc3_ && this);
                  
               }
            }
         }
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            AngryBirdsFP11.§@<§.stage.displayState = StageDisplayState.NORMAL;
         }
         do
         {
            §@!]§.§9"'§("window.location.reload");
         }
         while(!(_loc2_ || param1));
         
      }
   }
}
