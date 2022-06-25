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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§?!O§ = new §[k§();
            while(true)
            {
               super();
               while(_loc2_)
               {
                  this.§?!O§.§<!O§ = this;
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§7!U§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§?!O§);
               loop1:
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
                              while(true)
                              {
                                 §§push(this.§7!U§);
                                 addr188:
                                 while(true)
                                 {
                                    §§push(65280);
                                    addr189:
                                    while(true)
                                    {
                                       §§push(§§pop() & §§pop());
                                       addr190:
                                       while(true)
                                       {
                                          §§push(8);
                                          addr191:
                                          while(true)
                                          {
                                             §§push(§§pop() >> §§pop());
                                             addr192:
                                             while(true)
                                             {
                                                §§push(255);
                                                addr193:
                                                while(true)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   addr194:
                                                   while(true)
                                                   {
                                                      §§pop().§`!J§ = §§pop();
                                                      addr195:
                                                      while(_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr34:
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§push(this.§7!U§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() & 4278190080);
                                    if(_loc3_ || this)
                                    {
                                       §§push(24);
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() >> §§pop());
                                             if(_loc3_ || param1)
                                             {
                                                addr67:
                                                if(!(_loc2_ && this))
                                                {
                                                   addr75:
                                                   §§push(255);
                                                   if(!_loc2_)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr169:
                                                         §§push(§§pop() & §§pop());
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().§!!P§ = §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        while(!_loc2_)
                                                                        {
                                                                           §§push(this.§?!O§);
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr34);
                                                                        }
                                                                        §§goto(addr195);
                                                                        addr170:
                                                                     }
                                                                     return;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().§4!+§ = §§pop();
                                                            §§goto(addr170);
                                                         }
                                                         addr169:
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   while(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(§§pop() >> §§pop());
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(255);
                                                            while(true)
                                                            {
                                                               §§goto(addr169);
                                                            }
                                                            addr168:
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr191);
                                                   addr155:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr155);
                                                   §§goto(addr67);
                                                }
                                                addr154:
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr75);
                                    }
                                    §§goto(addr169);
                                 }
                                 while(_loc3_ || param1)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(16711680);
                                    if(_loc3_ || param1)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr154);
                                       §§push(§§pop() & §§pop());
                                    }
                                    else
                                    {
                                       §§goto(addr189);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr188);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr125);
         }
      }
   }
}
