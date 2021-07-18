package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class §%r§ extends §3!u§
   {
       
      
      private var §!!2§:Number;
      
      private var §5p§:Number;
      
      public function §%r§(param1:§#>§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,0);
            if(!_loc5_)
            {
               §§goto(addr49);
            }
            §§goto(addr64);
         }
         addr49:
         §1J§ = param2 + param1.duration + param3;
         if(_loc4_ || param3)
         {
            addr64:
            this.§5p§ = param2;
            if(!_loc5_)
            {
               this.§!!2§ = param3;
            }
         }
      }
      
      public function get §[x§() : Number
      {
         return this.§5p§;
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §%r§(§]d§.clone() as §#>§,this.§5p§,this.§!!2§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §]d§.update(param1 - this.§5p§);
         }
      }
      
      public function get §@1§() : Number
      {
         return this.§!!2§;
      }
   }
}
