package §_-rp§
{
   import §_-1P§.§_-3p§;
   import §_-S4§.Texture;
   import §_-xJ§.§_-VA§;
   import flash.display.BitmapData;
   
   public class §_-6v§ extends §_-VA§
   {
       
      
      private var §_-CW§:Texture;
      
      private var §_-2A§:§_-3p§;
      
      public function §_-6v§(param1:XML, param2:BitmapData, param3:§_-3p§)
      {
         this.§_-2A§ = param3;
         this.§_-CW§ = this.§_-2A§.§_-8R§(param2);
         super(param1,this.§_-CW§);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-2A§.§_-8o§(this.§_-CW§);
         this.§_-CW§ = null;
      }
   }
}
