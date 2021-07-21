package §1!k§
{
   import §2p§.§`2§;
   import §8=§.§+?§;
   import §=b§.§%"2§;
   
   public class §#!9§ extends §^!B§ implements §@A§
   {
       
      
      protected var §!i§:§`2§;
      
      protected var §#!7§:§+?§;
      
      public function §#!9§(param1:§%"2§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §[m§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §[m§)
            {
               _loc2_ = this.§!i§.§6^§(param1,0,1,§[m§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§#!7§.update(_loc2_);
      }
      
      public function get §1q§() : §+?§
      {
         return this.§#!7§;
      }
      
      public function get §!!T§() : §`2§
      {
         return this.§!i§;
      }
      
      override protected function copyFrom(param1:§^!B§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§#!9§ = param1 as §#!9§;
         this.§!i§ = _loc2_.§!i§;
         this.§#!7§ = _loc2_.§#!7§.clone();
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §#!9§(§1!I§);
      }
      
      public function set §!!T§(param1:§`2§) : void
      {
         this.§!i§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§#!7§ != null ? this.§#!7§.target : null;
      }
      
      public function set §1q§(param1:§+?§) : void
      {
         this.§#!7§ = param1;
      }
      
      public function get time() : Number
      {
         return §[m§;
      }
   }
}
