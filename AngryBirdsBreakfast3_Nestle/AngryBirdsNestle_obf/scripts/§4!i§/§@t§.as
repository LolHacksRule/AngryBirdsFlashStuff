package §4!i§
{
   public class §@t§
   {
       
      
      private var §7!?§:Vector.<int>;
      
      public function §@t§(param1:int = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            while(true)
            {
               this.§7!?§ = new Vector.<int>(32);
               while(_loc2_ || this)
               {
                  this.§!8§(param1);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §!8§(param1:int) : void
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
            if(_loc7_)
            {
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     if(§§pop() >= this.§7!?§.length)
                     {
                        if(_loc7_ || _loc3_)
                        {
                           if(_loc7_)
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 addr56:
                                 §§push(this.getValue());
                                 if(_loc7_ || this)
                                 {
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             addr74:
                                             if(_loc7_)
                                             {
                                                if(_loc7_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         this.§7!?§[_loc3_] = _loc4_;
                                                         addr129:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr93:
                                                            while(!(_loc6_ && param1))
                                                            {
                                                               §§push(1);
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     §§push(§§pop() << §§pop());
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr120:
                                                                        addr122:
                                                                        addr88:
                                                                        while(!_loc7_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr196:
                                                                                 §§push(_loc2_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() | §§pop());
                                                                                    addr197:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 addr196:
                                                                              }
                                                                              §§goto(addr197);
                                                                           }
                                                                        }
                                                                        _loc3_++;
                                                                        while(!_loc7_)
                                                                        {
                                                                           §§goto(addr120);
                                                                           §§goto(addr122);
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr119:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() & §§pop());
                                                                        break loop2;
                                                                     }
                                                                     addr164:
                                                                  }
                                                               }
                                                            }
                                                            break loop2;
                                                         }
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr166:
                                                         while(true)
                                                         {
                                                            §§goto(addr123);
                                                            continue loop14;
                                                         }
                                                      }
                                                      addr123:
                                                      addr165:
                                                   }
                                                   else
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc2_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr191:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    if(_loc7_ || _loc2_)
                                                                                    {
                                                                                       §§push(~§§pop());
                                                                                    }
                                                                                    §§goto(addr196);
                                                                                 }
                                                                                 §§goto(addr164);
                                                                              }
                                                                              break loop8;
                                                                           }
                                                                           §§goto(addr165);
                                                                        }
                                                                        §§goto(addr192);
                                                                     }
                                                                  }
                                                                  addr190:
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr197);
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          break;
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr74);
                     }
                     else
                     {
                        §§push(int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE)));
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr191);
               }
               §§goto(addr119);
            }
            §§goto(addr56);
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
            if(_loc5_)
            {
               if(!(_loc4_ && this))
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() >= this.§7!?§.length)
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 addr68:
                                 §§push(_loc1_);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 addr109:
                                 §§push(this.§7!?§[_loc3_] & _loc2_);
                                 while(true)
                                 {
                                    §§push(§§pop() | §§pop());
                                    addr116:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                    }
                                 }
                                 addr115:
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_ || this)
                                 {
                                    §§push(1);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(§§pop() << §§pop());
                                       break;
                                    }
                                    §§goto(addr115);
                                 }
                                 break;
                                 §§goto(addr116);
                              }
                              addr94:
                              _loc2_ = §§pop();
                           }
                           _loc3_++;
                        }
                        continue;
                     }
                     §§push(_loc1_);
                     §§goto(addr109);
                  }
                  §§goto(addr116);
               }
               §§goto(addr94);
            }
            §§goto(addr68);
         }
         return §§pop();
      }
   }
}
