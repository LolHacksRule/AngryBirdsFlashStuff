package §72§
{
   import §7!u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §]G§:§%]§;
      
      b2internal var §?R§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]G§ = new §%]§();
         }
         while(true)
         {
            super();
            while(!(_loc2_ && _loc1_))
            {
               this.§]G§.§+![§ = this;
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
         if(!_loc2_)
         {
            this.key = param1.§?R§;
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
         return this.§?R§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?R§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§]G§);
               while(true)
               {
                  §§push(this.§?R§);
                  addr195:
                  while(true)
                  {
                     §§push(255);
                     addr196:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        addr197:
                        while(true)
                        {
                           §§pop().§class§ = §§pop();
                        }
                     }
                  }
                  loop6:
                  for(; !(_loc2_ && _loc2_); if(_loc2_ && this)
                  {
                     continue;
                  },§§push(this.§?R§),if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() & 4278190080);
                     if(_loc3_)
                     {
                        if(_loc3_ || param1)
                        {
                           if(_loc3_)
                           {
                              §§push(24);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() >> §§pop());
                                 if(!_loc2_)
                                 {
                                    §§goto(addr69);
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr69);
                  },§§goto(addr117))
                  {
                     §§push(this.§?R§);
                     loop7:
                     while(true)
                     {
                        §§push(65280);
                        addr181:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           addr182:
                           while(true)
                           {
                              §§push(8);
                              addr183:
                              while(true)
                              {
                                 §§push(§§pop() >> §§pop());
                                 addr184:
                                 while(true)
                                 {
                                    §§push(255);
                                    addr185:
                                    while(true)
                                    {
                                       §§push(§§pop() & §§pop());
                                       addr186:
                                       while(true)
                                       {
                                          §§pop().§!!4§ = §§pop();
                                          addr187:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(this.§]G§);
                                             while(true)
                                             {
                                                §§push(this.§?R§);
                                                §§push(this.§]G§);
                                                addr157:
                                                continue loop7;
                                                if(!(_loc2_ && this))
                                                {
                                                   continue loop6;
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
            }
         }
         §§goto(addr198);
      }
   }
}
