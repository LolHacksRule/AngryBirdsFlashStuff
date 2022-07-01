package §]!b§
{
   import §,m§.§?"%§;
   import §>0§.§=D§;
   import flash.events.Event;
   
   public class §?8§ implements §9h§
   {
       
      
      private var §8O§:§]?§;
      
      public function §?8§(param1:§]?§)
      {
         super();
         this.§8O§ = param1;
      }
      
      public static function §0!E§(param1:Boolean) : void
      {
         §=D§.§0!E§(param1);
      }
      
      public function initialize() : void
      {
         this.§8O§.§%H§.addEventListener(§?"%§.dynamic,this.§7!I§);
      }
      
      protected function §7!I§(param1:Event) : void
      {
         if(this.§8O§.§%H§.§>t§())
         {
            this.goToBirdView();
         }
         else
         {
            this.goToCastleView();
         }
      }
      
      public function update(param1:Number) : void
      {
         this.camera.§3!V§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §=D§
      {
         return this.§8O§.§4+§.camera as §=D§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
   }
}
