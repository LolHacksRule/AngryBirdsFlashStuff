package §9"§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §;f§:§"X§;
      
      b2internal var §case §:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;f§ = new §"X§();
            while(true)
            {
               super();
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§;f§.§9f§ = this;
            if(!(_loc1_ && this))
            {
               if(_loc2_)
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
         if(!_loc3_)
         {
            this.key = param1.§case §;
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
         return this.§case §;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§case § = param1;
            while(true)
            {
               §§push(this.§;f§);
               addr182:
               while(true)
               {
                  §§push(this.§case §);
                  addr194:
                  while(true)
                  {
                     §§push(255);
                     addr195:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        addr196:
                        while(true)
                        {
                           §§pop().§]!L§ = §§pop();
                        }
                     }
                  }
               }
            }
            addr201:
         }
         loop5:
         while(true)
         {
            §§push(this.§;f§);
            loop6:
            while(true)
            {
               §§push(this.§case §);
               loop7:
               while(!_loc3_)
               {
                  §§push(65280);
                  loop8:
                  while(_loc2_ || param1)
                  {
                     §§push(§§pop() & §§pop());
                     loop9:
                     while(true)
                     {
                        §§push(8);
                        loop10:
                        while(true)
                        {
                           §§push(§§pop() >> §§pop());
                           if(!_loc3_)
                           {
                              §§push(255);
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                              }
                              addr174:
                           }
                           loop12:
                           while(true)
                           {
                              §§pop().§"!I§ = §§pop();
                              loop13:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this.§;f§);
                                    loop14:
                                    for(; _loc2_; §§push(this.§;f§),if(!_loc2_)
                                    {
                                       continue;
                                    },§§push(this.§case §),if(_loc2_)
                                    {
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop7;
                                       }
                                       §§push(§§pop() & 4278190080);
                                       if(_loc2_)
                                       {
                                          §§goto(addr43);
                                       }
                                       §§goto(addr64);
                                    },§§goto(addr125))
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(this.§case §);
                                          while(true)
                                          {
                                             §§push(16711680);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() & §§pop());
                                             loop16:
                                             while(true)
                                             {
                                                §§push(16);
                                                loop17:
                                                while(_loc2_ || this)
                                                {
                                                   §§push(§§pop() >> §§pop());
                                                   while(true)
                                                   {
                                                      §§push(255);
                                                      addr139:
                                                      while(_loc2_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         while(!_loc3_)
                                                         {
                                                            §§pop().§+!0§ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               continue loop5;
                                                               addr90:
                                                               §§pop().§=t§ = §§pop();
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      addr43:
                                                      §§goto(addr174);
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc3_ && this)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§push(24);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() >> §§pop());
                                                         if(_loc2_)
                                                         {
                                                            addr64:
                                                            §§push(255);
                                                            if(_loc2_ || this)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               addr74:
                                                               §§push(§§pop() & §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr139);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr74);
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                          continue loop8;
                                          addr125:
                                       }
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr201);
                                 §§goto(addr182);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr195);
               }
               §§goto(addr194);
            }
         }
      }
   }
}
