package §%=§
{
   import §4!7§.§%!m§;
   import §;!,§.§#D§;
   
   public class §`k§ extends §#D§
   {
       
      
      private var §]!`§:Function;
      
      private var §^u§:Array;
      
      private var §=+§:Function;
      
      private var §!b§:Array;
      
      public function §`k§(param1:§%!m§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§]!`§ = param2;
         this.§^u§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§=+§ = param5;
               this.§!b§ = param6;
            }
            else
            {
               this.§=+§ = param2;
               this.§!b§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§=+§ != null)
         {
            this.§=+§.apply(null,this.§!b§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§]!`§ != null)
         {
            this.§]!`§.apply(null,this.§^u§);
         }
      }
   }
}
