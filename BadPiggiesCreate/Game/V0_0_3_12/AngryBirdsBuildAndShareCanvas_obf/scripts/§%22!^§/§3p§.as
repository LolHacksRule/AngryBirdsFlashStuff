package §"!^§
{
   import §8!J§.§3!_§;
   import §8!J§.§3j§;
   import §8!J§.§5f§;
   
   public class §3p§ extends §3!_§
   {
       
      
      private var §!8§:Number;
      
      private var §-R§:uint;
      
      public function §3p§(param1:§3j§, param2:uint)
      {
         super(param1,0);
         this.§!8§ = param1.duration;
         this.§-R§ = param2;
         §,!O§ = this.§!8§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §,!O§ ? this.§!8§ * int(param1 / this.§!8§) : §,!O§ - this.§!8§;
         }
         §0v§.update(param1);
      }
      
      public function get §3!"§() : uint
      {
         return this.§-R§;
      }
      
      override protected function newInstance() : §5f§
      {
         return new §3p§(§0v§.clone() as §3j§,this.§3!"§);
      }
   }
}
