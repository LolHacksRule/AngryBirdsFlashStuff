package §_-xo§
{
   import §_-Xz§.§_-Ps§;
   
   public class §_-t9§ extends §_-E-§ implements §_-V0§
   {
       
      
      private var §_-8x§:Number;
      
      public function §_-t9§(param1:§_-Ps§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super(param1,0);
            if(!(_loc3_ && _loc2_))
            {
               §_-7A§ = 0.01;
               if(!(_loc3_ && this))
               {
                  addr55:
                  this.§_-8x§ = -1;
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§_-8x§);
            if(!_loc3_)
            {
               §§push(0.01);
               if(!_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              §§push(param1);
                              if(_loc2_ || this)
                              {
                                 addr41:
                                 §§push(§§pop() >= 0.01);
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr56:
                                    if(§§pop())
                                    {
                                       addr57:
                                       this.action();
                                    }
                                    else
                                    {
                                       §§push(this.§_-8x§);
                                       if(!_loc3_)
                                       {
                                          §§push(0);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc2_ || param1)
                                             {
                                                addr76:
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§goto(addr84);
                                                   }
                                                }
                                                §§goto(addr102);
                                             }
                                             §§goto(addr84);
                                          }
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr107);
                                 }
                              }
                              §§goto(addr102);
                           }
                           addr84:
                           §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              addr102:
                              if(param1 <= 0)
                              {
                                 this.rollback();
                                 if(_loc2_)
                                 {
                                    addr107:
                                    this.§_-8x§ = param1;
                                 }
                              }
                              §§goto(addr107);
                           }
                           return;
                        }
                        §§goto(addr56);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr56);
               }
            }
            §§goto(addr41);
         }
         §§goto(addr57);
      }
   }
}
