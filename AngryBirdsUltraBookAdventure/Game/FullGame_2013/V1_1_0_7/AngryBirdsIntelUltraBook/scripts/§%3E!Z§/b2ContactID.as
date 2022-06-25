package §>!Z§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §?!O§:§[k§;
      
      b2internal var §7!U§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§?!O§ = new §[k§();
         }
         while(true)
         {
            super();
            while(_loc1_)
            {
               this.§?!O§.§<!O§ = this;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.key = param1.§7!U§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2ContactID = new b2ContactID();
         if(!_loc3_)
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§7!U§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!U§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§?!O§);
               while(true)
               {
                  §§push(this.§7!U§);
                  loop2:
                  while(true)
                  {
                     §§push(255);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        loop4:
                        while(true)
                        {
                           §§pop().§7m§ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(this.§?!O§);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§7!U§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(65280);
                                    loop8:
                                    while(!_loc3_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       loop9:
                                       while(_loc2_ || _loc3_)
                                       {
                                          §§push(8);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() >> §§pop());
                                             while(true)
                                             {
                                                §§push(255);
                                                loop17:
                                                while(!(_loc3_ && this))
                                                {
                                                   §§push(255);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§pop().§4!+§ = §§pop();
                                                         addr160:
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(this.§?!O§);
                                                            if(_loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            addr28:
                                                            §§push(this.§7!U§);
                                                            if(_loc3_ && this)
                                                            {
                                                               while(!(_loc3_ && param1))
                                                               {
                                                                  §§push(16711680);
                                                                  if(!(_loc2_ || param1))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(§§pop() & §§pop());
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break loop20;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr28);
                                                               }
                                                               continue loop2;
                                                               addr121:
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(§§pop() & 4278190080);
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               if(_loc3_ && this)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               §§push(24);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  §§push(§§pop() >> §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr66:
                                                                     §§push(255);
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        addr76:
                                                                        §§pop().§!!P§ = §§pop() & §§pop();
                                                                        if(!(_loc2_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           return;
                                                                           addr91:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() & §§pop());
                                                                           addr193:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§`!J§ = §§pop();
                                                                           }
                                                                        }
                                                                        addr192:
                                                                     }
                                                                     while(_loc2_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr76);
                                                               }
                                                            }
                                                            §§goto(addr66);
                                                            §§goto(addr193);
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop17;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr121);
                  §§push(this.§7!U§);
               }
            }
         }
         §§goto(addr91);
      }
   }
}
