package §6P§
{
   import §>O§.§4Q§;
   import §]+§.§"G§;
   
   public class §7!o§ extends §>Z§ implements § p§
   {
       
      
      protected var §>E§:§4Q§;
      
      public function §7!o§(param1:§"G§)
      {
         super(param1,0);
      }
      
      public function get §8k§() : §4Q§
      {
         return this.§>E§;
      }
      
      public function set §8k§(param1:§4Q§) : void
      {
         this.§>E§ = param1;
         if(this.§>E§ != null)
         {
            §"!,§ = this.§>E§.duration;
         }
      }
      
      override protected function newInstance() : §>Z§
      {
         return new §7!o§(§;v§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§>E§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§>E§ != null ? this.§>E§.target : null;
      }
      
      override protected function copyFrom(param1:§>Z§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§7!o§ = param1 as §7!o§;
         this.§>E§ = _loc2_.§>E§.clone() as §4Q§;
      }
   }
}
