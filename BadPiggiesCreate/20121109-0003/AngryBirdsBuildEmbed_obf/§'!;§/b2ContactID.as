package §'!;§
{
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §8!Y§:§7y§;
      
      b2internal var _key:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§8!Y§ = new §7y§();
            if(_loc2_)
            {
               super();
               if(!(_loc1_ && _loc1_))
               {
                  addr49:
                  this.§8!Y§.§6i§ = this;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.key = param1._key;
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
         return this._key;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this._key = param1;
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§8!Y§);
               if(!(_loc2_ && param1))
               {
                  §§push(this._key);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(255);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc2_)
                        {
                           §§pop().§+7§ = §§pop();
                           if(!(_loc2_ && this))
                           {
                              §§push(this.§8!Y§);
                              if(_loc3_)
                              {
                                 addr70:
                                 §§push(this._key);
                                 if(!_loc2_)
                                 {
                                    §§push(65280);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(8);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() >> §§pop());
                                             §§push(255);
                                             if(!_loc2_)
                                             {
                                                addr108:
                                                §§pop().§#C§ = §§pop() & §§pop();
                                                if(_loc3_ || param1)
                                                {
                                                   addr116:
                                                   §§push(this.§8!Y§);
                                                   if(_loc3_)
                                                   {
                                                      addr120:
                                                      §§push(this._key);
                                                      if(_loc3_)
                                                      {
                                                         addr125:
                                                         §§push(§§pop() & 16711680);
                                                         §§push(16);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr134:
                                                            §§push(§§pop() >> §§pop());
                                                            §§push(255);
                                                            if(_loc3_ || this)
                                                            {
                                                               §§goto(addr153);
                                                            }
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr161);
                                             }
                                             addr153:
                                             §§pop().§9Q§ = §§pop() & §§pop();
                                             if(_loc3_)
                                             {
                                                addr161:
                                                addr159:
                                                addr157:
                                                §§push(this.§8!Y§);
                                                §§push(this._key & 4278190080);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(24);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr180:
                                                      §§push(§§pop() >> §§pop() & 255);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§pop().§+3§ = §§pop();
                                                §§goto(addr182);
                                             }
                                             addr182:
                                             return;
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr161);
               }
               §§goto(addr70);
            }
            §§goto(addr116);
         }
         §§goto(addr161);
      }
   }
}
