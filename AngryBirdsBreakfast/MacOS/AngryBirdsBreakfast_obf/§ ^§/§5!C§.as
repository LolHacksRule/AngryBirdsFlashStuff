package § ^§
{
   import §"n§.§[!-§;
   import §#"&§.§#!4§;
   import §%_§.§"!!§;
   import §]0§.§5!p§;
   import §]0§.§>I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §5!C§ implements §>I§
   {
       
      
      private var §"N§:§3!_§;
      
      public function §5!C§(param1:§3!_§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§"N§ = param1;
         }
         while(!_loc3_);
         
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §5!p§.§0>§((param1.currentTarget as URLLoader).data);
         if(!_loc10_)
         {
            this.§"N§.§&!1§.close();
         }
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!_loc10_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop15:
                     while(true)
                     {
                        §§push(Boolean(_loc2_.security));
                        if(_loc9_ || this)
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §`!2§.§9!&§ = new §[C§();
                                    if(!_loc10_)
                                    {
                                       if(_loc10_ && this)
                                       {
                                          continue loop15;
                                       }
                                       §§push(§`!2§.§9!&§);
                                       loop3:
                                       while(true)
                                       {
                                          §§pop().name = _loc2_.nickName;
                                          loop4:
                                          while(_loc9_)
                                          {
                                             §§push(§`!2§.§9!&§);
                                             loop5:
                                             while(!_loc10_)
                                             {
                                                §§pop().id = _loc2_.id;
                                                while(!_loc10_)
                                                {
                                                   continue loop5;
                                                   addr78:
                                                   §§push(§`!2§.§9!&§);
                                                   if(!(_loc9_ || _loc2_))
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§pop().§4J§ = _loc2_.security;
                                                   §§goto(addr154);
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      if(false)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§#!4§.§^5§(§`!2§.levelProfile));
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 if(§§pop() != §`!2§.levelProfileSecurity)
                                                                                 {
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       §`!2§.§9!&§ = new §[C§();
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(_loc10_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr78);
                                                                                       }
                                                                                    }
                                                                                    addr261:
                                                                                    var _loc7_:int = 0;
                                                                                    var _loc8_:* = _loc2_.tutorials;
                                                                                    addr288:
                                                                                    §§push(§§hasnext(_loc8_,_loc7_));
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc5_ = §§nextvalue(_loc7_,_loc8_);
                                                                                          if(_loc9_ || _loc2_)
                                                                                          {
                                                                                             (§6!!§.singleton as §4!=§).§?!b§.setTutorialSeen(_loc5_);
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        addr154:
                                                                        while(true)
                                                                        {
                                                                           §`!2§.levelProfile = _loc2_.levelProfile;
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        addr127:
                                                                     }
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                         }
                                                         addr87:
                                                      }
                                                      (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = "SECURITY_ERROR";
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         this.§"N§.dispatchEvent(_loc4_);
                                                         if(_loc10_ && _loc3_)
                                                         {
                                                            addr256:
                                                            if(_loc2_.tutorials is Array)
                                                            {
                                                               §§goto(addr261);
                                                            }
                                                            addr310:
                                                            §§push(_loc2_.chapters is Array);
                                                            if(_loc9_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc7_ = 0;
                                                                     if(_loc9_)
                                                                     {
                                                                        _loc8_ = _loc2_.chapters;
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr342:
                                                                           for each(_loc6_ in _loc8_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr338:
                                                                                 §`!2§.§9!&§.§^!+§(_loc6_);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           addr345:
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§goto(addr379);
                                                                           }
                                                                           break loop1;
                                                                           addr344:
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr345);
                                                                  }
                                                                  break loop1;
                                                               }
                                                            }
                                                            §§goto(addr379);
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr261);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(Boolean(_loc2_));
                                 if(_loc9_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          addr410:
                                          §§pop();
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§goto(addr379);
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr379);
                                 }
                                 §§goto(addr410);
                              }
                              addr379:
                              §`!2§.§?>§();
                              if(!_loc10_)
                              {
                                 addr368:
                                 (§6!!§.singleton as §4!=§).§?!b§.§+!9§ = true;
                                 if(_loc9_)
                                 {
                                    §[!-§.§@v§(§[!-§.§=!$§);
                                    if(_loc9_ || param1)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr368);
                                       }
                                       _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§"m§);
                                       if(!_loc10_)
                                       {
                                          this.§"N§.dispatchEvent(_loc4_);
                                       }
                                       §§goto(addr454);
                                    }
                                    addr378:
                                 }
                              }
                              if(_loc2_.error)
                              {
                                 break;
                              }
                              §§goto(addr454);
                           }
                           (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = _loc2_.error;
                           if(_loc9_)
                           {
                              this.§"N§.dispatchEvent(_loc4_);
                              if(_loc9_)
                              {
                                 addr450:
                                 §[!-§.§@v§(§[!-§.§1!a§);
                              }
                              addr454:
                              return;
                           }
                           §§goto(addr450);
                        }
                        else
                        {
                           §§goto(addr256);
                        }
                     }
                  }
                  addr211:
               }
               §§goto(addr188);
            }
            §§goto(addr211);
         }
      }
      
      public function §'!s§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=o§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         if(!_loc4_)
         {
            _loc2_.§3!N§ = §"!!§.CONNECTION_ERROR_RETRY;
            do
            {
               this.§"N§.dispatchEvent(_loc2_);
            }
            while(_loc4_);
            
         }
      }
   }
}
