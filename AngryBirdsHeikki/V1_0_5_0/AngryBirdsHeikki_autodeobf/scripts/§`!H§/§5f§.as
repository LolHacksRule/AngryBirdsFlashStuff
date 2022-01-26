package §`!H§
{
   import § !9§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5f§
   {
       
      
      private var §4! §:Texture;
      
      private var §<!0§:BitmapData;
      
      private var §&k§:Rectangle;
      
      private var §<4§:BitmapData;
      
      private var §^!V§:int;
      
      private var §],§:int;
      
      private var §!!4§:Number = 1.0;
      
      public function §5f§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§4! § = param1;
         this.§<!0§ = param2;
         this.§&k§ = param3.clone();
         this.§^!V§ = param4;
         this.§],§ = param5;
         this.§!!4§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§!!4§;
      }
      
      public function get texture() : Texture
      {
         return this.§4! §;
      }
      
      public function get pivotX() : int
      {
         return this.§^!V§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§],§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§4! §.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§4! §.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§<4§)
         {
            this.§<4§ = new BitmapData(this.§&k§.width,this.§&k§.height);
            this.§<4§.copyPixels(this.§<!0§,this.§&k§,new Point(0,0));
         }
         return this.§<4§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§^!V§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§],§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4! §)
         {
            this.§4! §.dispose();
            this.§4! § = null;
         }
         if(this.§<!0§)
         {
            this.§<!0§.dispose();
            this.§<!0§ = null;
         }
      }
   }
}
