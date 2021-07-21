package §4!r§
{
   public class §1@§ implements §[!m§
   {
       
      
      private var §9T§:Number;
      
      private var §]C§:Number;
      
      public function §1@§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               §§goto(addr42);
            }
            §§goto(addr52);
         }
         addr42:
         this.§]C§ = param1;
         if(!(_loc4_ && this))
         {
            addr52:
            this.§9T§ = param2;
         }
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param2);
         if(!_loc5_)
         {
            §§push(param3);
            if(_loc4_ || param1)
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     §§push(this.§]C§);
                     if(_loc4_)
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr84);
               }
               else
               {
                  §§push(this.§]C§);
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr75);
                  }
               }
            }
            §§goto(addr84);
         }
         addr84:
         return -§§pop() + (!(_loc5_ && this) ? §§pop() : §§pop()) * (param1 / (1 / this.§9T§));
      }
      
      public function §2!R§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2);
         if(!_loc3_)
         {
            §§push(param2);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§]C§);
                     if(!_loc3_)
                     {
                        §§push(-§§pop() / (!(_loc3_ && _loc3_) ? §§pop() : §§pop()));
                        if(_loc4_ || this)
                        {
                           addr85:
                           §§push(§§pop() * (1 / this.§9T§));
                        }
                        return §§pop();
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr85);
               }
               else
               {
                  §§push(this.§]C§);
                  if(_loc4_ || param1)
                  {
                     §§goto(addr76);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr76);
         }
         §§goto(addr85);
      }
   }
}
