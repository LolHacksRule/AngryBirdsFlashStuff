package §9K§
{
   import §0! §.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,z§
   {
       
      
      private var §;p§:Texture;
      
      private var §<j§:BitmapData;
      
      private var §,!8§:Rectangle;
      
      private var §#!B§:BitmapData;
      
      private var §!!J§:int;
      
      private var §[R§:int;
      
      private var §-_§:Number = 1.0;
      
      public function §,z§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§;p§ = param1;
         this.§<j§ = param2;
         this.§,!8§ = param3.clone();
         this.§!!J§ = param4;
         this.§[R§ = param5;
         this.§-_§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function get texture() : Texture
      {
         return this.§;p§;
      }
      
      public function get pivotX() : int
      {
         return this.§!!J§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§[R§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§;p§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§;p§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§#!B§)
         {
            this.§#!B§ = new BitmapData(this.§,!8§.width,this.§,!8§.height);
            this.§#!B§.copyPixels(this.§<j§,this.§,!8§,new Point(0,0));
         }
         return this.§#!B§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§!!J§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§[R§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§;p§)
         {
            this.§;p§.dispose();
            this.§;p§ = null;
         }
         if(this.§<j§)
         {
            this.§<j§.dispose();
            this.§<j§ = null;
         }
      }
   }
}
