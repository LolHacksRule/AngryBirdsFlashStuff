package §"a§
{
   import §5@§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^>§
   {
       
      
      private var §+Z§:Texture;
      
      private var §!,§:BitmapData;
      
      private var §4L§:Rectangle;
      
      private var §#G§:BitmapData;
      
      private var §?#§:int;
      
      private var §!Y§:int;
      
      private var §&p§:Number = 1.0;
      
      public function §^>§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§+Z§ = param1;
         this.§!,§ = param2;
         this.§4L§ = param3.clone();
         this.§?#§ = param4;
         this.§!Y§ = param5;
         this.§&p§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§&p§;
      }
      
      public function get texture() : Texture
      {
         return this.§+Z§;
      }
      
      public function get pivotX() : int
      {
         return this.§?#§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§!Y§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§+Z§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§+Z§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§#G§)
         {
            this.§#G§ = new BitmapData(this.§4L§.width,this.§4L§.height);
            this.§#G§.copyPixels(this.§!,§,this.§4L§,new Point(0,0));
         }
         return this.§#G§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§?#§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§!Y§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+Z§)
         {
            this.§+Z§.dispose();
            this.§+Z§ = null;
         }
         if(this.§!,§)
         {
            this.§!,§.dispose();
            this.§!,§ = null;
         }
      }
   }
}
