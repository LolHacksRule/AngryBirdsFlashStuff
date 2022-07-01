package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class § 3§ extends §3!u§
   {
       
      
      private var §0y§:Number;
      
      private var §"o§:uint;
      
      public function § 3§(param1:§#>§, param2:uint)
      {
         super(param1,0);
         this.§0y§ = param1.duration;
         this.§"o§ = param2;
         §1J§ = this.§0y§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §1J§ ? this.§0y§ * int(param1 / this.§0y§) : §1J§ - this.§0y§;
         }
         §]d§.update(param1);
      }
      
      public function get §-!n§() : uint
      {
         return this.§"o§;
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new § 3§(§]d§.clone() as §#>§,this.§-!n§);
      }
   }
}
