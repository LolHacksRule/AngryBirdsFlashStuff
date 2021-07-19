package §4!r§
{
   public class §9!s§ implements §7R§
   {
       
      
      public function §9!s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  addr41:
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_)
                     {
                        addr48:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr48);
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr41);
      }
   }
}
