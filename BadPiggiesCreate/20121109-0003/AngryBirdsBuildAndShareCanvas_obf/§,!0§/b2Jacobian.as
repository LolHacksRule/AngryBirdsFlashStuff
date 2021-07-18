package §,!0§
{
   import §<!a§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §4!J§:b2Vec2;
      
      public var §2!j§:Number;
      
      public var §>!p§:b2Vec2;
      
      public var §=!m§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4!J§ = new b2Vec2();
         }
         do
         {
            this.§>!p§ = new b2Vec2();
            do
            {
               super();
            }
            while(_loc1_ && this);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §?b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§4!J§.§?b§();
            while(true)
            {
               this.§2!j§ = 0;
               while(_loc2_ || _loc2_)
               {
                  this.§>!p§.§?b§();
                  while(!(_loc1_ && _loc1_))
                  {
                     this.§=!m§ = 0;
                     if(_loc1_)
                     {
                        continue;
                     }
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§4!J§.SetV(param1);
            while(true)
            {
               this.§2!j§ = param2;
               loop2:
               while(!(_loc6_ && param2))
               {
                  this.§=!m§ = param4;
                  if(_loc5_ || param2)
                  {
                     addr44:
                     if(_loc6_)
                     {
                        while(true)
                        {
                           this.§>!p§.SetV(param3);
                           continue loop2;
                           §§goto(addr44);
                        }
                        addr74:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §14§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§4!J§.x);
         if(!(_loc5_ && this))
         {
            §§push(param1.x);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && this))
               {
                  §§push(this.§4!J§.y);
                  if(!_loc5_)
                  {
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc5_ && param1))
                           {
                              §§push(this.§2!j§);
                              if(_loc6_)
                              {
                                 §§push(param2);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_)
                                       {
                                          addr92:
                                          §§push(this.§>!p§.x);
                                          if(_loc6_)
                                          {
                                             addr97:
                                             §§push(param3.x);
                                             if(_loc6_ || this)
                                             {
                                                addr106:
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_)
                                                {
                                                   §§push(this.§>!p§.y);
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr119:
                                                      §§push(§§pop() * param3.y);
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      addr162:
                                                      return §§pop() + §§pop() * §§pop();
                                                      addr161:
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      addr132:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(this.§=!m§);
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr159:
                                                            §§push(param4);
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr132);
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr159);
               }
               §§goto(addr92);
            }
            §§goto(addr132);
         }
         §§goto(addr92);
      }
   }
}
