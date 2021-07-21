package §%4§
{
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §2!U§:§5!9§;
      
      b2internal var §9!e§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2!U§ = new §5!9§();
            do
            {
               super();
               do
               {
                  this.§2!U§.§>x§ = this;
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.key = param1.§9!e§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2ContactID = new b2ContactID();
         if(!(_loc3_ && this))
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§9!e§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9!e§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§2!U§);
               loop1:
               while(true)
               {
                  §§push(this.§9!e§);
                  addr193:
                  while(true)
                  {
                     §§push(255);
                     addr194:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        addr195:
                        while(true)
                        {
                           §§pop().§7!e§ = §§pop();
                           continue loop0;
                        }
                     }
                  }
                  addr118:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(this.§9!e§);
                  loop16:
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §§push(16711680);
                        if(!_loc2_)
                        {
                           §§push(§§pop() & §§pop());
                           loop17:
                           while(true)
                           {
                              §§push(16);
                              if(!_loc2_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop() >> §§pop());
                                    if(_loc3_)
                                    {
                                       addr154:
                                       §§push(255);
                                       while(true)
                                       {
                                          §§push(§§pop() & §§pop());
                                       }
                                       addr154:
                                    }
                                    loop18:
                                    while(!_loc2_)
                                    {
                                       §§pop().§1!9§ = §§pop();
                                       loop19:
                                       do
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(this.§2!U§);
                                             if(!_loc2_)
                                             {
                                                §§push(this.§9!e§);
                                                if(_loc2_)
                                                {
                                                   continue loop16;
                                                }
                                                §§push(§§pop() & 4278190080);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(24);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() >> §§pop());
                                                         if(!(_loc2_ && this))
                                                         {
                                                            addr56:
                                                            §§push(255);
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     break loop18;
                                                                  }
                                                                  addr178:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr154);
                                                            }
                                                         }
                                                         if(_loc3_ || this)
                                                         {
                                                            continue loop17;
                                                         }
                                                         continue loop18;
                                                      }
                                                      §§goto(addr56);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr56);
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§goto(addr118);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§9!e§);
                                                      addr171:
                                                      while(true)
                                                      {
                                                         §§push(65280);
                                                         addr172:
                                                         while(!_loc2_)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            while(true)
                                                            {
                                                               break loop17;
                                                               addr87:
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      continue loop15;
                                                   }
                                                   addr169:
                                                }
                                             }
                                             addr165:
                                             continue loop1;
                                             addr111:
                                          }
                                          addr180:
                                          while(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr111);
                                             §§push(this.§2!U§);
                                          }
                                          continue loop0;
                                       }
                                       while(§§pop().§--§ = §§pop(), !_loc3_);
                                       
                                       return;
                                    }
                                    while(true)
                                    {
                                       §§pop().§?"$§ = §§pop();
                                       §§goto(addr180);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr154);
                           }
                           while(true)
                           {
                              §§goto(addr177);
                           }
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr193);
               }
            }
         }
         §§goto(addr97);
      }
   }
}
