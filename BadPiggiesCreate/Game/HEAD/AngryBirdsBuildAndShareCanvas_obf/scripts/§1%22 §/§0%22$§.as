package §1" §
{
   import §"_§.§!"8§;
   import §,!g§.§>7§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §0"$§ implements §4!x§
   {
       
      
      private var §9J§:§#!j§;
      
      public function §0"$§(param1:§#!j§)
      {
         super();
         this.§9J§ = param1;
      }
      
      public static function §];§(param1:Boolean) : void
      {
         §>7§.§];§(param1);
      }
      
      public function initialize() : void
      {
         this.§9J§.§<!_§.addEventListener(§!"8§.§'!K§,this.§=!z§);
      }
      
      protected function §=!z§(param1:Event) : void
      {
         if(this.§9J§.§<!_§.§5!<§())
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
         this.camera.§=P§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §>7§
      {
         return this.§9J§.§0"!§.camera as §>7§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
      
      public function §?!<§(param1:Rectangle) : void
      {
         if(param1 != null)
         {
            this.camera.§?!<§(param1);
         }
      }
   }
}
