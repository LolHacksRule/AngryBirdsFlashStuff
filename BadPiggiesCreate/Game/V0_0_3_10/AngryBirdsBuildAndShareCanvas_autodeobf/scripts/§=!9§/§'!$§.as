package §=!9§
{
   import §'!D§.§&z§;
   import §["6§.§@D§;
   
   public class §'!$§ extends §&z§
   {
       
      
      private var §64§:Function;
      
      private var §#"§:Array;
      
      private var §,!]§:Function;
      
      private var §;!K§:Array;
      
      public function §'!$§(param1:§@D§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§64§ = param2;
         this.§#"§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§,!]§ = param5;
               this.§;!K§ = param6;
            }
            else
            {
               this.§,!]§ = param2;
               this.§;!K§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§,!]§ != null)
         {
            this.§,!]§.apply(null,this.§;!K§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§64§ != null)
         {
            this.§64§.apply(null,this.§#"§);
         }
      }
   }
}
