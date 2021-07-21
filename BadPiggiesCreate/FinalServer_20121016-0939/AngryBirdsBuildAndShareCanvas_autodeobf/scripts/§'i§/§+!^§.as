package §'i§
{
   import §62§.§0!t§;
   import §=!#§.§2"-§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §+!^§ implements §8p§
   {
       
      
      private var §6!^§:§'!;§;
      
      public function §+!^§(param1:§'!;§)
      {
         super();
         this.§6!^§ = param1;
      }
      
      public static function §@&§(param1:Boolean) : void
      {
         §2"-§.§@&§(param1);
      }
      
      public function initialize() : void
      {
         this.§6!^§.§+"2§.addEventListener(§0!t§.§<!I§,this.§^!s§);
      }
      
      protected function §^!s§(param1:Event) : void
      {
         if(this.§6!^§.§+"2§.§-W§())
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
         this.camera.§7!G§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §2"-§
      {
         return this.§6!^§.§8#§.camera as §2"-§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
      
      public function §!"1§(param1:Rectangle) : void
      {
         if(param1 != null)
         {
            this.camera.§!"1§(param1);
         }
      }
   }
}
