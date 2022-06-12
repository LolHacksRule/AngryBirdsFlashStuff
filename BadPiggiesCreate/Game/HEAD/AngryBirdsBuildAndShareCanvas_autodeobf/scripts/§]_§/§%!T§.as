package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §%!T§ extends §9!0§
   {
       
      
      private var §`!3§:Number;
      
      private var §5c§:uint;
      
      public function §%!T§(param1:§?f§, param2:uint)
      {
         super(param1,0);
         this.§`!3§ = param1.duration;
         this.§5c§ = param2;
         §!"-§ = this.§`!3§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §!"-§ ? this.§`!3§ * int(param1 / this.§`!3§) : §!"-§ - this.§`!3§;
         }
         §7"?§.update(param1);
      }
      
      public function get §@c§() : uint
      {
         return this.§5c§;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §%!T§(§7"?§.clone() as §?f§,this.§@c§);
      }
   }
}
