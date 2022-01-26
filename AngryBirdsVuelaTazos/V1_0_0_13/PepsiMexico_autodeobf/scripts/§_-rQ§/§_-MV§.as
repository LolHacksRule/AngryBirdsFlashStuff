package §_-rQ§
{
   import §_-Cy§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-MV§
   {
       
      
      private var §_-lT§:Texture;
      
      private var §_-NI§:BitmapData;
      
      private var §_-RH§:Rectangle;
      
      private var §_-d4§:BitmapData;
      
      private var §_-u1§:int;
      
      private var §_-su§:int;
      
      public function §_-MV§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         super();
         this.§_-lT§ = param1;
         this.§_-NI§ = param2;
         this.§_-RH§ = param3.clone();
         this.§_-u1§ = param4;
         this.§_-su§ = param5;
      }
      
      public function get texture() : Texture
      {
         return this.§_-lT§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-u1§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-su§;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-d4§)
         {
            this.§_-d4§ = new BitmapData(this.§_-RH§.width,this.§_-RH§.height);
            this.§_-d4§.copyPixels(this.§_-NI§,this.§_-RH§,new Point(0,0));
         }
         return this.§_-d4§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-u1§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-su§ = param1;
      }
   }
}
