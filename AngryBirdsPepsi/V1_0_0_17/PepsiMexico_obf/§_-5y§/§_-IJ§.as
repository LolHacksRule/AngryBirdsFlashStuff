package §_-5y§
{
   public class §_-IJ§ implements §_-Yj§
   {
       
      
      public function §_-IJ§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function §_-3u§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param1)
               {
                  addr39:
                  §§push(param4);
                  if(_loc5_ || param2)
                  {
                     §§goto(addr64);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr64);
            }
            addr64:
            §§push(§§pop() / §§pop());
            if(_loc5_ || param3)
            {
               §§push(param2);
            }
            return §§pop();
         }
         §§goto(addr39);
      }
   }
}
