package §0x§
{
   public class §#!c§ implements §?"3§
   {
       
      
      private var §1K§:Number;
      
      private var § $§:Number;
      
      public function §#!c§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            do
            {
               this.§ $§ = param1;
               do
               {
                  this.§1K§ = param2;
               }
               while(!_loc4_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §85§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param2);
         if(!(_loc5_ && this))
         {
            §§push(param3);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr84);
               }
               else
               {
                  §§push(this.§ $§);
                  if(!(_loc5_ && param3))
                  {
                     §§goto(addr65);
                  }
               }
            }
            §§push(§§pop() + §§pop());
         }
         addr84:
         if(!_loc5_)
         {
            §§push(this.§ $§);
            if(!_loc5_)
            {
               §§push(-§§pop());
               return (_loc4_ || param1 ? §§pop() : §§pop()) * (param1 / (1 / this.§1K§));
            }
         }
      }
      
      public function §3!z§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2);
         if(!_loc4_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     §§push(this.§ $§);
                     if(_loc3_)
                     {
                        §§push(-§§pop());
                        if(_loc3_ || this)
                        {
                           §§goto(addr79);
                        }
                     }
                  }
                  §§goto(addr79);
               }
               else
               {
                  §§push(this.§ $§);
                  if(!(_loc4_ && param2))
                  {
                     addr79:
                     §§push(§§pop() / §§pop());
                     if(!_loc4_)
                     {
                        §§push(1 / this.§1K§);
                     }
                     return §§pop();
                     §§push(§§pop());
                  }
               }
               §§goto(addr79);
               §§push(§§pop() * §§pop());
            }
         }
         §§goto(addr79);
      }
   }
}
