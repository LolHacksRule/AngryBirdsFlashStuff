package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class §3!4§ extends §"U§
   {
       
      
      private var §+]§:Number;
      
      private var §>!d§:Number;
      
      public function §3!4§(param1:§?H§, param2:Number, param3:Number)
      {
         super(param1,0);
         §[m§ = param3 - param2;
         this.§+]§ = param2;
         this.§>!d§ = param3;
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §3!4§(§>d§.clone() as §?H§,this.§+]§,this.§>!d§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §[m§)
            {
               §>d§.update(param1 + this.§+]§);
            }
            else
            {
               §>d§.update(this.§>!d§);
            }
         }
         else
         {
            §>d§.update(this.§+]§);
         }
      }
      
      public function get §#c§() : Number
      {
         return this.§+]§;
      }
      
      public function get end() : Number
      {
         return this.§>!d§;
      }
   }
}
