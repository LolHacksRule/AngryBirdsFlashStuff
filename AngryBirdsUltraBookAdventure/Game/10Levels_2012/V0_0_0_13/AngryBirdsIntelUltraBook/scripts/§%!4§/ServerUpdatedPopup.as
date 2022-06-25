package §%!4§
{
   import § D§.§]!B§;
   import §##§.Popup;
   import §'b§.ExternalInterfaceHandler;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class ServerUpdatedPopup extends Popup
   {
       
      
      public function ServerUpdatedPopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || currentUIView)
         {
         }
         if(_loc4_ && _loc3_)
         {
         }
         while(true)
         {
            while(true)
            {
               addr148:
               while(true)
               {
                  super(§>!^§.§8'§.Views.PopupServerUpdated_Error[0],currentUIView);
                  loop3:
                  while(true)
                  {
                     addr133:
                     while(true)
                     {
                        mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+!+§);
                        continue loop3;
                     }
                  }
               }
            }
            loop8:
            for(; !(_loc4_ && this); if(_loc4_ && currentUIView)
            {
               continue;
            },§§goto(addr48))
            {
               AngryBirdsFP11.§5V§.§"§();
               while(_loc3_)
               {
                  if(!_loc4_)
                  {
                     continue loop8;
                  }
               }
               §§goto(addr148);
            }
         }
      }
      
      private function §+!+§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  AngryBirdsFP11.§5V§.stage.displayState = StageDisplayState.NORMAL;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        ExternalInterfaceHandler.§>!2§("window.location.reload");
                        continue loop1;
                        addr32:
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              return;
                              addr46:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc2_ && e)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr77);
      }
   }
}
