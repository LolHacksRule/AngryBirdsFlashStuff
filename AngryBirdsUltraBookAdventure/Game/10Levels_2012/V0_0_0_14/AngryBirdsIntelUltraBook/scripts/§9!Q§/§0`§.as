package §9!Q§
{
   import §&9§.§1?§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §9#§.Popup;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §0`§ extends Popup
   {
       
      
      public function §0`§(param1:§ C§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(dynamic.§[6§.Views.PopupServerUpdated_Error[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&_§);
               loop1:
               while(_loc3_)
               {
                  §4!]§.pause();
                  while(true)
                  {
                     AngryBirdsFP11.§`!c§.§2!3§();
                     if(_loc3_)
                     {
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §&_§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            AngryBirdsFP11.§`!c§.stage.displayState = StageDisplayState.NORMAL;
         }
         do
         {
            §1?§.§>!X§("window.location.reload");
         }
         while(!(_loc2_ || this));
         
      }
   }
}
