package §_-nb§
{
   import §_-Ou§.§_-DP§;
   import §_-hn§.§_-ZZ§;
   
   public class §_-HO§ extends §_-ZZ§
   {
       
      
      private var §_-ts§:Function;
      
      private var §_-Wj§:Array;
      
      private var §_-LW§:Function;
      
      private var §_-xS§:Array;
      
      public function §_-HO§(param1:§_-DP§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§_-ts§ = param2;
         this.§_-Wj§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§_-LW§ = param5;
               this.§_-xS§ = param6;
            }
            else
            {
               this.§_-LW§ = param2;
               this.§_-xS§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§_-LW§ != null)
         {
            this.§_-LW§.apply(null,this.§_-xS§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-ts§ != null)
         {
            this.§_-ts§.apply(null,this.§_-Wj§);
         }
      }
   }
}
