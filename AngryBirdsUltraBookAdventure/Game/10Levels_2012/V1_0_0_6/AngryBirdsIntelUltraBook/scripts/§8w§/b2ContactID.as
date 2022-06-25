package §8w§
{
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §<S§:§>d§;
      
      b2internal var §6N§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<S§ = new §>d§();
         }
         while(true)
         {
            super();
            while(_loc1_)
            {
               this.§<S§.§50§ = this;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.key = param1.§6N§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2ContactID = new b2ContactID();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§6N§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6N§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§<S§);
               while(true)
               {
                  §§push(this.§6N§);
                  addr224:
                  while(true)
                  {
                     §§push(255);
                     addr225:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        addr226:
                        while(true)
                        {
                           §§pop().§^%§ = §§pop();
                        }
                     }
                  }
                  addr152:
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(this.§6N§);
                  loop16:
                  while(true)
                  {
                     §§push(16711680);
                     if(_loc2_)
                     {
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() & §§pop());
                           loop17:
                           while(true)
                           {
                              §§push(16);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(§§pop() >> §§pop());
                                 if(_loc2_ || param1)
                                 {
                                    addr189:
                                    §§push(255);
                                    while(true)
                                    {
                                       §§push(§§pop() & §§pop());
                                    }
                                    addr189:
                                 }
                                 loop18:
                                 while(_loc2_)
                                 {
                                    §§pop().§52§ = §§pop();
                                    while(_loc2_)
                                    {
                                       addr205:
                                       §§push(this.§<S§);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(this.§6N§);
                                          if(!_loc2_)
                                          {
                                             continue loop16;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() & 4278190080);
                                                if(_loc2_ || param1)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§push(24);
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() >> §§pop());
                                                               if(_loc2_ || this)
                                                               {
                                                                  addr92:
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               addr134:
                                                               §§pop().§%!6§ = §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr218:
                                                               while(true)
                                                               {
                                                                  §§push(this.§<S§);
                                                                  addr150:
                                                                  addr209:
                                                                  while(_loc2_)
                                                                  {
                                                                     §§goto(addr152);
                                                                     §§goto(addr205);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§6N§);
                                                                     addr211:
                                                                     while(true)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >> §§pop());
                                                               addr215:
                                                               while(true)
                                                               {
                                                                  §§push(255);
                                                               }
                                                            }
                                                            addr214:
                                                         }
                                                         else
                                                         {
                                                            addr119:
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§goto(addr134);
                                                                  §§push(§§pop() & §§pop());
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr189);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            break loop18;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr214);
                                                      }
                                                      addr213:
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr92);
                                             }
                                             else
                                             {
                                                §§goto(addr224);
                                             }
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr150);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr209);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().§&t§ = §§pop();
                                    §§goto(addr218);
                                 }
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr225);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr213);
                  }
               }
            }
         }
         §§goto(addr227);
      }
   }
}
