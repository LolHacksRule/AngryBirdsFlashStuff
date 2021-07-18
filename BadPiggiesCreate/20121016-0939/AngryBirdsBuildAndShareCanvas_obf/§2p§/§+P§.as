package §2p§
{
   public class §+P§ implements §1>§
   {
       
      
      private var §=e§:Number;
      
      private var §@N§:Number;
      
      public function §+P§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§@N§ = param1;
               while(!(_loc4_ && param2))
               {
                  this.§=e§ = param2;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §6^§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param2);
         if(_loc5_)
         {
            §§push(param3);
            if(_loc5_ || param1)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc4_ && param2))
                  {
                     §§push(this.§@N§);
                     if(_loc5_)
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr85);
               }
               else
               {
                  §§push(this.§@N§);
                  if(_loc5_)
                  {
                     §§goto(addr66);
                  }
               }
            }
            §§goto(addr85);
         }
         addr85:
         return -§§pop() + (_loc5_ || param3 ? §§pop() : §§pop()) * (param1 / (1 / this.§=e§));
      }
      
      public function §0G§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2);
         if(!_loc3_)
         {
            §§push(param2);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§@N§);
                     if(!_loc3_)
                     {
                        §§goto(addr74);
                     }
                     else
                     {
                        addr51:
                        §§push(§§pop());
                     }
                     §§push(§§pop() / §§pop());
                     if(!(_loc3_ && this))
                     {
                        addr70:
                        addr74:
                        §§push(-§§pop());
                        if(!_loc3_)
                        {
                           addr45:
                           §§push(§§pop());
                        }
                        return §§pop() * §§pop();
                        §§push(1 / this.§=e§);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr70);
               }
               else
               {
                  §§push(this.§@N§);
                  if(!_loc3_)
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr45);
         }
         §§goto(addr70);
      }
   }
}
