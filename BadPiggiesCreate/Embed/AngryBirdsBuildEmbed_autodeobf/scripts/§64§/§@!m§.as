package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class §@!m§ extends §3!u§
   {
       
      
      private var §=!T§:Number;
      
      private var §6§:Number;
      
      public function §@!m§(param1:§#>§, param2:Number, param3:Number)
      {
         super(param1,0);
         §1J§ = param3 - param2;
         this.§=!T§ = param2;
         this.§6§ = param3;
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §@!m§(§]d§.clone() as §#>§,this.§=!T§,this.§6§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §1J§)
            {
               §]d§.update(param1 + this.§=!T§);
            }
            else
            {
               §]d§.update(this.§6§);
            }
         }
         else
         {
            §]d§.update(this.§=!T§);
         }
      }
      
      public function get §6_§() : Number
      {
         return this.§=!T§;
      }
      
      public function get end() : Number
      {
         return this.§6§;
      }
   }
}
