package §2p§
{
   public class §-!6§ implements §`2§
   {
       
      
      public function §-!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §6^§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param1)
         {
            §§push(param1);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param3)
               {
                  addr50:
                  §§push(param4);
                  if(!_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc6_ && param2))
                     {
                        addr72:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr72);
               }
               return §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr50);
      }
   }
}
