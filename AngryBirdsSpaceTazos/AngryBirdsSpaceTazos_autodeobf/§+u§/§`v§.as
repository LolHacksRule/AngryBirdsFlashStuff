package §+u§
{
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §77§.§ ",§;
   import §8!_§.§?!#§;
   import §8!_§.§]J§;
   import §`!j§.§9"!§;
   import flash.events.EventDispatcher;
   
   public class §`v§ extends EventDispatcher implements §["!§
   {
       
      
      protected var §,!w§:§ ",§;
      
      protected var §>!-§:Boolean;
      
      protected var §3u§:§=!_§;
      
      protected var §7Z§:§3!'§;
      
      protected var §6u§:§9"!§;
      
      public function §`v§(param1:§ ",§, param2:§9"!§, param3:§=!_§, param4:§3!'§)
      {
         super();
         this.§,!w§ = param1;
         this.§6u§ = param2;
         this.§7Z§ = param4;
         this.§3u§ = param3;
         this.§>!-§ = true;
         this.init();
      }
      
      public function get §?"1§() : § ",§
      {
         return this.§,!w§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §7!=§() : Boolean
      {
         return !this.§>!-§;
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable(param1:Boolean) : void
      {
         this.§>!-§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§>!-§ = false;
      }
      
      protected function §?!I§() : String
      {
         return §]J§.STATE_NAME;
      }
      
      protected function §`!e§() : String
      {
         return §?!#§.STATE_NAME;
      }
   }
}
