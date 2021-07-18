package §!X§
{
   import §!?§.§=!_§;
   import §7!H§.§3z§;
   import §7!H§.§8"6§;
   import §7!H§.§>1§;
   import flash.display.MovieClip;
   
   public class §<!3§
   {
       
      
      protected var §'d§:§>1§;
      
      protected var §3u§:§=!_§;
      
      protected var §5U§:§&"E§;
      
      protected var §;l§:§^"&§;
      
      protected var §?"<§:int;
      
      protected var §&!i§:§#"#§;
      
      public function §<!3§(param1:§>1§, param2:§=!_§, param3:int, param4:§&"E§ = null, param5:§^"&§ = null, param6:§#"#§ = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this.§'d§ = param1;
               loop1:
               while(_loc8_ || param3)
               {
                  this.§3u§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§?"<§ = param3;
                     addr100:
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        if(_loc8_)
                        {
                           §§pop().§5U§ = param4 || new §8!o§();
                           loop4:
                           for(; _loc8_; if(_loc8_ || this)
                           {
                              return;
                           })
                           {
                              §§push(this);
                              if(!(_loc7_ && param1))
                              {
                                 §§pop().§;l§ = param5 || new §5p§();
                                 while(_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(this);
                                    if(_loc8_)
                                    {
                                       §§pop().§&!i§ = param6 || new §7!R§();
                                       if(_loc8_)
                                       {
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    §§goto(addr33);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr71);
                           }
                           continue loop2;
                        }
                        §§goto(addr89);
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function get §6v§() : §&"E§
      {
         return this.§5U§;
      }
      
      public function set §6v§(param1:§&"E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5U§ = param1;
         }
      }
      
      public function get §+!Q§() : §^"&§
      {
         return this.§;l§;
      }
      
      public function set §+!Q§(param1:§^"&§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;l§ = param1;
         }
      }
      
      public function get §[=§() : §#"#§
      {
         return this.§&!i§;
      }
      
      public function set §[=§(param1:§#"#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!i§ = param1;
         }
      }
      
      protected function §,B§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §3z§
      {
         return new TutorialPopup(this.§?"<§,param4,param1,param2,this.§[=§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || this)
         {
            this.§3u§.userProgress.saveTutorialSeen(param2);
         }
         do
         {
            this.§'d§.openPopup(this.§,B§(param1,param2,param3,param4),param5,param6,param7,param8);
         }
         while(!(_loc9_ || this));
         
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§&"E§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:Boolean = true;
         if(!_loc11_)
         {
            §§push(this.§3u§.userProgress.hasTutorialBeenSeen(param1));
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc11_ && param3))
                  {
                     §§push(param5);
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue;
                        }
                        if(!(_loc11_ && this))
                        {
                           break;
                        }
                        while(true)
                        {
                           continue loop1;
                           addr52:
                           loop4:
                           while(!(_loc11_ && param1))
                           {
                              while(param7 != null)
                              {
                                 if(!(_loc11_ && this))
                                 {
                                    if(!_loc12_)
                                    {
                                       continue loop4;
                                    }
                                    this.§5U§ = param7;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              var _loc10_:MovieClip = this.§5U§.solve(param1);
                              if(!_loc11_)
                              {
                                 addr217:
                                 §§push(!param8);
                                 if(!param8)
                                 {
                                    addr220:
                                    §§pop();
                                    addr221:
                                    §§push(this.§'d§.isPopupOpenById(TutorialPopup.§[!U§));
                                    if(!(_loc11_ && param1))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc12_ || param1)
                                       {
                                          addr165:
                                          if(§§pop())
                                          {
                                             addr167:
                                             §§push(true);
                                             if(!(_loc11_ && param1))
                                             {
                                                addr196:
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc11_ && param3))
                                                {
                                                   param8 = §§pop();
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr217);
                                             }
                                             addr179:
                                             if(!_loc11_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc12_ || this)
                                                {
                                                   addr189:
                                                   if(_loc12_ || param2)
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§push(param8);
                                          if(!_loc11_)
                                          {
                                             §§goto(addr179);
                                          }
                                          §§goto(addr189);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr165);
                              }
                              addr215:
                              if(_loc10_)
                              {
                                 if(!(_loc11_ && this))
                                 {
                                    if(!(_loc11_ && param2))
                                    {
                                       this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
                                    }
                                    §§goto(addr215);
                                 }
                                 if(!(_loc11_ && param1))
                                 {
                                    if(!_loc12_)
                                    {
                                       §§goto(addr221);
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr167);
                              }
                              addr93:
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr22);
            }
         }
         addr82:
      }
      
      public function §#!s§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§&"E§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc9_:Vector.<Boolean> = new Vector.<Boolean>(param1.length);
         var _loc10_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc10_);
            loop1:
            while(true)
            {
               if(§§pop() >= _loc9_.length)
               {
                  loop2:
                  while(true)
                  {
                     §§push(int(param1.length - 1));
                     loop3:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc10_);
                              if(!_loc19_)
                              {
                                 if(_loc20_ || this)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       loop7:
                                       for(; !_loc19_; if(!(_loc20_ || param1))
                                       {
                                          continue;
                                       },if(!(_loc19_ && this))
                                       {
                                          this.§5U§ = param6;
                                          §§goto(addr64);
                                       }
                                       else
                                       {
                                          addr169:
                                          §§push(param5);
                                          if(_loc20_)
                                          {
                                             if(§§pop())
                                             {
                                                _loc9_[_loc10_] = false;
                                                break;
                                             }
                                             addr173:
                                             if(!(_loc20_ || param2))
                                             {
                                                _loc10_++;
                                                continue loop0;
                                                addr205:
                                             }
                                             param1.splice(_loc10_,1);
                                             §§goto(addr184);
                                          }
                                       },§§goto(addr215))
                                       {
                                          if(param1.length != 0)
                                          {
                                             while(param6 != null)
                                             {
                                                if(_loc20_ || param3)
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue;
                                                }
                                                addr64:
                                                if(!(_loc19_ && param3))
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      if(!(_loc19_ && param3))
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc9_.splice(_loc10_,1);
                                                               continue loop9;
                                                            }
                                                            addr184:
                                                         }
                                                         addr112:
                                                         §§push(_loc10_);
                                                         if(_loc19_ && param2)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() - 1);
                                                         if(!_loc20_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         _loc10_ = §§pop();
                                                      }
                                                   }
                                                   if(!_loc19_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                addr101:
                                                if(!_loc19_)
                                                {
                                                   if(_loc20_ || param2)
                                                   {
                                                      return;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                             §§push(param2);
                                             if(!(_loc19_ && param2))
                                             {
                                                break loop5;
                                             }
                                             addr215:
                                             var _loc13_:* = §§pop();
                                             var _loc14_:* = false;
                                             §§push(param4);
                                             if(_loc20_ || param2)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             var _loc15_:* = §§pop();
                                             var _loc16_:int = 0;
                                             var _loc17_:int = 0;
                                             §§push(§8"6§.§8p§);
                                             if(_loc20_ || param3)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             var _loc18_:* = §§pop();
                                             if(_loc20_ || param2)
                                             {
                                                addr359:
                                                §§push(!param7);
                                                if(!param7)
                                                {
                                                   addr361:
                                                   §§pop();
                                                   addr362:
                                                   §§push(this.§'d§.isPopupOpenById(TutorialPopup.§[!U§));
                                                   if(!_loc19_)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc20_ || param2)
                                                         {
                                                            addr319:
                                                            if(§§pop())
                                                            {
                                                               if(_loc20_ || param2)
                                                               {
                                                                  §§push(true);
                                                                  if(!_loc19_)
                                                                  {
                                                                     addr348:
                                                                     param7 = §§pop();
                                                                     §§goto(addr347);
                                                                  }
                                                                  addr343:
                                                                  if(!_loc19_)
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        addr347:
                                                                        if(_loc20_ || param3)
                                                                        {
                                                                           addr280:
                                                                           §§push(int(param1.length - 1));
                                                                           if(_loc20_ || param1)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              §§goto(addr537);
                                                                           }
                                                                           if(§§pop() >= 0)
                                                                           {
                                                                              _loc12_ = param1[_loc10_];
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(_loc20_ || param1)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                    if(_loc11_ = this.§5U§.solve(_loc12_))
                                                                                    {
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             if(§§pop() != 0)
                                                                                             {
                                                                                                if(!(_loc19_ && param2))
                                                                                                {
                                                                                                   §§push(param8);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc20_ || param2)
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(!(_loc19_ && param3))
                                                                                                               {
                                                                                                                  addr532:
                                                                                                                  _loc15_ = false;
                                                                                                                  addr529:
                                                                                                                  §§push(§8"6§.§ K§);
                                                                                                                  if(_loc20_ || param3)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                  }
                                                                                                                  _loc18_ = §§pop();
                                                                                                                  §§push(_loc16_);
                                                                                                                  §§push(param1.length - 1);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc17_);
                                                                                                                  }
                                                                                                                  addr530:
                                                                                                                  addr533:
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     if(_loc20_ || this)
                                                                                                                     {
                                                                                                                        addr493:
                                                                                                                        §§push(param3);
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr503:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr532);
                                                                                                                        }
                                                                                                                        _loc14_ = §§pop();
                                                                                                                     }
                                                                                                                     addr505:
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        addr462:
                                                                                                                        this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],_loc18_,_loc13_,_loc14_,_loc15_,param7);
                                                                                                                        _loc16_++;
                                                                                                                        addr446:
                                                                                                                        addr475:
                                                                                                                        addr461:
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           if(_loc20_ || this)
                                                                                                                           {
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr432:
                                                                                                                                 _loc10_ = §§pop() - 1;
                                                                                                                                 addr431:
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr446);
                                                                                                                                          }
                                                                                                                                          §§goto(addr534);
                                                                                                                                       }
                                                                                                                                       §§goto(addr475);
                                                                                                                                    }
                                                                                                                                    §§goto(addr461);
                                                                                                                                 }
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                    {
                                                                                                                                       addr458:
                                                                                                                                       §§goto(addr446);
                                                                                                                                    }
                                                                                                                                    §§goto(addr530);
                                                                                                                                 }
                                                                                                                                 §§goto(addr505);
                                                                                                                              }
                                                                                                                              §§goto(addr529);
                                                                                                                           }
                                                                                                                           §§goto(addr532);
                                                                                                                        }
                                                                                                                        §§goto(addr432);
                                                                                                                     }
                                                                                                                     §§goto(addr533);
                                                                                                                  }
                                                                                                                  §§goto(addr462);
                                                                                                                  addr417:
                                                                                                                  addr531:
                                                                                                               }
                                                                                                               §§goto(addr493);
                                                                                                            }
                                                                                                            §§goto(addr532);
                                                                                                         }
                                                                                                         §§goto(addr417);
                                                                                                      }
                                                                                                      §§goto(addr531);
                                                                                                   }
                                                                                                   §§goto(addr503);
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                             §§goto(addr532);
                                                                                          }
                                                                                          §§goto(addr431);
                                                                                       }
                                                                                       §§goto(addr458);
                                                                                    }
                                                                                    _loc17_++;
                                                                                    §§goto(addr432);
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                           }
                                                                           addr356:
                                                                        }
                                                                        addr537:
                                                                        if(_loc20_ || param3)
                                                                        {
                                                                           addr534:
                                                                           §§push(_loc10_);
                                                                           addr300:
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            §§push(param7);
                                                            if(_loc20_)
                                                            {
                                                               addr335:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc20_ || param1)
                                                               {
                                                                  §§goto(addr343);
                                                               }
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr300);
                                          }
                                          §§goto(addr101);
                                       }
                                       if(!(_loc20_ || param1))
                                       {
                                          §§goto(addr173);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§3u§.userProgress.hasTutorialBeenSeen(param1[_loc10_]));
                                       if(!(_loc20_ || this))
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr169);
                                       }
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr215);
                        }
                     }
                  }
               }
               else
               {
                  _loc9_[_loc10_] = true;
               }
               §§goto(addr205);
            }
         }
      }
      
      public function §2!Q§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'d§.closePopup(this.§?"<§,param1,true,false);
         }
      }
   }
}
