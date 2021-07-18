package §7!B§
{
   import § !Y§.§="6§;
   import §!?§.§'k§;
   import §3D§.HighscoreSidebar;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §9y§.§8"3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §=!Q§ implements §-!^§
   {
       
      
      private var §6">§:§@"@§;
      
      public function §=!Q§(param1:§@"@§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§6">§ = param1;
         }
         while(_loc3_);
         
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:LoginHandlerEvent = null;
         var _loc6_:String = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(!(_loc9_ && this))
         {
            this.§6">§.§4>§.close();
            loop0:
            while(true)
            {
               §§push(Boolean(_loc2_));
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     loop34:
                     while(true)
                     {
                        §§pop();
                        addr400:
                        while(true)
                        {
                           §§push(Boolean(_loc2_.security));
                           if(!_loc10_)
                           {
                              if(§§pop())
                              {
                                 addr434:
                                 for each(_loc6_ in _loc2_.tutorials)
                                 {
                                    if(_loc10_)
                                    {
                                       (§ !g§.§;!'§ as §`Y§).§]]§.§8R§(_loc6_);
                                    }
                                 }
                                 if(!(_loc9_ && param1))
                                 {
                                    addr467:
                                    §@!^§.§;!Y§();
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(§ !g§.§;!'§);
                                       if(_loc10_ || _loc2_)
                                       {
                                          (§§pop() as §`Y§).§]]§.§?m§ = true;
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             addr499:
                                             (_loc4_ = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§).reset();
                                             if(_loc10_ || param1)
                                             {
                                                _loc4_.§!!I§();
                                                while(true)
                                                {
                                                   _loc4_.changeState(HighscoreSidebar.§9"§);
                                                }
                                                addr554:
                                             }
                                             loop38:
                                             while(true)
                                             {
                                                addr536:
                                                addr555:
                                                while(true)
                                                {
                                                   (§ !g§.§;!'§ as §`Y§).§&,§.§1M§();
                                                   while(!_loc9_)
                                                   {
                                                      §="6§.§^!U§(§="6§.§+!C§);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         continue loop38;
                                                      }
                                                   }
                                                   §§goto(addr554);
                                                }
                                                _loc5_ = new LoginHandlerEvent(LoginHandlerEvent.§!"8§);
                                                if(_loc10_)
                                                {
                                                   this.§6">§.dispatchEvent(_loc5_);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr589:
                                             if(_loc2_.error)
                                             {
                                                addr593:
                                                (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = _loc2_.error;
                                                if(_loc10_ || param1)
                                                {
                                                   this.§6">§.dispatchEvent(_loc5_);
                                                   if(_loc9_ && param1)
                                                   {
                                                   }
                                                   §§goto(addr635);
                                                }
                                                §="6§.§^!U§(§="6§.§@!>§);
                                             }
                                          }
                                          addr635:
                                          return;
                                       }
                                       §§goto(addr499);
                                    }
                                    §§goto(addr593);
                                 }
                                 §§goto(addr499);
                              }
                              §§goto(addr467);
                           }
                           else
                           {
                              addr433:
                           }
                           continue loop34;
                        }
                     }
                     addr399:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §@!^§.§2j§ = new §?A§();
                           loop3:
                           while(true)
                           {
                              §§push(§@!^§.§2j§);
                              while(true)
                              {
                                 §§pop().name = _loc2_.nickName;
                                 addr371:
                                 while(true)
                                 {
                                    §§push(§@!^§.§2j§);
                                    addr361:
                                    while(true)
                                    {
                                       §§pop().id = _loc2_.id;
                                       addr364:
                                       while(true)
                                       {
                                          §§push(§@!^§.§2j§);
                                          loop8:
                                          while(true)
                                          {
                                             §§pop().§,!0§ = _loc2_.security;
                                             addr357:
                                             while(true)
                                             {
                                                §§push(§@!^§.§2j§);
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc9_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§pop().verified = _loc2_.verified;
                                 loop27:
                                 while(!_loc9_)
                                 {
                                    §@!^§.levelProfile = _loc2_.levelProfile;
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc10_ || _loc3_)
                                          {
                                             if(_loc2_.levelProfileSecurity != undefined)
                                             {
                                                loop28:
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop27;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      addr116:
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §@!^§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                                                         loop29:
                                                         while(true)
                                                         {
                                                            addr97:
                                                            loop30:
                                                            while(true)
                                                            {
                                                               §§push(§'k§.§6d§(§@!^§.levelProfile));
                                                               loop31:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop() != §@!^§.levelProfileSecurity)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       if(_loc9_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr69:
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          addr76:
                                                                                          if(!(_loc10_ || _loc2_))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          §@!^§.§2j§ = new §?A§();
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop29;
                                                                                             }
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = "SECURITY_ERROR";
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         this.§6">§.dispatchEvent(_loc5_);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§@!^§.§2j§);
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().episodeStars1 = _loc2_.st1;
                                                                                                      addr296:
                                                                                                      while(_loc10_)
                                                                                                      {
                                                                                                         §§push(§@!^§.§2j§);
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§goto(addr371);
                                                                                                   }
                                                                                                }
                                                                                                addr305:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§@!^§.§2j§);
                                                                                                addr258:
                                                                                                addr309:
                                                                                                while(_loc10_ || this)
                                                                                                {
                                                                                                   §§pop().episodeStars3 = _loc2_.st3;
                                                                                                   if(_loc9_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr167);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().episodeScore2 = _loc2_.sc2;
                                                                                                   break loop28;
                                                                                                   §§goto(addr258);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr434);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ || _loc2_)
                                                                                          {
                                                                                             §§push(§@!^§.§2j§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                      addr245:
                                                                                                   }
                                                                                                   §§push(§@!^§.§2j§.episodeStars1 + §@!^§.§2j§.episodeStars2);
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + §@!^§.§2j§.episodeStars3);
                                                                                                   }
                                                                                                   §§pop().stars = §§pop();
                                                                                                   while(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push(§@!^§.§2j§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().starsNeededToUnlockEpisode2 = _loc2_.min2;
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            §§push(§@!^§.§2j§);
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§goto(addr279);
                                                                                             }
                                                                                             §§goto(addr361);
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr69);
                                                                                       }
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop31;
                                                                           }
                                                                           continue loop32;
                                                                        }
                                                                        continue loop28;
                                                                     }
                                                                     §§goto(addr433);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr204);
                                                }
                                                while(true)
                                                {
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§goto(addr302);
                                                      §§push(§@!^§.§2j§);
                                                   }
                                                   break;
                                                   §§goto(addr116);
                                                }
                                                §§goto(addr357);
                                             }
                                             §§goto(addr97);
                                          }
                                          else
                                          {
                                             §§goto(addr400);
                                          }
                                       }
                                       §§goto(addr245);
                                    }
                                    §§goto(addr434);
                                 }
                                 §§goto(addr364);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(Boolean(_loc2_));
                        if(!(_loc9_ && param1))
                        {
                           if(§§pop())
                           {
                              if(_loc10_ || _loc2_)
                              {
                                 addr586:
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    §§goto(addr589);
                                 }
                                 break;
                              }
                           }
                           §§goto(addr589);
                        }
                        §§goto(addr586);
                     }
                     §§goto(addr378);
                  }
                  §§goto(addr593);
               }
               §§goto(addr399);
            }
         }
         §§goto(addr434);
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         if(_loc4_ || this)
         {
            _loc2_.§#5§ = §8"3§.CONNECTION_ERROR_RETRY;
         }
         do
         {
            this.§6">§.dispatchEvent(_loc2_);
         }
         while(!(_loc4_ || _loc3_));
         
      }
   }
}
