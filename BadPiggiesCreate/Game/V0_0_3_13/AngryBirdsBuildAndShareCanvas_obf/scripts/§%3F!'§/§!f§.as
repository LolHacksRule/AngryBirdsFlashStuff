package §?!'§
{
   import §1R§.§4!T§;
   import §1R§.§67§;
   import §1R§.§]!"§;
   
   public class §!f§ extends §67§
   {
       
      
      private var §<!&§:Number;
      
      private var §=!m§:Number;
      
      public function §!f§(param1:§4!T§, param2:Number, param3:Number)
      {
         super(param1,0);
         §+6§ = param3 - param2;
         this.§<!&§ = param2;
         this.§=!m§ = param3;
      }
      
      override protected function newInstance() : §]!"§
      {
         return new §!f§(§9!=§.clone() as §4!T§,this.§<!&§,this.§=!m§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §+6§)
            {
               §9!=§.update(param1 + this.§<!&§);
            }
            else
            {
               §9!=§.update(this.§=!m§);
            }
         }
         else
         {
            §9!=§.update(this.§<!&§);
         }
      }
      
      public function get §9!s§() : Number
      {
         return this.§<!&§;
      }
      
      public function get end() : Number
      {
         return this.§=!m§;
      }
   }
}
