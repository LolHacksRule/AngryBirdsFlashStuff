package §1&§
{
   import §4"4§.§!!c§;
   import §8!X§.§7'§;
   import §=!N§.§!"4§;
   
   public class §+"5§ extends §?!i§ implements §7!Q§
   {
       
      
      protected var §6`§:§!!c§;
      
      protected var §`!B§:§!"4§;
      
      public function §+"5§(param1:§7'§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §['§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §['§)
            {
               _loc2_ = this.§6`§.§&w§(param1,0,1,§['§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§`!B§.update(_loc2_);
      }
      
      public function get §""+§() : §!"4§
      {
         return this.§`!B§;
      }
      
      public function get §2!U§() : §!!c§
      {
         return this.§6`§;
      }
      
      override protected function copyFrom(param1:§?!i§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§+"5§ = param1 as §+"5§;
         this.§6`§ = _loc2_.§6`§;
         this.§`!B§ = _loc2_.§`!B§.clone();
      }
      
      override protected function newInstance() : §?!i§
      {
         return new §+"5§(§="5§);
      }
      
      public function set §2!U§(param1:§!!c§) : void
      {
         this.§6`§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§`!B§ != null ? this.§`!B§.target : null;
      }
      
      public function set §""+§(param1:§!"4§) : void
      {
         this.§`!B§ = param1;
      }
      
      public function get time() : Number
      {
         return §['§;
      }
   }
}
