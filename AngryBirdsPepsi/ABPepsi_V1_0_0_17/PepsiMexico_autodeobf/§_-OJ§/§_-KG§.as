package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-NT§.§_-7F§;
   import §_-Ra§.§_-2X§;
   import flash.display.BitmapData;
   
   public class §_-KG§ extends §_-7F§
   {
       
      
      private var §_-8A§:Texture;
      
      private var §_-U6§:§_-2X§;
      
      public function §_-KG§(param1:XML, param2:BitmapData, param3:§_-2X§)
      {
         this.§_-U6§ = param3;
         this.§_-8A§ = this.§_-U6§.§_-pz§(param2);
         super(param1,this.§_-8A§);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-U6§.§_-tO§(this.§_-8A§);
         this.§_-8A§ = null;
      }
   }
}
