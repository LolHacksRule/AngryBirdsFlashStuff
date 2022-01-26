package §_-lp§
{
   import §_-My§.§_-ya§;
   import §_-h2§.§_-CC§;
   
   public class each extends §_-ya§
   {
       
      
      private var §_-3§:Function;
      
      private var §_-gj§:Array;
      
      private var §_-yj§:Function;
      
      private var §_-Xv§:Array;
      
      public function each(param1:§_-CC§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§_-3§ = param2;
         this.§_-gj§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§_-yj§ = param5;
               this.§_-Xv§ = param6;
            }
            else
            {
               this.§_-yj§ = param2;
               this.§_-Xv§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§_-yj§ != null)
         {
            this.§_-yj§.apply(null,this.§_-Xv§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-3§ != null)
         {
            this.§_-3§.apply(null,this.§_-gj§);
         }
      }
   }
}
