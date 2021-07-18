package §1!k§
{
   import §8=§.§36§;
   import §=b§.§%"2§;
   
   public class § T§ extends §^!B§ implements §!Z§
   {
       
      
      protected var §#!7§:§36§;
      
      public function § T§(param1:§%"2§)
      {
         super(param1,0);
      }
      
      public function get §1q§() : §36§
      {
         return this.§#!7§;
      }
      
      public function set §1q§(param1:§36§) : void
      {
         this.§#!7§ = param1;
         if(this.§#!7§ != null)
         {
            §[m§ = this.§#!7§.duration;
         }
      }
      
      override protected function newInstance() : §^!B§
      {
         return new § T§(§1!I§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§#!7§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§#!7§ != null ? this.§#!7§.target : null;
      }
      
      override protected function copyFrom(param1:§^!B§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§ T§ = param1 as § T§;
         this.§#!7§ = _loc2_.§#!7§.clone() as §36§;
      }
   }
}
