package §_-vg§
{
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-t9§;
   
   public class §_-wZ§ extends §_-t9§
   {
       
      
      private var §_-XB§:Function;
      
      private var §_-q7§:Array;
      
      private var §_-wJ§:Function;
      
      private var §_-FH§:Array;
      
      public function §_-wZ§(param1:§_-Ps§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§_-XB§ = param2;
         this.§_-q7§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§_-wJ§ = param5;
               this.§_-FH§ = param6;
            }
            else
            {
               this.§_-wJ§ = param2;
               this.§_-FH§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§_-wJ§ != null)
         {
            this.§_-wJ§.apply(null,this.§_-FH§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-XB§ != null)
         {
            this.§_-XB§.apply(null,this.§_-q7§);
         }
      }
   }
}
