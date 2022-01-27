package § !N§
{
   import §0l§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!§
   {
       
      
      private var §+3§:Texture;
      
      private var §&9§:BitmapData;
      
      private var §[! §:Rectangle;
      
      private var §>-§:BitmapData;
      
      private var §!p§:int;
      
      private var §"b§:int;
      
      private var §&;§:Number = 1.0;
      
      public function §6!§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§+3§ = param1;
         this.§&9§ = param2;
         this.§[! § = param3.clone();
         this.§!p§ = param4;
         this.§"b§ = param5;
         this.§&;§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§&;§;
      }
      
      public function get texture() : Texture
      {
         return this.§+3§;
      }
      
      public function get pivotX() : int
      {
         return this.§!p§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§"b§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§+3§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§+3§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§>-§)
         {
            this.§>-§ = new BitmapData(this.§[! §.width,this.§[! §.height);
            this.§>-§.copyPixels(this.§&9§,this.§[! §,new Point(0,0));
         }
         return this.§>-§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§!p§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§"b§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+3§)
         {
            this.§+3§.dispose();
            this.§+3§ = null;
         }
         if(this.§&9§)
         {
            this.§&9§.dispose();
            this.§&9§ = null;
         }
      }
   }
}
