package §5G§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §>^§.§;!P§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §?,§ implements §7Z§
   {
      
      public static const §3!?§:String = "StateConnecting";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || StateConnecting)
         {
            §3!?§ = "StateConnecting";
         }
      }
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         while(true)
         {
            §%!0§ = new §5!§(this);
            while(_loc1_)
            {
               §%!0§.init(§>!;§.§ get§.Views.View_Connecting[0]);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
         }
         do
         {
            this.§,O§();
         }
         while(_loc1_ && this);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(_loc4_ && param1)
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        addr91:
                     }
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr64);
                     }
                     continue;
                     return _loc2_;
                  }
                  return §%!$§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr91);
         }
         addr64:
         return §%!$§.STATE_STATUS_COMPLETED;
      }
      
      private function §,O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§>f§.§%!`§ == null)
            {
               if(_loc2_)
               {
                  this.§+!D§("User is null");
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  mNextState = §39§.§3!?§;
                  if(_loc2_)
                  {
                     break;
                  }
                  addr56:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_ || param1)
            {
               addr34:
               var e:Event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_ || this)
               {
                  §§pop().§§slot[2] = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
                  if(_loc4_)
                  {
                     addr70:
                     §§push(§§newactivation());
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop().§§slot[2])
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              if(_loc4_)
                              {
                                 addr100:
                                 if(§§pop().§§slot[2].error)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       this.§+!D§(returnObject.error);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr150:
                                          if(returnObject.errorCode)
                                          {
                                             addr164:
                                             loop3:
                                             while(true)
                                             {
                                                this.§+!D§(returnObject.errorCode);
                                                addr169:
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             addr164:
                                          }
                                          while(true)
                                          {
                                             mNextState = §39§.§3!?§;
                                             addr142:
                                             while(_loc5_ && _loc3_)
                                             {
                                                §§goto(addr164);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          super.onComplete(e);
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          §§goto(addr169);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr164);
                        }
                        addr124:
                        return;
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr169);
               }
               §§goto(addr100);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
            }
            §§goto(addr70);
         }
         §§goto(addr34);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param3 is §^-§)
            {
               if(_loc5_ || param3)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§08§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§push(§08§.LISTENER_EVENT_MOUSE_UP);
                        if(!(_loc5_ || param3))
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              §;!P§.§ !>§();
                           }
                           if(_loc5_ || param1)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 var _loc4_:* = param2;
                                 if(_loc5_ || this)
                                 {
                                    if("CONTINUE" === _loc4_)
                                    {
                                       addr112:
                                       §§push(0);
                                       if(_loc6_ && this)
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
                                          §?,§.sCheetosPopups.hidePopup();
                                          if(_loc5_ || param3)
                                          {
                                             if(true)
                                             {
                                                break loop3;
                                             }
                                             continue;
                                          }
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              return;
                              addr19:
                           }
                        }
                        §§goto(addr19);
                     }
                     addr94:
                     §;!P§.§3l§();
                  }
               }
               §§goto(addr34);
            }
            §§goto(addr19);
         }
         §§goto(addr94);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §+!D§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error") + param1);
         }
      }
   }
}
