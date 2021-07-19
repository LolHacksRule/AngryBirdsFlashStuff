package §false§
{
   import §!y§.§2U§;
   import §"!E§.§#!'§;
   import §#!4§.§<f§;
   import §+]§.§7&§;
   import flash.events.MouseEvent;
   
   public class §=#§ extends §0!4§
   {
       
      
      public function §=#§(param1:§2U§, param2:XML)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
            if(_loc3_)
            {
               getItemByName("Button_SettingSnap").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§-R§);
               if(_loc4_ && param1)
               {
               }
               §§goto(addr99);
            }
            getItemByName("Button_SettingTips").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§"!V§);
            if(!(_loc4_ && param2))
            {
               getItemByName("Button_SettingZoom").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§7!W§);
               if(!(_loc4_ && param2))
               {
                  this.update();
               }
            }
         }
         addr99:
      }
      
      private function update(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§7&§.§=n§().§4V§(§7&§.§4!K§))
            {
               addr24:
               §§push(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_ && _loc2_)
                  {
                     addr41:
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        addr45:
                        var _loc2_:String = §§pop();
                        addr44:
                        if(!_loc4_)
                        {
                           (getItemByName("Button_SettingSnap") as §#!'§).setComponentState(_loc2_);
                        }
                        §§push(§7&§.§=n§());
                        if(!_loc4_)
                        {
                           §§push(§7&§.§&!S§);
                           if(!_loc4_)
                           {
                              §§push(§§pop().§4V§(§§pop()));
                              if(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       if(_loc3_ || this)
                                       {
                                          addr102:
                                          _loc2_ = §§pop();
                                          (getItemByName("Button_SettingTips") as §#!'§).setComponentState(_loc2_);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr142:
                                             _loc2_ = !!§7&§.§=n§().§4V§(§7&§.§5^§) ? §<f§.COMPONENT_STATE_ACTIVE_DEFAULT : §<f§.§`O§;
                                             addr143:
                                             (getItemByName("Button_SettingZoom") as §#!'§).setComponentState(_loc2_);
                                             return;
                                             addr133:
                                             addr132:
                                             addr130:
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr143);
                                 }
                                 else
                                 {
                                    §§push(§<f§.§`O§);
                                    if(_loc3_ || this)
                                    {
                                       §§push(§§pop());
                                       if(!_loc4_)
                                       {
                                          §§goto(addr102);
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr130);
                     }
                  }
                  §§goto(addr45);
               }
               §§goto(addr44);
            }
            else
            {
               §§push(§<f§.§`O§);
               if(!_loc4_)
               {
                  §§goto(addr41);
               }
            }
            §§goto(addr45);
         }
         §§goto(addr24);
      }
      
      private function §-R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7&§.§=n§().§"!$§(§7&§.§4!K§);
            if(_loc3_ || _loc2_)
            {
               addr31:
               this.update();
            }
            return;
         }
         §§goto(addr31);
      }
      
      private function §"!V§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §7&§.§=n§().§"!$§(§7&§.§&!S§);
            if(_loc2_ || param1)
            {
               addr30:
               this.update();
            }
            return;
         }
         §§goto(addr30);
      }
      
      private function §7!W§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §7&§.§=n§().§"!$§(§7&§.§5^§);
            if(_loc2_ || this)
            {
               addr30:
               this.update();
            }
            return;
         }
         §§goto(addr30);
      }
   }
}
