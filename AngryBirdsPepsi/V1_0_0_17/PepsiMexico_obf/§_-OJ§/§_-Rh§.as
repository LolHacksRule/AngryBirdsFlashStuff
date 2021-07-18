package §_-OJ§
{
   public class §_-Rh§
   {
       
      
      public var §_-qY§:Number = 0;
      
      public var §_-0j§:Number = 0;
      
      public var §_-1t§:Number;
      
      public var §_-2o§:Number;
      
      public function §_-Rh§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.§_-1t§ = §_-EQ§.§_-uy§;
         this.§_-2o§ = §_-EQ§.§_-AC§;
         super();
         this.§_-1t§ = param1;
         this.§_-2o§ = param2;
         if(_loc3_)
         {
            this.§_-qY§ = 0;
            this.§_-0j§ = 0;
         }
      }
      
      public function §_-Nq§(param1:§_-LW§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         §§push(this.§_-qY§);
         §§push(§_-EQ§.§_-et§);
         if(!(_loc6_ && param1))
         {
            if(§§pop() < §§pop())
            {
               §§push(this);
               §§push(this.§_-qY§);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + param2);
               }
               §§pop().§_-qY§ = §§pop();
               §§push(this);
               §§push(this.§_-0j§);
               if(_loc5_)
               {
                  §§push(§§pop() + this.§_-1t§);
               }
               §§pop().§_-0j§ = §§pop();
               §§push(param2);
               §§push(§_-EQ§.§_-v0§);
               if(!(_loc6_ && this))
               {
                  addr61:
                  §§push(§§pop() / §§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(this.§_-2o§);
                     if(_loc5_)
                     {
                        addr74:
                        _loc3_ = §§pop() * §§pop() * Math.sin(Math.PI / 4 + this.§_-0j§ * 2 * Math.PI);
                        §§push(param2);
                        if(_loc5_)
                        {
                           §§push(§_-EQ§.§_-v0§);
                           if(!_loc6_)
                           {
                              addr106:
                              §§push(§§pop() / §§pop());
                              §§push(this.§_-2o§);
                           }
                           _loc4_ = §§pop() * §§pop() * Math.sin(this.§_-0j§ * 2.1 * Math.PI);
                           §§push(this);
                           §§push(this.§_-2o§);
                           if(!(_loc6_ && param2))
                           {
                              §§push(param2);
                              if(!_loc6_)
                              {
                                 §§push(§_-EQ§.§_-AC§);
                                 if(_loc5_ || param1)
                                 {
                                    addr149:
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_)
                                    {
                                       §§push(§_-EQ§.§_-et§);
                                    }
                                    §§pop().§_-2o§ = §§pop() - §§pop();
                                    §§push(this);
                                    §§push(this.§_-1t§);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(param2);
                                       if(_loc5_)
                                       {
                                          §§push(§_-EQ§.§_-uy§);
                                          if(_loc5_)
                                          {
                                             addr179:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(§_-EQ§.§_-et§);
                                             }
                                             §§pop().§_-1t§ = §§pop() - §§pop();
                                             param1.§_-dU§(_loc3_,_loc4_);
                                             param1.§_-Lp§();
                                             §§push(true);
                                             if(_loc5_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr199);
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                    }
                                    §§goto(addr179);
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                           }
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr74);
            }
            else
            {
               §§push(false);
            }
            addr199:
            return §§pop();
         }
         §§goto(addr61);
      }
   }
}
