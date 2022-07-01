package §1R§
{
   import § !3§.§5!e§;
   import §6!>§.§>!#§;
   
   public class §`?§ extends §]!"§ implements §2!Y§
   {
       
      
      protected var §3V§:§5!e§;
      
      public function §`?§(param1:§>!#§)
      {
         super(param1,0);
      }
      
      public function get §!_§() : §5!e§
      {
         return this.§3V§;
      }
      
      public function set §!_§(param1:§5!e§) : void
      {
         this.§3V§ = param1;
         if(this.§3V§ != null)
         {
            §+6§ = this.§3V§.duration;
         }
      }
      
      override protected function newInstance() : §]!"§
      {
         return new §`?§(§05§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§3V§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§3V§ != null ? this.§3V§.target : null;
      }
      
      override protected function copyFrom(param1:§]!"§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§`?§ = param1 as §`?§;
         this.§3V§ = _loc2_.§3V§.clone() as §5!e§;
      }
   }
}
