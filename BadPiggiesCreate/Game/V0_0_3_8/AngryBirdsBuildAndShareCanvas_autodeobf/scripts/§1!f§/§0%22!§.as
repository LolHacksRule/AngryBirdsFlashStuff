package §1!f§
{
   import §6P§.§!b§;
   import §6P§.§>Z§;
   import §6P§.§@o§;
   
   public class §0"!§ extends §@o§
   {
       
      
      private var §<!F§:Number;
      
      private var §?G§:Number;
      
      public function §0"!§(param1:§!b§, param2:Number, param3:Number)
      {
         super(param1,0);
         §"!,§ = param3 - param2;
         this.§<!F§ = param2;
         this.§?G§ = param3;
      }
      
      override protected function newInstance() : §>Z§
      {
         return new §0"!§(§-!$§.clone() as §!b§,this.§<!F§,this.§?G§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §"!,§)
            {
               §-!$§.update(param1 + this.§<!F§);
            }
            else
            {
               §-!$§.update(this.§?G§);
            }
         }
         else
         {
            §-!$§.update(this.§<!F§);
         }
      }
      
      public function get §3![§() : Number
      {
         return this.§<!F§;
      }
      
      public function get end() : Number
      {
         return this.§?G§;
      }
   }
}
