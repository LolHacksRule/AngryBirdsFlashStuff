package §9v§
{
   import §-!>§.§4!T§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends Popup
   {
       
      
      public function WarningPopup(currentUIView:§-!H§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && currentUIView))
         {
            while(true)
            {
               loop2:
               while(!(_loc3_ && currentUIView))
               {
                  super(§3!5§.§4@§.Views.PopupView_Warning[0],currentUIView);
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§'?§);
                        loop5:
                        while(true)
                        {
                           do
                           {
                              §4!T§.pause();
                              addr97:
                              while(!(_loc3_ && this))
                              {
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 continue loop2;
                                 §§goto(addr97);
                              }
                           }
                           while(!(_loc4_ || this));
                           
                           return;
                        }
                     }
                     while(!(_loc3_ && statePopup))
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr46);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr80);
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      private function §'?§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
            }
            addr86:
         }
         loop1:
         do
         {
            this.deActivate();
            while(_loc3_)
            {
               if(_loc3_ || e)
               {
                  continue loop1;
               }
            }
            §§goto(addr86);
         }
         while(_loc2_ && this);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               super.deActivate();
               addr91:
               while(_loc1_)
               {
                  while(true)
                  {
                     §4!T§.resume();
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(!_loc2_)
               {
                  this.close();
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue loop4;
                     }
                  }
                  continue loop3;
               }
               §§goto(addr91);
            }
            §§goto(addr86);
         }
      }
   }
}
