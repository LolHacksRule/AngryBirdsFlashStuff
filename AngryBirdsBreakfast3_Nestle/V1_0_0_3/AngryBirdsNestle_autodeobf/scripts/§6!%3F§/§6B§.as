package §6!?§
{
   import §0!Y§.§#"5§;
   import §^z§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6B§
   {
       
      
      private var §^!T§:Texture;
      
      private var §",§:BitmapData;
      
      private var §^%§:Rectangle;
      
      private var §9b§:BitmapData;
      
      private var §=i§:int;
      
      private var §6!A§:int;
      
      private var §>s§:Number = 1.0;
      
      public function §6B§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§^!T§ = param1;
         this.§",§ = param2;
         this.§^%§ = param3.clone();
         this.§=i§ = param4;
         this.§6!A§ = param5;
         this.§>s§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§>s§;
      }
      
      public function get texture() : Texture
      {
         return this.§^!T§;
      }
      
      public function get pivotX() : int
      {
         return this.§=i§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§6!A§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§^!T§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§^!T§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§9b§)
         {
            this.§9b§ = new BitmapData(this.§^%§.width,this.§^%§.height);
            this.§9b§.copyPixels(this.§",§,this.§^%§,new Point(0,0));
         }
         return this.§9b§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§=i§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§6!A§ = param1;
      }
      
      public function §"!@§(param1:Boolean = false, param2:Boolean = true) : §#"5§
      {
         var _loc3_:§#"5§ = new §#"5§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§^!T§)
         {
            this.§^!T§.dispose();
            this.§^!T§ = null;
         }
         if(this.§",§)
         {
            this.§",§.dispose();
            this.§",§ = null;
         }
      }
   }
}
