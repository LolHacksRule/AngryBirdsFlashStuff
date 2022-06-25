package §?!G§
{
   public class JSONDecoder
   {
       
      
      private var §+c§:Boolean;
      
      private var value;
      
      private var §"y§:§@;§;
      
      private var § !K§:§[!X§;
      
      public function JSONDecoder(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§+c§ = param2;
               while(true)
               {
                  this.§"y§ = new §@;§(param1,param2);
                  loop2:
                  for(; _loc3_ || param1; while(true)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop2;
                     }
                     §§push(param2);
                     if(_loc3_ || param2)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           addr106:
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              §§goto(addr111);
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr106);
                     §§goto(addr89);
                  },§§goto(addr91))
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     §§push(this.§9E§());
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr140:
                        addr93:
                        while(true)
                        {
                           this.value = this.§-![§();
                           continue loop2;
                        }
                        return;
                        loop7:
                        while(true)
                        {
                           §§push(this.§9E§());
                           if(!(_loc4_ && param1))
                           {
                              §§push(§§pop() == null);
                              if(_loc3_ || param1)
                              {
                                 addr47:
                                 if(_loc3_ || this)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                       addr89:
                                       if(_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc3_)
                                       {
                                          §§goto(addr140);
                                       }
                                       §§goto(addr93);
                                       addr63:
                                    }
                                 }
                                 else
                                 {
                                    addr111:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop7;
                                       §§goto(addr47);
                                    }
                                    addr111:
                                 }
                              }
                              while(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc4_ && param1)
                                    {
                                       continue loop7;
                                    }
                                    this.§"y§.parseError("Unexpected characters left in input stream");
                                 }
                                 §§goto(addr89);
                              }
                              break;
                           }
                           continue loop3;
                        }
                        §§goto(addr93);
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §9E§() : §[!X§
      {
         return this.§ !K§ = this.§"y§.§`!A§();
      }
      
      private function §[l§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         if(_loc3_)
         {
            §§push(this.§9E§());
            loop0:
            while(true)
            {
               §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§ !K§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().type);
                     loop3:
                     while(true)
                     {
                        §§push(§0H§.§!@§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 break;
                              }
                              while(true)
                              {
                              }
                              addr347:
                           }
                           while(true)
                           {
                              §§push(this.§+c§);
                              loop7:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_ || this)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc2_)
                                    {
                                       addr308:
                                       §§push(§§pop());
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§ !K§);
                                                while(true)
                                                {
                                                   §§push(§§pop().type);
                                                   addr268:
                                                   while(true)
                                                   {
                                                      §§push(§0H§.§;!^§);
                                                      addr271:
                                                      §§goto(addr177);
                                                   }
                                                   addr293:
                                                   §§push(this.§ !K§);
                                                   if(!_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop().type);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(!(_loc3_ || _loc1_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§0H§.§!@§);
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            addr243:
                                                            if(!_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§9E§());
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop();
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr293);
                                                                        addr247:
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           addr256:
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§"y§);
                                                                                 §§push("Leading commas are not supported.  Expecting \']\' but found ");
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    §§push(§§pop() + this.§ !K§.value);
                                                                                 }
                                                                                 §§pop().parseError(§§pop());
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       break loop14;
                                                                                    }
                                                                                    §§goto(addr177);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr247);
                                                                                 }
                                                                              }
                                                                              addr186:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr286:
                                                            }
                                                            return _loc1_;
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr268);
                                                }
                                             }
                                          }
                                          addr328:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr286);
                                          }
                                          addr177:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc2_)
                                             {
                                                continue loop8;
                                             }
                                             addr282:
                                             if(!_loc3_)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          addr177:
                                          loop17:
                                          while(true)
                                          {
                                             §§push(true);
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(this.§+c§);
                                                               addr78:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  addr79:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§ !K§);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().type);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       §§push(§0H§.§!@§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             loop20:
                                                                                             for(; _loc3_ || this; if(!(_loc3_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             },§§goto(addr74))
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   return _loc1_;
                                                                                                }
                                                                                                addr185:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§9E§());
                                                                                                   loop31:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§ !K§);
                                                                                                         addr147:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().type);
                                                                                                            addr148:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§0H§.§!@§);
                                                                                                               loop23:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     break loop20;
                                                                                                                  }
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§ !K§);
                                                                                                                     addr129:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().type);
                                                                                                                        addr130:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§0H§.§;!^§);
                                                                                                                           addr133:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(this.§9E§());
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 addr65:
                                                                                                                                 addr74:
                                                                                                                                 §§push(this.§"y§);
                                                                                                                                 §§push("Expecting ] or , but found ");
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + this.§ !K§.value);
                                                                                                                                 }
                                                                                                                                 §§pop().parseError(§§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       break loop19;
                                                                                                                                    }
                                                                                                                                    if(!(_loc2_ && this))
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           continue loop18;
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
                                                                                             return _loc1_;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr133);
                                                                                    }
                                                                                    §§goto(addr148);
                                                                                 }
                                                                                 §§goto(addr130);
                                                                              }
                                                                              §§goto(addr147);
                                                                           }
                                                                           §§goto(addr129);
                                                                        }
                                                                        addr80:
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr80);
                                                      }
                                                      §§goto(addr65);
                                                   }
                                                   else
                                                   {
                                                      _loc1_.push(this.§-![§());
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr78);
                                             }
                                             §§goto(addr79);
                                          }
                                          return null;
                                       }
                                    }
                                    §§goto(addr328);
                                 }
                                 §§goto(addr308);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr207);
      }
      
      private function parseObject() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            §§push(this.§9E§());
            loop0:
            while(true)
            {
               §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§ !K§);
                  while(true)
                  {
                     §§push(§§pop().type);
                     addr537:
                     while(true)
                     {
                        §§push(§0H§.§7§);
                        addr540:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§+c§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    addr525:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§ !K§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop().type);
                                                addr464:
                                                while(true)
                                                {
                                                   §§push(§0H§.§;!^§);
                                                   addr467:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                            }
                                                            addr482:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr525);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_ && _loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  addr541:
                                                                  if(_loc4_)
                                                                  {
                                                                     return _loc1_;
                                                                  }
                                                                  addr385:
                                                                  continue loop1;
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr27:
                                                                  §§push(true);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr339:
                                                                                       this.§9E§();
                                                                                       addr340:
                                                                                       addr358:
                                                                                       §§push(this.§ !K§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr312:
                                                                                          §§push(§§pop().type);
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             addr322:
                                                                                             §§push(§0H§.§ !2§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   addr327:
                                                                                                   this.§9E§();
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      _loc1_[_loc2_] = this.§-![§();
                                                                                                      addr305:
                                                                                                      §§push(this.§9E§());
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr273:
                                                                                                         §§push(this.§ !K§);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr279:
                                                                                                            §§push(§§pop().type);
                                                                                                            §§push(§0H§.§7§);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  §§goto(addr282);
                                                                                                               }
                                                                                                               addr238:
                                                                                                               §§push(this.§ !K§);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr241:
                                                                                                                  §§push(§§pop().type);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr246:
                                                                                                                     if(§§pop() == §0H§.§;!^§)
                                                                                                                     {
                                                                                                                        addr247:
                                                                                                                        §§push(this.§9E§());
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr182:
                                                                                                                              if(!this.§+c§)
                                                                                                                              {
                                                                                                                                 addr184:
                                                                                                                                 §§push(this.§ !K§);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().type);
                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc4_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§0H§.§7§);
                                                                                                                                          if(_loc4_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr221);
                                                                                                                                                }
                                                                                                                                                addr61:
                                                                                                                                                §§goto(addr27);
                                                                                                                                                addr164:
                                                                                                                                                addr119:
                                                                                                                                             }
                                                                                                                                             §§goto(addr279);
                                                                                                                                          }
                                                                                                                                          §§goto(addr246);
                                                                                                                                       }
                                                                                                                                       §§goto(addr279);
                                                                                                                                    }
                                                                                                                                    §§goto(addr241);
                                                                                                                                 }
                                                                                                                                 §§goto(addr238);
                                                                                                                              }
                                                                                                                              §§goto(addr164);
                                                                                                                              addr269:
                                                                                                                           }
                                                                                                                           §§goto(addr339);
                                                                                                                        }
                                                                                                                        §§goto(addr305);
                                                                                                                     }
                                                                                                                     addr174:
                                                                                                                     this.§"y§.parseError("Expecting } or , but found " + this.§ !K§.value);
                                                                                                                     addr176:
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr119);
                                                                                                                     }
                                                                                                                     addr282:
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr340);
                                                                                                                     }
                                                                                                                     return _loc1_;
                                                                                                                     addr170:
                                                                                                                     addr172:
                                                                                                                     addr169:
                                                                                                                  }
                                                                                                                  §§goto(addr312);
                                                                                                               }
                                                                                                               §§goto(addr273);
                                                                                                            }
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                         §§goto(addr339);
                                                                                                         addr298:
                                                                                                      }
                                                                                                      §§goto(addr327);
                                                                                                   }
                                                                                                   addr351:
                                                                                                   _loc2_ = String(this.§ !K§.value);
                                                                                                   §§goto(addr358);
                                                                                                   addr325:
                                                                                                }
                                                                                                addr124:
                                                                                                §§push(this.§"y§);
                                                                                                §§push("Expecting : but found ");
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   addr134:
                                                                                                   §§push(this.§ !K§);
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      addr143:
                                                                                                      §§push(§§pop() + §§pop().value);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§pop().parseError(§§pop());
                                                                                                         addr147:
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  §§goto(addr61);
                                                                                                               }
                                                                                                               §§goto(addr327);
                                                                                                            }
                                                                                                            addr221:
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§goto(addr305);
                                                                                                            }
                                                                                                            return _loc1_;
                                                                                                         }
                                                                                                         §§goto(addr176);
                                                                                                      }
                                                                                                      §§goto(addr170);
                                                                                                   }
                                                                                                   §§goto(addr172);
                                                                                                }
                                                                                                §§goto(addr143);
                                                                                             }
                                                                                             addr350:
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§push(this.§"y§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   §§push("Expecting string but found ");
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(this.§ !K§);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr91:
                                                                                                            §§push(§§pop() + §§pop().value);
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               §§pop().parseError(§§pop());
                                                                                                               addr100:
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr27);
                                                                                                                        }
                                                                                                                        §§goto(addr298);
                                                                                                                     }
                                                                                                                     §§goto(addr247);
                                                                                                                  }
                                                                                                                  §§goto(addr269);
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§goto(addr61);
                                                                                                                  }
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                               §§goto(addr238);
                                                                                                            }
                                                                                                            §§goto(addr143);
                                                                                                         }
                                                                                                         §§goto(addr134);
                                                                                                      }
                                                                                                      §§goto(addr174);
                                                                                                   }
                                                                                                   §§goto(addr91);
                                                                                                }
                                                                                                §§goto(addr169);
                                                                                             }
                                                                                             §§goto(addr124);
                                                                                          }
                                                                                          addr347:
                                                                                          §§goto(addr350);
                                                                                          §§push(§0H§.§'!,§);
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                       §§push(§§pop().type);
                                                                                    }
                                                                                    return null;
                                                                                 }
                                                                                 §§goto(addr184);
                                                                              }
                                                                              §§goto(addr147);
                                                                           }
                                                                           §§goto(addr100);
                                                                        }
                                                                        §§goto(addr339);
                                                                        §§push(this.§ !K§);
                                                                     }
                                                                  }
                                                                  §§goto(addr182);
                                                                  addr341:
                                                               }
                                                               return _loc1_;
                                                            }
                                                            addr501:
                                                            addr450:
                                                            continue loop0;
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr482);
                                 }
                              }
                              addr504:
                           }
                           §§goto(addr541);
                        }
                     }
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     §§push(§§pop().type);
                     if(_loc4_ || this)
                     {
                        if(_loc4_ || this)
                        {
                           §§push(§0H§.§7§);
                           if(_loc4_ || _loc1_)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§"y§);
                                       §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§§pop() + this.§ !K§.value);
                                       }
                                       §§pop().parseError(§§pop());
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc4_ || _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr504);
                                    }
                                    if(_loc4_ || this)
                                    {
                                       §§goto(addr385);
                                    }
                                 }
                                 §§goto(addr450);
                              }
                              §§goto(addr540);
                           }
                           §§goto(addr467);
                        }
                        §§goto(addr537);
                     }
                     §§goto(addr464);
                  }
               }
            }
         }
         §§goto(addr501);
      }
      
      private function §-![§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§ !K§ == null)
            {
               if(!_loc2_)
               {
                  addr142:
                  this.§"y§.parseError("Unexpected end of input");
               }
            }
            §§push(this.§ !K§);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(_loc3_ || _loc1_)
               {
                  var _loc1_:* = §§pop();
                  if(!_loc2_)
                  {
                     §§push(§0H§.§"0§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(0);
                                 if(_loc2_)
                                 {
                                    addr197:
                                    §§push(_loc1_);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(1);
                                             if(!(_loc2_ && this))
                                             {
                                                addr373:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      return this.parseObject();
                                                   case 7:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(this.§+c§);
                                                         if(_loc3_ || this)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                            addr115:
                                                         }
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(this.§"y§);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push("Unexpected ");
                                                               if(_loc3_)
                                                               {
                                                                  addr70:
                                                                  §§push(this.§ !K§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop().value);
                                                                     §§goto(addr70);
                                                                  }
                                                                  addr72:
                                                               }
                                                               addr74:
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§pop().parseError(§§pop());
                                                                  addr76:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr115);
                                                                  }
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  addr82:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"y§);
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push("Unexpected ");
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§push(this.§ !K§);
                                                                           if(!(_loc2_ && _loc1_))
                                                                           {
                                                                              addr56:
                                                                              §§pop().parseError(§§pop() + §§pop().value);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr76);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr72);
                                                                           §§goto(addr76);
                                                                        }
                                                                        §§goto(addr74);
                                                                     }
                                                                     §§goto(addr56);
                                                                     §§goto(addr82);
                                                                  }
                                                                  return null;
                                                                  addr20:
                                                               }
                                                            }
                                                         }
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§ !K§);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         return §§pop().value;
                                                      }
                                                      continue;
                                                   default:
                                                      §§goto(addr20);
                                                   case 1:
                                                      break;
                                                   case 2:
                                                   case 3:
                                                   case 4:
                                                   case 5:
                                                   case 6:
                                                      §§push(this.§ !K§);
                                                      if(_loc3_)
                                                      {
                                                         break loop0;
                                                      }
                                                      continue;
                                                }
                                                return this.§[l§();
                                                addr372:
                                             }
                                             else
                                             {
                                                addr317:
                                                §§push(_loc1_);
                                                if(_loc3_ || this)
                                                {
                                                   addr325:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         addr333:
                                                         §§push(6);
                                                         if(_loc2_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr367:
                                                         §§push(8);
                                                         if(_loc3_)
                                                         {
                                                            addr370:
                                                         }
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   else
                                                   {
                                                      §§push(§0H§.§'!6§);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr357:
                                                         §§push(_loc1_);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr361:
                                                      §§push(7);
                                                      if(_loc3_)
                                                      {
                                                         addr364:
                                                      }
                                                   }
                                                }
                                                else if(true)
                                                {
                                                   §§goto(addr372);
                                                   §§push(8);
                                                }
                                                §§goto(addr372);
                                             }
                                             §§goto(addr372);
                                          }
                                          §§goto(addr367);
                                       }
                                       else
                                       {
                                          §§push(§0H§.§'!,§);
                                          if(_loc3_ || this)
                                          {
                                             §§push(_loc1_);
                                             if(!_loc2_)
                                             {
                                                addr235:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      §§push(2);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr372);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr364);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr372);
                                                }
                                                else
                                                {
                                                   §§push(§0H§.§>!T§);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc2_)
                                                      {
                                                         addr260:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§push(3);
                                                               if(_loc2_ && this)
                                                               {
                                                                  addr311:
                                                               }
                                                               §§goto(addr372);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr333);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§0H§.TRUE);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!_loc2_)
                                                               {
                                                                  addr280:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(4);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr286:
                                                                           §§goto(addr372);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr297:
                                                                           §§push(_loc1_);
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    addr308:
                                                                                    §§push(5);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§0H§.NULL);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              §§goto(addr372);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§0H§.FALSE);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   §§goto(addr357);
                                                }
                                             }
                                             §§goto(addr280);
                                          }
                                       }
                                       §§goto(addr317);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr372);
                              }
                              §§goto(addr308);
                           }
                           else
                           {
                              §§push(§0H§.§9D§);
                              if(!(_loc2_ && this))
                              {
                                 §§goto(addr197);
                              }
                           }
                           §§goto(addr370);
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr286);
                  }
                  §§goto(addr308);
               }
               §§goto(addr373);
            }
            return §§pop().value;
         }
         §§goto(addr142);
      }
   }
}
