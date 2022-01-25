package §48§
{
   import §6!4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!Z§
   {
       
      
      private var §38§:Texture;
      
      private var §;M§:BitmapData;
      
      private var §;;§:Rectangle;
      
      private var §;K§:BitmapData;
      
      private var §4!@§:int;
      
      private var §0U§:int;
      
      private var § !@§:Number = 1.0;
      
      public function §6!Z§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§38§ = param1;
         this.§;M§ = param2;
         this.§;;§ = param3.clone();
         this.§4!@§ = param4;
         this.§0U§ = param5;
         this.§ !@§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§ !@§;
      }
      
      public function get texture() : Texture
      {
         return this.§38§;
      }
      
      public function get pivotX() : int
      {
         return this.§4!@§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§0U§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§38§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§38§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§;K§)
         {
            this.§;K§ = new BitmapData(this.§;;§.width,this.§;;§.height);
            this.§;K§.copyPixels(this.§;M§,this.§;;§,new Point(0,0));
         }
         return this.§;K§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§4!@§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§0U§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§38§)
         {
            this.§38§.dispose();
            this.§38§ = null;
         }
         if(this.§;M§)
         {
            this.§;M§.dispose();
            this.§;M§ = null;
         }
      }
   }
}
