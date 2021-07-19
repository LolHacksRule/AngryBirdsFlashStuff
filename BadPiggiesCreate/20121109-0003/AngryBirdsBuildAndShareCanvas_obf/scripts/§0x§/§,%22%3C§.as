package §0x§
{
   public class §,"<§ implements §?"3§
   {
       
      
      private var §5g§:Number;
      
      private var §<8§:Number;
      
      private var §1K§:Number;
      
      public function §,"<§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
         }
         while(true)
         {
            this.§<8§ = param1;
            while(!(_loc4_ && this))
            {
               this.§5g§ = param2;
               do
               {
                  this.§1K§ = param3;
               }
               while(!(_loc5_ || param1));
               
               if(!(_loc4_ && param2))
               {
                  return;
               }
            }
         }
      }
      
      public function §3!z§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(Math.log(this.§5g§ / param2) / Math.log(1 - this.§<8§));
         if(_loc3_ || param1)
         {
            §§push(1);
            if(!_loc4_)
            {
               §§goto(addr67);
            }
            §§push(§§pop() * (§§pop() / this.§1K§));
         }
         addr67:
         §§push(§§pop() + §§pop());
         if(!_loc4_)
         {
            return 1;
         }
      }
      
      public function §85§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param3);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(_loc5_ || param2)
            {
               §§push(§§pop() * Math.pow(1 - this.§<8§,param1 / (1 / this.§1K§) - 1));
               if(_loc5_)
               {
                  addr64:
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param3);
                  }
                  return §§pop() + §§pop();
               }
            }
         }
         §§goto(addr64);
      }
   }
}
