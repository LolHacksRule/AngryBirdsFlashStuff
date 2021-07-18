package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class §7!m§ extends §"U§
   {
       
      
      private var §+!G§:Number;
      
      private var §?R§:uint;
      
      public function §7!m§(param1:§?H§, param2:uint)
      {
         super(param1,0);
         this.§+!G§ = param1.duration;
         this.§?R§ = param2;
         §[m§ = this.§+!G§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §[m§ ? this.§+!G§ * int(param1 / this.§+!G§) : §[m§ - this.§+!G§;
         }
         §>d§.update(param1);
      }
      
      public function get §5"<§() : uint
      {
         return this.§?R§;
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §7!m§(§>d§.clone() as §?H§,this.§5"<§);
      }
   }
}
