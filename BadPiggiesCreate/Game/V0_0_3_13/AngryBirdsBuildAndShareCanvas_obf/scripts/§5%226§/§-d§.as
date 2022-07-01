package §5"6§
{
   import §1R§.§+s§;
   import §6!>§.§>!#§;
   
   public class §-d§ extends §+s§
   {
       
      
      private var §>!m§:Function;
      
      private var §+x§:Array;
      
      private var §]!!§:Function;
      
      private var §-_§:Array;
      
      public function §-d§(param1:§>!#§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§>!m§ = param2;
         this.§+x§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§]!!§ = param5;
               this.§-_§ = param6;
            }
            else
            {
               this.§]!!§ = param2;
               this.§-_§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§]!!§ != null)
         {
            this.§]!!§.apply(null,this.§-_§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§>!m§ != null)
         {
            this.§>!m§.apply(null,this.§+x§);
         }
      }
   }
}
