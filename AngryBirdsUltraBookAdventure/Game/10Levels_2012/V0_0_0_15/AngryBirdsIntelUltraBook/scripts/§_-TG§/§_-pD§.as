package §_-TG§
{
   import §_-Ga§.§_-2w§;
   import §_-Ga§.§_-bm§;
   import §_-JK§.§_-S2§;
   import §_-by§.§_-CE§;
   
   public class §_-pD§
   {
      
      public static const §_-S7§:Number = 50;
      
      public static var §_-0-M§:Number = 0;
      
      public static const §_-UG§:Number = 0.5;
      
      public static const §_-0Do§:Number = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-S7§ = 50;
            loop0:
            while(true)
            {
               §_-0-M§ = 0;
               while(true)
               {
                  §_-UG§ = 0.5;
                  while(_loc1_)
                  {
                     continue loop0;
                     §_-0Do§ = 0;
                     if(_loc1_ || _loc2_)
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public var §_-07b§:Number;
      
      public var §_-01a§:Number;
      
      public var §_-4R§:Number;
      
      public var §_-GV§:Number;
      
      public var §_-O2§:Number;
      
      public var §_-6A§:§_-00u§;
      
      public function §_-pD§(param1:§_-00u§, param2:§_-bm§)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:§_-2w§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§_-CE§ = null;
         if(!_loc11_)
         {
            super();
            while(true)
            {
               this.§_-6A§ = param1;
               loop1:
               while(true)
               {
                  addr45:
                  while(true)
                  {
                     this.§_-07b§ = int.MAX_VALUE;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§_-01a§ = int.MIN_VALUE;
            if(_loc10_ || param1)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr45);
            }
            §§goto(addr50);
         }
         var _loc3_:* = 0;
         if(!(_loc11_ && _loc3_))
         {
            _loc3_ = 0;
         }
         loop5:
         while(true)
         {
            §§push(_loc3_);
            if(_loc10_)
            {
               §§push(param2.§_-aj§);
               if(!(_loc11_ && _loc3_))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc10_ || param2)
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           break;
                        }
                        addr406:
                        if(§§pop() < param2.§_-uM§)
                        {
                           §§push((_loc9_ = param2.§_-086§(_loc3_)).x);
                           if(_loc10_)
                           {
                              §§push(this.§_-07b§);
                              if(!(_loc11_ && param1))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc11_ && param2))
                                    {
                                       this.§_-07b§ = _loc9_.x;
                                       if(!(_loc11_ && param1))
                                       {
                                          addr386:
                                          if(_loc9_.x > this.§_-01a§)
                                          {
                                             if(!_loc11_)
                                             {
                                                addr393:
                                                this.§_-01a§ = _loc9_.x;
                                                if(!(_loc11_ && param2))
                                                {
                                                   addr404:
                                                   _loc3_++;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr406);
                                                }
                                                §§push(0.1);
                                                if(_loc10_ || param2)
                                                {
                                                   §§push(§_-00u§.§_-F1§);
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         addr431:
                                                         §§push(§§pop() * §_-00u§.§_-lY§);
                                                         if(!_loc11_)
                                                         {
                                                            addr434:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§_-07b§);
                                                            if(!(_loc11_ && this))
                                                            {
                                                               §§push(§§pop() - _loc4_);
                                                            }
                                                            §§pop().§_-07b§ = §§pop();
                                                            loop42:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§_-01a§);
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§push(§§pop() + _loc4_);
                                                               }
                                                               §§pop().§_-01a§ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(§_-00u§.§_-F1§);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§_-00u§.§_-lY§);
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           addr509:
                                                                           §§push(this.§_-01a§);
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr513:
                                                                              §§push(§§pop() - this.§_-07b§);
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§pop().§_-O2§ = §§pop();
                                                                        continue;
                                                                     }
                                                                     §§goto(addr513);
                                                                  }
                                                                  §§goto(addr509);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop42;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr485);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                }
                                                §§goto(addr431);
                                                addr405:
                                             }
                                          }
                                          §§goto(addr404);
                                       }
                                    }
                                    §§goto(addr393);
                                 }
                              }
                           }
                           §§goto(addr386);
                        }
                        §§goto(addr393);
                     }
                     addr347:
                     §§goto(addr405);
                  }
                  else
                  {
                     _loc5_ = param2.§_-jQ§(_loc3_);
                     if(!(_loc11_ && _loc3_))
                     {
                        §§push(Number(0));
                        loop6:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(_loc5_.left);
                              loop8:
                              while(true)
                              {
                                 if(§§pop().toString() != "NaN")
                                 {
                                    loop40:
                                    while(true)
                                    {
                                       §§push(_loc5_.right);
                                       loop35:
                                       while(true)
                                       {
                                          §§push(_loc5_.left);
                                          loop36:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc10_)
                                             {
                                                §§push(4);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                addr306:
                                             }
                                             loop38:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                loop39:
                                                while(true)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.x);
                                                      addr223:
                                                      loop16:
                                                      while(!_loc11_)
                                                      {
                                                         §§push(_loc6_);
                                                         while(true)
                                                         {
                                                            §§push(2);
                                                            addr227:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               addr228:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr229:
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr251:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc10_ || this))
                                                                        {
                                                                           continue loop38;
                                                                        }
                                                                        §§push(4);
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           break loop16;
                                                                        }
                                                                        §§goto(addr306);
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            continue loop35;
                                                         }
                                                         §§push(§_-00u§.§_-lY§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            continue loop6;
                                                            addr199:
                                                            if(_loc11_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(2);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               loop24:
                                                               while(_loc10_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop25:
                                                                  for(; _loc10_; if(!(_loc10_ || this))
                                                                  {
                                                                     continue;
                                                                  },if(!_loc11_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§goto(addr163);
                                                                        §§push(this.§_-07b§);
                                                                     }
                                                                     §§goto(addr223);
                                                                  },§§goto(addr189))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop26:
                                                                     while(_loc10_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              continue loop26;
                                                                              loop31:
                                                                              do
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!(_loc10_ || param1))
                                                                                 {
                                                                                    continue loop28;
                                                                                 }
                                                                                 if(_loc10_ || param2)
                                                                                 {
                                                                                    §§push(this.§_-01a§);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop36;
                                                                                       }
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§_-01a§ = _loc8_;
                                                                                             addr136:
                                                                                             do
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                             }
                                                                                             while(_loc10_ || _loc3_);
                                                                                             
                                                                                             continue loop7;
                                                                                          }
                                                                                          addr133:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_++;
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr133);
                                                                                          }
                                                                                          §§goto(addr136);
                                                                                       }
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             continue loop39;
                                                                                          }
                                                                                          addr245:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_.x);
                                                                                             addr189:
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_ || param2)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   §§goto(addr199);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   addr290:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr227);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(_loc10_ || param2)
                                                                                                {
                                                                                                   continue loop31;
                                                                                                }
                                                                                                continue loop40;
                                                                                             }
                                                                                          }
                                                                                          continue loop36;
                                                                                          addr176:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc10_ || param1)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             continue loop31;
                                                                                          }
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             this.§_-07b§ = _loc7_;
                                                                                          }
                                                                                          §§goto(addr176);
                                                                                       }
                                                                                       addr163:
                                                                                    }
                                                                                    §§goto(addr228);
                                                                                 }
                                                                                 §§goto(addr229);
                                                                              }
                                                                              while(false);
                                                                              
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        §§goto(addr245);
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr298:
                                 }
                                 else
                                 {
                                    §§push(§_-00u§.§_-F1§);
                                 }
                                 §§goto(addr251);
                              }
                           }
                        }
                     }
                     §§goto(addr298);
                  }
               }
               §§goto(addr406);
            }
            break;
         }
         _loc3_ = §§pop();
         if(_loc10_ || param1)
         {
            §§goto(addr347);
         }
         §§goto(addr393);
      }
      
      public function clear() : void
      {
      }
      
      public function §_-h3§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(this.§_-4R§);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param2);
                                 loop6:
                                 while(!_loc3_)
                                 {
                                    §§push(this.§_-GV§);
                                    loop7:
                                    while(!_loc3_)
                                    {
                                       §§push(§§pop() + 50);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(_loc4_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                for(; _loc4_ || param1; loop12:
                                                do
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop14:
                                                         while(!_loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-07b§);
                                                               }
                                                               addr110:
                                                               §§push(§§pop() < §§pop());
                                                               continue loop12;
                                                               addr99:
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(this.§_-01a§);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(true);
                                                                              continue loop13;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                     §§push(false);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               addr62:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr168:
                                                         while(true)
                                                         {
                                                            §§goto(addr99);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr62);
                                                }
                                                while(!_loc3_);
                                                ,continue loop2)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             addr150:
                                          }
                                          §§goto(addr160);
                                       }
                                       if(_loc3_ && this)
                                       {
                                          continue;
                                       }
                                       §§goto(addr110);
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr150);
                     }
                  }
               }
            }
         }
         §§goto(addr168);
      }
   }
}
