package §_-3b§
{
   import §_-Q0§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Lf§
   {
       
      
      private var §_-C6§:Texture;
      
      private var §_-Xa§:BitmapData;
      
      private var §_-Yz§:Rectangle;
      
      private var §_-Xj§:BitmapData;
      
      private var §_-0S§:int;
      
      private var §_-DJ§:int;
      
      public function §_-Lf§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         super();
         this.§_-C6§ = param1;
         this.§_-Xa§ = param2;
         this.§_-Yz§ = param3.clone();
         this.§_-0S§ = param4;
         this.§_-DJ§ = param5;
      }
      
      public function get texture() : Texture
      {
         return this.§_-C6§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-0S§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-DJ§;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-Xj§)
         {
            this.§_-Xj§ = new BitmapData(this.§_-Yz§.width,this.§_-Yz§.height);
            this.§_-Xj§.copyPixels(this.§_-Xa§,this.§_-Yz§,new Point(0,0));
         }
         return this.§_-Xj§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-0S§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-DJ§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-C6§)
         {
            this.§_-C6§.dispose();
            this.§_-C6§ = null;
         }
         if(this.§_-Xa§)
         {
            this.§_-Xa§.dispose();
            this.§_-Xa§ = null;
         }
      }
   }
}
