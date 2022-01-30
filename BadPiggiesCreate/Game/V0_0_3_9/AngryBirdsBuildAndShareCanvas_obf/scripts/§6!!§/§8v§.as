package §6!!§
{
   import §?u§.§`_§;
   import §^b§.§ E§;
   
   public class §8v§ extends §?t§ implements §=!j§
   {
       
      
      protected var §^]§:§`_§;
      
      public function §8v§(param1:§ E§)
      {
         super(param1,0);
      }
      
      public function get §2"+§() : §`_§
      {
         return this.§^]§;
      }
      
      public function set §2"+§(param1:§`_§) : void
      {
         this.§^]§ = param1;
         if(this.§^]§ != null)
         {
            §4!1§ = this.§^]§.duration;
         }
      }
      
      override protected function newInstance() : §?t§
      {
         return new §8v§(§=!9§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§^]§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§^]§ != null ? this.§^]§.target : null;
      }
      
      override protected function copyFrom(param1:§?t§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§8v§ = param1 as §8v§;
         this.§^]§ = _loc2_.§^]§.clone() as §`_§;
      }
   }
}
