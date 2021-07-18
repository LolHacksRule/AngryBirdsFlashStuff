package §+!!§
{
   public class §@!K§
   {
       
      
      protected var §%!3§:Number;
      
      protected var §?!e§:Number;
      
      protected var §6!r§:Number;
      
      protected var §9b§:Boolean;
      
      public function §@!K§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
         }
         while(true)
         {
            this.§%!3§ = param1;
            loop1:
            while(_loc6_ || param2)
            {
               this.§?!e§ = param2;
               do
               {
                  this.§6!r§ = param3;
                  while(!(_loc5_ && param2))
                  {
                     this.§9b§ = param4;
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr30);
                  }
                  continue loop1;
               }
               while(!(_loc6_ || param1));
               
               return;
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get §[B§() : Boolean
      {
         return this.§9b§;
      }
   }
}
