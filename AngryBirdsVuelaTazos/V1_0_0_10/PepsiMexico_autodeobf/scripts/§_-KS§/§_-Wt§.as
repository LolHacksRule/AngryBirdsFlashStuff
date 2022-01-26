package §_-KS§
{
   import §_-jY§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Wt§
   {
       
      
      private var §_-OI§:Texture;
      
      private var §_-Y1§:BitmapData;
      
      private var §_-Dz§:Rectangle;
      
      private var §_-3Q§:BitmapData;
      
      private var §_-ui§:int;
      
      private var §_-np§:int;
      
      public function §_-Wt§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         super();
         this.§_-OI§ = param1;
         this.§_-Y1§ = param2;
         this.§_-Dz§ = param3.clone();
         this.§_-ui§ = param4;
         this.§_-np§ = param5;
      }
      
      public function get texture() : Texture
      {
         return this.§_-OI§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-ui§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-np§;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-3Q§)
         {
            this.§_-3Q§ = new BitmapData(this.§_-Dz§.width,this.§_-Dz§.height);
            this.§_-3Q§.copyPixels(this.§_-Y1§,this.§_-Dz§,new Point(0,0));
         }
         return this.§_-3Q§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-ui§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-np§ = param1;
      }
   }
}
