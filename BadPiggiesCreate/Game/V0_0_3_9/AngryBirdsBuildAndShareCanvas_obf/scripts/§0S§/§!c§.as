package §0S§
{
   import §6!!§.§,!B§;
   import §6!!§.§9o§;
   import §6!!§.§?t§;
   
   public class §!c§ extends §9o§
   {
       
      
      private var §7`§:Number;
      
      private var §]"3§:uint;
      
      public function §!c§(param1:§,!B§, param2:uint)
      {
         super(param1,0);
         this.§7`§ = param1.duration;
         this.§]"3§ = param2;
         §4!1§ = this.§7`§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §4!1§ ? this.§7`§ * int(param1 / this.§7`§) : §4!1§ - this.§7`§;
         }
         §,!]§.update(param1);
      }
      
      public function get §+!?§() : uint
      {
         return this.§]"3§;
      }
      
      override protected function newInstance() : §?t§
      {
         return new §!c§(§,!]§.clone() as §,!B§,this.§+!?§);
      }
   }
}
