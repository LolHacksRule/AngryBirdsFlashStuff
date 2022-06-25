package §_-09-§
{
   import §_-Yp§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-SD§:b2Vec2;
      
      public var §_-O8§:Number;
      
      public var §_-01W§:b2Vec2;
      
      public var §_-k3§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-SD§ = new b2Vec2();
            while(true)
            {
               this.§_-01W§ = new b2Vec2();
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     super();
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §_-el§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-SD§.§_-el§();
            while(true)
            {
               this.§_-O8§ = 0;
            }
            addr62:
         }
         loop1:
         while(true)
         {
            this.§_-01W§.§_-el§();
            while(!_loc2_)
            {
               this.§_-k3§ = 0;
               if(!(_loc1_ || this))
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr62);
            }
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§_-SD§.SetV(param1);
            loop0:
            while(true)
            {
               this.§_-O8§ = param2;
               do
               {
                  this.§_-01W§.SetV(param3);
                  continue loop0;
               }
               while(!(_loc5_ || this));
               
            }
         }
      }
      
      public function §_-KX§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§_-SD§.x);
         if(_loc5_ || param3)
         {
            §§push(param1.x);
            if(_loc5_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  §§push(this.§_-SD§.y);
                  if(_loc5_ || param2)
                  {
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              §§push(this.§_-O8§);
                              if(_loc5_)
                              {
                                 addr62:
                                 §§push(param2);
                                 if(_loc5_ || param3)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_ || param2)
                                    {
                                       addr88:
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_ || param1)
                                       {
                                          addr96:
                                          §§push(this.§_-01W§.x);
                                          if(!_loc6_)
                                          {
                                             §§push(param3.x);
                                             if(!(_loc6_ && param3))
                                             {
                                                addr110:
                                                §§push(§§pop() * §§pop());
                                                if(_loc5_)
                                                {
                                                   addr113:
                                                   §§push(this.§_-01W§.y);
                                                   if(_loc5_)
                                                   {
                                                      addr118:
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                   }
                                                }
                                                §§goto(addr146);
                                             }
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr110);
                              }
                              addr146:
                              §§push(§§pop() + §§pop());
                              if(!(_loc6_ && this))
                              {
                                 addr154:
                                 §§push(this.§_-k3§);
                                 if(_loc5_)
                                 {
                                    addr160:
                                    §§push(§§pop() + §§pop() * param4);
                                 }
                                 §§goto(addr160);
                              }
                              return §§pop();
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr113);
               }
               §§goto(addr96);
            }
            §§goto(addr88);
         }
         §§goto(addr154);
      }
   }
}
