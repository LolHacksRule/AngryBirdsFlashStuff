package §_-5p§
{
   import §_-Dk§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-4§
   {
       
      
      private var §_-AF§:Texture;
      
      private var §_-A5§:BitmapData;
      
      private var §_-25§:Rectangle;
      
      private var §_-4I§:BitmapData;
      
      private var §_-FW§:int;
      
      private var §in§:int;
      
      private var §_-7Q§:Number = 1.0;
      
      public function §_-4§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§_-AF§ = param1;
         this.§_-A5§ = param2;
         this.§_-25§ = param3.clone();
         this.§_-FW§ = param4;
         this.§in§ = param5;
         this.§_-7Q§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§_-7Q§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-AF§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-FW§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§in§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§_-AF§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§_-AF§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-4I§)
         {
            this.§_-4I§ = new BitmapData(this.§_-25§.width,this.§_-25§.height);
            this.§_-4I§.copyPixels(this.§_-A5§,this.§_-25§,new Point(0,0));
         }
         return this.§_-4I§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-FW§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§in§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-AF§)
         {
            this.§_-AF§.dispose();
            this.§_-AF§ = null;
         }
         if(this.§_-A5§)
         {
            this.§_-A5§.dispose();
            this.§_-A5§ = null;
         }
      }
   }
}
