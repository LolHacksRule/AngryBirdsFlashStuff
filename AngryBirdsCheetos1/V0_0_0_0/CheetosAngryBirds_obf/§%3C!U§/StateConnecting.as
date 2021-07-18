package §<!U§
{
   import §!J§.§[&§;
   import §"!+§.§2!U§;
   import §"!+§.§6!7§;
   import §"!+§.§=w§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §2e§.§4!E§;
   import §3o§.§;!=§;
   import §8!8§.§+!M§;
   import §@,§.§"j§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class StateConnecting extends §]u§ implements §=w§
   {
      
      public static const §`O§:String = "StateConnecting";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`O§ = "StateConnecting";
         }
      }
      
      private var callObject:Object;
      
      public function StateConnecting(param1:Boolean, param2:String = "StateConnecting")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
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
            do
            {
               §"c§ = new §,!N§(this);
               do
               {
                  §"c§.init(§@]§.§3!6§.Views.View_Connecting[0]);
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            do
            {
               this.§9U§();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(§§pop() != §[4§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr83);
                  }
                  else
                  {
                     addr84:
                     while(true)
                     {
                     }
                     addr84:
                  }
               }
               while(mNextState.length > 0)
               {
                  if(!_loc3_)
                  {
                     return §[4§.STATE_STATUS_COMPLETED;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr84);
               }
               return §[4§.STATE_STATUS_RUNNING;
            }
            addr83:
            return _loc2_;
         }
         §§goto(addr84);
      }
      
      private function §9U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(§;!=§.§`!;§ != null)
            {
               while(true)
               {
                  §[&§.§[]§();
                  loop1:
                  while(_loc1_ || _loc2_)
                  {
                     this.callObject = {
                        "type":§4!E§.§!!I§,
                        "sessionID":§4!E§.§0E§(),
                        "userID":§;!=§.§`!;§.name
                     };
                     while(!_loc2_)
                     {
                        new §4!E§(this.callObject,§,l§.§2!!§,this,§4!E§.§;4§);
                        if(_loc1_ || _loc2_)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 return;
                              }
                              addr111:
                              this.§<p§("User is null");
                              break;
                           }
                           continue loop1;
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr114);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
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
               if(_loc4_ || this)
               {
                  §§pop().§§slot[2] = §2!U§.§1!#§((e.currentTarget as URLLoader).data);
                  if(_loc4_)
                  {
                     addr70:
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        if(§§pop().§§slot[2])
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc5_ && param1))
                              {
                                 addr100:
                                 if(§§pop().§§slot[2].error)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       this.§<p§(returnObject.error);
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr153:
                                          if(returnObject.errorCode)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                this.§<p§(returnObject.errorCode);
                                                addr179:
                                                while(true)
                                                {
                                                }
                                                addr179:
                                             }
                                             §§goto(addr179);
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             mNextState = §6l§.§`O§;
                                             addr145:
                                             addr152:
                                             while(_loc5_ && _loc3_)
                                             {
                                                §§goto(addr179);
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                super.onComplete(e);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr145);
                                             }
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr124);
                                 }
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr179);
                        }
                        addr124:
                        return;
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr152);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            if(param3 is §+!M§)
            {
               if(!_loc5_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§]^§.LISTENER_EVENT_MOUSE_DOWN);
                     loop1:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§push(§]^§.LISTENER_EVENT_MOUSE_UP);
                              if(_loc6_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          addr70:
                                          §"j§.§1!2§();
                                       }
                                       else
                                       {
                                          addr87:
                                          while(true)
                                          {
                                             break loop1;
                                          }
                                          addr35:
                                       }
                                    }
                                    break;
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        if(_loc6_)
                        {
                           §"j§.§%!@§();
                        }
                     }
                     §§goto(addr25);
                  }
               }
               §§goto(addr87);
            }
            addr25:
            loop3:
            while(true)
            {
               var _loc4_:* = param2;
               if(_loc6_ || param1)
               {
                  if("CONTINUE" === _loc4_)
                  {
                     addr103:
                     §§push(0);
                     if(_loc6_ || this)
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
                        §]u§.sCheetosPopups.hidePopup();
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break loop3;
                           }
                           continue;
                        }
                  }
               }
               §§goto(addr103);
            }
            return;
         }
         §§goto(addr70);
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
                  loop2:
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
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       addr106:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §;!=§.§`!;§ = null;
                                                   }
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         addr113:
                                                         §§push(this.callObject.type == §4!E§.§!!I§);
                                                         if(_loc3_ || this)
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr110:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop6;
                                                            §§goto(addr113);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr81:
                                                   }
                                                }
                                                return;
                                             }
                                             addr67:
                                          }
                                       }
                                    }
                                    addr105:
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr106);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr105);
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §<p§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
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
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr132:
                                 loop11:
                                 while(true)
                                 {
                                    §§push(this.callObject.type == §4!E§.§!!I§);
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    addr79:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr115:
                                             if(_loc3_ || this)
                                             {
                                                §;!=§.§`!;§ = null;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   continue;
                                                }
                                                continue loop11;
                                             }
                                             while(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                addr151:
                                                while(true)
                                                {
                                                   §§push(this.callObject.type == null);
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr115);
                                                      §§push(!§§pop());
                                                   }
                                                   §§goto(addr115);
                                                }
                                             }
                                             addr115:
                                             addr98:
                                             addr150:
                                          }
                                          while(true)
                                          {
                                             §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Error") + param1);
                                             if(!(_loc2_ && param1))
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   return;
                                                }
                                                §§goto(addr151);
                                             }
                                             else
                                             {
                                                §§goto(addr98);
                                             }
                                          }
                                          §§goto(addr79);
                                       }
                                       addr86:
                                    }
                                    §§goto(addr115);
                                 }
                              }
                           }
                           §§goto(addr86);
                        }
                        continue;
                        addr126:
                     }
                     §§goto(addr150);
                  }
               }
            }
         }
         §§goto(addr132);
      }
   }
}
