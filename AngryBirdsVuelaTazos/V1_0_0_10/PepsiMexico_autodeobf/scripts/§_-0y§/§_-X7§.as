package §_-0y§
{
   import §_-KS§.§_-ia§;
   import §_-XZ§.§_-DX§;
   import §_-jY§.Texture;
   import flash.display.BitmapData;
   
   public class §_-X7§ extends §_-DX§
   {
       
      
      private var §_-8N§:Texture;
      
      private var §_-1L§:§_-ia§;
      
      public function §_-X7§(param1:XML, param2:BitmapData, param3:§_-ia§)
      {
         this.§_-1L§ = param3;
         this.§_-8N§ = this.§_-1L§.§_-2V§(param2);
         super(param1,this.§_-8N§);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-1L§.§_-Tx§(this.§_-8N§);
         this.§_-8N§ = null;
      }
   }
}
