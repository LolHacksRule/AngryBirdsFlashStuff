package §?!'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §6!A§.§4!%§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import §[!E§.§[!f§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2!"§ extends Popup
   {
       
      
      private var §["<§:StatePopupManager;
      
      public function §2!"§(param1:§>!V§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(§]!M§.§"!V§.Views.PopupView_Tools[0],param1);
            loop0:
            while(true)
            {
               this.§["<§ = param2;
               while(true)
               {
                  param2.addEventListener(§[!f§.§`h§,this.onUiInteraction);
                  loop5:
                  while(_loc3_ || this)
                  {
                     this.update();
                     if(!_loc4_)
                     {
                        addr33:
                        if(!(_loc3_ || param2))
                        {
                           while(true)
                           {
                              getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§;!$§);
                              continue loop5;
                              §§goto(addr33);
                           }
                           addr93:
                        }
                        addr40:
                        if(!(_loc4_ && param2))
                        {
                           addr47:
                           if(_loc4_ && param1)
                           {
                              while(true)
                              {
                                 getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§3!O§);
                                 continue loop0;
                                 §§goto(addr47);
                              }
                              addr119:
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      private function onUiInteraction(param1:§[!f§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.uiInteractionHandler(param1.§4§,param1.§'!5§,param1.component);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("CLOSE_POPUP" === _loc4_)
            {
               addr58:
               §§push(0);
               if(_loc6_ || param2)
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
                  §0"#§.§9"2§("Sound_Button_Back");
                  if(_loc6_ || param2)
                  {
                     this.deActivate();
                     if(_loc6_ || param1)
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr58);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§["<§.removeEventListener(§[!f§.§`h§,this.onUiInteraction);
            while(true)
            {
               super.deActivate();
               §§goto(addr59);
            }
         }
         addr59:
         while(true)
         {
            preClose();
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function update(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(§4!%§.§`-§().§9y§(§4!%§.§!$§))
            {
               addr30:
               §§push(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     addr50:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr42:
                     §§push(§§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr50);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
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
                           addr170:
                           while(true)
                           {
                              §§push(§§pop().§9y§(§§pop()));
                              addr171:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(§>!D§.§;!M§);
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr179:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr180:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr191:
                                             while(true)
                                             {
                                                (getItemByName("Button_SettingTips") as §9"8§).setComponentState(_loc2_);
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr76:
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      return;
                                                      addr83:
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                    addr178:
                                 }
                                 while(true)
                                 {
                                    §§push(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    addr174:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr175:
                                       while(true)
                                       {
                                          §§goto(addr179);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr151);
               }
               §§goto(addr42);
            }
            else
            {
               §§push(§>!D§.§;!M§);
               if(!_loc3_)
               {
                  §§goto(addr42);
               }
            }
            §§goto(addr50);
         }
         §§goto(addr30);
      }
      
      private function §3!O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §4!%§.§`-§().§[";§(§4!%§.§!$§);
            do
            {
               this.update();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §8]§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §4!%§.§`-§().§[";§(§4!%§.§]!o§);
            do
            {
               this.update();
            }
            while(!_loc3_);
            
         }
      }
      
      private function §;!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §4!%§.§`-§().§[";§(§4!%§.§]?§);
            do
            {
               this.update();
            }
            while(!_loc3_);
            
         }
      }
   }
}
