package §_-FQ§
{
   import §_-CY§.§_-X-§;
   import §_-Cy§.Texture;
   import §_-rQ§.§_-hA§;
   import flash.display.BitmapData;
   
   public class §_-au§ extends §_-X-§
   {
       
      
      private var §_-g8§:Texture;
      
      private var §_-PV§:§_-hA§;
      
      public function §_-au§(param1:XML, param2:BitmapData, param3:§_-hA§)
      {
         this.§_-PV§ = param3;
         this.§_-g8§ = this.§_-PV§.§_-ka§(param2);
         super(param1,this.§_-g8§);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-PV§.§_-18§(this.§_-g8§);
         this.§_-g8§ = null;
      }
   }
}
