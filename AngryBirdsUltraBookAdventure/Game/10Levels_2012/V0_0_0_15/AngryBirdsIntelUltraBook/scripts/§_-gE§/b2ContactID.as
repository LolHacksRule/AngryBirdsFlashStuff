package §_-gE§
{
   import §_-5§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-9h§:§_-FL§;
      
      b2internal var §_-Tb§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-9h§ = new §_-FL§();
            while(true)
            {
               super();
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§_-9h§.§_-Vs§ = this;
            if(_loc2_ || _loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.key = param1.§_-Tb§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2ContactID = new b2ContactID();
         if(!_loc2_)
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-Tb§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Tb§ = param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§_-9h§);
            while(true)
            {
               §§push(this.§_-Tb§);
               addr214:
               while(true)
               {
                  §§push(255);
                  addr215:
                  while(true)
                  {
                     §§push(§§pop() & §§pop());
                     addr216:
                     while(true)
                     {
                        §§pop().§_-m9§ = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this.§_-9h§);
                           addr178:
                           while(true)
                           {
                              §§push(this.§_-Tb§);
                              addr180:
                              while(true)
                              {
                                 §§push(65280);
                                 addr181:
                                 while(true)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(_loc2_)
                                    {
                                       §§push(8);
                                       while(true)
                                       {
                                          §§push(§§pop() >> §§pop());
                                          addr196:
                                          while(true)
                                          {
                                             §§push(255);
                                             addr197:
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                             }
                                          }
                                       }
                                       addr195:
                                    }
                                    addr198:
                                    while(true)
                                    {
                                       §§pop().§_-08u§ = §§pop();
                                       addr199:
                                       while(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               addr30:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§push(this.§_-Tb§);
               if(_loc2_ || this)
               {
                  if(!_loc3_)
                  {
                     §§push(§§pop() & 4278190080);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(24);
                        if(!(_loc3_ && this))
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() >> §§pop());
                              if(!_loc3_)
                              {
                                 addr75:
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr107:
                                          §§push(255);
                                          if(!(_loc3_ && param1))
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr122:
                                                §§push(§§pop() & §§pop());
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§pop().§_-000§ = §§pop();
                                                      if(_loc3_)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || this)
                                                            {
                                                               addr174:
                                                               §§push(this.§_-9h§);
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr30);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-Tb§);
                                                                     addr135:
                                                                     while(_loc2_ || _loc2_)
                                                                     {
                                                                        §§push(16711680);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() & §§pop());
                                                                              break loop21;
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                     §§goto(addr180);
                                                                     §§goto(addr174);
                                                                  }
                                                                  addr133:
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(16);
                                                            addr159:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >> §§pop());
                                                               addr160:
                                                               while(true)
                                                               {
                                                                  §§push(255);
                                                                  addr161:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop() & §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop().§_-0Cg§ = §§pop();
                                                                              §§goto(addr167);
                                                                           }
                                                                           break;
                                                                           §§goto(addr75);
                                                                        }
                                                                        §§goto(addr198);
                                                                        addr164:
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                            }
                                                         }
                                                         addr167:
                                                         addr158:
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr158);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr214);
               }
               §§goto(addr135);
            }
         }
      }
   }
}
