package §+h§
{
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §6!U§.§+!!§;
   import §6" §.§<8§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`r§ extends Popup
   {
       
      
      private var §2P§:StatePopupManager;
      
      public function §`r§(param1:§'s§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§`7§.§>"?§.Views.PopupView_Tools[0],param1);
         }
         loop0:
         while(true)
         {
            this.§2P§ = param2;
            loop1:
            while(true)
            {
               param2.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
               while(true)
               {
                  getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§0!$§);
                  loop3:
                  while(_loc3_)
                  {
                     getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
                     while(_loc3_)
                     {
                        getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!s§);
                        do
                        {
                           this.update();
                        }
                        while(!_loc3_);
                        
                        if(_loc3_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              if(_loc3_)
                              {
                                 return;
                              }
                              continue loop0;
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function onUiInteraction(param1:§+!!§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.uiInteractionHandler(param1.§&!X§,param1.§1_§,param1.component);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            if("CLOSE_POPUP" === _loc4_)
            {
               addr57:
               §§push(0);
               if(_loc5_ || param3)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §5!U§.playSound("Sound_Button_Back");
                  if(!(_loc6_ && this))
                  {
                     this.deActivate();
                     if(_loc5_)
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§2P§.removeEventListener(§+!!§.§]!M§,this.onUiInteraction);
         }
         while(true)
         {
            super.deActivate();
            while(_loc2_)
            {
               preClose();
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      private function update(param1:Event = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(§<8§.§5!i§().§&!h§(§<8§.§,!4§))
            {
               addr29:
               §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     addr59:
                     §§push(§§pop());
                  }
               }
               else
               {
                  addr51:
                  §§push(§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr59);
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && this))
               {
                  (getItemByName("Button_SettingSnap") as §="#§).setComponentState(_loc2_);
                  loop0:
                  while(true)
                  {
                     §§push(§<8§.§5!i§());
                     addr217:
                     loop1:
                     while(true)
                     {
                        §§push(§<8§.§0!g§);
                        addr219:
                        while(true)
                        {
                           §§push(§§pop().§&!h§(§§pop()));
                           addr220:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    addr223:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr224:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr221:
                              }
                              else
                              {
                                 §§push(§9!!§.§,!0§);
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr172:
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr187:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                                addr204:
                                                (getItemByName("Button_SettingZoom") as §="#§).setComponentState(_loc2_);
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      return;
                                                      addr102:
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr147:
                                                            §§push(§§pop());
                                                            if(_loc3_ || param1)
                                                            {
                                                               addr155:
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop13;
                                                            }
                                                            addr170:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr172);
                                                               }
                                                               break;
                                                               §§goto(addr147);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr240:
                                                               while(true)
                                                               {
                                                                  (getItemByName("Button_SettingTips") as §="#§).setComponentState(_loc2_);
                                                                  continue loop1;
                                                               }
                                                            }
                                                            addr229:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr229);
                                                         }
                                                         addr228:
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr224);
                                                   addr136:
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr221);
                                             continue loop13;
                                          }
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                              }
                              §§goto(addr228);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(§<8§.§5!i§());
                  if(!(_loc4_ && this))
                  {
                     §§push(§<8§.§7"§);
                     if(!_loc4_)
                     {
                        §§push(§§pop().§&!h§(§§pop()));
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                              §§push(§9!!§.§,!0§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr170);
                                 }
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr217);
               }
               §§goto(addr102);
            }
            else
            {
               §§push(§9!!§.§,!0§);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr51);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr29);
      }
      
      private function §0!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §<8§.§5!i§().§&!W§(§<8§.§,!4§);
         }
         do
         {
            this.update();
         }
         while(_loc3_ && this);
         
      }
      
      private function §!!H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §<8§.§5!i§().§&!W§(§<8§.§0!g§);
            do
            {
               this.update();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function §3!s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §<8§.§5!i§().§&!W§(§<8§.§7"§);
            do
            {
               this.update();
            }
            while(!_loc2_);
            
         }
      }
   }
}
