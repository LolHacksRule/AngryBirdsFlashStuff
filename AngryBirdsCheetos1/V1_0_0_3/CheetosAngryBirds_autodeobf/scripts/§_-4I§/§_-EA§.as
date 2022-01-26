package §_-4I§
{
   import §_-i9§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-EA§
   {
       
      
      private var §_-Mg§:Texture;
      
      private var §_-xE§:BitmapData;
      
      private var §_-SE§:Rectangle;
      
      private var §_-X-§:BitmapData;
      
      private var §_-dI§:int;
      
      private var §_-9j§:int;
      
      private var §_-6L§:Number = 1.0;
      
      public function §_-EA§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§_-Mg§ = param1;
         this.§_-xE§ = param2;
         this.§_-SE§ = param3.clone();
         this.§_-dI§ = param4;
         this.§_-9j§ = param5;
         this.§_-6L§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§_-6L§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-Mg§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-dI§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§_-9j§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§_-Mg§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§_-Mg§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-X-§)
         {
            this.§_-X-§ = new BitmapData(this.§_-SE§.width,this.§_-SE§.height);
            this.§_-X-§.copyPixels(this.§_-xE§,this.§_-SE§,new Point(0,0));
         }
         return this.§_-X-§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-dI§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-9j§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-Mg§)
         {
            this.§_-Mg§.dispose();
            this.§_-Mg§ = null;
         }
         if(this.§_-xE§)
         {
            this.§_-xE§.dispose();
            this.§_-xE§ = null;
         }
      }
   }
}
