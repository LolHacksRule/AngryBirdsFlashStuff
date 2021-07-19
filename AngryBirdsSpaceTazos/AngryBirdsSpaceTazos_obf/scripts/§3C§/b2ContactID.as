package §3c§
{
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §;!B§:§=!s§;
      
      b2internal var §=^§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§;!B§ = new §=!s§();
            while(true)
            {
               super();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§;!B§.§&!?§ = this;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.key = param1.§=^§;
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
         return this.§=^§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=^§ = param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§;!B§);
            loop1:
            while(true)
            {
               §§push(this.§=^§);
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
                        §§pop().§?"#§ = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this.§;!B§);
                           loop6:
                           while(true)
                           {
                              §§push(this.§=^§);
                              loop7:
                              while(_loc3_)
                              {
                                 §§push(65280);
                                 loop8:
                                 while(!_loc2_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(8);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop() >> §§pop());
                                          while(true)
                                          {
                                             §§push(255);
                                          }
                                          addr171:
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§§pop() & §§pop());
                                          loop12:
                                          while(true)
                                          {
                                             §§pop().§%!G§ = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                §§push(this.§;!B§);
                                                loop14:
                                                while(_loc3_)
                                                {
                                                   §§push(this.§=^§);
                                                   while(true)
                                                   {
                                                      §§push(16711680);
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() & §§pop());
                                                      while(true)
                                                      {
                                                         §§push(16);
                                                         if(_loc3_ || this)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() >> §§pop());
                                                            while(true)
                                                            {
                                                               §§push(255);
                                                               addr89:
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§pop().§""H§ = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§push(this.§;!B§);
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop14;
                                                                        continue loop14;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue;
                                                                  addr143:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr171);
                                                               }
                                                            }
                                                         }
                                                         addr141:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            addr142:
                                                            while(true)
                                                            {
                                                               §§pop().§&J§ = §§pop();
                                                               §§goto(addr143);
                                                            }
                                                         }
                                                         addr76:
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(§§pop() & 255);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr89);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§push(this.§=^§);
                                                      addr36:
                                                      continue loop11;
                                                      if(_loc2_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(§§pop() & 4278190080);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(24);
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§push(§§pop() >> §§pop());
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§goto(addr76);
                                                               }
                                                               §§goto(addr87);
                                                            }
                                                            §§goto(addr141);
                                                         }
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop2;
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
