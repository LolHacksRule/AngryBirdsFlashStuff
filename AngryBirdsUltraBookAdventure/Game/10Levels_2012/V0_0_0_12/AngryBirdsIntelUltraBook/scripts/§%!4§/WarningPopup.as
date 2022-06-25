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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               addr147:
               while(true)
               {
                  addr144:
                  while(true)
                  {
                     super(§>!^§.§8'§.Views.PopupView_Warning[0],currentUIView);
                  }
               }
               addr90:
               if(_loc3_ && this)
               {
                  continue;
               }
               loop8:
               do
               {
                  AngryBirdsFP11.§5V§.§"§();
                  while(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        continue loop8;
                     }
                  }
                  loop4:
                  while(!_loc3_)
                  {
                     mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!L§);
                     loop5:
                     while(_loc4_)
                     {
                        do
                        {
                           §]!B§.pause();
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr90);
                              }
                              continue loop5;
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                           continue loop5;
                        }
                        while(_loc3_ && statePopup);
                        
                        return;
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr147);
               }
               while(!(_loc4_ || statePopup));
               
               if(_loc4_ || statePopup)
               {
                  §§goto(addr46);
               }
               §§goto(addr81);
            }
         }
         §§goto(addr141);
      }
      
      private function §"!L§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.deActivate();
                     while(_loc3_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §]!B§.resume();
                     while(true)
                     {
                        while(_loc1_)
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                           if(_loc1_ || this)
                           {
                              return;
                              addr58:
                           }
                        }
                     }
                     addr63:
                     while(!(_loc2_ && this))
                     {
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        §§goto(addr51);
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
