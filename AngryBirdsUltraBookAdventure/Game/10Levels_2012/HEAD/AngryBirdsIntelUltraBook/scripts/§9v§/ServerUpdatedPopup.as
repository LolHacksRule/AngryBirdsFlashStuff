package §9v§
{
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class ServerUpdatedPopup extends Popup
   {
       
      
      public function ServerUpdatedPopup(currentUIView:§-!H§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super(§3!5§.§4@§.Views.PopupServerUpdated_Error[0],currentUIView);
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1Y§);
                           addr104:
                           while(_loc3_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr74:
                           if(!(_loc3_ || currentUIView))
                           {
                              continue;
                           }
                           AngryBirdsFP11.§8R§.§!!'§();
                           while(_loc3_ || currentUIView)
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 addr38:
                                 if(_loc3_ || _loc3_)
                                 {
                                    return;
                                 }
                                 while(!_loc4_)
                                 {
                                    §§goto(addr38);
                                 }
                                 continue loop1;
                                 addr87:
                              }
                              while(!_loc4_)
                              {
                                 §§goto(addr74);
                              }
                              §§goto(addr104);
                           }
                           while(true)
                           {
                              §4!T§.pause();
                              §§goto(addr87);
                              §§goto(addr52);
                           }
                           addr52:
                        }
                     }
                  }
               }
               if(_loc4_ && statePopup)
               {
                  continue;
               }
               §§goto(addr92);
            }
         }
         §§goto(addr92);
      }
      
      private function §1Y§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               addr100:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            AngryBirdsFP11.§8R§.stage.displayState = StageDisplayState.NORMAL;
            while(true)
            {
               for(; !(_loc3_ && e); ExternalInterfaceHandler.§!!@§("window.location.reload"),while(_loc3_ && _loc3_)
               {
               },if(_loc2_ || _loc3_)
               {
                  return;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr100);
               }
            }
         }
      }
   }
}
