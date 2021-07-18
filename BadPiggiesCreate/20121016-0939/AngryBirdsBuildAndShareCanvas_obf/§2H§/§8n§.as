package §2H§
{
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §1"2§.§'s§;
   import §6" §.§<8§;
   import flash.events.MouseEvent;
   
   public class §8n§ extends §,J§
   {
       
      
      public function §8n§(param1:§'s§, param2:XML)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§0!$§);
               loop1:
               while(true)
               {
                  getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
                  loop2:
                  while(true)
                  {
                     getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!s§);
                     loop3:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           this.update();
                           if(!(_loc4_ && this))
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§<8§.§5!i§().§&!h§(§<8§.§,!4§))
            {
               addr25:
               §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     addr50:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr42:
                     §§push(§§pop());
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr50);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || param1)
                  {
                     (getItemByName("Button_SettingSnap") as §="#§).setComponentState(_loc2_);
                     loop0:
                     while(true)
                     {
                        §§push(§<8§.§5!i§());
                        loop1:
                        while(true)
                        {
                           §§push(§<8§.§0!g§);
                           addr203:
                           addr197:
                           while(true)
                           {
                              §§push(§§pop().§&!h§(§§pop()));
                              addr204:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr205:
                                    while(true)
                                    {
                                       §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop());
                                       }
                                       addr210:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr205:
                                 }
                                 else
                                 {
                                    §§push(§9!!§.§,!0§);
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr155:
                                       if(!(_loc4_ || this))
                                       {
                                          continue;
                                       }
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          addr165:
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr172:
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             addr215:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   (getItemByName("Button_SettingTips") as §="#§).setComponentState(_loc2_);
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      continue loop0;
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§goto(addr172);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr210);
                                                               }
                                                            }
                                                         }
                                                         addr173:
                                                         _loc2_ = §§pop();
                                                         do
                                                         {
                                                            (getItemByName("Button_SettingZoom") as §="#§).setComponentState(_loc2_);
                                                         }
                                                         while(_loc3_ && _loc2_);
                                                         
                                                         return;
                                                         addr174:
                                                      }
                                                      §§goto(addr205);
                                                      §§goto(addr210);
                                                   }
                                                }
                                             }
                                             addr215:
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                                 addr214:
                                 while(true)
                                 {
                                    §§goto(addr215);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§<8§.§5!i§());
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              §§push(§<8§.§7"§);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop().§&!h§(§§pop()));
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§goto(addr120);
                                       }
                                       break;
                                    }
                                    §§push(§9!!§.§,!0§);
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr155);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr165);
                                    §§goto(addr215);
                                 }
                                 else
                                 {
                                    §§goto(addr204);
                                 }
                              }
                              else
                              {
                                 §§goto(addr203);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr174);
                        }
                     }
                  }
                  §§goto(addr197);
               }
               §§goto(addr42);
            }
            else
            {
               §§push(§9!!§.§,!0§);
               if(_loc4_)
               {
                  §§goto(addr42);
               }
            }
            §§goto(addr50);
         }
         §§goto(addr25);
      }
      
      private function §0!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §<8§.§5!i§().§&!W§(§<8§.§,!4§);
         }
         do
         {
            this.update();
         }
         while(_loc2_ && param1);
         
      }
      
      private function §!!H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §<8§.§5!i§().§&!W§(§<8§.§0!g§);
            do
            {
               this.update();
            }
            while(_loc3_);
            
         }
      }
      
      private function §3!s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §<8§.§5!i§().§&!W§(§<8§.§7"§);
            do
            {
               this.update();
            }
            while(!_loc3_);
            
         }
      }
   }
}
