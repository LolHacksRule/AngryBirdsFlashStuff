package §6P§
{
   import §9g§.§?"§;
   import §>O§.§18§;
   import §]+§.§"G§;
   
   public class §in § extends §>Z§ implements §6!W§
   {
       
      
      protected var §+!v§:§?"§;
      
      protected var §>E§:§18§;
      
      public function §in §(param1:§"G§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §"!,§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §"!,§)
            {
               _loc2_ = this.§+!v§.§<!"§(param1,0,1,§"!,§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§>E§.update(_loc2_);
      }
      
      public function get §8k§() : §18§
      {
         return this.§>E§;
      }
      
      public function get §7!V§() : §?"§
      {
         return this.§+!v§;
      }
      
      override protected function copyFrom(param1:§>Z§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§in § = param1 as §in §;
         this.§+!v§ = _loc2_.§+!v§;
         this.§>E§ = _loc2_.§>E§.clone();
      }
      
      override protected function newInstance() : §>Z§
      {
         return new §in §(§;v§);
      }
      
      public function set §7!V§(param1:§?"§) : void
      {
         this.§+!v§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§>E§ != null ? this.§>E§.target : null;
      }
      
      public function set §8k§(param1:§18§) : void
      {
         this.§>E§ = param1;
      }
      
      public function get time() : Number
      {
         return §"!,§;
      }
   }
}
