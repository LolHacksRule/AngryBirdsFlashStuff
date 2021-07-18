package §;!]§
{
   public class §0k§
   {
       
      
      private var §<!Q§:Boolean;
      
      private var value;
      
      private var §=!5§:§8a§;
      
      private var § !;§:§&![§;
      
      public function §0k§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§<!Q§ = param2;
               loop2:
               while(_loc3_)
               {
                  this.§[!c§();
                  loop3:
                  while(true)
                  {
                     this.value = this.§@!B§();
                     loop4:
                     for(; _loc3_; while(!(_loc4_ && this))
                     {
                        continue loop3;
                        §§goto(addr80);
                     })
                     {
                        §§push(param2);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       this.§=!5§.parseError("Unexpected characters left in input stream");
                                    }
                                    if(!(_loc4_ && this))
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 return;
                                 addr40:
                              }
                           }
                           addr80:
                           addr33:
                           while(true)
                           {
                              §§pop();
                              continue loop4;
                           }
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           §§goto(addr40);
                        }
                     }
                     addr132:
                     while(true)
                     {
                        this.§=!5§ = new §8a§(param1,param2);
                        continue loop2;
                     }
                     if(!(_loc3_ || param2))
                     {
                        continue;
                     }
                     §§push(this.§[!c§() == null);
                     if(_loc3_)
                     {
                        §§push(!§§pop());
                     }
                     if(_loc3_)
                     {
                        §§goto(addr33);
                     }
                     §§goto(addr80);
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §[!c§() : §&![§
      {
         return this.§ !;§ = this.§=!5§.§!W§();
      }
      
      private function §6e§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         if(_loc3_)
         {
            this.§[!c§();
            loop0:
            while(true)
            {
               §§push(this.§ !;§);
               loop1:
               while(true)
               {
                  §§push(§§pop().type);
                  loop2:
                  while(true)
                  {
                     §§push(§]I§.§3V§);
                     loop3:
                     while(§§pop() != §§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§<!Q§);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr268:
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§ !;§);
                                          addr239:
                                          while(!_loc2_)
                                          {
                                             §§push(§§pop().type);
                                             while(true)
                                             {
                                                §§push(§]I§.§?k§);
                                                addr244:
                                                do
                                                {
                                                   §§push(§§pop() == §§pop());
                                                }
                                                while(_loc3_);
                                                
                                                continue loop7;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr267:
                                 }
                                 loop5:
                                 while(§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       this.§[!c§();
                                       while(true)
                                       {
                                          §§push(this.§ !;§);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop().type);
                                             if(!(_loc2_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§]I§.§3V§);
                                                if(!_loc2_)
                                                {
                                                   if(_loc2_ && this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      do
                                                      {
                                                         this.§=!5§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§ !;§.value);
                                                      }
                                                      while(!(_loc3_ || _loc1_));
                                                      
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            return _loc1_;
                                                         }
                                                         break loop3;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr244);
                                             }
                                             §§goto(addr242);
                                          }
                                          break;
                                       }
                                       §§goto(addr239);
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc1_.push(this.§@!B§());
                                    loop15:
                                    while(true)
                                    {
                                       this.§[!c§();
                                       while(true)
                                       {
                                          §§push(this.§ !;§);
                                          loop17:
                                          while(true)
                                          {
                                             §§push(§§pop().type);
                                             addr130:
                                             while(true)
                                             {
                                                §§push(§]I§.§3V§);
                                                addr132:
                                                addr133:
                                                while(§§pop() != §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§ !;§);
                                                      continue loop17;
                                                   }
                                                }
                                                return _loc1_;
                                             }
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop15;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr267);
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr249);
      }
      
      private function §<>§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(!_loc4_)
         {
            this.§[!c§();
         }
         loop0:
         while(true)
         {
            §§push(this.§ !;§);
            loop1:
            while(true)
            {
               §§push(§§pop().type);
               loop2:
               while(true)
               {
                  §§push(§]I§.§]s§);
                  loop3:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§<!Q§);
                           loop5:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    for(; §§pop(); if(!(_loc4_ && _loc3_))
                                    {
                                       continue;
                                    },continue loop5)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          this.§[!c§();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§ !;§);
                                             if(!(_loc3_ || this))
                                             {
                                                break;
                                             }
                                             §§push(§§pop().type);
                                             if(!_loc4_)
                                             {
                                                if(!(_loc3_ || this))
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§]I§.§]s§);
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         return _loc1_;
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         addr312:
                                                         while(true)
                                                         {
                                                            this.§=!5§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§ !;§.value);
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop4;
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               return _loc1_;
                                                            }
                                                            addr453:
                                                            continue loop0;
                                                            addr425:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop12;
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr426:
                                                      }
                                                   }
                                                   §§goto(addr312);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                   continue loop5;
                                                   addr402:
                                                }
                                                §§goto(addr426);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr400:
                                             }
                                             §§goto(addr402);
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr26:
                                    if(this.§ !;§.type == §]I§.§9!U§)
                                    {
                                       addr304:
                                       _loc2_ = String(this.§ !;§.value);
                                       this.§[!c§();
                                       addr292:
                                       if(_loc3_)
                                       {
                                          addr280:
                                          if(this.§ !;§.type == §]I§.§4<§)
                                          {
                                             addr284:
                                             if(!_loc4_)
                                             {
                                                this.§[!c§();
                                                _loc1_[_loc2_] = this.§@!B§();
                                                this.§[!c§();
                                                addr276:
                                                addr288:
                                                if(!_loc4_)
                                                {
                                                   addr230:
                                                   §§push(this.§ !;§);
                                                   if(_loc3_)
                                                   {
                                                      addr233:
                                                      §§push(§§pop().type);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr242:
                                                         §§push(§]I§.§]s§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  §§goto(addr252);
                                                               }
                                                               addr190:
                                                               §§push(this.§ !;§.type);
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr199:
                                                                  if(§§pop() == §]I§.§?k§)
                                                                  {
                                                                     addr200:
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        this.§[!c§();
                                                                        addr209:
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(!this.§<!Q§)
                                                                           {
                                                                              addr148:
                                                                              §§push(this.§ !;§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(_loc3_ || _loc1_)
                                                                                 {
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       §§push(§§pop().type);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§push(§]I§.§]s§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      addr32:
                                                                                                      §§goto(addr26);
                                                                                                      addr109:
                                                                                                      addr95:
                                                                                                   }
                                                                                                   §§goto(addr183);
                                                                                                }
                                                                                                §§goto(addr242);
                                                                                             }
                                                                                             §§goto(addr199);
                                                                                          }
                                                                                          §§goto(addr26);
                                                                                       }
                                                                                       §§goto(addr190);
                                                                                    }
                                                                                    §§goto(addr280);
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                              §§goto(addr190);
                                                                           }
                                                                           §§goto(addr109);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  addr119:
                                                                  this.§=!5§.parseError("Expecting } or , but found " + this.§ !;§.value);
                                                                  addr120:
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§goto(addr95);
                                                                           }
                                                                           addr252:
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr276);
                                                                           }
                                                                           return _loc1_;
                                                                        }
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                                  §§goto(addr148);
                                                                  addr114:
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr26);
                                                         }
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr26);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr304);
                                          }
                                          addr105:
                                          this.§=!5§.parseError("Expecting : but found " + this.§ !;§.value);
                                          addr106:
                                          if(!_loc4_)
                                          {
                                             §§goto(addr32);
                                          }
                                          §§goto(addr200);
                                          addr100:
                                       }
                                       addr311:
                                       §§goto(addr311);
                                    }
                                    §§push(this.§=!5§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push("Expecting string but found " + this.§ !;§.value);
                                          if(_loc3_ || _loc1_)
                                          {
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                §§pop().parseError(§§pop());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            §§goto(addr26);
                                                         }
                                                         addr183:
                                                         return _loc1_;
                                                      }
                                                      §§goto(addr32);
                                                   }
                                                   §§goto(addr120);
                                                }
                                                §§goto(addr106);
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr105);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr100);
                                 }
                              }
                              §§goto(addr425);
                           }
                        }
                     }
                     §§goto(addr453);
                  }
               }
            }
         }
      }
      
      private function §@!B§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            if(this.§ !;§ == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr130:
                  this.§=!5§.parseError("Unexpected end of input");
               }
            }
            §§push(this.§ !;§);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(!(_loc2_ && _loc1_))
               {
                  var _loc1_:* = §§pop();
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§]I§.§^![§);
                     if(_loc3_ || this)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(0);
                                 if(!_loc3_)
                                 {
                                    addr230:
                                 }
                              }
                              else
                              {
                                 addr348:
                                 §§push(7);
                                 if(_loc3_)
                                 {
                                    addr361:
                                 }
                              }
                              addr367:
                              switch(§§pop())
                              {
                                 case 0:
                                    return this.§<>§();
                                 case 7:
                                    while(true)
                                    {
                                       if(!this.§<!Q§)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                          }
                                          addr98:
                                       }
                                       addr65:
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§=!5§);
                                          addr68:
                                          while(true)
                                          {
                                             §§push("Unexpected ");
                                             addr69:
                                             while(true)
                                             {
                                                §§push(this.§ !;§);
                                                addr71:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop().value);
                                                   addr73:
                                                   while(true)
                                                   {
                                                      §§pop().parseError(§§pop());
                                                      addr74:
                                                      addr76:
                                                      while(_loc2_)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(_loc2_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       break loop0;
                                    }
                                    §§push(this.§ !;§);
                                    if(!_loc2_)
                                    {
                                       return §§pop().value;
                                    }
                                    continue;
                                    addr77:
                                    while(true)
                                    {
                                       §§push(this.§=!5§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push("Unexpected ");
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(this.§ !;§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() + §§pop().value);
                                                if(_loc3_)
                                                {
                                                   §§pop().parseError(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr77);
                                                         }
                                                         §§goto(addr65);
                                                      }
                                                      §§goto(addr74);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr73);
                                             }
                                             §§goto(addr71);
                                          }
                                          §§goto(addr69);
                                       }
                                       §§goto(addr68);
                                       §§goto(addr76);
                                    }
                                    return null;
                                 case 1:
                                    break loop0;
                                 case 2:
                                 case 3:
                                 case 4:
                                 case 5:
                                 case 6:
                              }
                              addr366:
                              §§push(this.§ !;§);
                              if(_loc3_)
                              {
                                 return §§pop().value;
                              }
                              continue;
                              addr366:
                           }
                           else
                           {
                              §§push(§]I§.§?p§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(1);
                                          if(_loc2_)
                                          {
                                             addr264:
                                          }
                                       }
                                       else
                                       {
                                          addr275:
                                          §§push(4);
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr283:
                                          }
                                          else
                                          {
                                             addr336:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(§]I§.§9!U§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr216:
                                          §§push(_loc1_);
                                          if(_loc3_)
                                          {
                                             addr219:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr227:
                                                   §§push(2);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr230);
                                                   }
                                                }
                                                else
                                                {
                                                   addr299:
                                                   §§push(5);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      addr307:
                                                   }
                                                }
                                                §§goto(addr366);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr333:
                                                         §§push(6);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr348);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§]I§.§`!7§);
                                                      if(_loc3_ || this)
                                                      {
                                                         addr347:
                                                         if(§§pop() === _loc1_)
                                                         {
                                                            §§goto(addr348);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr366);
                                                            §§push(8);
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr361);
                                                }
                                                §§goto(addr347);
                                             }
                                             else
                                             {
                                                §§push(§]I§.§,c§);
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(_loc1_);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§push(3);
                                                            if(_loc3_ || this)
                                                            {
                                                               §§goto(addr264);
                                                            }
                                                            else
                                                            {
                                                               addr288:
                                                               §§push(_loc1_);
                                                               if(!_loc2_)
                                                               {
                                                                  addr291:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        §§goto(addr299);
                                                                     }
                                                                     §§goto(addr348);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§]I§.§2!=§);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr361);
                                                                  }
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      else
                                                      {
                                                         §§push(§]I§.TRUE);
                                                         if(!_loc2_)
                                                         {
                                                            addr269:
                                                            §§push(_loc1_);
                                                            if(!_loc2_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr275);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr333);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§]I§.FALSE);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr366);
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr283);
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr366);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr361);
                        }
                        §§goto(addr347);
                     }
                     §§goto(addr336);
                  }
                  §§goto(addr227);
               }
               §§goto(addr367);
            }
            return this.§6e§();
         }
         §§goto(addr130);
      }
   }
}
