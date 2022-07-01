package §@D§
{
   import §1&§.§0?§;
   import §8!X§.§7'§;
   
   public class §,!,§ extends §0?§
   {
       
      
      private var § p§:Function;
      
      private var §-O§:Array;
      
      private var §;n§:Function;
      
      private var §@!R§:Array;
      
      public function §,!,§(param1:§7'§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§ p§ = param2;
         this.§-O§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§;n§ = param5;
               this.§@!R§ = param6;
            }
            else
            {
               this.§;n§ = param2;
               this.§@!R§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§;n§ != null)
         {
            this.§;n§.apply(null,this.§@!R§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§ p§ != null)
         {
            this.§ p§.apply(null,this.§-O§);
         }
      }
   }
}
