package §_-5y§
{
   public class §_-II§ implements §_-Bf§
   {
       
      
      private var §_-s-§:Number;
      
      private var §_-sc§:Number;
      
      public function §_-II§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(_loc4_)
            {
               this.§_-sc§ = param1;
               if(_loc4_ || param2)
               {
                  addr44:
                  this.§_-s-§ = param2;
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function §_-3u§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param2);
         if(_loc5_ || param2)
         {
            §§push(param3);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr81);
               }
               else
               {
                  §§push(this.§_-sc§);
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr73);
                     §§push(§§pop());
                  }
               }
            }
            §§push(§§pop() + §§pop());
         }
         addr81:
         if(_loc5_ || param3)
         {
            §§push(this.§_-sc§);
            if(_loc5_ || param1)
            {
               §§push(-§§pop());
               if(!_loc4_)
               {
                  addr73:
                  §§push(§§pop() * (param1 / (1 / this.§_-s-§)));
               }
            }
         }
         return §§pop();
      }
      
      public function §_-up§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2);
         if(!_loc3_)
         {
            §§push(param2);
            if(_loc4_ || param2)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_)
                  {
                     addr30:
                     §§push(this.§_-sc§);
                     if(!_loc3_)
                     {
                        §§goto(addr80);
                     }
                     else
                     {
                        addr60:
                        §§push(§§pop());
                     }
                     §§push(§§pop() / §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        addr76:
                        addr80:
                        §§push(-§§pop());
                        if(_loc4_ || param2)
                        {
                           §§push(§§pop());
                        }
                        return §§pop() * §§pop();
                        §§push(1 / this.§_-s-§);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(this.§_-sc§);
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr60);
                  }
               }
            }
            §§goto(addr80);
         }
         §§goto(addr30);
      }
   }
}
