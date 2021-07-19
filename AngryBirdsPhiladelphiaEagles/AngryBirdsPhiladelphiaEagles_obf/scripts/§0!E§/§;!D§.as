package §0!E§
{
   public class §;!D§
   {
       
      
      private var §7A§:Vector.<int>;
      
      public function §;!D§(param1:int = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§7A§ = new Vector.<int>(32);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.assign(param1);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function assign(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc7_ || _loc2_)
            {
               if(§§pop() >= this.§7A§.length)
               {
                  if(!_loc6_)
                  {
                     addr43:
                     §§push(this.getValue());
                     §§push(param1);
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(§§pop() != §§pop())
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() | §§pop());
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       addr148:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          §§push(param1);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() & _loc2_);
                                             §§push(§§pop() & _loc2_);
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                             }
                                             addr126:
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop10;
                                             }
                                             addr102:
                                             §§push(_loc4_);
                                             §§push(~_loc2_);
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop9;
                                                }
                                                §§push(§§pop() & §§pop());
                                                while(!_loc7_)
                                                {
                                                   continue loop6;
                                                }
                                                addr107:
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   addr89:
                                                   while(true)
                                                   {
                                                      this.§7A§[_loc3_] = _loc4_;
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(1);
                                                         while(true)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               _loc2_ = §§pop() << §§pop();
                                                               _loc3_++;
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      §§goto(addr105);
                                                   }
                                                   §§goto(addr107);
                                                }
                                                addr105:
                                             }
                                          }
                                       }
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr89);
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr108);
               }
               else
               {
                  §§push(int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE)));
               }
               §§goto(addr148);
            }
            §§goto(addr43);
         }
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || this)
            {
               if(!_loc5_)
               {
                  if(!(_loc5_ && this))
                  {
                     if(§§pop() >= this.§7A§.length)
                     {
                        if(!_loc5_)
                        {
                           addr58:
                           §§push(_loc1_);
                           if(!(_loc5_ && _loc3_))
                           {
                              break;
                           }
                           loop8:
                           while(true)
                           {
                              §§push(1);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§§pop() << §§pop());
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr101:
                                       _loc2_ = §§pop();
                                       while(!_loc4_)
                                       {
                                          §§goto(addr101);
                                       }
                                       _loc3_++;
                                       while(!(_loc4_ || _loc3_))
                                       {
                                          §§goto(addr102);
                                          §§goto(addr104);
                                       }
                                       addr102:
                                       addr104:
                                       continue loop0;
                                       addr70:
                                    }
                                    else
                                    {
                                       addr108:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§7A§[_loc3_] & _loc2_);
                                       addr114:
                                       while(true)
                                       {
                                          §§push(§§pop() | §§pop());
                                          addr115:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                 }
                                 addr99:
                              }
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr70);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr115);
               }
               §§goto(addr99);
            }
            §§goto(addr58);
         }
         return §§pop();
      }
   }
}
