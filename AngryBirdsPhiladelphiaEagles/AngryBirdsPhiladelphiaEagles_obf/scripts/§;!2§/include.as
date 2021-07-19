package §;!2§
{
   public class include
   {
       
      
      private var §@!>§:Boolean;
      
      private var value;
      
      private var §7!8§:§>1§;
      
      private var §`@§:§%>§;
      
      public function include(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         this.§@!>§ = param2;
         this.§7!8§ = new §>1§(param1,param2);
         this.§&x§();
         loop0:
         while(true)
         {
            this.value = this.§5X§();
            loop1:
            while(true)
            {
               §§push(param2);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr79:
                  while(§§pop())
                  {
                     continue loop1;
                  }
                  addr60:
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        this.§7!8§.parseError("Unexpected characters left in input stream");
                     }
                  }
                  addr43:
                  return;
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§goto(addr60);
               }
            }
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §&x§() : §%>§
      {
         return this.§`@§ = this.§7!8§.§-!1§();
      }
      
      private function §5!§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         this.§&x§();
         §§push(this.§`@§);
         loop0:
         while(true)
         {
            §§push(§§pop().type);
            loop1:
            while(true)
            {
               §§push(§ case§.§]8§);
               loop2:
               while(§§pop() != §§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§@!>§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(!§§pop());
                     }
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr247:
                              while(true)
                              {
                                 §§push(this.§`@§);
                                 while(_loc3_)
                                 {
                                    §§push(§§pop().type);
                                    while(true)
                                    {
                                       §§push(§ case§.§7!B§);
                                       addr199:
                                       do
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc3_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       while(!_loc2_);
                                       
                                       addr166:
                                       §§push(§§pop().type);
                                       continue loop4;
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(§ case§.§]8§);
                                             if(!_loc2_)
                                             {
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   continue loop2;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   return _loc1_;
                                                }
                                                addr130:
                                                §§push(this.§7!8§);
                                                §§push("Leading commas are not supported.  Expecting \']\' but found ");
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§pop() + this.§`@§.value);
                                                }
                                                §§pop().parseError(§§pop());
                                                if(_loc2_)
                                                {
                                                   §§goto(addr130);
                                                }
                                                if(_loc2_ && _loc1_)
                                                {
                                                   break loop2;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr199);
                                             }
                                             _loc1_.push(this.§5X§());
                                             this.§&x§();
                                             addr22:
                                             if(this.§`@§.type != § case§.§]8§)
                                             {
                                                addr71:
                                                §§push(this.§`@§);
                                                if(_loc3_)
                                                {
                                                   addr74:
                                                   §§push(§§pop().type);
                                                   if(_loc3_)
                                                   {
                                                      addr78:
                                                      §§push(§ case§.§7!B§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  this.§&x§();
                                                                  if(!this.§@!>§)
                                                                  {
                                                                     §§push(this.§`@§);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop().type);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§push(§ case§.§]8§);
                                                                           if(_loc3_)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 addr28:
                                                                                 §§goto(addr22);
                                                                              }
                                                                              return _loc1_;
                                                                           }
                                                                           §§goto(addr78);
                                                                        }
                                                                        §§goto(addr74);
                                                                     }
                                                                     §§goto(addr71);
                                                                  }
                                                                  §§goto(addr28);
                                                                  addr97:
                                                               }
                                                               §§goto(addr71);
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                         §§push(this.§7!8§);
                                                         §§push("Expecting ] or , but found ");
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() + this.§`@§.value);
                                                         }
                                                         §§pop().parseError(§§pop());
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr22);
                                                         }
                                                         §§goto(addr28);
                                                      }
                                                   }
                                                }
                                                §§goto(addr22);
                                             }
                                             return _loc1_;
                                             addr112:
                                          }
                                          continue loop1;
                                       }
                                    }
                                    this.§&x§();
                                    §§push(this.§`@§);
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr166);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop3;
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr247);
                        }
                        §§goto(addr112);
                     }
                  }
               }
               return _loc1_;
            }
         }
      }
      
      private function §[j§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(_loc3_)
         {
            this.§&x§();
            §§push(this.§`@§);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               addr377:
               while(true)
               {
                  §§push(§ case§.§0U§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§@!>§);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       this.§&x§();
                                       while(true)
                                       {
                                          §§push(this.§`@§);
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(this.§7!8§);
                                          addr272:
                                          §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                                          continue loop0;
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() + this.§`@§.value);
                                          }
                                          §§pop().parseError(§§pop());
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          addr26:
                                          if(this.§`@§.type == § case§.§=!D§)
                                          {
                                             addr264:
                                             _loc2_ = String(this.§`@§.value);
                                             this.§&x§();
                                             addr241:
                                             §§push(this.§`@§.type);
                                             if(_loc3_)
                                             {
                                                addr245:
                                                §§push(§ case§.§7!?§);
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      addr248:
                                                      this.§&x§();
                                                      _loc1_[_loc2_] = this.§5X§();
                                                      this.§&x§();
                                                      addr250:
                                                      §§push(this.§`@§);
                                                      if(_loc3_)
                                                      {
                                                         addr222:
                                                         if(§§pop().type != § case§.§0U§)
                                                         {
                                                            addr205:
                                                            §§push(this.§`@§);
                                                            if(_loc3_)
                                                            {
                                                               addr210:
                                                               if(§§pop().type == § case§.§7!B§)
                                                               {
                                                                  this.§&x§();
                                                                  if(!this.§@!>§)
                                                                  {
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           §§push(this.§`@§);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop().type);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§ case§.§0U§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      addr32:
                                                                                                      §§goto(addr26);
                                                                                                      addr101:
                                                                                                      addr80:
                                                                                                   }
                                                                                                   §§goto(addr199);
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          §§goto(addr210);
                                                                                       }
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                    §§goto(addr222);
                                                                                 }
                                                                                 §§goto(addr210);
                                                                              }
                                                                              §§goto(addr26);
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                        §§goto(addr264);
                                                                     }
                                                                     addr199:
                                                                     return _loc1_;
                                                                  }
                                                                  §§goto(addr101);
                                                               }
                                                               addr118:
                                                               §§push(this.§7!8§);
                                                               §§push("Expecting } or , but found ");
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr116:
                                                                  §§push(§§pop() + this.§`@§.value);
                                                               }
                                                               §§pop().parseError(§§pop());
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr80);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         return _loc1_;
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   addr92:
                                                   addr85:
                                                   §§push(this.§7!8§);
                                                   §§push("Expecting : but found ");
                                                   if(_loc3_)
                                                   {
                                                      addr90:
                                                      §§push(§§pop() + this.§`@§.value);
                                                   }
                                                   §§pop().parseError(§§pop());
                                                   addr93:
                                                   if(_loc3_ || this)
                                                   {
                                                   }
                                                   §§goto(addr32);
                                                }
                                             }
                                             §§goto(addr26);
                                          }
                                          §§push(this.§7!8§);
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§push("Expecting string but found ");
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.§`@§);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               addr76:
                                                               §§pop().parseError(§§pop() + §§pop().value);
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr26);
                                                               }
                                                               §§goto(addr93);
                                                            }
                                                            §§goto(addr116);
                                                         }
                                                         §§goto(addr90);
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   §§goto(addr92);
                                                }
                                                §§goto(addr76);
                                             }
                                             §§goto(addr118);
                                          }
                                          §§goto(addr85);
                                          addr255:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop().type);
                                          addr332:
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§ case§.§7!B§);
                                             addr334:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop7;
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   continue loop4;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr255);
                                    }
                                 }
                                 continue;
                                 addr356:
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop();
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         while(true)
         {
            §§goto(addr331);
         }
      }
      
      private function §5X§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§`@§ == null)
            {
               if(_loc3_ || _loc2_)
               {
                  addr141:
                  this.§7!8§.parseError("Unexpected end of input");
               }
            }
            §§push(this.§`@§);
            while(true)
            {
               §§push(§§pop().type);
               if(_loc3_)
               {
                  var _loc1_:* = §§pop();
                  §§push(§ case§.§-%§);
                  if(_loc3_)
                  {
                     if(§§pop() === _loc1_)
                     {
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              addr216:
                              if(§§pop() === _loc1_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§push(3);
                                    if(_loc2_ && _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr308:
                                    §§push(6);
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§ case§.TRUE);
                                 if(_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc2_)
                                    {
                                       addr241:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_ || this)
                                          {
                                             §§goto(addr331);
                                          }
                                          addr271:
                                          addr331:
                                          addr250:
                                          addr249:
                                          addr332:
                                          loop6:
                                          switch(4)
                                          {
                                             case 0:
                                                return this.§[j§();
                                             case 7:
                                                if(!this.§@!>§)
                                                {
                                                   §§push(this.§`@§);
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         return §§pop().value;
                                                      }
                                                      addr108:
                                                      return §§pop().value;
                                                   }
                                                   continue;
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§7!8§);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push("Unexpected ");
                                                      if(!_loc2_)
                                                      {
                                                         addr65:
                                                         §§push(this.§`@§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop().value);
                                                            §§goto(addr65);
                                                         }
                                                         addr67:
                                                      }
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§pop().parseError(§§pop());
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               if(_loc2_ && _loc1_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr79:
                                                            while(true)
                                                            {
                                                               §§push(this.§7!8§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push("Unexpected ");
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§`@§);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop().value);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr67);
                                                                     }
                                                                  }
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     §§pop().parseError(§§pop());
                                                                     if(true)
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop5;
                                                               §§goto(addr79);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      return null;
                                                   }
                                                }
                                                §§goto(addr25);
                                             case 1:
                                                break;
                                             case 2:
                                             case 3:
                                             case 4:
                                             case 5:
                                             case 6:
                                          }
                                          return this.§5!§();
                                          §§push(5);
                                          §§goto(addr331);
                                       }
                                       else
                                       {
                                          §§push(§ case§.FALSE);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr260:
                                             §§push(_loc1_);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr268:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr271);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr308);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§ case§.NULL);
                                                   if(_loc3_ || this)
                                                   {
                                                      addr282:
                                                      §§push(_loc1_);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         addr290:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               §§goto(addr308);
                                                            }
                                                            else
                                                            {
                                                               addr323:
                                                               §§push(7);
                                                               if(_loc2_)
                                                               {
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§ case§.§1!F§);
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               addr322:
                                                               if(§§pop() === _loc1_)
                                                               {
                                                                  §§goto(addr323);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr331);
                                                                  §§push(8);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr322);
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr282);
                              }
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr308);
                     }
                     else
                     {
                        §§push(§ case§.§<e§);
                        if(!(_loc2_ && this))
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 §§push(1);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr250);
                                 }
                              }
                              else
                              {
                                 §§push(§ case§.§=!D§);
                                 if(_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_ || _loc1_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr331);
                                             §§push(2);
                                          }
                                          else
                                          {
                                             §§goto(addr249);
                                          }
                                          §§goto(addr331);
                                       }
                                       else
                                       {
                                          §§goto(addr216);
                                          §§push(§ case§.§'!$§);
                                       }
                                       §§goto(addr331);
                                    }
                                    §§goto(addr322);
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr331);
                           }
                           §§goto(addr241);
                        }
                     }
                     §§goto(addr331);
                  }
                  §§goto(addr216);
               }
               §§goto(addr332);
            }
            §§goto(addr108);
            §§push(this.§`@§);
         }
         §§goto(addr141);
      }
   }
}
