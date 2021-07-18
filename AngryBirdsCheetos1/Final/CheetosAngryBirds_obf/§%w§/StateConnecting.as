package §%w§
{
   import § !G§.§`e§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§'n§;
   import §6v§.§>S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §;s§ implements §3n§
   {
      
      public static const §9!P§:String = "StateConnecting";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!P§ = "StateConnecting";
         }
      }
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               §3t§ = new §'j§(this);
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     §3t§.init(§0p§.§'! §.Views.View_Connecting[0]);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
         do
         {
            this.§1D§();
         }
         while(!_loc2_);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() == §&c§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           return §&c§.STATE_STATUS_COMPLETED;
                        }
                        addr76:
                        return _loc2_;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §&c§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr76);
         }
         §§goto(addr78);
      }
      
      private function §1D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§9!H§.§ o§ != null)
            {
               loop0:
               while(true)
               {
                  §7?§.§3J§();
                  loop1:
                  while(true)
                  {
                     this.callObject = {
                        "type":§>S§.§+Z§,
                        "sessionID":§>S§.§9J§(),
                        "userID":§9!H§.§ o§.name
                     };
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     §§goto(addr104);
                  }
               }
            }
            this.§']§("User is null");
            addr104:
            return;
         }
         §§goto(addr53);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && param1))
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               addr34:
               var e:Event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[2] = §"!Q§.§!i§((e.currentTarget as URLLoader).data);
                  if(!_loc5_)
                  {
                     addr65:
                     §§push(§§newactivation());
                     if(_loc4_ || _loc3_)
                     {
                        addr83:
                        if(§§pop().§§slot[2])
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              if(_loc4_)
                              {
                                 addr95:
                                 if(§§pop().§§slot[2].error)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       this.§']§(returnObject.error);
                                       if(_loc5_ && _loc2_)
                                       {
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          super.onComplete(e);
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          addr159:
                                          while(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             addr130:
                                             while(true)
                                             {
                                                mNextState = §`L§.§9!P§;
                                                §§goto(addr135);
                                                continue loop0;
                                             }
                                          }
                                          addr135:
                                       }
                                       addr119:
                                       return;
                                       addr129:
                                       addr137:
                                    }
                                    §§goto(addr129);
                                 }
                                 §§push(§§newactivation());
                              }
                              if(§§pop().§§slot[2].errorCode)
                              {
                                 if(_loc4_)
                                 {
                                    this.§']§(returnObject.errorCode);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr119);
               }
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               §§goto(addr65);
            }
            §§goto(addr83);
         }
         §§goto(addr34);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param3 is §0!@§)
            {
               if(_loc5_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§'n§.LISTENER_EVENT_MOUSE_DOWN);
                     loop1:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§push(§'n§.LISTENER_EVENT_MOUSE_UP);
                              if(_loc5_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr47:
                                       §`e§.§+z§();
                                    }
                                    if(_loc5_ || param2)
                                    {
                                       break;
                                    }
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        addr34:
                        if(!(_loc6_ && param2))
                        {
                           addr84:
                           §`e§.§`i§();
                        }
                        while(true)
                        {
                           break loop1;
                        }
                     }
                     §§goto(addr19);
                  }
               }
               §§goto(addr84);
            }
            addr19:
            loop3:
            while(true)
            {
               var _loc4_:* = param2;
               if(_loc5_ || param3)
               {
                  if("CONTINUE" === _loc4_)
                  {
                     addr102:
                     §§push(0);
                     if(_loc6_ && param1)
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
                        §;s§.sCheetosPopups.hidePopup();
                        if(_loc5_ || this)
                        {
                           if(true)
                           {
                              break loop3;
                           }
                           continue;
                        }
                  }
               }
               §§goto(addr102);
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.callObject == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.callObject.type == null);
                              loop5:
                              while(_loc2_ || this)
                              {
                                 §§push(!§§pop());
                                 while(!_loc3_)
                                 {
                                    addr37:
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr53:
                                             loop8:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §9!H§.§ o§ = null;
                                                         }
                                                         addr69:
                                                      }
                                                      else
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.callObject.type == §>S§.§+Z§);
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            addr106:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop9;
                                                            }
                                                         }
                                                         §§goto(addr37);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc2_ || param1)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                break;
                                                §§goto(addr53);
                                             }
                                             return;
                                             addr64:
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc2_ || param1))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§goto(addr64);
                        }
                        §§goto(addr106);
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §']§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.callObject == null);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.callObject.type == null);
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!(_loc3_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             addr77:
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                loop6:
                                                for(; !(_loc3_ && this); §§goto(addr77))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.callObject.type == §>S§.§+Z§);
                                                      if(_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr112:
                                                      while(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§pop();
                                                            continue loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             §9!H§.§ o§ = null;
                                          }
                                          break;
                                       }
                                       §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error") + param1);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          §§goto(addr87);
                                       }
                                       return;
                                       addr74:
                                    }
                                 }
                                 continue loop1;
                                 addr102:
                              }
                              §§goto(addr112);
                           }
                        }
                     }
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr124);
      }
   }
}
