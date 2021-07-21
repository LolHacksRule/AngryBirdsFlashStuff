package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class §=!g§ extends §3!u§
   {
       
      
      private var §%!9§:Number;
      
      public function §=!g§(param1:§#>§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,0);
            if(!(_loc3_ && _loc3_))
            {
               §1J§ = param1.duration * param2;
               if(!(_loc3_ && param2))
               {
                  this.§%!9§ = param2;
               }
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§%!9§;
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §=!g§(§]d§.clone() as §#>§,this.§%!9§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]d§.update(param1 / this.scale);
         }
      }
   }
}
