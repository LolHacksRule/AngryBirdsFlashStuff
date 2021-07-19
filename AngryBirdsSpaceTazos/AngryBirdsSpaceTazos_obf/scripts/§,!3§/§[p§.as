package §,!3§
{
   public class §[p§
   {
       
      
      private var §5!;§:Boolean;
      
      private var §1!H§:Object;
      
      private var jsonString:String;
      
      private var §>"$§:int;
      
      private var §"B§:String;
      
      private var §-!u§:RegExp;
      
      public function §[p§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§-!u§ = /[\x00-\x1F]/;
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.jsonString = param1;
               loop2:
               do
               {
                  this.§5!;§ = param2;
                  while(true)
                  {
                     this.§>"$§ = 0;
                     while(!(_loc4_ && param1))
                     {
                        if(_loc3_)
                        {
                           this.§#!]§();
                           if(_loc3_ || this)
                           {
                              continue loop2;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               while(!(_loc3_ || _loc3_));
               
               continue loop0;
            }
         }
      }
      
      public function §&!@§() : §2!§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc1_:§2!§ = new §2!§();
         if(!(_loc8_ && this))
         {
            this.§ !@§();
         }
         §§push(this.§"B§);
         loop0:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(!(_loc8_ && this))
            {
               if("{" === _loc6_)
               {
                  if(_loc7_ || _loc1_)
                  {
                     §§push(0);
                     if(_loc8_)
                     {
                     }
                  }
                  else
                  {
                     addr837:
                     §§push(7);
                     if(!(_loc8_ && this))
                     {
                        addr845:
                     }
                     else
                     {
                        addr878:
                     }
                  }
               }
               else if("}" === _loc6_)
               {
                  if(!_loc8_)
                  {
                     §§push(1);
                     if(_loc7_ || this)
                     {
                     }
                  }
                  else
                  {
                     addr795:
                     §§push(4);
                     if(!(_loc7_ || _loc2_))
                     {
                        addr826:
                     }
                  }
               }
               else if("[" === _loc6_)
               {
                  if(_loc7_ || _loc1_)
                  {
                     §§push(2);
                     if(_loc8_ && _loc3_)
                     {
                        §§goto(addr826);
                     }
                  }
                  else
                  {
                     addr786:
                     §§push(3);
                     if(_loc8_)
                     {
                        addr864:
                     }
                  }
               }
               else
               {
                  if("]" === _loc6_)
                  {
                     if(_loc7_ || _loc1_)
                     {
                        §§goto(addr786);
                     }
                     addr905:
                     loop13:
                     switch(§§pop())
                     {
                        case 0:
                           _loc1_.type = §[H§.§?"6§;
                           while(true)
                           {
                              _loc1_.value = "{";
                              break loop13;
                           }
                           break;
                        case 1:
                           _loc1_.type = §[H§.§!!o§;
                           _loc1_.value = "}";
                           this.§#!]§();
                           addr602:
                           break loop0;
                           addr610:
                           addr602:
                           addr597:
                        case 2:
                           _loc1_.type = §[H§.§&!S§;
                           while(true)
                           {
                              _loc1_.value = "[";
                              if(_loc8_)
                              {
                                 break loop0;
                              }
                              if(!_loc8_)
                              {
                                 this.§#!]§();
                                 addr574:
                                 if(!_loc8_)
                                 {
                                    break loop0;
                                 }
                                 break loop13;
                              }
                           }
                           break;
                        case 3:
                           _loc1_.type = §[H§.§&"A§;
                           _loc1_.value = "]";
                           addr560:
                           if(!_loc8_)
                           {
                              this.§#!]§();
                              addr555:
                              break loop0;
                              addr555:
                           }
                           else
                           {
                              §§goto(addr574);
                           }
                           break;
                           addr570:
                        case 4:
                           _loc1_.type = §[H§.§>!k§;
                           _loc1_.value = ",";
                           addr536:
                           if(!(_loc8_ && _loc1_))
                           {
                              this.§#!]§();
                              addr529:
                              if(_loc7_)
                              {
                                 break loop0;
                              }
                              §§goto(addr570);
                           }
                           §§goto(addr555);
                           addr551:
                        case 5:
                           _loc1_.type = §[H§.§=!m§;
                           _loc1_.value = ":";
                           addr510:
                           if(!(_loc8_ && this))
                           {
                              this.§#!]§();
                              break loop0;
                              addr505:
                           }
                           else
                           {
                              §§goto(addr610);
                           }
                           break;
                           addr525:
                        case 6:
                           addr500:
                           _loc2_ = "t" + this.§#!]§() + this.§#!]§() + this.§#!]§();
                           addr495:
                           addr498:
                           addr496:
                           addr493:
                           addr499:
                           loop1:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr479:
                              while(true)
                              {
                                 if(§§pop() != "true")
                                 {
                                    this.parseError("Expecting \'true\' but found " + _loc2_);
                                    addr458:
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    _loc1_.type = §[H§.TRUE;
                                    addr485:
                                    while(true)
                                    {
                                       _loc1_.value = true;
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           break loop0;
                           addr501:
                        case 7:
                           addr410:
                           §§push("f" + this.§#!]§() + this.§#!]§());
                           if(_loc7_)
                           {
                              addr417:
                              §§push(§§pop() + this.§#!]§() + this.§#!]§());
                           }
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc8_ && _loc2_))
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() == "false")
                                    {
                                       if(!_loc8_)
                                       {
                                          if(_loc7_ || _loc3_)
                                          {
                                             _loc1_.type = §[H§.FALSE;
                                             loop12:
                                             while(_loc7_)
                                             {
                                                _loc1_.value = false;
                                                while(true)
                                                {
                                                   if(!(_loc7_ || _loc1_))
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      this.§#!]§();
                                                      addr283:
                                                      break loop0;
                                                      addr366:
                                                   }
                                                   §§goto(addr551);
                                                   §§goto(addr402);
                                                }
                                                addr402:
                                             }
                                             break loop0;
                                             addr400:
                                          }
                                          else
                                          {
                                             §§goto(addr462);
                                          }
                                          §§goto(addr529);
                                       }
                                       §§goto(addr400);
                                    }
                                    else
                                    {
                                       this.parseError("Expecting \'false\' but found " + _loc3_);
                                       addr355:
                                       if(!(_loc7_ || _loc2_))
                                       {
                                          §§goto(addr366);
                                       }
                                       §§goto(addr283);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr602);
                                 }
                              }
                              break loop0;
                           }
                           continue;
                        case 8:
                           addr290:
                           §§push("n" + this.§#!]§());
                           if(!_loc8_)
                           {
                              addr294:
                              §§push(this.§#!]§());
                              if(!(_loc8_ && _loc1_))
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr309:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       addr318:
                                       §§push(this.§#!]§());
                                       if(!_loc8_)
                                       {
                                          if(_loc7_ || _loc1_)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                addr336:
                                                if((_loc4_ = §§pop() + §§pop()) == "null")
                                                {
                                                   addr340:
                                                   if(_loc7_)
                                                   {
                                                      _loc1_.type = §[H§.NULL;
                                                      _loc1_.value = null;
                                                      addr275:
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         this.§#!]§();
                                                         addr261:
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_ || _loc1_)
                                                            {
                                                               addr126:
                                                               break loop0;
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr355);
                                                         }
                                                      }
                                                      §§goto(addr469);
                                                      addr346:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr536);
                                                   }
                                                   §§goto(addr555);
                                                }
                                                else
                                                {
                                                   this.parseError("Expecting \'null\' but found " + _loc4_);
                                                   addr236:
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            §§goto(addr126);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr510);
                                                         }
                                                      }
                                                      §§goto(addr505);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr371);
                                                   }
                                                }
                                                §§goto(addr536);
                                             }
                                             else
                                             {
                                                §§goto(addr495);
                                             }
                                          }
                                          §§goto(addr498);
                                       }
                                       else
                                       {
                                          §§goto(addr417);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr410);
                                    }
                                 }
                                 §§goto(addr410);
                              }
                              §§goto(addr417);
                           }
                           §§goto(addr496);
                        case 9:
                           §§push("N" + this.§#!]§());
                           if(_loc7_ || _loc2_)
                           {
                              if(!(_loc8_ && _loc2_))
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(this.§#!]§());
                                          if(!(_loc8_ && this))
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                addr170:
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(_loc8_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr202:
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!(_loc8_ && _loc1_))
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(§§pop() != "NaN")
                                                                           {
                                                                              this.parseError("Expecting \'NaN\' but found " + _loc5_);
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                addr80:
                                                                                                this.§#!]§();
                                                                                                addr83:
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop3:
                                                                                       while(_loc7_)
                                                                                       {
                                                                                          _loc1_.value = NaN;
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   if(!(_loc8_ && this))
                                                                                                   {
                                                                                                      if(_loc7_ || _loc1_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && this))
                                                                                                         {
                                                                                                            §§goto(addr80);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr597);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr560);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr340);
                                                                                                   }
                                                                                                   §§goto(addr555);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr236);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            _loc1_.type = §[H§.§=!0§;
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§goto(addr525);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr458);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr261);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr510);
                                                                                                addr215:
                                                                                             }
                                                                                             §§goto(addr261);
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                       §§goto(addr485);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr83);
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr479);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr336);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr500);
                                                            }
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr290);
                                                      }
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr336);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr318);
                                       }
                                       else
                                       {
                                          §§goto(addr493);
                                       }
                                    }
                                    §§goto(addr499);
                                 }
                                 §§goto(addr417);
                              }
                              §§goto(addr410);
                           }
                           §§goto(addr170);
                        case 10:
                           _loc1_ = this.§`"A§();
                           if(!(_loc8_ && _loc1_))
                           {
                              break loop0;
                           }
                           addr718:
                           break loop0;
                        default:
                           §§push(this.§[!>§(this.§"B§));
                           if(!_loc8_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc7_)
                              {
                                 addr657:
                                 if(!§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       §§pop();
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(this.§"B§);
                                          if(!_loc8_)
                                          {
                                             addr675:
                                             if(§§pop() == "-")
                                             {
                                                if(_loc7_ || _loc2_)
                                                {
                                                   addr683:
                                                   _loc1_ = this.§%!&§();
                                                }
                                             }
                                             else
                                             {
                                                addr690:
                                                if(this.§"B§ == "")
                                                {
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      return null;
                                                   }
                                                }
                                                §§push(this);
                                                §§push("Unexpected " + this.§"B§);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + " encountered");
                                                }
                                                §§pop().parseError(§§pop());
                                             }
                                             §§goto(addr718);
                                          }
                                          §§goto(addr690);
                                       }
                                       §§goto(addr683);
                                    }
                                 }
                              }
                              §§goto(addr675);
                           }
                           §§goto(addr657);
                     }
                     continue loop2;
                  }
                  if("," === _loc6_)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr795);
                     }
                     else
                     {
                        addr856:
                        §§push(8);
                        if(_loc7_ || _loc3_)
                        {
                           §§goto(addr864);
                        }
                        §§goto(addr905);
                     }
                  }
                  else
                  {
                     if(":" === _loc6_)
                     {
                        if(!_loc8_)
                        {
                           addr809:
                           §§push(5);
                           if(!_loc8_)
                           {
                              §§goto(addr905);
                           }
                           else
                           {
                              §§goto(addr845);
                           }
                        }
                        else
                        {
                           addr818:
                           §§push(6);
                           if(!(_loc8_ && this))
                           {
                              §§goto(addr826);
                           }
                           §§goto(addr905);
                        }
                     }
                     else if("t" === _loc6_)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr818);
                        }
                     }
                     else if("f" === _loc6_)
                     {
                        if(!(_loc8_ && this))
                        {
                           §§goto(addr837);
                        }
                        else
                        {
                           §§goto(addr856);
                        }
                     }
                     else
                     {
                        if("n" === _loc6_)
                        {
                           if(!(_loc8_ && this))
                           {
                              §§goto(addr856);
                           }
                        }
                        else if("N" === _loc6_)
                        {
                           if(_loc7_ || this)
                           {
                              §§push(9);
                              if(_loc7_)
                              {
                                 §§goto(addr878);
                              }
                              else
                              {
                                 addr900:
                                 §§goto(addr905);
                              }
                           }
                        }
                        else if("\"" !== _loc6_)
                        {
                           §§goto(addr905);
                           §§push(11);
                        }
                        §§goto(addr905);
                     }
                     §§goto(addr905);
                  }
                  §§goto(addr905);
                  §§push(10);
                  if(!(_loc8_ && this))
                  {
                     §§goto(addr900);
                  }
               }
               §§goto(addr905);
            }
            §§goto(addr809);
         }
         return _loc1_;
      }
      
      private function §`"A§() : §2!§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         §§push(this.§>"$§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.jsonString);
            loop1:
            while(true)
            {
               §§push(int(§§pop().indexOf("\"",_loc1_)));
               loop2:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc1_);
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              this.parseError("Unterminated string literal");
                              if(_loc5_)
                              {
                                 if(_loc5_ || _loc1_)
                                 {
                                    if(_loc5_ || _loc1_)
                                    {
                                       if(false)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.jsonString);
                                             if(_loc6_ && this)
                                             {
                                                continue loop1;
                                             }
                                             if(§§pop().charAt(_loc4_) != "\\")
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      if(!(_loc6_ && _loc1_))
                                                      {
                                                         if(_loc6_ && _loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(2);
                                                         if(!(_loc5_ || _loc1_))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(§§pop() % §§pop());
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(§§pop() != 0)
                                                            {
                                                               _loc1_++;
                                                               break loop5;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && _loc1_))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr170:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr136:
                                                                        §§push(§§pop() - 1);
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           addr189:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                        }
                                                                        addr136:
                                                                     }
                                                                     §§goto(addr136);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        addr188:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr189);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr151:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!(_loc6_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  addr182:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr183:
                                                                     while(true)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            var _loc2_:§2!§ = new §2!§();
                                                            if(_loc5_)
                                                            {
                                                               _loc2_.type = §[H§.§?#§;
                                                               _loc2_.value = this.§1!C§(this.jsonString.substr(this.§>"$§,_loc1_ - this.§>"$§));
                                                               addr243:
                                                               if(_loc5_ || this)
                                                               {
                                                                  this.§>"$§ = _loc1_ + 1;
                                                                  this.§#!]§();
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr243);
                                                                     }
                                                                     return _loc2_;
                                                                  }
                                                                  addr228:
                                                                  §§goto(addr228);
                                                                  addr260:
                                                               }
                                                               addr265:
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr260);
                                                            addr107:
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr107);
                                             }
                                             else
                                             {
                                                _loc3_++;
                                             }
                                             §§goto(addr170);
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr107);
                              }
                              break;
                           }
                           §§goto(addr188);
                        }
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      public function §1!C§(param1:String) : String
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(_loc12_)
         {
            §§push(this.§5!;§);
            if(!_loc13_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc13_ && this))
               {
                  addr43:
                  if(§§pop())
                  {
                     if(!(_loc13_ && this))
                     {
                        §§pop();
                        if(!(_loc13_ && _loc3_))
                        {
                           addr65:
                           if(this.§-!u§.test(param1))
                           {
                              if(!_loc13_)
                              {
                                 this.parseError("String contains unescaped control character (0x00-0x1F)");
                              }
                           }
                        }
                        var _loc2_:* = "";
                        var _loc3_:* = 0;
                        var _loc4_:* = 0;
                        var _loc5_:int = param1.length;
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push("\\");
                              while(true)
                              {
                                 §§push(int(§§pop().indexOf(§§pop(),_loc4_)));
                                 loop3:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc12_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop().substr(§§pop(),_loc3_ - _loc4_));
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  while(!_loc13_)
                                                                  {
                                                                     §§push(2);
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr652:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           addr653:
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              addr654:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr616:
                                                                                 while(!(_loc13_ && _loc2_))
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               if(!(_loc12_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr208);
                                                               §§push(§§pop() + "/");
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§push(§§pop() + §§pop().substr(§§pop()));
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         §§goto(addr858);
                                                      }
                                                      §§goto(addr866);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                                if(!_loc13_)
                                                {
                                                   §§goto(addr836);
                                                }
                                             }
                                             §§goto(addr858);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr43);
         }
         §§goto(addr65);
      }
      
      private function §%!&§() : §2!§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2!§ = null;
         var _loc1_:* = "";
         if(!(_loc4_ && this))
         {
            §§push(this.§"B§);
            loop0:
            while(true)
            {
               §§push("-");
               if(!_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(_loc1_);
                        addr717:
                        while(true)
                        {
                           §§push("-");
                           addr718:
                           while(true)
                           {
                              _loc1_ = §§pop() + §§pop();
                              addr720:
                              while(true)
                              {
                                 this.§#!]§();
                                 addr709:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        loop16:
                        while(_loc5_ || _loc1_)
                        {
                           this.§#!]§();
                           loop17:
                           while(true)
                           {
                              §§push(this.§[!>§(this.§"B§));
                              loop18:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this.§5!;§);
                                    loop19:
                                    for(; !(_loc4_ && _loc3_); if(!(_loc5_ || this))
                                    {
                                       continue;
                                    },if(_loc4_)
                                    {
                                       continue loop18;
                                    },if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr630);
                                          }
                                          if(_loc5_ || _loc3_)
                                          {
                                             continue loop17;
                                          }
                                          addr660:
                                          this.parseError("A digit cannot immediately follow 0");
                                          §§goto(addr663);
                                       }
                                       §§goto(addr590);
                                    },this.parseError("Number in hex format require at least one hex digit after \"0x\""),if(_loc5_)
                                    {
                                       if(_loc4_ && _loc1_)
                                       {
                                          §§goto(addr590);
                                       }
                                       §§goto(addr460);
                                    },§§goto(addr590))
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             loop27:
                                             while(true)
                                             {
                                                §§pop();
                                                loop28:
                                                while(true)
                                                {
                                                   §§push(this.§"B§);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr609:
                                                         §§push(§§pop() == "x");
                                                         while(true)
                                                         {
                                                            loop21:
                                                            while(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     loop22:
                                                                     for(; !(_loc4_ && _loc2_); if(!(_loc5_ || this))
                                                                     {
                                                                        continue;
                                                                     },if(!_loc4_)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        this.§#!]§();
                                                                        addr590:
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              addr460:
                                                                              §§goto(addr434);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr709);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr594);
                                                                        }
                                                                        addr590:
                                                                     },§§goto(addr680))
                                                                     {
                                                                        §§push(this.§"B§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr629:
                                                                           addr555:
                                                                           while(true)
                                                                           {
                                                                              _loc1_ = §§pop();
                                                                              addr630:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                       addr594:
                                                                                    }
                                                                                    this.§#!]§();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(this.§%"#§(this.§"B§));
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop28;
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                                 addr682:
                                                                                 addr663:
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       break loop21;
                                                                                    }
                                                                                    addr705:
                                                                                    while(true)
                                                                                    {
                                                                                       addr677:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§"B§);
                                                                                          addr680:
                                                                                          while(§§pop() == "0")
                                                                                          {
                                                                                          }
                                                                                          addr410:
                                                                                          if(!this.§[!>§(this.§"B§))
                                                                                          {
                                                                                             addr416:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr421:
                                                                                                §§push(this.§"B§);
                                                                                                §§push(".");
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      addr428:
                                                                                                      _loc1_ += ".";
                                                                                                      this.§#!]§();
                                                                                                      addr391:
                                                                                                      if(!this.§[!>§(this.§"B§))
                                                                                                      {
                                                                                                         addr392:
                                                                                                         this.parseError("Expecting a digit");
                                                                                                      }
                                                                                                      addr409:
                                                                                                      addr426:
                                                                                                      addr425:
                                                                                                      addr429:
                                                                                                      §§push(this.§[!>§(this.§"B§));
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr304:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(_loc5_ || _loc1_)
                                                                                                               {
                                                                                                                  addr316:
                                                                                                                  §§push(this.§"B§);
                                                                                                                  if(_loc5_ || _loc1_)
                                                                                                                  {
                                                                                                                     addr324:
                                                                                                                     §§push(§§pop() == "e");
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr333:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr334:
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr264:
                                                                                                                                    §§push(this.§"B§ == "E");
                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr273:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr275:
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push("e");
                                                                                                                                             if(!(_loc4_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                   this.§#!]§();
                                                                                                                                                   addr260:
                                                                                                                                                   addr295:
                                                                                                                                                   §§push(this.§"B§ == "+");
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr255:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr168:
                                                                                                                                                                  addr256:
                                                                                                                                                                  §§push(this.§"B§);
                                                                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr177:
                                                                                                                                                                     §§push(§§pop() == "-");
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr179:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr204:
                                                                                                                                                                                          §§push(this.§"B§);
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr215:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                                                                   addr218:
                                                                                                                                                                                                   if(!(_loc4_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§#!]§();
                                                                                                                                                                                                            addr157:
                                                                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr115:
                                                                                                                                                                                                               §§push(this.§[!>§(this.§"B§));
                                                                                                                                                                                                               if(!(_loc4_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr130:
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.parseError("Scientific notation number needs exponent value");
                                                                                                                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr55:
                                                                                                                                                                                                                                       if(this.§[!>§(this.§"B§))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§"B§);
                                                                                                                                                                                                                                                      if(_loc5_ || _loc1_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr90:
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc5_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.§#!]§();
                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr55);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr439:
                                                                                                                                                                                                                                                                                    addr434:
                                                                                                                                                                                                                                                                                    if(!this.§%"#§(this.§"B§))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop21;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr468:
                                                                                                                                                                                                                                                                                    _loc1_ += this.§"B§;
                                                                                                                                                                                                                                                                                    this.§#!]§();
                                                                                                                                                                                                                                                                                    addr459:
                                                                                                                                                                                                                                                                                    §§goto(addr459);
                                                                                                                                                                                                                                                                                    addr469:
                                                                                                                                                                                                                                                                                    addr464:
                                                                                                                                                                                                                                                                                    addr466:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr409);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr260);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr157);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr726);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr218);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr130);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr726);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr215);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr452:
                                                                                                                                                                                                                                                         _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                         addr453:
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§#!]§();
                                                                                                                                                                                                                                                            addr433:
                                                                                                                                                                                                                                                            §§goto(addr410);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr469);
                                                                                                                                                                                                                                                         addr450:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr204);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr316);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr264);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr168);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr90);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr726);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr392);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr726);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr453);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           this.§#!]§();
                                                                                                                                                                                                                           addr385:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr409);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr433);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr55);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr177);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr55);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr275);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr416);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr295);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr256);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr464);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr466);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr375:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc4_ && _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                §§goto(addr385);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr468);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr426);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr275);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr215);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr392);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr304);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr726);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr115);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr410);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr260);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr55);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr179);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr333);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr334);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr255);
                                                                                                                                                }
                                                                                                                                                §§goto(addr428);
                                                                                                                                             }
                                                                                                                                             §§goto(addr324);
                                                                                                                                          }
                                                                                                                                          §§goto(addr421);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr55);
                                                                                                                                 }
                                                                                                                                 addr726:
                                                                                                                                 var _loc2_:Number = Number(_loc1_);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(isFinite(_loc2_)));
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr748);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr760:
                                                                                                                                       §§goto(addr756);
                                                                                                                                    }
                                                                                                                                    addr748:
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr760);
                                                                                                                                    }
                                                                                                                                    §§goto(addr763);
                                                                                                                                 }
                                                                                                                                 addr756:
                                                                                                                                 if(!isNaN(_loc2_))
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr763:
                                                                                                                                       _loc3_ = new §2!§();
                                                                                                                                       if(!(_loc4_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          _loc3_.type = §[H§.§1[§;
                                                                                                                                       }
                                                                                                                                       _loc3_.value = _loc2_;
                                                                                                                                       return _loc3_;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push("Number " + _loc2_);
                                                                                                                                    if(_loc5_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + " is not valid!");
                                                                                                                                    }
                                                                                                                                    §§pop().parseError(§§pop());
                                                                                                                                 }
                                                                                                                                 return null;
                                                                                                                              }
                                                                                                                              §§goto(addr439);
                                                                                                                           }
                                                                                                                           §§goto(addr391);
                                                                                                                        }
                                                                                                                        §§goto(addr273);
                                                                                                                     }
                                                                                                                     §§goto(addr55);
                                                                                                                  }
                                                                                                                  §§goto(addr375);
                                                                                                               }
                                                                                                               §§goto(addr425);
                                                                                                            }
                                                                                                            §§goto(addr429);
                                                                                                         }
                                                                                                         §§push(_loc1_);
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§goto(addr375);
                                                                                                               §§push(this.§"B§);
                                                                                                            }
                                                                                                            §§goto(addr452);
                                                                                                         }
                                                                                                         §§goto(addr375);
                                                                                                      }
                                                                                                      §§goto(addr334);
                                                                                                      addr427:
                                                                                                   }
                                                                                                   §§goto(addr316);
                                                                                                }
                                                                                                §§goto(addr427);
                                                                                             }
                                                                                             addr441:
                                                                                             §§goto(addr421);
                                                                                          }
                                                                                          §§push(_loc1_);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr450);
                                                                                             §§push(this.§"B§);
                                                                                          }
                                                                                          §§goto(addr452);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    break loop28;
                                                                                 }
                                                                              }
                                                                              §§goto(addr720);
                                                                           }
                                                                           §§push(this.§"B§);
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr573:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              §§goto(addr629);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              addr687:
                                                                              while(true)
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr717);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.parseError("Expecting a digit");
                                                                     §§goto(addr705);
                                                                  }
                                                                  addr702:
                                                               }
                                                               §§goto(addr630);
                                                            }
                                                            §§goto(addr441);
                                                            §§goto(addr609);
                                                         }
                                                         addr611:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr629);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr685);
                                                }
                                             }
                                             addr652:
                                          }
                                          §§goto(addr611);
                                       }
                                       §§goto(addr652);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr702);
                                       }
                                       §§goto(addr677);
                                    }
                                    addr701:
                                 }
                                 §§goto(addr660);
                              }
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              §§push(_loc1_);
                              if(_loc5_ || _loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr555);
                                 }
                                 §§goto(addr687);
                              }
                              §§goto(addr573);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr701);
                     §§goto(addr709);
                  }
               }
               §§goto(addr718);
            }
         }
         §§goto(addr682);
      }
      
      private function §#!]§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this);
         §§push(this.jsonString);
         var _loc1_:*;
         §§push((_loc1_ = this).§>"$§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
            if(!(_loc4_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || this)
            {
               _loc1_.§>"$§ = _loc2_;
            }
         }
         return §§pop().§"B§ = §§pop().charAt(§§pop());
      }
      
      private function § !@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(this.§>"$§);
            loop1:
            while(true)
            {
               §§push(int(§§pop()));
               loop2:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop3:
                  while(true)
                  {
                     this.§7!L§();
                     while(true)
                     {
                        this.§<z§();
                        while(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              §§push(_loc1_);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    if(§§pop() == this.§>"$§)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          return;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §<z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§"B§ == "/")
            {
               if(_loc3_ || _loc1_)
               {
                  this.§#!]§();
                  addr261:
                  §§push(this.§"B§);
                  loop0:
                  while(true)
                  {
                     var _loc1_:* = §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        if("/" === _loc1_)
                        {
                           if(_loc3_ || this)
                           {
                              addr283:
                              §§push(0);
                              if(_loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr290:
                              §§push(1);
                              if(_loc2_)
                              {
                              }
                           }
                           §§goto(addr308);
                        }
                        if("*" === _loc1_)
                        {
                           §§goto(addr290);
                        }
                        else
                        {
                           §§push(2);
                        }
                        addr308:
                        loop10:
                        switch(§§pop())
                        {
                           case 0:
                              addr245:
                              this.§#!]§();
                              §§push(this.§"B§ == "\n");
                              if(_loc3_)
                              {
                                 addr236:
                                 §§push(!§§pop());
                                 if(!§§pop())
                                 {
                                    addr238:
                                    §§pop();
                                    §§push(this.§"B§);
                                    if(_loc3_ || _loc1_)
                                    {
                                       addr205:
                                       §§push(§§pop() == "");
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr224:
                                                addr223:
                                                if(!§§pop())
                                                {
                                                   §§goto(addr245);
                                                }
                                                addr225:
                                                this.§#!]§();
                                                break;
                                                addr227:
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr224);
                                    }
                                    §§goto(addr245);
                                    addr239:
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr238);
                              addr247:
                           case 1:
                              this.§#!]§();
                              loop9:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§"B§);
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(§§pop() != "*")
                                          {
                                             this.§#!]§();
                                             loop4:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§"B§);
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push("");
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           addr176:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 this.§#!]§();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§"B§);
                                                                                    if(_loc2_ && _loc1_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(§§pop() != "/")
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr239);
                                                                                       }
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                 }
                                                                                 addr187:
                                                                              }
                                                                              §§goto(addr247);
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     this.parseError("Multi-line comment not closed");
                                                                     if(_loc2_)
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         addr54:
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr128);
                                             }
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                              }
                              break;
                           default:
                              §§push(this);
                              §§push("Unexpected " + this.§"B§);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop() + " encountered (expecting \'/\' or \'*\' )");
                              }
                              §§pop().parseError(§§pop());
                              if(_loc3_ || _loc1_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr54);
                              }
                        }
                        return;
                        §§goto(addr290);
                     }
                     §§goto(addr283);
                  }
                  addr261:
               }
               §§goto(addr261);
            }
            §§goto(addr308);
         }
         §§goto(addr261);
      }
      
      private function §7!L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§,p§(this.§"B§))
         {
            this.§#!]§();
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      private function §,p§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() == " ");
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1);
                              while(true)
                              {
                                 §§push(§§pop() == "\t");
                                 addr153:
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() == "\r");
                                 loop18:
                                 while(true)
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             §§push(this.§5!;§);
                                             loop21:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop19;
                                                      }
                                                      loop26:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        §§goto(addr83);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr146:
                                                                     addr178:
                                                                     loop17:
                                                                     while(_loc3_ || this)
                                                                     {
                                                                        §§goto(addr153);
                                                                        §§push(param1);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§pop().charCodeAt(0) == 160);
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              addr56:
                                                                              if(!(_loc2_ && param1))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop26;
                                                                              }
                                                                              addr213:
                                                                              addr34:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr214:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    break loop17;
                                                                                 }
                                                                                 §§goto(addr56);
                                                                              }
                                                                              if(_loc2_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              addr165:
                                                                              addr183:
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr167:
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 addr201:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr202:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                       addr182:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr167);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 break loop22;
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     while(_loc3_)
                                                                     {
                                                                        §§goto(addr182);
                                                                        §§push(§§pop() == "\n");
                                                                        §§goto(addr146);
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§goto(addr143);
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr164:
                                                                        §§goto(addr165);
                                                                        §§push(true);
                                                                     }
                                                                  }
                                                                  §§goto(addr146);
                                                                  addr134:
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            else
                                                            {
                                                               addr25:
                                                               §§push(false);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§goto(addr34);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr83);
                                                               }
                                                            }
                                                            addr83:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue loop22;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop21;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               addr194:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr25);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(_loc3_)
                                                {
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      continue loop18;
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr202);
                                             }
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr201);
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      private function §[!>§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop() >= "0");
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr54:
                        §§pop();
                        return param1 <= "9";
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §%"#§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§[!>§(param1));
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr169:
                        while(true)
                        {
                           §§pop();
                           addr170:
                           while(true)
                           {
                              §§push(param1);
                              addr138:
                              while(true)
                              {
                                 §§push(§§pop() >= "A");
                                 addr140:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr145:
                                             while(true)
                                             {
                                                §§push(param1);
                                                addr111:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= "F");
                                                }
                                             }
                                          }
                                          addr144:
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr169:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(_loc2_)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    §§pop();
                                    loop6:
                                    for(; _loc2_; §§pop(),if(!(_loc2_ || this))
                                    {
                                       continue;
                                    },§§goto(addr108))
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(§§pop() >= "a");
                                                loop8:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr53);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr169);
                                                            addr33:
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() <= "f");
                                                            if(!_loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         §§goto(addr138);
                                                      }
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr140);
                                             }
                                             §§push(param1);
                                             addr108:
                                             break;
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr33);
                                          }
                                          §§goto(addr111);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr144);
                              }
                              addr53:
                              return §§pop();
                           }
                           §§goto(addr143);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr169);
         }
         §§goto(addr170);
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§>"$§,this.jsonString);
      }
   }
}
