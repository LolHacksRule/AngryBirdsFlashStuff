package § ^§
{
   import §2b§.§8!m§;
   import §7!g§.§?!i§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §0";§ implements §-!"§
   {
       
      
      private var §`5§:§0c§;
      
      public function §0";§(param1:§0c§)
      {
         super();
         this.§`5§ = param1;
      }
      
      public static function §&!<§(param1:Boolean) : void
      {
         §8!m§.§&!<§(param1);
      }
      
      public function initialize() : void
      {
         this.§`5§.§!A§.addEventListener(§?!i§.§0E§,this.§-J§);
      }
      
      protected function §-J§(param1:Event) : void
      {
         if(this.§`5§.§!A§.§0!O§())
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
         this.camera.§,!t§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §8!m§
      {
         return this.§`5§.§6%§.camera as §8!m§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
      
      public function §4",§(param1:Rectangle) : void
      {
         if(param1 != null)
         {
            this.camera.§4",§(param1);
         }
      }
   }
}
