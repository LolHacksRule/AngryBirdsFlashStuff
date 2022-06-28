package §,6§
{
   import §!!9§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5z§
   {
       
      
      private var §,!Q§:Texture;
      
      private var §5!r§:BitmapData;
      
      private var §<D§:Rectangle;
      
      private var §^b§:BitmapData;
      
      private var §if §:int;
      
      private var §2w§:int;
      
      private var §!+§:Number = 1.0;
      
      public function §5z§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§,!Q§ = param1;
         this.§5!r§ = param2;
         this.§<D§ = param3.clone();
         this.§if § = param4;
         this.§2w§ = param5;
         this.§!+§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§!+§;
      }
      
      public function get texture() : Texture
      {
         return this.§,!Q§;
      }
      
      public function get pivotX() : int
      {
         return this.§if § * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§2w§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§,!Q§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§,!Q§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§^b§)
         {
            this.§^b§ = new BitmapData(this.§<D§.width,this.§<D§.height);
            this.§^b§.copyPixels(this.§5!r§,this.§<D§,new Point(0,0));
         }
         return this.§^b§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§if § = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§2w§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§,!Q§)
         {
            this.§,!Q§.dispose();
            this.§,!Q§ = null;
         }
         if(this.§5!r§)
         {
            this.§5!r§.dispose();
            this.§5!r§ = null;
         }
      }
   }
}
