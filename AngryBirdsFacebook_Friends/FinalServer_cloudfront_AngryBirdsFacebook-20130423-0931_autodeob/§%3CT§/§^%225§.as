package §<T§
{
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^"5§
   {
       
      
      private var §,b§:Texture;
      
      private var §0!§:BitmapData;
      
      private var §["U§:Rectangle;
      
      private var §-!X§:BitmapData;
      
      private var §5'§:int;
      
      private var §>K§:int;
      
      private var §<[§:Number = 1.0;
      
      public function §^"5§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§,b§ = param1;
         this.§0!§ = param2;
         this.§["U§ = param3.clone();
         this.§5'§ = param4;
         this.§>K§ = param5;
         this.§<[§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function get texture() : Texture
      {
         return this.§,b§;
      }
      
      public function get pivotX() : int
      {
         return this.§5'§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>K§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§,b§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§,b§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§-!X§)
         {
            this.§-!X§ = new BitmapData(this.§["U§.width,this.§["U§.height);
            this.§-!X§.copyPixels(this.§0!§,this.§["U§,new Point(0,0));
         }
         return this.§-!X§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§5'§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§>K§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§,b§)
         {
            this.§,b§.dispose();
            this.§,b§ = null;
         }
         if(this.§0!§)
         {
            this.§0!§.dispose();
            this.§0!§ = null;
         }
      }
   }
}
