package §_-1P§
{
   import §_-S4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-XN§
   {
       
      
      private var §_-sb§:Texture;
      
      private var §_-WZ§:BitmapData;
      
      private var §_-JE§:Rectangle;
      
      private var §_-BA§:BitmapData;
      
      private var §_-Ho§:int;
      
      private var §_-rf§:int;
      
      public function §_-XN§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         super();
         this.§_-sb§ = param1;
         this.§_-WZ§ = param2;
         this.§_-JE§ = param3.clone();
         this.§_-Ho§ = param4;
         this.§_-rf§ = param5;
      }
      
      public function get texture() : Texture
      {
         return this.§_-sb§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-Ho§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-rf§;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-BA§)
         {
            this.§_-BA§ = new BitmapData(this.§_-JE§.width,this.§_-JE§.height);
            this.§_-BA§.copyPixels(this.§_-WZ§,this.§_-JE§,new Point(0,0));
         }
         return this.§_-BA§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-Ho§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-rf§ = param1;
      }
   }
}
