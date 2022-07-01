package §;!,§
{
   import §3§.§ null§;
   import §4!7§.§%!m§;
   import §4!r§.§7R§;
   
   public class §=!I§ extends AbstractTween implements §0!]§
   {
       
      
      protected var §[!8§:§7R§;
      
      protected var §6U§:§ null§;
      
      public function §=!I§(param1:§%!m§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §1J§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §1J§)
            {
               _loc2_ = this.§[!8§.§-1§(param1,0,1,§1J§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§6U§.update(_loc2_);
      }
      
      public function get §`I§() : § null§
      {
         return this.§6U§;
      }
      
      public function get §-;§() : §7R§
      {
         return this.§[!8§;
      }
      
      override protected function copyFrom(param1:AbstractTween) : void
      {
         super.copyFrom(param1);
         var _loc2_:§=!I§ = param1 as §=!I§;
         this.§[!8§ = _loc2_.§[!8§;
         this.§6U§ = _loc2_.§6U§.clone();
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §=!I§(§5!§);
      }
      
      public function set §-;§(param1:§7R§) : void
      {
         this.§[!8§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§6U§ != null ? this.§6U§.target : null;
      }
      
      public function set §`I§(param1:§ null§) : void
      {
         this.§6U§ = param1;
      }
      
      public function get time() : Number
      {
         return §1J§;
      }
   }
}
