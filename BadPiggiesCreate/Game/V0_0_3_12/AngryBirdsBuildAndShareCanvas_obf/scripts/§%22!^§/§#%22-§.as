package §"!^§
{
   import §8!J§.§3!_§;
   import §8!J§.§3j§;
   import §8!J§.§5f§;
   
   public class §#"-§ extends §3!_§
   {
       
      
      private var §,!N§:Number;
      
      private var §5!4§:Number;
      
      public function §#"-§(param1:§3j§, param2:Number, param3:Number)
      {
         super(param1,0);
         §,!O§ = param3 - param2;
         this.§,!N§ = param2;
         this.§5!4§ = param3;
      }
      
      override protected function newInstance() : §5f§
      {
         return new §#"-§(§0v§.clone() as §3j§,this.§,!N§,this.§5!4§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §,!O§)
            {
               §0v§.update(param1 + this.§,!N§);
            }
            else
            {
               §0v§.update(this.§5!4§);
            }
         }
         else
         {
            §0v§.update(this.§,!N§);
         }
      }
      
      public function get §6!^§() : Number
      {
         return this.§,!N§;
      }
      
      public function get end() : Number
      {
         return this.§5!4§;
      }
   }
}
