package §1R§
{
   import § !3§.§5"&§;
   import §4!x§.§>F§;
   import §6!>§.§>!#§;
   
   public class §#" § extends §]!"§ implements §]B§
   {
       
      
      protected var §7E§:§>F§;
      
      protected var §3V§:§5"&§;
      
      public function §#" §(param1:§>!#§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §+6§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §+6§)
            {
               _loc2_ = this.§7E§.§%!"§(param1,0,1,§+6§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§3V§.update(_loc2_);
      }
      
      public function get §!_§() : §5"&§
      {
         return this.§3V§;
      }
      
      public function get §=&§() : §>F§
      {
         return this.§7E§;
      }
      
      override protected function copyFrom(param1:§]!"§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§#" § = param1 as §#" §;
         this.§7E§ = _loc2_.§7E§;
         this.§3V§ = _loc2_.§3V§.clone();
      }
      
      override protected function newInstance() : §]!"§
      {
         return new §#" §(§05§);
      }
      
      public function set §=&§(param1:§>F§) : void
      {
         this.§7E§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§3V§ != null ? this.§3V§.target : null;
      }
      
      public function set §!_§(param1:§5"&§) : void
      {
         this.§3V§ = param1;
      }
      
      public function get time() : Number
      {
         return §+6§;
      }
   }
}
