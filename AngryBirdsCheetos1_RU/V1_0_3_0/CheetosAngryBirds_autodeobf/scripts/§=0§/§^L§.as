package §=0§
{
   import §+a§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^L§
   {
       
      
      private var §`>§:Texture;
      
      private var §--§:BitmapData;
      
      private var §`Y§:Rectangle;
      
      private var §3N§:BitmapData;
      
      private var §=3§:int;
      
      private var §`!G§:int;
      
      private var §;!X§:Number = 1.0;
      
      public function §^L§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§`>§ = param1;
         this.§--§ = param2;
         this.§`Y§ = param3.clone();
         this.§=3§ = param4;
         this.§`!G§ = param5;
         this.§;!X§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§;!X§;
      }
      
      public function get texture() : Texture
      {
         return this.§`>§;
      }
      
      public function get pivotX() : int
      {
         return this.§=3§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§`!G§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§`>§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§`>§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§3N§)
         {
            this.§3N§ = new BitmapData(this.§`Y§.width,this.§`Y§.height);
            this.§3N§.copyPixels(this.§--§,this.§`Y§,new Point(0,0));
         }
         return this.§3N§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§=3§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§`!G§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`>§)
         {
            this.§`>§.dispose();
            this.§`>§ = null;
         }
         if(this.§--§)
         {
            this.§--§.dispose();
            this.§--§ = null;
         }
      }
   }
}
