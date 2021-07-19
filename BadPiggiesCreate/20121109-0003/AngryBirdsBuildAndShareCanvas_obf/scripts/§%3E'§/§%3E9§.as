package §>'§
{
   public class §>9§
   {
       
      
      private var §3!K§:Boolean;
      
      private var value;
      
      private var §^!@§:§-",§;
      
      private var token:§#s§;
      
      public function §>9§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§3!K§ = param2;
               while(true)
               {
                  this.§^!@§ = new §-",§(param1,param2);
                  loop2:
                  while(_loc3_ || _loc3_)
                  {
                     this.§!!I§();
                     loop3:
                     while(true)
                     {
                        this.value = this.§5!S§();
                        loop4:
                        while(!_loc4_)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr85:
                                    while(true)
                                    {
                                       §§push(this.§!!I§() == null);
                                       if(!_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       addr43:
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                              }
                              while(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 addr72:
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr85);
                              }
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!!I§() : §#s§
      {
         return this.token = this.§^!@§.§[!p§();
      }
      
      private function §]u§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         if(_loc3_)
         {
            this.§!!I§();
            loop0:
            while(true)
            {
               §§push(this.token);
               loop1:
               while(true)
               {
                  §§push(§§pop().type);
                  addr288:
                  while(true)
                  {
                     §§push(§7j§.§"?§);
                     addr290:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc3_ || _loc1_)
                           {
                              break;
                           }
                           addr310:
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           §§push(this.§3!K§);
                           addr272:
                           loop6:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    addr282:
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr282:
                                 }
                                 else
                                 {
                                    while(§§pop())
                                    {
                                       while(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    addr159:
                                    loop16:
                                    while(true)
                                    {
                                       _loc1_.push(this.§5!S§());
                                       loop17:
                                       while(true)
                                       {
                                          this.§!!I§();
                                          loop18:
                                          while(true)
                                          {
                                             §§push(this.token);
                                             loop19:
                                             while(true)
                                             {
                                                §§push(§§pop().type);
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(§7j§.§"?§);
                                                   loop21:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(this.token);
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().type);
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(§7j§.§`"?§);
                                                               loop25:
                                                               while(_loc3_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     this.§^!@§.parseError("Expecting ] or , but found " + this.token.value);
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              addr123:
                                                                              this.§!!I§();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(this.§3!K§)
                                                                                    {
                                                                                    }
                                                                                    addr30:
                                                                                    continue loop16;
                                                                                    addr127:
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                              addr125:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 §§push(this.token);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 §§push(§§pop().type);
                                                                                 if(_loc2_ && _loc1_)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 §§push(§7j§.§"?§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr125);
                                                                              }
                                                                              §§goto(addr127);
                                                                           }
                                                                           §§goto(addr30);
                                                                        }
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           return _loc1_;
                                                                        }
                                                                        break loop21;
                                                                     }
                                                                     §§goto(addr30);
                                                                  }
                                                                  §§goto(addr123);
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop18;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr255:
                                 }
                                 while(true)
                                 {
                                    §§push(this.token);
                                    continue loop1;
                                 }
                                 addr283:
                              }
                              §§goto(addr282);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      private function § W§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(_loc4_ || this)
         {
            this.§!!I§();
            while(true)
            {
               §§push(this.token);
               loop1:
               while(true)
               {
                  §§push(§§pop().type);
                  addr451:
                  while(true)
                  {
                     §§push(§7j§.§#!y§);
                     addr453:
                     while(§§pop() != §§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§3!K§);
                           if(_loc4_)
                           {
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§pop();
                                       addr429:
                                       while(_loc4_ || _loc1_)
                                       {
                                          §§push(this.token);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop().type);
                                             addr408:
                                             while(true)
                                             {
                                                §§push(§7j§.§`"?§);
                                                addr410:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      break loop9;
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          addr436:
                                       }
                                       continue loop4;
                                    }
                                    addr428:
                                 }
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§!!I§();
                                       addr417:
                                       while(true)
                                       {
                                          §§push(this.token);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr407);
                                    }
                                    break;
                                 }
                                 addr32:
                                 if(this.token.type == §7j§.§%w§)
                                 {
                                    addr310:
                                    _loc2_ = String(this.token.value);
                                    this.§!!I§();
                                    addr284:
                                    if(this.token.type == §7j§.§8§)
                                    {
                                       addr287:
                                       if(_loc4_ || _loc3_)
                                       {
                                          this.§!!I§();
                                          _loc1_[_loc2_] = this.§5!S§();
                                          this.§!!I§();
                                          addr279:
                                          addr296:
                                          if(!_loc3_)
                                          {
                                             addr242:
                                             §§push(this.token);
                                             if(!_loc3_)
                                             {
                                                addr245:
                                                §§push(§§pop().type);
                                                §§push(§7j§.§#!y§);
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         addr197:
                                                         §§push(this.token);
                                                         if(!_loc3_)
                                                         {
                                                            addr200:
                                                            §§push(§§pop().type);
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  addr211:
                                                                  §§push(§7j§.§`"?§);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        addr229:
                                                                        this.§!!I§();
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(!this.§3!K§)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§push(this.token);
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().type);
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             §§push(§7j§.§#!y§);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      if(!(_loc4_ || _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr229);
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         return _loc1_;
                                                                                                      }
                                                                                                      §§goto(addr257);
                                                                                                   }
                                                                                                   addr191:
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr117:
                                                                                                      §§goto(addr32);
                                                                                                      addr117:
                                                                                                      addr89:
                                                                                                   }
                                                                                                   §§goto(addr279);
                                                                                                }
                                                                                                §§goto(addr117);
                                                                                             }
                                                                                             §§goto(addr211);
                                                                                          }
                                                                                          §§goto(addr245);
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                    }
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 §§goto(addr197);
                                                                              }
                                                                              §§goto(addr191);
                                                                           }
                                                                           §§goto(addr117);
                                                                        }
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§goto(addr197);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     addr127:
                                                                     this.§^!@§.parseError("Expecting } or , but found " + this.token.value);
                                                                     addr128:
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr89);
                                                                     }
                                                                     §§goto(addr191);
                                                                     addr122:
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr32);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr32);
                                                      }
                                                      addr257:
                                                      return _loc1_;
                                                   }
                                                   §§goto(addr32);
                                                }
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr287);
                                       }
                                       §§goto(addr310);
                                    }
                                    addr99:
                                    this.§^!@§.parseError("Expecting : but found " + this.token.value);
                                    addr317:
                                    addr300:
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr117);
                                          }
                                          §§goto(addr317);
                                       }
                                       §§goto(addr300);
                                    }
                                    §§goto(addr229);
                                    addr94:
                                 }
                                 §§push(this.§^!@§);
                                 if(_loc4_ || this)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push("Expecting string but found " + this.token.value);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§pop().parseError(§§pop());
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr32);
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr317);
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr428);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr454);
      }
      
      private function §5!S§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.token == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§^!@§.parseError("Unexpected end of input");
                  addr134:
               }
               §§goto(addr134);
            }
            §§push(this.token);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(!_loc2_)
               {
                  var _loc1_:* = §§pop();
                  if(!_loc2_)
                  {
                     §§push(§7j§.§8!'§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(0);
                                 if(_loc2_ && this)
                                 {
                                    addr182:
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_ || this)
                                          {
                                             §§push(1);
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr342:
                                                loop8:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      return this.§ W§();
                                                   case 7:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!this.§3!K§)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§push(this.token);
                                                               if(!_loc2_)
                                                               {
                                                                  return §§pop().value;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(this.§^!@§);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push("Unexpected ");
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.token);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop().value);
                                                                        addr71:
                                                                        addr76:
                                                                        while(true)
                                                                        {
                                                                           §§pop().parseError(§§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§^!@§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push("Unexpected ");
                                                                              if(!(_loc3_ || _loc1_))
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(this.token);
                                                                              if(_loc2_ && _loc3_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§push(§§pop() + §§pop().value);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§pop().parseError(§§pop());
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc2_ && _loc1_))
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          addr343:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr343:
                                                                                       }
                                                                                       continue loop2;
                                                                                       return null;
                                                                                    }
                                                                                    if(!(_loc3_ || _loc2_))
                                                                                    {
                                                                                       break loop8;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§goto(addr343);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr71);
                                                                              }
                                                                              §§goto(addr76);
                                                                           }
                                                                           addr20:
                                                                        }
                                                                        addr92:
                                                                        §§push(this.token);
                                                                        if(_loc3_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                   default:
                                                      §§goto(addr20);
                                                   case 1:
                                                      break;
                                                   case 2:
                                                   case 3:
                                                   case 4:
                                                   case 5:
                                                   case 6:
                                                      §§goto(addr92);
                                                }
                                                return this.§]u§();
                                                addr341:
                                             }
                                             else
                                             {
                                                addr292:
                                                §§goto(addr341);
                                             }
                                          }
                                          else
                                          {
                                             addr308:
                                             §§push(6);
                                             if(_loc2_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§7j§.§%w§);
                                          if(_loc3_ || this)
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc2_ && this))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§push(2);
                                                      if(!_loc2_)
                                                      {
                                                         addr230:
                                                      }
                                                      else
                                                      {
                                                         addr278:
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr308);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§7j§.§&$§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(_loc3_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               §§push(3);
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§goto(addr341);
                                                               }
                                                               else
                                                               {
                                                                  addr283:
                                                                  §§push(_loc1_);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr286:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr341);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr308);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§7j§.§#!A§);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr297:
                                                                           §§push(_loc1_);
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              addr305:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr308);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr318:
                                                                                    §§push(7);
                                                                                    if(_loc2_ && _loc3_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§7j§.§=V§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr317:
                                                                                    if(§§pop() === _loc1_)
                                                                                    {
                                                                                       §§goto(addr318);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr341);
                                                                                       §§push(8);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                              §§goto(addr341);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr270:
                                                               §§push(4);
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         else
                                                         {
                                                            §§push(§7j§.TRUE);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!_loc3_)
                                                               {
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                      }
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§goto(addr270);
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      else
                                                      {
                                                         §§push(§7j§.FALSE);
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr341);
                                             }
                                             §§goto(addr317);
                                          }
                                       }
                                       §§goto(addr341);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr318);
                           }
                           else
                           {
                              §§push(§7j§.§8!m§);
                              if(_loc3_)
                              {
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr278);
                        }
                        §§goto(addr286);
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr308);
               }
               §§goto(addr342);
            }
            return §§pop().value;
         }
         §§goto(addr134);
      }
   }
}
