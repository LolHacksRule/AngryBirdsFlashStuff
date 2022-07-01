package §1&§
{
   import §8!X§.§7'§;
   import §=!N§.§]k§;
   
   public class §1"#§ extends §?!i§ implements §5a§
   {
       
      
      protected var §`!B§:§]k§;
      
      public function §1"#§(param1:§7'§)
      {
         super(param1,0);
      }
      
      public function get §""+§() : §]k§
      {
         return this.§`!B§;
      }
      
      public function set §""+§(param1:§]k§) : void
      {
         this.§`!B§ = param1;
         if(this.§`!B§ != null)
         {
            §['§ = this.§`!B§.duration;
         }
      }
      
      override protected function newInstance() : §?!i§
      {
         return new §1"#§(§="5§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§`!B§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§`!B§ != null ? this.§`!B§.target : null;
      }
      
      override protected function copyFrom(param1:§?!i§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§1"#§ = param1 as §1"#§;
         this.§`!B§ = _loc2_.§`!B§.clone() as §]k§;
      }
   }
}
