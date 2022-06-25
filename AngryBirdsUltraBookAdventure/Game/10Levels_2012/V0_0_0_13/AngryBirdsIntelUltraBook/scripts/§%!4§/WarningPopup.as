package §%!4§
{
   import § D§.§]!B§;
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends Popup
   {
       
      
      public function WarningPopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc3_)
         {
         }
         loop0:
         while(true)
         {
            addr146:
            while(true)
            {
               addr143:
               while(true)
               {
                  super(§>!^§.§8'§.Views.PopupView_Warning[0],currentUIView);
                  while(true)
                  {
                     while(_loc3_ || this)
                     {
                        mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!L§);
                        while(_loc3_ || this)
                        {
                           while(true)
                           {
                              §]!B§.pause();
                              continue loop0;
                           }
                           if(_loc3_ || this)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §"!L§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.deActivate();
                     while(!_loc2_)
                     {
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               super.deActivate();
               while(true)
               {
                  while(true)
                  {
                     §]!B§.resume();
                     addr42:
                     if(!(_loc1_ && this))
                     {
                        if(_loc2_)
                        {
                           return;
                           addr61:
                        }
                        continue loop0;
                     }
                  }
                  addr90:
                  if(!(_loc1_ && this))
                  {
                     if(_loc2_ || this)
                     {
                        §§goto(addr42);
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr73:
                           if(!(_loc1_ && _loc2_))
                           {
                              §§goto(addr90);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§goto(addr73);
                              }
                              §§goto(addr61);
                              addr106:
                           }
                        }
                        while(true)
                        {
                           this.close();
                           continue loop5;
                        }
                     }
                     addr97:
                  }
               }
            }
         }
         §§goto(addr106);
      }
   }
}
