package §,j§
{
   public class §5s§
   {
       
      
      private var §1!g§:Boolean;
      
      private var value;
      
      private var §package§:§^!$§;
      
      private var §%!%§:§ "0§;
      
      public function §5s§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§1!g§ = param2;
               while(true)
               {
                  this.§package§ = new §^!$§(param1,param2);
                  continue loop0;
                  addr73:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr20:
                     return;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §64§() : § "0§
      {
         return this.§%!%§ = this.§package§.§8j§();
      }
      
      private function §%@§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Array = new Array();
         if(!(_loc3_ && this))
         {
            this.§64§();
            while(true)
            {
               §§push(this.§%!%§);
               loop1:
               while(true)
               {
                  §§push(§§pop().type);
                  loop2:
                  while(true)
                  {
                     §§push(§8_§.§&!R§);
                     loop3:
                     while(§§pop() != §§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§1!g§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          this.§64§();
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§%!%§);
                                          if(_loc3_ && _loc1_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().type);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc3_ && this)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§8_§.§&!R§);
                                             if(!_loc3_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   do
                                                   {
                                                      this.§package§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§%!%§.value);
                                                   }
                                                   while(!(_loc2_ || _loc3_));
                                                   
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                if(!_loc2_)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§%!%§);
                                                      break loop6;
                                                      addr293:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop8;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                if(_loc2_ || _loc3_)
                                                {
                                                   return _loc1_;
                                                }
                                                addr314:
                                                while(true)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§8_§.§0!n§);
                                             }
                                             addr259:
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc3_ && _loc1_)
                                                {
                                                }
                                                continue loop5;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    _loc1_.push(this.§6"'§());
                                    this.§64§();
                                    addr28:
                                    addr147:
                                    addr165:
                                    if(this.§%!%§.type != §8_§.§&!R§)
                                    {
                                       addr121:
                                       §§push(this.§%!%§.type);
                                       §§push(§8_§.§0!n§);
                                       if(_loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             addr124:
                                             this.§64§();
                                             addr126:
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(!this.§1!g§)
                                                {
                                                   addr71:
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.§%!%§);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop().type);
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§8_§.§&!R§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              §§goto(addr126);
                                                                           }
                                                                           return _loc1_;
                                                                        }
                                                                        addr105:
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              addr34:
                                                                              §§goto(addr28);
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                        §§goto(addr124);
                                                                     }
                                                                     §§goto(addr34);
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                               §§goto(addr28);
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                         §§goto(addr28);
                                                      }
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr34);
                                             }
                                             §§goto(addr141);
                                          }
                                          this.§package§.parseError("Expecting ] or , but found " + this.§%!%§.value);
                                          if(_loc2_ || this)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§goto(addr28);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr71);
                                          }
                                          §§goto(addr105);
                                       }
                                       §§goto(addr28);
                                    }
                                    addr141:
                                    return _loc1_;
                                 }
                              }
                           }
                           §§goto(addr293);
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr314);
      }
      
      private function parseObject() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(_loc3_ || _loc2_)
         {
            this.§64§();
            loop0:
            while(true)
            {
               §§push(this.§%!%§);
               loop1:
               while(true)
               {
                  §§push(§§pop().type);
                  addr440:
                  while(true)
                  {
                     §§push(§8_§.§6!S§);
                     addr442:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§1!g§);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop12:
                                       while(§§pop())
                                       {
                                          while(!(_loc4_ && this))
                                          {
                                             this.§64§();
                                             while(!(_loc4_ && _loc1_))
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr410:
                                                   §§push(this.§%!%§);
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr365:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().type);
                                                      addr366:
                                                      while(true)
                                                      {
                                                         §§push(§8_§.§0!n§);
                                                         addr368:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§goto(addr410);
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop4;
                                                   }
                                                   addr445:
                                                }
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break loop12;
                                                }
                                             }
                                             continue loop0;
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                return _loc1_;
                                             }
                                          }
                                          return _loc1_;
                                       }
                                       addr31:
                                       if(this.§%!%§.type == §8_§.§4!T§)
                                       {
                                          addr289:
                                          _loc2_ = String(this.§%!%§.value);
                                          this.§64§();
                                          addr272:
                                          addr296:
                                          if(_loc3_ || _loc1_)
                                          {
                                             addr255:
                                             if(this.§%!%§.type == §8_§.§5!`§)
                                             {
                                                addr259:
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   this.§64§();
                                                   _loc1_[_loc2_] = this.§6"'§();
                                                   this.§64§();
                                                   addr251:
                                                   if(_loc3_)
                                                   {
                                                      addr212:
                                                      §§push(this.§%!%§);
                                                      if(_loc3_)
                                                      {
                                                         addr225:
                                                         §§push(§§pop().type);
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr231:
                                                               §§push(§8_§.§6!S§);
                                                               if(!_loc4_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     §§goto(addr234);
                                                                  }
                                                                  addr188:
                                                                  §§push(this.§%!%§);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr196:
                                                                     §§push(§§pop().type);
                                                                     §§push(§8_§.§0!n§);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           addr204:
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.§64§();
                                                                              addr208:
                                                                              if(!this.§1!g§)
                                                                              {
                                                                                 addr134:
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(this.§%!%§);
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop().type);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(§8_§.§6!S§);
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            addr176:
                                                                                                            if(_loc3_ || _loc1_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  addr234:
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr259);
                                                                                                                  }
                                                                                                                  return _loc1_;
                                                                                                               }
                                                                                                               return _loc1_;
                                                                                                            }
                                                                                                            §§goto(addr188);
                                                                                                         }
                                                                                                         addr37:
                                                                                                         §§goto(addr31);
                                                                                                         addr102:
                                                                                                         addr81:
                                                                                                      }
                                                                                                      §§goto(addr231);
                                                                                                   }
                                                                                                   §§goto(addr196);
                                                                                                }
                                                                                                §§goto(addr225);
                                                                                             }
                                                                                             §§goto(addr196);
                                                                                          }
                                                                                          §§goto(addr212);
                                                                                       }
                                                                                       §§goto(addr188);
                                                                                    }
                                                                                    §§goto(addr251);
                                                                                 }
                                                                                 §§goto(addr208);
                                                                              }
                                                                              §§goto(addr102);
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        addr112:
                                                                        this.§package§.parseError("Expecting } or , but found " + this.§%!%§.value);
                                                                        addr113:
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 §§goto(addr81);
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                           §§goto(addr134);
                                                                        }
                                                                        §§goto(addr176);
                                                                        addr107:
                                                                     }
                                                                     §§goto(addr31);
                                                                  }
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                            §§goto(addr31);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr31);
                                                   }
                                                   addr268:
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr296);
                                             }
                                             addr86:
                                             §§push(this.§package§);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr98:
                                                §§pop().parseError("Expecting : but found " + this.§%!%§.value);
                                                addr99:
                                                if(!_loc3_)
                                                {
                                                }
                                                §§goto(addr37);
                                             }
                                             §§goto(addr107);
                                          }
                                          §§goto(addr289);
                                       }
                                       §§push(this.§package§);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§push("Expecting string but found " + this.§%!%§.value);
                                          if(_loc3_ || this)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§pop().parseError(§§pop());
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr31);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr99);
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr98);
                                       }
                                       §§goto(addr86);
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr443);
                     }
                  }
               }
            }
         }
         §§goto(addr445);
      }
      
      private function §6"'§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§%!%§ == null)
            {
               if(!_loc3_)
               {
                  this.§package§.parseError("Unexpected end of input");
                  addr123:
               }
               §§goto(addr123);
            }
            §§push(this.§%!%§);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(_loc2_ || _loc1_)
               {
                  var _loc1_:* = §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§8_§.§ ""§);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(0);
                                 if(!_loc2_)
                                 {
                                    addr301:
                                    §§push(_loc1_);
                                    if(_loc2_)
                                    {
                                       addr304:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr312:
                                             §§push(6);
                                             if(!_loc3_)
                                             {
                                                addr346:
                                                loop9:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      return this.parseObject();
                                                   case 7:
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(this.§1!g§)
                                                         {
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(this.§package§);
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push("Unexpected ");
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§%!%§);
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop().value);
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§pop().parseError(§§pop());
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    addr74:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§package§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push("Unexpected ");
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§push(this.§%!%§);
                                                                                             if(_loc2_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop().value);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§pop().parseError(§§pop());
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr93:
                                                                                                         §§push(this.§%!%§);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                   }
                                                                                                   return null;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop4;
                                                                                       §§goto(addr74);
                                                                                    }
                                                                                    addr79:
                                                                                    §§push(this.§%!%§);
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr84:
                                                                                       §§pop();
                                                                                       §§push(Boolean(_loc1_));
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                    addr24:
                                                                                 }
                                                                                 break loop9;
                                                                              }
                                                                              §§goto(addr79);
                                                                              §§goto(addr84);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              return §§pop().value;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr79);
                                                      }
                                                   default:
                                                      §§goto(addr24);
                                                   case 1:
                                                      break;
                                                   case 2:
                                                   case 3:
                                                   case 4:
                                                   case 5:
                                                   case 6:
                                                      §§goto(addr93);
                                                }
                                                return this.§%@§();
                                                addr345:
                                                addr315:
                                             }
                                             else
                                             {
                                                addr320:
                                                if(§§pop() !== _loc1_)
                                                {
                                                   §§goto(addr345);
                                                   §§push(8);
                                                }
                                                §§goto(addr345);
                                             }
                                             §§goto(addr345);
                                          }
                                          addr322:
                                          §§push(7);
                                          if(_loc3_ && _loc2_)
                                          {
                                          }
                                          §§goto(addr345);
                                       }
                                       else
                                       {
                                          §§push(§8_§.§[d§);
                                          if(_loc2_)
                                          {
                                             §§goto(addr320);
                                          }
                                       }
                                       §§goto(addr345);
                                    }
                                    §§goto(addr320);
                                 }
                              }
                              else
                              {
                                 addr283:
                                 §§push(5);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr291:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§8_§.§0l§);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(1);
                                          if(!(_loc2_ || this))
                                          {
                                             addr243:
                                          }
                                       }
                                       else
                                       {
                                          addr235:
                                          §§push(3);
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§goto(addr243);
                                          }
                                       }
                                       §§goto(addr345);
                                    }
                                    else
                                    {
                                       §§push(§8_§.§4!T§);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr218:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(2);
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr345);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr291);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr345);
                                             }
                                             else
                                             {
                                                §§push(§8_§.§+""§);
                                                if(!_loc3_)
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc3_)
                                                   {
                                                      addr232:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr235);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr312);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§8_§.TRUE);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            addr253:
                                                            §§push(_loc1_);
                                                            if(_loc2_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr267:
                                                                        §§goto(addr345);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr320);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               else
                                                               {
                                                                  §§push(§8_§.FALSE);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr283);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr322);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§8_§.NULL);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§goto(addr301);
                                                                           }
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr253);
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr301);
                                    }
                                 }
                                 §§goto(addr304);
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr345);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr283);
               }
               §§goto(addr346);
            }
            return §§pop().value;
         }
         §§goto(addr123);
      }
   }
}
