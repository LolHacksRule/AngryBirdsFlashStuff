package §55§
{
   import §4!!§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §'"B§:§7#§;
      
      b2internal var §'3§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'"B§ = new §7#§();
         }
         while(true)
         {
            super();
            while(_loc2_ || _loc1_)
            {
               this.§'"B§.§4G§ = this;
               if(_loc2_ || this)
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
         if(_loc3_)
         {
            this.key = param1.§'3§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2ContactID = new b2ContactID();
         if(_loc3_)
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§'3§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§'3§ = param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§'"B§);
            loop1:
            while(true)
            {
               §§push(this.§'3§);
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
                        §§pop().§4P§ = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this.§'"B§);
                           loop6:
                           while(true)
                           {
                              §§push(this.§'3§);
                              loop7:
                              while(true)
                              {
                                 §§push(65280);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(_loc2_ || this)
                                    {
                                       §§push(8);
                                       while(true)
                                       {
                                          §§push(§§pop() >> §§pop());
                                          addr119:
                                          if(_loc3_ && param1)
                                          {
                                             continue;
                                          }
                                          addr127:
                                          §§push(§§pop() & §§pop());
                                          if(_loc2_ || this)
                                          {
                                             addr134:
                                             §§pop().§#=§ = §§pop();
                                             if(_loc2_ || this)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop5;
                                                }
                                                loop13:
                                                while(_loc2_)
                                                {
                                                   §§push(this.§'"B§);
                                                   loop14:
                                                   while(_loc2_)
                                                   {
                                                      §§push(this.§'3§);
                                                      while(_loc2_)
                                                      {
                                                         §§push(16711680);
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() & §§pop());
                                                         while(true)
                                                         {
                                                            §§push(16);
                                                            addr173:
                                                            addr72:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >> §§pop());
                                                               addr174:
                                                               while(true)
                                                               {
                                                                  §§push(255);
                                                                  addr175:
                                                                  loop19:
                                                                  while(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     while(!(_loc3_ && param1))
                                                                     {
                                                                        §§pop().§0R§ = §§pop();
                                                                        continue loop14;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     addr220:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§[!#§ = §§pop();
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            if(!(_loc2_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(24);
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(§§pop() >> §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr92:
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!(_loc2_ || this))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr102:
                                                                        §§push(255);
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           §§goto(addr119);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr173);
                                                                        }
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                                  §§goto(addr127);
                                                               }
                                                               §§goto(addr175);
                                                            }
                                                            §§goto(addr102);
                                                         }
                                                         §§push(this.§'3§);
                                                         if(_loc3_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_ && this)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(§§pop() & 4278190080);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr72);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr92);
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§'"B§);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr155);
                                                §§goto(addr134);
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                    §§goto(addr218);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
