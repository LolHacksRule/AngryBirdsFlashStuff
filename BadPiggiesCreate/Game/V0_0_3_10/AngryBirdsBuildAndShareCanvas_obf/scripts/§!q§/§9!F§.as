package §!q§
{
   import §2!§.§>B§;
   import §3;§.§#!C§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §9!F§ implements §2j§
   {
       
      
      private var §5!V§:§84§;
      
      public function §9!F§(param1:§84§)
      {
         super();
         this.§5!V§ = param1;
      }
      
      public static function §^"-§(param1:Boolean) : void
      {
         §>B§.§^"-§(param1);
      }
      
      public function initialize() : void
      {
         this.§5!V§.§<B§.addEventListener(§#!C§.§5[§,this.§1D§);
      }
      
      protected function §1D§(param1:Event) : void
      {
         if(this.§5!V§.§<B§.§'F§())
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
         this.camera.§@!I§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §>B§
      {
         return this.§5!V§.§"j§.camera as §>B§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
      
      public function §5!'§(param1:Rectangle) : void
      {
         if(param1 != null)
         {
            this.camera.§5!'§(param1);
         }
      }
   }
}
