package §7!B§
{
   import §!?§.§'k§;
   import §'4§.§!!t§;
   import §,"&§.§9q§;
   import §3D§.HighscoreSidebar;
   import §6"4§.§&a§;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §8!_§.§ ! §;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;!E§ implements §-!^§
   {
       
      
      private var §1!k§:§'k§ = null;
      
      private var §+!r§:Boolean = false;
      
      private var §^4§:§ ! §;
      
      public function §;!E§(param1:§ ! §)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
         }
         do
         {
            this.§^4§ = param1;
         }
         while(_loc3_);
         
      }
      
      public function levelCompleted(param1:int) : void
      {
         var _loc9_:Boolean = true;
         this.§+!r§ = true;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§+!r§ = true;
         }
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         §§push(§'k§.§6d§(_loc2_.levelProfile));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc3_ == _loc2_.levelProfileSecurity)
            {
               loop0:
               while(true)
               {
                  §@!^§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                  loop1:
                  while(true)
                  {
                     if(_loc2_.levelProfile != undefined)
                     {
                        while(true)
                        {
                           §@!^§.levelProfile = _loc2_.levelProfile;
                           addr290:
                           while(true)
                           {
                              §@!^§.§;!Y§();
                              addr280:
                              while(true)
                              {
                              }
                           }
                        }
                        addr286:
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc2_.st1 != undefined)
                        {
                           while(true)
                           {
                              §§push(§@!^§.§2j§);
                              addr273:
                              while(true)
                              {
                                 §§pop().episodeStars1 = _loc2_.st1;
                                 addr276:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr271:
                        }
                        loop9:
                        while(true)
                        {
                           if(_loc2_.st2 != undefined)
                           {
                              while(_loc4_)
                              {
                                 §§push(§@!^§.§2j§);
                                 while(true)
                                 {
                                    §§pop().episodeStars2 = _loc2_.st2;
                                    addr265:
                                    while(true)
                                    {
                                    }
                                    loop18:
                                    while(_loc4_ || this)
                                    {
                                       §§push(§@!^§.§2j§.episodeStars1 + §@!^§.§2j§.episodeStars2);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop() + §@!^§.§2j§.episodeStars3);
                                       }
                                       §§pop().stars = §§pop();
                                       loop19:
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc2_.sc1 != undefined)
                                                   {
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(§@!^§.§2j§);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§pop().episodeScore1 = _loc2_.sc1;
                                                            loop22:
                                                            while(_loc4_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc2_.sc2 != undefined)
                                                                  {
                                                                     loop24:
                                                                     while(_loc4_)
                                                                     {
                                                                        §§push(§@!^§.§2j§);
                                                                        loop25:
                                                                        while(!_loc5_)
                                                                        {
                                                                           §§pop().episodeScore2 = _loc2_.sc2;
                                                                           loop26:
                                                                           while(!(_loc5_ && _loc3_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ || _loc2_))
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             §§push(§@!^§.§2j§);
                                                                                             if(_loc5_ && this)
                                                                                             {
                                                                                                continue loop25;
                                                                                             }
                                                                                             if(_loc5_ && _loc2_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr112:
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                §§pop().episodeScore3 = _loc2_.sc3;
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                   addr45:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§2"-§(_loc2_);
                                                                                                      if(_loc5_ && param1)
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      §§goto(addr71);
                                                                                                   }
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             addr243:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§pop().episodeStars3 = _loc2_.st3;
                                                                                                   §§goto(addr248);
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr112);
                                                                                             }
                                                                                             §§goto(addr273);
                                                                                             continue loop25;
                                                                                          }
                                                                                          addr359:
                                                                                          addr332:
                                                                                          §§push(§ !g§.§;!'§);
                                                                                          while(true)
                                                                                          {
                                                                                             (§§pop() as §`Y§).§]]§ = new §@!w§("",this.§^4§.§=!+§);
                                                                                             break loop19;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                              §§push(§ !g§.§;!'§);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 (§§pop() as §`Y§).§&,§.§9Z§.reset();
                                                                                 break loop22;
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    break loop25;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr271);
                                                                              }
                                                                              §§goto(addr152);
                                                                           }
                                                                           addr152:
                                                                           continue loop9;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_.sc3 == undefined)
                                                                     {
                                                                        §§goto(addr45);
                                                                     }
                                                                     §§goto(addr71);
                                                                  }
                                                               }
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §&a§.§"!c§ = true;
                                                                  §§goto(addr359);
                                                               }
                                                               addr356:
                                                            }
                                                            addr317:
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr138);
                                                }
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          addr234:
                                          while(!(_loc5_ && _loc3_))
                                          {
                                             §§goto(addr243);
                                             §§push(§@!^§.§2j§);
                                             continue loop19;
                                          }
                                          §§goto(addr265);
                                          §§goto(addr188);
                                       }
                                       §@!^§.§2j§ = new §?A§();
                                       §§goto(addr328);
                                    }
                                 }
                              }
                              continue loop5;
                           }
                           while(true)
                           {
                              if(_loc2_.st3 != undefined)
                              {
                                 §§goto(addr234);
                              }
                              §§goto(addr188);
                              §§goto(addr265);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr356);
         }
         §§goto(addr328);
      }
      
      private function §2"-§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:HighscoreSidebar = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§;
         if(_loc3_ || param1)
         {
            §§push(_loc2_.§?b§(this.§^4§.§=!+§.currentLevel));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(param1.isHighScore)
                     {
                        while(true)
                        {
                           §§push(_loc2_.§?b§(this.§^4§.§=!+§.currentLevel));
                           addr440:
                           while(true)
                           {
                              §§pop().§;B§();
                              addr441:
                              while(true)
                              {
                                 §§push(§ !g§.§;!'§);
                                 addr408:
                                 while(true)
                                 {
                                    §§push((§§pop() as §`Y§).§&,§);
                                    addr411:
                                    while(true)
                                    {
                                       §§push(§§pop().§9Z§);
                                       addr412:
                                       while(true)
                                       {
                                          §§pop().§39§();
                                          addr413:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr177:
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(§ !g§.§;!'§);
                           if(!_loc4_)
                           {
                              if(_loc3_ || param1)
                              {
                                 §§push((§§pop() as §`Y§).§&,§);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop().§9Z§);
                                    if(!_loc4_)
                                    {
                                       addr61:
                                       §§pop().§39§();
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                addr360:
                                                §§push(§ !g§.§;!'§);
                                                if(!_loc4_)
                                                {
                                                   addr365:
                                                   §§push((§§pop() as §`Y§).§&,§);
                                                   if(!_loc4_)
                                                   {
                                                      addr368:
                                                      §§push(§§pop().§9Z§);
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         §§goto(addr412);
                                                      }
                                                      §§pop().§39§();
                                                      addr32:
                                                      return;
                                                      addr376:
                                                   }
                                                   §§goto(addr411);
                                                }
                                                §§goto(addr408);
                                                addr390:
                                             }
                                             addr73:
                                             §§goto(addr32);
                                          }
                                          loop34:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(_loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3));
                                                loop35:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(!(_loc3_ || this))
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§;B§();
                                                      loop36:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr177);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr441);
                                                                     }
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2));
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(this.§^4§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().§=!+§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().currentEpisode);
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         addr205:
                                                                                                         §§push(2);
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr226:
                                                                                                               if(_loc3_ || this)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc3_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr244:
                                                                                                                           loop38:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr245:
                                                                                                                              addr310:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc3_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    addr306:
                                                                                                                                    §§push(_loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2));
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop35;
                                                                                                                                 }
                                                                                                                                 §§goto(addr413);
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                              §§pop().§;B§();
                                                                                                                              break loop36;
                                                                                                                           }
                                                                                                                           addr244:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(§§pop())
                                                                                                                           {
                                                                                                                              continue loop34;
                                                                                                                              addr122:
                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              loop21:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr385:
                                                                                                                                    §§push(_loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1));
                                                                                                                                    break loop29;
                                                                                                                                 }
                                                                                                                                 addr397:
                                                                                                                                 addr317:
                                                                                                                                 §§push(this.§^4§);
                                                                                                                                 while(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§=!+§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().currentEpisode);
                                                                                                                                       addr321:
                                                                                                                                       addr399:
                                                                                                                                       while(_loc3_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          while(_loc3_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr338:
                                                                                                                                                addr402:
                                                                                                                                                while(_loc3_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      continue loop29;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         addr404:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1));
                                                                                                                                                            break loop30;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr403:
                                                                                                                                                   }
                                                                                                                                                   addr383:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr226);
                                                                                                                                             }
                                                                                                                                             §§goto(addr205);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             break loop31;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr400);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§=!+§);
                                                                                                                                    break loop32;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr32);
                                                                                                                     }
                                                                                                                     §§goto(addr338);
                                                                                                                  }
                                                                                                                  §§goto(addr403);
                                                                                                               }
                                                                                                               §§goto(addr337);
                                                                                                            }
                                                                                                            §§goto(addr244);
                                                                                                         }
                                                                                                         §§goto(addr329);
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr320);
                                                                                             }
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr399);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr346);
                                                                                 addr115:
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr122);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr402);
                                                                              }
                                                                           }
                                                                           break;
                                                                           addr93:
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr383);
                                                                           §§goto(addr282);
                                                                        }
                                                                        addr282:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr397);
                                                                     }
                                                                     addr395:
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                               addr389:
                                                               §§pop().§;B§();
                                                               §§goto(addr390);
                                                            }
                                                            addr272:
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr32);
                                                         }
                                                         §§goto(addr245);
                                                         §§goto(addr61);
                                                      }
                                                      §§push((§ !g§.§;!'§ as §`Y§).§&,§);
                                                      if(_loc3_)
                                                      {
                                                         addr264:
                                                         §§push(§§pop().§9Z§);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§pop().§39§();
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr365);
                                                   }
                                                   §§goto(addr389);
                                                }
                                                §§goto(addr440);
                                             }
                                             §§goto(addr404);
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr261);
                              }
                              §§goto(addr360);
                           }
                           §§goto(addr261);
                        }
                     }
                  }
               }
               while(true)
               {
                  if(param1.isEpisodeScore)
                  {
                     §§goto(addr395);
                  }
                  §§goto(addr368);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
      
      public function §1!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§1!k§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  addr72:
                  while(true)
                  {
                     §§push(this.§1!k§);
                     addr74:
                     while(true)
                     {
                        §§pop().dispose();
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr72:
               }
               while(true)
               {
                  this.§+!r§ = true;
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr72);
      }
      
      public function §6[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§1!k§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§1!k§);
                     addr81:
                     while(true)
                     {
                        §§pop().dispose();
                        loop4:
                        while(true)
                        {
                           this.§1!k§ = null;
                           addr49:
                           addr63:
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           addr63:
                           while(true)
                           {
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§+!r§ = false;
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr49);
                  §§goto(addr63);
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr63);
      }
      
      public function get §!">§() : §'k§
      {
         return this.§1!k§;
      }
      
      public function get §0"#§() : Boolean
      {
         return this.§+!r§;
      }
   }
}
