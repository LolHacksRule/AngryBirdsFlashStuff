package §_-8d§
{
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-vz§
   {
       
      
      private var §_-7u§:Texture;
      
      private var §_-B0§:BitmapData;
      
      private var §_-M0§:Rectangle;
      
      private var §_-YJ§:BitmapData;
      
      private var §_-7r§:int;
      
      private var §_-yG§:int;
      
      private var §_-XE§:Number = 1.0;
      
      public function §_-vz§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§_-7u§ = param1;
         this.§_-B0§ = param2;
         this.§_-M0§ = param3.clone();
         this.§_-7r§ = param4;
         this.§_-yG§ = param5;
         this.§_-XE§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-7u§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-7r§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§_-yG§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§_-7u§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§_-7u§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-YJ§)
         {
            this.§_-YJ§ = new BitmapData(this.§_-M0§.width,this.§_-M0§.height);
            this.§_-YJ§.copyPixels(this.§_-B0§,this.§_-M0§,new Point(0,0));
         }
         return this.§_-YJ§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-7r§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-yG§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-7u§)
         {
            this.§_-7u§.dispose();
            this.§_-7u§ = null;
         }
         if(this.§_-B0§)
         {
            this.§_-B0§.dispose();
            this.§_-B0§ = null;
         }
      }
   }
}
