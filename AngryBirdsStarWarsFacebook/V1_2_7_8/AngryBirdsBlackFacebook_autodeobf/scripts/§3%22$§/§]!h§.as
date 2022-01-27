package §3"$§
{
   import §1"s§.§-i§;
   import §<"L§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!h§
   {
       
      
      private var §!!Z§:Texture;
      
      private var §8!Q§:BitmapData;
      
      private var §&!!§:Rectangle;
      
      private var §4"m§:BitmapData;
      
      private var §?d§:int;
      
      private var §@!p§:int;
      
      private var §"r§:Number = 1.0;
      
      public function §]!h§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§!!Z§ = param1;
         this.§8!Q§ = param2;
         this.§&!!§ = param3.clone();
         this.§?d§ = param4;
         this.§@!p§ = param5;
         this.§"r§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§"r§;
      }
      
      public function get texture() : Texture
      {
         return this.§!!Z§;
      }
      
      public function get pivotX() : int
      {
         return this.§?d§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§@!p§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§!!Z§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§!!Z§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§4"m§)
         {
            this.§4"m§ = new BitmapData(this.§&!!§.width,this.§&!!§.height);
            this.§4"m§.copyPixels(this.§8!Q§,this.§&!!§,new Point(0,0));
         }
         return this.§4"m§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§?d§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§@!p§ = param1;
      }
      
      public function §]"9§(param1:Boolean = false, param2:Boolean = true) : §-i§
      {
         var _loc3_:§-i§ = new §-i§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§!!Z§)
         {
            this.§!!Z§.dispose();
            this.§!!Z§ = null;
         }
         if(this.§8!Q§)
         {
            this.§8!Q§.dispose();
            this.§8!Q§ = null;
         }
      }
   }
}
