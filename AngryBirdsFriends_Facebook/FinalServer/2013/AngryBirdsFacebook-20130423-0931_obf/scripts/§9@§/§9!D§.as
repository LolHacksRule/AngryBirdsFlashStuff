package §9@§
{
   public class §9!D§
   {
       
      
      private var §+]§:Vector.<int>;
      
      public function §9!D§(param1:int = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            while(true)
            {
               this.§+]§ = new Vector.<int>(32);
               loop1:
               while(!(_loc2_ && this))
               {
                  while(true)
                  {
                     this.assign(param1);
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function assign(param1:int) : void
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
            if(!_loc7_)
            {
               if(_loc6_)
               {
                  if(§§pop() >= this.§+]§.length)
                  {
                     if(!(_loc7_ && this))
                     {
                        if(!_loc7_)
                        {
                           addr46:
                           §§push(this.getValue());
                           if(_loc6_ || _loc3_)
                           {
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(param1);
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                addr80:
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr229:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(~§§pop());
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() & §§pop());
                                                                                       addr173:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§+]§[_loc3_] = _loc4_;
                                                                                                   addr142:
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc6_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               addr117:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr211:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  addr212:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() | §§pop());
                                                                                                                     addr213:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr211:
                                                                                                            }
                                                                                                         }
                                                                                                         addr99:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   addr134:
                                                                                                   §§push(§§pop() << §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr135:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_++;
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr211);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr213);
                                                                           }
                                                                           §§goto(addr173);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr211);
                                                                        }
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                               }
                                                               addr205:
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                   }
                                                   §§goto(addr142);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     addr228:
                     _loc4_ = int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE));
                  }
                  §§goto(addr229);
               }
               §§goto(addr228);
            }
            §§goto(addr46);
         }
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || _loc1_)
            {
               if(_loc4_ || this)
               {
                  if(§§pop() >= this.§+]§.length)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc1_);
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              §§push(1);
                              if(_loc4_)
                              {
                                 §§push(§§pop() << §§pop());
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    addr103:
                                    while(true)
                                    {
                                       §§push(this.§+]§[_loc3_] & _loc2_);
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 addr94:
                                 loop7:
                                 while(true)
                                 {
                                    _loc3_++;
                                    addr68:
                                    while(_loc5_ && _loc3_)
                                    {
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                                 addr94:
                              }
                              while(true)
                              {
                                 §§push(§§pop() | §§pop());
                                 continue loop1;
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr103);
               }
               §§goto(addr94);
            }
            break;
         }
         return §§pop();
      }
   }
}
