package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class § "6§ extends §"U§
   {
       
      
      private var §-e§:Number;
      
      public function § "6§(param1:§?H§, param2:Number)
      {
         super(param1,0);
         §[m§ = param1.duration * param2;
         this.§-e§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§-e§;
      }
      
      override protected function newInstance() : §^!B§
      {
         return new § "6§(§>d§.clone() as §?H§,this.§-e§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §>d§.update(param1 / this.scale);
      }
   }
}
