package §"d§
{
   import §6A§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,!5§:b2Vec2;
      
      public var §]j§:Number;
      
      public var §8M§:b2Vec2;
      
      public var §0!Q§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,!5§ = new b2Vec2();
         }
         while(true)
         {
            this.§8M§ = new b2Vec2();
            while(!_loc2_)
            {
               super();
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §^!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§,!5§.§^!,§();
            do
            {
               this.§]j§ = 0;
               do
               {
                  this.§8M§.§^!,§();
                  do
                  {
                     this.§0!Q§ = 0;
                  }
                  while(!_loc2_);
                  
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_);
            
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§,!5§.SetV(param1);
            while(true)
            {
               this.§]j§ = param2;
            }
            addr74:
         }
         loop1:
         do
         {
            this.§8M§.SetV(param3);
            while(!_loc6_)
            {
               this.§0!Q§ = param4;
               if(!_loc6_)
               {
                  continue loop1;
               }
            }
            §§goto(addr74);
         }
         while(!_loc5_);
         
      }
      
      public function §&u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§,!5§.x);
         if(_loc5_ || param3)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || this)
               {
                  §§push(this.§,!5§.y);
                  if(!_loc6_)
                  {
                     addr43:
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && param1))
                           {
                              addr58:
                              §§push(this.§]j§);
                              if(_loc5_)
                              {
                                 addr62:
                                 §§push(param2);
                                 if(_loc5_ || param3)
                                 {
                                    addr70:
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc6_ && param2))
                                       {
                                          addr91:
                                          §§push(this.§8M§.x);
                                          if(_loc5_ || this)
                                          {
                                             addr101:
                                             §§push(param3.x);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(this.§8M§.y);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() * param3.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr128:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(this.§0!Q§);
                                                               if(_loc6_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr161);
                                                         }
                                                      }
                                                      addr159:
                                                      addr161:
                                                      return §§pop() + §§pop();
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr159);
                                                §§push(param4);
                                             }
                                             §§goto(addr128);
                                          }
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr101);
               }
               §§goto(addr58);
            }
            §§goto(addr43);
         }
         §§goto(addr91);
      }
   }
}
