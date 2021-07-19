package §-"'§
{
   import §&!<§.§>!V§;
   import §6!A§.§4!%§;
   import §=!7§.§9"8§;
   import §@y§.§>!D§;
   import flash.events.MouseEvent;
   
   public class §!w§ extends §&"#§
   {
       
      
      public function §!w§(param1:§>!V§, param2:XML)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!O§);
               loop1:
               while(true)
               {
                  getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8]§);
                  while(true)
                  {
                     getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§;!$§);
                     while(_loc3_ || this)
                     {
                        continue loop1;
                        this.update();
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§4!%§.§`-§().§9y§(§4!%§.§!$§))
            {
               addr24:
               §§push(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!_loc4_)
               {
                  addr50:
                  §§push(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     addr49:
                     §§push(§§pop());
                     addr36:
                  }
                  var _loc2_:* = §§pop();
                  if(_loc3_)
                  {
                     (getItemByName("Button_SettingSnap") as §9"8§).setComponentState(_loc2_);
                     loop0:
                     while(true)
                     {
                        §§push(§4!%§.§`-§());
                        loop1:
                        while(true)
                        {
                           §§push(§4!%§.§]!o§);
                           addr171:
                           while(true)
                           {
                              §§push(§§pop().§9y§(§§pop()));
                              addr172:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    continue loop0;
                                 }
                                 addr193:
                                 addr193:
                                 §§push(§>!D§.§;!M§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr194:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          (getItemByName("Button_SettingTips") as §9"8§).setComponentState(_loc2_);
                                          while(_loc3_)
                                          {
                                             continue loop1;
                                             loop8:
                                             while(_loc3_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   (getItemByName("Button_SettingZoom") as §9"8§).setComponentState(_loc2_);
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop8;
                                                }
                                                return;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr154);
               }
               §§goto(addr36);
            }
            else
            {
               §§push(§>!D§.§;!M§);
               if(_loc3_ || this)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr49);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr24);
      }
      
      private function §3!O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §4!%§.§`-§().§[";§(§4!%§.§!$§);
            do
            {
               this.update();
            }
            while(_loc2_);
            
         }
      }
      
      private function §8]§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §4!%§.§`-§().§[";§(§4!%§.§]!o§);
            do
            {
               this.update();
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      private function §;!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §4!%§.§`-§().§[";§(§4!%§.§]?§);
         }
         do
         {
            this.update();
         }
         while(!_loc3_);
         
      }
   }
}
