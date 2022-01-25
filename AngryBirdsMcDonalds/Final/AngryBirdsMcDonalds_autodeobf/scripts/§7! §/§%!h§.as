package §7! §
{
   import §&!9§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%!h§
   {
       
      
      private var §#d§:Texture;
      
      private var §[!@§:BitmapData;
      
      private var §9'§:Rectangle;
      
      private var §^!a§:BitmapData;
      
      private var §@;§:int;
      
      private var §2u§:int;
      
      private var §9n§:Number = 1.0;
      
      public function §%!h§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§#d§ = param1;
         this.§[!@§ = param2;
         this.§9'§ = param3.clone();
         this.§@;§ = param4;
         this.§2u§ = param5;
         this.§9n§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§9n§;
      }
      
      public function get texture() : Texture
      {
         return this.§#d§;
      }
      
      public function get pivotX() : int
      {
         return this.§@;§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§2u§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§#d§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§#d§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§^!a§)
         {
            this.§^!a§ = new BitmapData(this.§9'§.width,this.§9'§.height);
            this.§^!a§.copyPixels(this.§[!@§,this.§9'§,new Point(0,0));
         }
         return this.§^!a§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§@;§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§2u§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§#d§)
         {
            this.§#d§.dispose();
            this.§#d§ = null;
         }
         if(this.§[!@§)
         {
            this.§[!@§.dispose();
            this.§[!@§ = null;
         }
      }
   }
}
