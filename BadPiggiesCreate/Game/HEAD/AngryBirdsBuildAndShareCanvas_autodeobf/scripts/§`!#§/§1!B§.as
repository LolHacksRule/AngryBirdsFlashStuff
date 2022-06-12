package §`!#§
{
   import §%!n§.§;!'§;
   import §0§.§,l§;
   
   public class §1!B§ extends §[!O§ implements §%h§
   {
       
      
      protected var §!f§:§,l§;
      
      public function §1!B§(param1:§;!'§)
      {
         super(param1,0);
      }
      
      public function get §#!!§() : §,l§
      {
         return this.§!f§;
      }
      
      public function set §#!!§(param1:§,l§) : void
      {
         this.§!f§ = param1;
         if(this.§!f§ != null)
         {
            §!"-§ = this.§!f§.duration;
         }
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §1!B§(§`!D§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§!f§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§!f§ != null ? this.§!f§.target : null;
      }
      
      override protected function copyFrom(param1:§[!O§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§1!B§ = param1 as §1!B§;
         this.§!f§ = _loc2_.§!f§.clone() as §,l§;
      }
   }
}
