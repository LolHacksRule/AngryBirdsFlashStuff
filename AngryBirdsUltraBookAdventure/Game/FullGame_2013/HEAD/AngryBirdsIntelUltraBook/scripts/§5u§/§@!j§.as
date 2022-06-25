package §5u§
{
   public class §@!j§
   {
       
      
      protected var §1X§:Number;
      
      protected var §`J§:Number;
      
      protected var §?C§:Number;
      
      protected var §2!%§:Boolean;
      
      public function §@!j§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§1X§ = param1;
            while(true)
            {
               this.§`J§ = param2;
               while(_loc5_ || param1)
               {
                  if(_loc5_)
                  {
                     this.§?C§ = param3;
                     while(!(_loc6_ && param2))
                     {
                        this.§2!%§ = param4;
                        if(_loc5_ || param2)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function get §"!j§() : Boolean
      {
         return this.§2!%§;
      }
   }
}
