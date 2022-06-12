package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §8"5§ extends §9!0§
   {
       
      
      private var §["9§:Number;
      
      private var §1!U§:Number;
      
      public function §8"5§(param1:§?f§, param2:Number, param3:Number)
      {
         super(param1,0);
         §!"-§ = param3 - param2;
         this.§["9§ = param2;
         this.§1!U§ = param3;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §8"5§(§7"?§.clone() as §?f§,this.§["9§,this.§1!U§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §!"-§)
            {
               §7"?§.update(param1 + this.§["9§);
            }
            else
            {
               §7"?§.update(this.§1!U§);
            }
         }
         else
         {
            §7"?§.update(this.§["9§);
         }
      }
      
      public function get §4!#§() : Number
      {
         return this.§["9§;
      }
      
      public function get end() : Number
      {
         return this.§1!U§;
      }
   }
}
