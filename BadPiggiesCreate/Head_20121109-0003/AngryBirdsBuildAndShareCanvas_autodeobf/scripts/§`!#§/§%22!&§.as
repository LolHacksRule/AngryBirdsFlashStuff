package §`!#§
{
   import §%!n§.§;!'§;
   import §0§.§-!G§;
   import §0x§.§6z§;
   
   public class §"!&§ extends §[!O§ implements §"!%§
   {
       
      
      protected var §#"+§:§6z§;
      
      protected var §!f§:§-!G§;
      
      public function §"!&§(param1:§;!'§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §!"-§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §!"-§)
            {
               _loc2_ = this.§#"+§.§85§(param1,0,1,§!"-§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§!f§.update(_loc2_);
      }
      
      public function get §#!!§() : §-!G§
      {
         return this.§!f§;
      }
      
      public function get §3!`§() : §6z§
      {
         return this.§#"+§;
      }
      
      override protected function copyFrom(param1:§[!O§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§"!&§ = param1 as §"!&§;
         this.§#"+§ = _loc2_.§#"+§;
         this.§!f§ = _loc2_.§!f§.clone();
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §"!&§(§`!D§);
      }
      
      public function set §3!`§(param1:§6z§) : void
      {
         this.§#"+§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§!f§ != null ? this.§!f§.target : null;
      }
      
      public function set §#!!§(param1:§-!G§) : void
      {
         this.§!f§ = param1;
      }
      
      public function get time() : Number
      {
         return §!"-§;
      }
   }
}
