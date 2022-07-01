package §;!,§
{
   import §3§.§`A§;
   import §4!7§.§%!m§;
   
   public class §;!p§ extends AbstractTween implements §5!X§
   {
       
      
      protected var §6U§:§`A§;
      
      public function §;!p§(param1:§%!m§)
      {
         super(param1,0);
      }
      
      public function get §`I§() : §`A§
      {
         return this.§6U§;
      }
      
      public function set §`I§(param1:§`A§) : void
      {
         this.§6U§ = param1;
         if(this.§6U§ != null)
         {
            §1J§ = this.§6U§.duration;
         }
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §;!p§(§5!§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§6U§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§6U§ != null ? this.§6U§.target : null;
      }
      
      override protected function copyFrom(param1:AbstractTween) : void
      {
         super.copyFrom(param1);
         var _loc2_:§;!p§ = param1 as §;!p§;
         this.§6U§ = _loc2_.§6U§.clone() as §`A§;
      }
   }
}
