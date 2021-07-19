package §_-qg§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-0P§:§_-66§;
      
      b2internal var §_-Bj§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-0P§ = new §_-66§();
            if(!(_loc1_ && _loc1_))
            {
               super();
               if(_loc2_ || _loc1_)
               {
                  addr50:
                  this.§_-0P§.§_-nN§ = this;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.key = param1.§_-Bj§;
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
         return this.§_-Bj§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§_-Bj§ = param1;
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§_-0P§);
               if(!_loc2_)
               {
                  §§push(this.§_-Bj§);
                  if(!_loc2_)
                  {
                     §§push(255);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc3_ || param1)
                        {
                           §§pop().§_-aR§ = §§pop();
                           if(_loc3_)
                           {
                              §§push(this.§_-0P§);
                              if(!(_loc2_ && this))
                              {
                                 §§push(this.§_-Bj§);
                                 if(!_loc2_)
                                 {
                                    §§push(65280);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       §§push(8);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() >> §§pop());
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr103:
                                             §§push(255);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() & §§pop());
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§pop().§_-ZM§ = §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      addr117:
                                                      §§push(this.§_-0P§);
                                                      if(_loc3_)
                                                      {
                                                         addr121:
                                                         §§push(this.§_-Bj§);
                                                         if(_loc3_)
                                                         {
                                                            addr126:
                                                            §§push(§§pop() & 16711680);
                                                            if(_loc3_)
                                                            {
                                                               §§push(16);
                                                               if(_loc3_ || this)
                                                               {
                                                                  addr137:
                                                                  §§push(§§pop() >> §§pop());
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     addr145:
                                                                     §§push(255);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr148:
                                                                        §§push(§§pop() & §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§pop().§_-sl§ = §§pop();
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              addr185:
                                                                              addr163:
                                                                              addr161:
                                                                              addr159:
                                                                              §§push(this.§_-0P§);
                                                                              §§push(this.§_-Bj§ & 4278190080);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr167:
                                                                                 §§push(24);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr183:
                                                                                    §§push(§§pop() >> §§pop());
                                                                                    §§push(255);
                                                                                 }
                                                                              }
                                                                              §§pop().§_-hF§ = §§pop();
                                                                              §§goto(addr186);
                                                                           }
                                                                           addr186:
                                                                           return;
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                     §§goto(addr185);
                                                                     §§push(§§pop() & §§pop());
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr137);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr185);
            }
         }
         §§goto(addr117);
      }
   }
}
