package §+!!§
{
   import §8!K§.§1!R§;
   import §8!K§.§5!0§;
   import §@L§.§?!'§;
   
   public class §>Y§ extends §5"+§
   {
       
      
      public function §>Y§(param1:§?!'§, param2:§5!0§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function calculateCameraScale(param1:§1!R§) : Number
      {
         return super.calculateCameraScale(param1);
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§^!>§ - § a§ / 2);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr190:
                           while(true)
                           {
                              §§push(param1);
                              addr143:
                              while(!_loc3_)
                              {
                                 §§push(§§pop() > §^!>§ + § a§ / 2);
                                 while(!(_loc4_ || _loc3_))
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr161:
                           while(true)
                           {
                              §§push(param2);
                              continue loop1;
                           }
                        }
                        else
                        {
                           addr137:
                           addr115:
                        }
                        §§push(true);
                        if(_loc4_ || param1)
                        {
                           break loop2;
                        }
                        continue loop2;
                        return true;
                     }
                     addr50:
                     return §§pop();
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr190);
      }
   }
}
