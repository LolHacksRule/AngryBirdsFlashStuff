package §6!!§
{
   import §?u§.§'S§;
   import §^b§.§ E§;
   import §`!?§.§5q§;
   
   public class §38§ extends §?t§ implements §3!M§
   {
       
      
      protected var §8H§:§5q§;
      
      protected var §^]§:§'S§;
      
      public function §38§(param1:§ E§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §4!1§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §4!1§)
            {
               _loc2_ = this.§8H§.§<l§(param1,0,1,§4!1§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§^]§.update(_loc2_);
      }
      
      public function get §2"+§() : §'S§
      {
         return this.§^]§;
      }
      
      public function get §,@§() : §5q§
      {
         return this.§8H§;
      }
      
      override protected function copyFrom(param1:§?t§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§38§ = param1 as §38§;
         this.§8H§ = _loc2_.§8H§;
         this.§^]§ = _loc2_.§^]§.clone();
      }
      
      override protected function newInstance() : §?t§
      {
         return new §38§(§=!9§);
      }
      
      public function set §,@§(param1:§5q§) : void
      {
         this.§8H§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§^]§ != null ? this.§^]§.target : null;
      }
      
      public function set §2"+§(param1:§'S§) : void
      {
         this.§^]§ = param1;
      }
      
      public function get time() : Number
      {
         return §4!1§;
      }
   }
}
