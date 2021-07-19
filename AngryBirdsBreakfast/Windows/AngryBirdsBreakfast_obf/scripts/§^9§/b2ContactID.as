package §^9§
{
   import §'F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §?!>§:§>!_§;
      
      b2internal var §?" §:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!>§ = new §>!_§();
            while(true)
            {
               super();
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     this.§?!>§.§]!A§ = this;
                     if(_loc1_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.key = param1.§?" §;
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
         return this.§?" §;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?" § = param1;
            loop0:
            while(true)
            {
               §§push(this.§?!>§);
               loop1:
               while(true)
               {
                  §§push(this.§?" §);
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
                           §§pop().§ !J§ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(this.§?!>§);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§?" §);
                                 loop7:
                                 while(true)
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
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(§§pop() >> §§pop());
                                             while(true)
                                             {
                                                §§push(255);
                                                addr97:
                                                if(_loc2_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§pop().§,"$§ = §§pop();
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop0;
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§?!>§);
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop5;
                                                   addr197:
                                                }
                                                else
                                                {
                                                   addr168:
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(this.§?!>§);
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr31:
                                                            §§push(this.§?" §);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr134:
                                                            while(!(_loc2_ && param1))
                                                            {
                                                               §§push(16711680);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  if(_loc2_)
                                                                  {
                                                                     break loop20;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop8;
                                                               §§goto(addr31);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§?!]§ = §§pop();
                                                      §§goto(addr168);
                                                   }
                                                   addr168:
                                                   addr167:
                                                }
                                             }
                                          }
                                          addr188:
                                          while(true)
                                          {
                                             §§push(§§pop() & §§pop());
                                             addr189:
                                             while(!(_loc2_ && _loc3_))
                                             {
                                                §§pop().§#!u§ = §§pop();
                                                §§goto(addr197);
                                             }
                                             continue loop4;
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
         §§goto(addr199);
      }
   }
}
