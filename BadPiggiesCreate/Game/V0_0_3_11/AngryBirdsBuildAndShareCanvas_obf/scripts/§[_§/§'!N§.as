package §[_§
{
   import §^i§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!N§
   {
       
      
      private var §2S§:Texture;
      
      private var §,"#§:BitmapData;
      
      private var §4!4§:Rectangle;
      
      private var §9N§:BitmapData;
      
      private var §3" §:int;
      
      private var §"!Z§:int;
      
      private var §"!f§:Number = 1.0;
      
      public function §'!N§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§2S§ = param1;
         this.§,"#§ = param2;
         this.§4!4§ = param3.clone();
         this.§3" § = param4;
         this.§"!Z§ = param5;
         this.§"!f§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§"!f§;
      }
      
      public function get texture() : Texture
      {
         return this.§2S§;
      }
      
      public function get pivotX() : int
      {
         return this.§3" § * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§"!Z§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§2S§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§2S§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§9N§)
         {
            this.§9N§ = new BitmapData(this.§4!4§.width,this.§4!4§.height);
            this.§9N§.copyPixels(this.§,"#§,this.§4!4§,new Point(0,0));
         }
         return this.§9N§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§3" § = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§"!Z§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§2S§)
         {
            this.§2S§.dispose();
            this.§2S§ = null;
         }
         if(this.§,"#§)
         {
            this.§,"#§.dispose();
            this.§,"#§ = null;
         }
      }
   }
}
