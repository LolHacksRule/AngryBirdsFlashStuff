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
         if(!(_loc4_ && this))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super(§>!^§.§8'§.Views.PopupServerUpdated_Error[0],currentUIView);
                     loop3:
                     while(true)
                     {
                        do
                        {
                           mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+!+§);
                           while(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 loop6:
                                 while(!(_loc4_ && statePopup))
                                 {
                                    §]!B§.pause();
                                    loop7:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          if(_loc3_ || currentUIView)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             AngryBirdsFP11.§5V§.§"§();
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                    continue loop3;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        while(_loc4_ && this);
                        
                     }
                  }
               }
            }
         }
      }
      
      private function §+!+§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            while(true)
            {
               loop1:
               for(; !_loc3_; if(!(_loc2_ || _loc2_))
               {
                  continue;
               },§§goto(addr92))
               {
                  AngryBirdsFP11.§5V§.stage.displayState = StageDisplayState.NORMAL;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr92:
                        ExternalInterfaceHandler.§>!2§("window.location.reload");
                        while(!(_loc2_ || this))
                        {
                        }
                        if(_loc2_)
                        {
                           return;
                           addr58:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
