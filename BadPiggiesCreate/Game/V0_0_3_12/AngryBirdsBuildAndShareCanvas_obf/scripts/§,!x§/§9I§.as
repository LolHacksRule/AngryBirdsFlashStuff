package §,!x§
{
   import §-=§.§8"1§;
   import §@r§.§[i§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §9I§ implements §]!'§
   {
       
      
      private var §[",§:§]S§;
      
      public function §9I§(param1:§]S§)
      {
         super();
         this.§[",§ = param1;
      }
      
      public static function §@b§(param1:Boolean) : void
      {
         §[i§.§@b§(param1);
      }
      
      public function initialize() : void
      {
         this.§[",§.§]!c§.addEventListener(§8"1§.§#!t§,this.§=E§);
      }
      
      protected function §=E§(param1:Event) : void
      {
         if(this.§[",§.§]!c§.§false§())
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
         this.camera.§8"0§();
      }
      
      public function activate() : void
      {
      }
      
      public function get camera() : §[i§
      {
         return this.§[",§.§<" §.camera as §[i§;
      }
      
      public function goToCastleView() : void
      {
         this.camera.goToCastleView();
      }
      
      public function goToBirdView() : void
      {
         this.camera.goToBirdView();
      }
      
      public function static(param1:Rectangle) : void
      {
         if(param1 != null)
         {
            this.camera.static(param1);
         }
      }
   }
}
