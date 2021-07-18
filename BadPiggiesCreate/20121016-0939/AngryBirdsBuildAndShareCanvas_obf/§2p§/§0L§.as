package §2p§
{
   public class §0L§ implements §1>§
   {
       
      
      private var §!!0§:Number;
      
      private var §#p§:Number;
      
      private var §=e§:Number;
      
      public function §0L§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§#p§ = param1;
               loop1:
               while(_loc5_ || param1)
               {
                  while(true)
                  {
                     this.§!!0§ = param2;
                     while(_loc5_)
                     {
                        this.§=e§ = param3;
                        if(!(_loc4_ && this))
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §0G§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(Math.log(this.§!!0§ / param2) / Math.log(1 - this.§#p§));
         if(!_loc4_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc4_ && this))
               {
                  addr63:
                  return §§pop() * (1 / this.§=e§);
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §6^§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(_loc4_ || param2)
            {
               §§push(§§pop() * Math.pow(1 - this.§#p§,param1 / (1 / this.§=e§) - 1));
               if(_loc4_)
               {
                  addr53:
                  §§push(param2);
                  if(_loc4_ || param3)
                  {
                     §§push(§§pop() + param3);
                  }
                  return §§pop() + §§pop();
               }
            }
         }
         §§goto(addr53);
      }
   }
}
