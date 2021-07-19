package §1!i§
{
   public class §;7§
   {
       
      
      private var §%4§:Vector.<int>;
      
      public function §;7§(param1:int = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§%4§ = new Vector.<int>(32);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§3"Q§(param1);
            if(_loc2_)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §3"Q§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc7_ && _loc3_))
            {
               if(_loc6_)
               {
                  if(§§pop() >= this.§%4§.length)
                  {
                     if(!_loc7_)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           addr51:
                           §§push(this.getValue());
                           if(_loc6_)
                           {
                              if(!(_loc7_ && this))
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(param1);
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          if(!(_loc7_ && this))
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                addr90:
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(1);
                                                      while(true)
                                                      {
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr142:
                                                            §§push(§§pop() << §§pop());
                                                            loop11:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  _loc3_++;
                                                                  addr102:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ && _loc2_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    addr211:
                                                                                    §§push(_loc4_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       addr212:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() | §§pop());
                                                                                          addr213:
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr214:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr211:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(§§pop() & §§pop());
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr211);
                                                                                                }
                                                                                                §§goto(addr212);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr212);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr153:
                                                                                    §§push(_loc4_);
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr162:
                                                                                    §§push(_loc2_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(~§§pop());
                                                                                       addr164:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() & §§pop());
                                                                                          break loop7;
                                                                                       }
                                                                                       §§goto(addr162);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           addr168:
                                                                           while(true)
                                                                           {
                                                                              this.§%4§[_loc3_] = _loc4_;
                                                                              continue loop9;
                                                                              §§goto(addr168);
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                     §§goto(addr214);
                                                                     continue loop12;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr142:
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      addr134:
                                                   }
                                                   §§goto(addr142);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr90);
                  }
                  else
                  {
                     §§push(int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE)));
                  }
                  §§goto(addr238);
               }
               §§goto(addr142);
            }
            §§goto(addr51);
         }
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() >= this.§%4§.length)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc1_))
                  {
                     if(_loc5_)
                     {
                        addr44:
                        §§push(_loc1_);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() | §§pop());
                                       addr111:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          addr112:
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    addr110:
                                 }
                                 §§push(§§pop() << §§pop());
                              }
                              §§goto(addr111);
                           }
                        }
                        _loc2_ = §§pop();
                        _loc3_++;
                        continue;
                        addr83:
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr83);
               }
               else
               {
                  §§push(_loc1_);
                  if(_loc5_ || _loc1_)
                  {
                     §§goto(addr110);
                     §§push(this.§%4§[_loc3_] & _loc2_);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr44);
         }
         return §§pop();
      }
   }
}
