package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class §6!D§ extends §3!u§
   {
       
      
      public function §6!D§(param1:§#>§, param2:Number)
      {
         super(param1,param2);
         §1J§ = param1.duration;
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §6!D§(§]d§.clone() as §#>§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §]d§.update(§1J§ - param1);
      }
   }
}
