package §#!F§
{
   public class §78§
   {
       
      
      private var §%p§:Vector.<int>;
      
      public function §78§(param1:int = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            do
            {
               this.§%p§ = new Vector.<int>(32);
               do
               {
                  this.§7!X§(param1);
               }
               while(_loc2_);
               
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function §7!X§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:int = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() >= this.§%p§.length)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     if(_loc7_ || _loc2_)
                     {
                        addr55:
                        §§push(this.getValue());
                        if(_loc7_)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!_loc6_)
                              {
                                 §§push(param1);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             addr89:
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr233:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() | §§pop());
                                                         addr234:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            loop4:
                                                            while(true)
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  this.§%p§[_loc3_] = _loc4_;
                                                                  continue loop4;
                                                                  addr195:
                                                                  while(true)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr231:
                                             }
                                             while(true)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         continue loop0;
                                                      }
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc2_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     break loop2;
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               break loop2;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(_loc4_);
                                                            continue;
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr166);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr89);
               }
               else
               {
                  §§push(int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE)));
               }
               §§goto(addr259);
            }
            §§goto(addr55);
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
            if(_loc4_)
            {
               if(!(_loc5_ && _loc2_))
               {
                  if(§§pop() >= this.§%p§.length)
                  {
                     if(!(_loc4_ || _loc1_))
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        addr58:
                        §§push(_loc1_);
                        if(_loc4_ || this)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr80:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(1);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(§§pop() << §§pop());
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr92:
                                             while(_loc5_)
                                             {
                                                continue loop2;
                                             }
                                             _loc3_++;
                                             continue loop0;
                                          }
                                          addr91:
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§%p§[_loc3_] & _loc2_);
                                       }
                                       addr108:
                                    }
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr108);
               }
               §§goto(addr80);
            }
            §§goto(addr58);
         }
         return §§pop();
      }
   }
}
