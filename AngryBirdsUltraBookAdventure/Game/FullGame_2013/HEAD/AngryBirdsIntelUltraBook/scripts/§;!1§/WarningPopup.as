package §;!1§
{
   import §"$§.Popup;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends Popup
   {
       
      
      public function WarningPopup(currentUIView:§`X§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
            }
            addr153:
         }
         while(true)
         {
            while(_loc3_ || _loc3_)
            {
               if(_loc3_)
               {
                  super(§+q§.§%M§.Views.PopupView_Warning[0],currentUIView);
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§!b§);
                        loop5:
                        while(_loc3_ || currentUIView)
                        {
                           while(true)
                           {
                              §`S§.pause();
                              loop7:
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop7;
                                    addr36:
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          return;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§goto(addr153);
               }
               while(!(_loc4_ && statePopup))
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr36);
               }
            }
         }
      }
      
      private function §!b§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && e)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               while(!_loc2_)
               {
                  this.deActivate();
                  while(_loc3_)
                  {
                     if(_loc3_ || e)
                     {
                        return;
                        addr62:
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            super.deActivate();
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §`S§.resume();
                  loop3:
                  while(true)
                  {
                     while(!_loc1_)
                     {
                        this.close();
                        while(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
