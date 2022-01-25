package §0!_§
{
   import §6s§.Texture;
   import §`!B§.§ l§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §19§
   {
       
      
      private var §^V§:Texture;
      
      private var §true §:BitmapData;
      
      private var §%C§:Rectangle;
      
      private var §%"§:BitmapData;
      
      private var §0!x§:int;
      
      private var §7L§:int;
      
      private var §0y§:Number = 1.0;
      
      public function §19§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§^V§ = param1;
         this.§true § = param2;
         this.§%C§ = param3.clone();
         this.§0!x§ = param4;
         this.§7L§ = param5;
         this.§0y§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§0y§;
      }
      
      public function get texture() : Texture
      {
         return this.§^V§;
      }
      
      public function get pivotX() : int
      {
         return this.§0!x§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§7L§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§^V§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§^V§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§%"§)
         {
            this.§%"§ = new BitmapData(this.§%C§.width,this.§%C§.height);
            this.§%"§.copyPixels(this.§true §,this.§%C§,new Point(0,0));
         }
         return this.§%"§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§0!x§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§7L§ = param1;
      }
      
      public function §,!G§(param1:Boolean = false, param2:Boolean = true) : § l§
      {
         var _loc3_:§ l§ = new § l§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§^V§)
         {
            this.§^V§.dispose();
            this.§^V§ = null;
         }
         if(this.§true §)
         {
            this.§true §.dispose();
            this.§true § = null;
         }
      }
   }
}
