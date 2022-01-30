package §@!C§
{
   import §6!!§.§+G§;
   import §^b§.§ E§;
   
   public class §`+§ extends §+G§
   {
       
      
      private var §4t§:Function;
      
      private var § "9§:Array;
      
      private var §`;§:Function;
      
      private var §;2§:Array;
      
      public function §`+§(param1:§ E§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§4t§ = param2;
         this.§ "9§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§`;§ = param5;
               this.§;2§ = param6;
            }
            else
            {
               this.§`;§ = param2;
               this.§;2§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§`;§ != null)
         {
            this.§`;§.apply(null,this.§;2§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§4t§ != null)
         {
            this.§4t§.apply(null,this.§ "9§);
         }
      }
   }
}
