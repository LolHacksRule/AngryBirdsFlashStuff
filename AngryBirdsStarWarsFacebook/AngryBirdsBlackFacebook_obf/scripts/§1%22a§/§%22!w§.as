package §1"a§
{
   import §,"N§.§@#B§;
   import §]Q§.§&#P§;
   import flash.events.MouseEvent;
   
   public class §"!w§ extends §;"2§
   {
       
      
      public function §"!w§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               §5!-§.btnGift.addEventListener(MouseEvent.CLICK,this.§##G§);
               if(!_loc3_)
               {
                  while(true)
                  {
                     §5!-§.btnGift.stop();
                     if(!_loc3_)
                     {
                        §5!-§.btnGift.buttonMode = true;
                        if(!(_loc3_ && _loc1_))
                        {
                           if(true)
                           {
                              §5!-§.tabEnabled = §5!-§.tabChildren = false;
                           }
                           continue;
                           break;
                        }
                        break;
                     }
                     break;
                  }
               }
            }
         }
      }
      
      override public function update() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.update();
            while(data)
            {
               addr31:
               if(_loc2_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     while(true)
                     {
                        §5!-§.btnGift.gotoAndStop(1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(Boolean(§?r§));
                           if(_loc2_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       §§goto(addr31);
                                    }
                                    addr113:
                                    break;
                                 }
                              }
                           }
                           addr92:
                           if(§§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §5!-§.btnGift.visible = §5!-§.btnGift.mouseEnabled = false;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr113);
                                 }
                                 break;
                              }
                              break;
                           }
                           §5!-§.btnGift.visible = §5!-§.btnGift.mouseEnabled = true;
                           break;
                        }
                        break;
                     }
                     return;
                     addr37:
                  }
                  §§push(§@#B§(§4#;§.singleton.dataModel).§;!A§.§%#-§(§6!1§.userId));
                  if(!(_loc3_ && this))
                  {
                     §§push(!§§pop());
                  }
                  §§goto(addr92);
               }
               break;
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §5"S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §5!-§.btnGift.gotoAndStop(2);
         }
         while(true)
         {
            §5!-§.btnGift.mouseEnabled = false;
            while(!(_loc1_ && this))
            {
               §5!-§.btnGift.buttonMode = false;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function §##G§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&#P§ = new §&#P§(§&#P§.§%"n§,true);
         if(_loc4_)
         {
            _loc2_.data = §6!1§.userId;
            do
            {
               dispatchEvent(_loc2_);
            }
            while(_loc3_ && _loc2_);
            
         }
      }
   }
}
