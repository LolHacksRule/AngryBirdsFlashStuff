package §_-ez§
{
   import §_-Bp§.§_-5N§;
   import §_-Q2§.Texture;
   import §_-s7§.§_-6r§;
   import flash.display.BitmapData;
   
   public class §_-2f§ extends §_-6r§
   {
       
      
      private var §_-fe§:Texture;
      
      private var §_-SL§:§_-5N§;
      
      public function §_-2f§(param1:XML, param2:BitmapData, param3:§_-5N§)
      {
         this.§_-SL§ = param3;
         this.§_-fe§ = this.§_-SL§.§_-pE§(param2);
         super(param1,this.§_-fe§);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-SL§.§finally§(this.§_-fe§);
         this.§_-fe§ = null;
      }
   }
}
