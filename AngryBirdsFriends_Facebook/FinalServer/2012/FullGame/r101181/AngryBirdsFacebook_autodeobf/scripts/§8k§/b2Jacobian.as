package §8k§
{
   import §#]§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §+"'§:b2Vec2;
      
      public var §&L§:Number;
      
      public var §`O§:b2Vec2;
      
      public var §package§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§+"'§ = new b2Vec2();
            while(true)
            {
               this.§`O§ = new b2Vec2();
               while(!_loc2_)
               {
                  super();
                  if(!_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §;v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§+"'§.§;v§();
         }
         loop0:
         while(true)
         {
            this.§&L§ = 0;
            loop1:
            do
            {
               this.§`O§.§;v§();
               while(_loc2_)
               {
                  this.§package§ = 0;
                  if(_loc2_ || _loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§+"'§.SetV(param1);
            while(true)
            {
               this.§&L§ = param2;
            }
            addr80:
         }
         loop1:
         while(true)
         {
            this.§`O§.SetV(param3);
            while(_loc6_ || param1)
            {
               this.§package§ = param4;
               if(_loc5_ && param3)
               {
                  continue;
               }
               if(_loc6_)
               {
                  break loop1;
               }
               §§goto(addr80);
            }
         }
      }
      
      public function §,u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§+"'§.x);
         if(_loc5_ || this)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param2)
               {
                  §§push(this.§+"'§.y);
                  if(_loc5_ || param2)
                  {
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc6_ && param1))
                        {
                           addr60:
                           §§push(§§pop() + §§pop());
                           if(_loc5_ || this)
                           {
                              addr78:
                              §§push(this.§&L§);
                              if(_loc5_ || this)
                              {
                                 §§push(param2);
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_)
                                    {
                                       addr98:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(this.§`O§.x);
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(param3.x);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr133:
                                                   §§push(this.§`O§.y);
                                                   if(!_loc6_)
                                                   {
                                                      addr138:
                                                      §§push(§§pop() * param3.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr143:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr146:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_ && param1)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr161);
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr146);
               }
               addr161:
               §§push(this.§package§);
               if(_loc5_)
               {
                  §§push(param4);
               }
               return §§pop() + §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr78);
      }
   }
}
