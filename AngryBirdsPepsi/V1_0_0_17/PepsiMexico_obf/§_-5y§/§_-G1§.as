package §_-5y§
{
   public class §_-G1§ implements §_-Bf§
   {
       
      
      private var §_-Ix§:Number;
      
      private var §_-Ci§:Number;
      
      private var §_-s-§:Number;
      
      public function §_-G1§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            if(!_loc4_)
            {
               addr27:
               this.§_-Ci§ = param1;
               if(_loc5_ || param1)
               {
                  this.§_-Ix§ = param2;
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr52);
               }
               this.§_-s-§ = param3;
            }
            addr52:
            return;
         }
         §§goto(addr27);
      }
      
      public function §_-up§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(Math.log(this.§_-Ix§ / param2) / Math.log(1 - this.§_-Ci§));
         if(!(_loc4_ && _loc3_))
         {
            §§push(1);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + §§pop());
               if(_loc3_ || param2)
               {
                  addr64:
                  §§push(§§pop() * (1 / this.§_-s-§));
               }
               return §§pop();
            }
         }
         §§goto(addr64);
      }
      
      public function §_-3u§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param3);
         if(!(_loc5_ && this))
         {
            §§push(-§§pop());
            if(_loc4_)
            {
               addr24:
               §§push(§§pop() * Math.pow(1 - this.§_-Ci§,param1 / (1 / this.§_-s-§) - 1));
               if(_loc4_ || param3)
               {
                  §§push(param2);
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§pop() + param3);
                  }
                  §§push(§§pop() + §§pop());
               }
            }
            return §§pop();
         }
         §§goto(addr24);
      }
   }
}
