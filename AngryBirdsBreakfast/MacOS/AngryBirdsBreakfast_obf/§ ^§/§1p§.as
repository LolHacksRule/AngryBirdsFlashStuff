package § ^§
{
   import §"n§.§[!-§;
   import §#"&§.§#!4§;
   import §%_§.§"!!§;
   import §;!§.§+A§;
   import §]0§.§5!p§;
   import §]0§.§>I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §1p§ implements §>I§
   {
       
      
      private var §"N§:§3!_§;
      
      public function §1p§(param1:§3!_§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§"N§ = param1;
            }
            while(_loc3_);
            
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = §5!p§.§0>§((param1.currentTarget as URLLoader).data);
         if(!(_loc7_ && _loc3_))
         {
            this.§"N§.§&!1§.close();
            loop0:
            while(true)
            {
               if(!_loc2_.security)
               {
                  if(_loc2_.error)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        addr303:
                        _loc5_ = _loc2_.error;
                     }
                     (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = _loc5_;
                     if(!_loc7_)
                     {
                        this.§"N§.dispatchEvent(_loc4_);
                        if(_loc7_)
                        {
                        }
                        break;
                     }
                     §[!-§.§@v§(§[!-§.§&!l§);
                     break;
                  }
               }
               loop1:
               while(!(_loc7_ && param1))
               {
                  §`!2§.§9!&§ = new §[C§();
                  loop2:
                  while(true)
                  {
                     §§push(§`!2§.§9!&§);
                     loop3:
                     while(true)
                     {
                        §§pop().name = _loc2_.nickName;
                        if(_loc6_ || this)
                        {
                           §§push(§`!2§.§9!&§);
                           while(true)
                           {
                              §§pop().id = _loc2_.id;
                              §§push(§`!2§.§9!&§);
                              addr175:
                              continue loop2;
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 continue loop3;
                              }
                              §§pop().§4J§ = _loc2_.security;
                              if(!(_loc7_ && _loc3_))
                              {
                                 §`!2§.levelProfile = _loc2_.levelProfile;
                                 loop6:
                                 for(; !_loc7_; if(_loc6_ || this)
                                 {
                                    continue loop1;
                                 })
                                 {
                                    if(_loc2_.levelProfileSecurity != undefined)
                                    {
                                       addr121:
                                       while(true)
                                       {
                                          §`!2§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                                          addr125:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr121:
                                    }
                                    while(true)
                                    {
                                       §§push(§#!4§.§^5§(§`!2§.levelProfile));
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             addr98:
                                             _loc3_ = §§pop();
                                             if(_loc6_ || param1)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         if(§§pop() != §`!2§.levelProfileSecurity)
                                                         {
                                                            if(_loc7_ && param1)
                                                            {
                                                               addr268:
                                                               _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§3[§);
                                                            }
                                                            else
                                                            {
                                                               addr268:
                                                            }
                                                            continue loop6;
                                                            if(_loc6_)
                                                            {
                                                               this.§"N§.dispatchEvent(_loc4_);
                                                               if(!_loc7_)
                                                               {
                                                                  (§6!!§.singleton as §4!=§).§=!V§(§+A§.§-!q§);
                                                               }
                                                            }
                                                            break loop0;
                                                         }
                                                         addr239:
                                                         §`!2§.§?>§();
                                                         if(!_loc7_)
                                                         {
                                                            addr243:
                                                            (§6!!§.singleton as §4!=§).§?!b§.§+!9§ = true;
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr268);
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr121);
                                                   }
                                                }
                                                §§goto(addr125);
                                             }
                                             break;
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr98);
                                    }
                                    §[!-§.§@v§(§[!-§.§01§);
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       §§goto(addr303);
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr268);
                           }
                        }
                        else
                        {
                           §§goto(addr257);
                        }
                     }
                  }
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  §`!2§.§9!&§ = new §[C§();
                  if(_loc6_ || _loc3_)
                  {
                     if(false)
                     {
                        §§goto(addr88);
                     }
                     (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = "SECURITY_ERROR";
                     if(!(_loc7_ && this))
                     {
                        this.§"N§.dispatchEvent(_loc4_);
                        if(!(_loc7_ && _loc3_))
                        {
                           return;
                        }
                     }
                     §§goto(addr239);
                  }
                  §§goto(addr243);
               }
            }
            return;
         }
         §§goto(addr121);
      }
      
      public function §'!s§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=o§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         if(_loc3_ || _loc3_)
         {
            _loc2_.§3!N§ = §"!!§.CONNECTION_ERROR_RETRY;
            do
            {
               this.§"N§.dispatchEvent(_loc2_);
            }
            while(!_loc3_);
            
         }
      }
   }
}
