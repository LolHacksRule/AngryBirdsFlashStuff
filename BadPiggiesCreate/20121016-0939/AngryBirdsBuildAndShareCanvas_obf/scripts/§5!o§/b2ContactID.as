package §5!o§
{
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §+!x§:§4!j§;
      
      b2internal var §,!K§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§+!x§ = new §4!j§();
            while(true)
            {
               super();
               while(_loc2_ || this)
               {
                  this.§+!x§.§=!e§ = this;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
         }
         §§goto(addr51);
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.key = param1.§,!K§;
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
         return this.§,!K§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!K§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§+!x§);
               loop1:
               while(true)
               {
                  §§push(this.§,!K§);
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
                           §§pop().§>#§ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(this.§+!x§);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§,!K§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(65280);
                                    addr180:
                                    while(!(_loc3_ && param1))
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
                                             loop11:
                                             while(true)
                                             {
                                                §§push(255);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop().§ ",§ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(this.§+!x§);
                                                         loop15:
                                                         while(!_loc3_)
                                                         {
                                                            §§push(this.§,!K§);
                                                            while(_loc2_ || _loc2_)
                                                            {
                                                               §§push(this.§,!K§);
                                                               continue loop2;
                                                               if(_loc3_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() & 4278190080);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§push(24);
                                                                  if(_loc2_)
                                                                  {
                                                                     addr56:
                                                                     if(!(_loc2_ || _loc2_))
                                                                     {
                                                                        while(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() & §§pop());
                                                                           §§goto(addr56);
                                                                        }
                                                                        continue loop10;
                                                                        addr155:
                                                                     }
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(§§pop() >> §§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr88:
                                                                                 §§push(§§pop() & 255);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop().§<N§ = §§pop();
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    while(_loc2_ || param1)
                                                                                    {
                                                                                       §§push(this.§+!x§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr166:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(16);
                                                                                       addr139:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() >> §§pop());
                                                                                       }
                                                                                    }
                                                                                    addr138:
                                                                                 }
                                                                              }
                                                                              while(_loc2_ || param1)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           while(_loc2_)
                                                                           {
                                                                              §§pop().§8!i§ = §§pop();
                                                                           }
                                                                           continue loop4;
                                                                           addr163:
                                                                           §§goto(addr166);
                                                                        }
                                                                        §§goto(addr88);
                                                                     }
                                                                     §§goto(addr139);
                                                                     §§goto(addr163);
                                                                  }
                                                               }
                                                               §§goto(addr88);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop3;
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
