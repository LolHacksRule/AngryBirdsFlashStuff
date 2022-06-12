package §0S§
{
   import §6!!§.§,!B§;
   import §6!!§.§9o§;
   import §6!!§.§?t§;
   
   public class §@!T§ extends §9o§
   {
       
      
      private var §<W§:Number;
      
      private var §+§:Number;
      
      public function §@!T§(param1:§,!B§, param2:Number, param3:Number)
      {
         super(param1,0);
         §4!1§ = param3 - param2;
         this.§<W§ = param2;
         this.§+§ = param3;
      }
      
      override protected function newInstance() : §?t§
      {
         return new §@!T§(§,!]§.clone() as §,!B§,this.§<W§,this.§+§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §4!1§)
            {
               §,!]§.update(param1 + this.§<W§);
            }
            else
            {
               §,!]§.update(this.§+§);
            }
         }
         else
         {
            §,!]§.update(this.§<W§);
         }
      }
      
      public function get §6!N§() : Number
      {
         return this.§<W§;
      }
      
      public function get end() : Number
      {
         return this.§+§;
      }
   }
}
