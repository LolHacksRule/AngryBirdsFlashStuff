package §_-Sh§
{
   import §_-0e§.§_-SO§;
   import §_-Aa§.§_-Y4§;
   
   public class §_-pH§ extends §_-SO§
   {
       
      
      private var §_-YW§:Function;
      
      private var §_-jP§:Array;
      
      private var §_-3A§:Function;
      
      private var §_-C7§:Array;
      
      public function §_-pH§(param1:§_-Y4§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§_-YW§ = param2;
         this.§_-jP§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§_-3A§ = param5;
               this.§_-C7§ = param6;
            }
            else
            {
               this.§_-3A§ = param2;
               this.§_-C7§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§_-3A§ != null)
         {
            this.§_-3A§.apply(null,this.§_-C7§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-YW§ != null)
         {
            this.§_-YW§.apply(null,this.§_-jP§);
         }
      }
   }
}
