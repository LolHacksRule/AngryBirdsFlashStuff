package §_-PC§
{
   import §_-DQ§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-qH§
   {
       
      
      private var §_-Ix§:Texture;
      
      private var §_-Nl§:BitmapData;
      
      private var §_-iT§:Rectangle;
      
      private var §_-pj§:BitmapData;
      
      private var §_-eo§:int;
      
      private var §_-TO§:int;
      
      public function §_-qH§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         super();
         this.§_-Ix§ = param1;
         this.§_-Nl§ = param2;
         this.§_-iT§ = param3.clone();
         this.§_-eo§ = param4;
         this.§_-TO§ = param5;
      }
      
      public function get texture() : Texture
      {
         return this.§_-Ix§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-eo§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-TO§;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-pj§)
         {
            this.§_-pj§ = new BitmapData(this.§_-iT§.width,this.§_-iT§.height);
            this.§_-pj§.copyPixels(this.§_-Nl§,this.§_-iT§,new Point(0,0));
         }
         return this.§_-pj§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-eo§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-TO§ = param1;
      }
   }
}
