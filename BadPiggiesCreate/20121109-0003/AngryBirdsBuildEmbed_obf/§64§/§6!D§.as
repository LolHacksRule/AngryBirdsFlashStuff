package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class §6!D§ extends §3!u§
   {
       
      
      public function §6!D§(param1:§#>§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
            if(_loc3_)
            {
               §1J§ = param1.duration;
            }
         }
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §6!D§(§]d§.clone() as §#>§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §]d§.update(§1J§ - param1);
         }
      }
   }
}
