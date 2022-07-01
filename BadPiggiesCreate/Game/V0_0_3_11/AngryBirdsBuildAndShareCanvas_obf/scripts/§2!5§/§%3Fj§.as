package §2!5§
{
   import §1"3§.§6!W§;
   import §;!§.§8V§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §?j§ implements §4!]§
   {
       
      
      private var §!^§:§0!X§;
      
      public function §?j§(param1:§0!X§)
      {
         super();
         this.§!^§ = param1;
      }
      
      public static function §?!G§(param1:Boolean) : void
      {
         §6!W§.§?!G§(param1);
      }
      
      public function initialize() : void
      {
         this.§!^§.§!e§.addEventListener(§8V§.§8p§,this.§1@§);
      }
      
      protected function §1@§(param1:Event) : void
      {
         if(this.§!^§.§!e§.§!h§())
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
         this.camera.§@!W§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §6!W§
      {
         return this.§!^§.§@s§.camera as §6!W§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
      
      public function §2"$§(param1:Rectangle) : void
      {
         if(param1 != null)
         {
            this.camera.§2"$§(param1);
         }
      }
   }
}
