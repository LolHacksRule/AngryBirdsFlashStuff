package §_-3I§
{
   import §_-SJ§.§_-Q5§;
   import §_-sN§.§_-7q§;
   
   public class §_-9a§ extends §_-7q§
   {
       
      
      private var §_-PO§:Function;
      
      private var §_-xL§:Array;
      
      private var §_-sJ§:Function;
      
      private var §_-tt§:Array;
      
      public function §_-9a§(param1:§_-Q5§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§_-PO§ = param2;
         this.§_-xL§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§_-sJ§ = param5;
               this.§_-tt§ = param6;
            }
            else
            {
               this.§_-sJ§ = param2;
               this.§_-tt§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§_-sJ§ != null)
         {
            this.§_-sJ§.apply(null,this.§_-tt§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-PO§ != null)
         {
            this.§_-PO§.apply(null,this.§_-xL§);
         }
      }
   }
}
