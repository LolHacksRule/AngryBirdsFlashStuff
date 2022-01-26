package §_-Bp§
{
   import §_-Q2§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-9c§
   {
       
      
      private var §_-QH§:Texture;
      
      private var §_-sg§:BitmapData;
      
      private var §_-8U§:Rectangle;
      
      private var §_-5F§:BitmapData;
      
      private var §_-oy§:int;
      
      private var §_-Pk§:int;
      
      public function §_-9c§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         super();
         this.§_-QH§ = param1;
         this.§_-sg§ = param2;
         this.§_-8U§ = param3.clone();
         this.§_-oy§ = param4;
         this.§_-Pk§ = param5;
      }
      
      public function get texture() : Texture
      {
         return this.§_-QH§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-oy§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-Pk§;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-5F§)
         {
            this.§_-5F§ = new BitmapData(this.§_-8U§.width,this.§_-8U§.height);
            this.§_-5F§.copyPixels(this.§_-sg§,this.§_-8U§,new Point(0,0));
         }
         return this.§_-5F§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-oy§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-Pk§ = param1;
      }
   }
}
