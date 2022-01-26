package §_-px§
{
   import §_-8p§.§_-dW§;
   import §_-wo§.§_-nE§;
   
   public class §_-7R§ extends §_-nE§
   {
       
      
      private var §_-lI§:Function;
      
      private var §_-Lv§:Array;
      
      private var §_-I4§:Function;
      
      private var §_-6S§:Array;
      
      public function §_-7R§(param1:§_-dW§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§_-lI§ = param2;
         this.§_-Lv§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§_-I4§ = param5;
               this.§_-6S§ = param6;
            }
            else
            {
               this.§_-I4§ = param2;
               this.§_-6S§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§_-I4§ != null)
         {
            this.§_-I4§.apply(null,this.§_-6S§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-lI§ != null)
         {
            this.§_-lI§.apply(null,this.§_-Lv§);
         }
      }
   }
}
