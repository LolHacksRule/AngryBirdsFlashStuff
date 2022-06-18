package §=!K§
{
   import §"X§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@p§
   {
       
      
      private var §`!G§:Texture;
      
      private var §[V§:BitmapData;
      
      private var §=1§:Rectangle;
      
      private var §4!C§:BitmapData;
      
      private var §9!9§:int;
      
      private var §]"§:int;
      
      private var § W§:Number = 1.0;
      
      public function §@p§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§`!G§ = param1;
         this.§[V§ = param2;
         this.§=1§ = param3.clone();
         this.§9!9§ = param4;
         this.§]"§ = param5;
         this.§ W§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§ W§;
      }
      
      public function get texture() : Texture
      {
         return this.§`!G§;
      }
      
      public function get pivotX() : int
      {
         return this.§9!9§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§]"§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§`!G§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§`!G§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§4!C§)
         {
            this.§4!C§ = new BitmapData(this.§=1§.width,this.§=1§.height);
            this.§4!C§.copyPixels(this.§[V§,this.§=1§,new Point(0,0));
         }
         return this.§4!C§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§9!9§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§]"§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`!G§)
         {
            this.§`!G§.dispose();
            this.§`!G§ = null;
         }
         if(this.§[V§)
         {
            this.§[V§.dispose();
            this.§[V§ = null;
         }
      }
   }
}
