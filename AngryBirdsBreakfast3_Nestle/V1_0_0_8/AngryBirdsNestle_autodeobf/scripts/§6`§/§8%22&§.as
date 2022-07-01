package §6`§
{
   import §&!;§.Texture;
   import §-![§.§3!i§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8"&§
   {
       
      
      private var §0!0§:Texture;
      
      private var §2!L§:BitmapData;
      
      private var §%!x§:Rectangle;
      
      private var §="-§:BitmapData;
      
      private var §'<§:int;
      
      private var §1!Q§:int;
      
      private var §1+§:Number = 1.0;
      
      public function §8"&§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§0!0§ = param1;
         this.§2!L§ = param2;
         this.§%!x§ = param3.clone();
         this.§'<§ = param4;
         this.§1!Q§ = param5;
         this.§1+§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§1+§;
      }
      
      public function get texture() : Texture
      {
         return this.§0!0§;
      }
      
      public function get pivotX() : int
      {
         return this.§'<§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§1!Q§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§0!0§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§0!0§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§="-§)
         {
            this.§="-§ = new BitmapData(this.§%!x§.width,this.§%!x§.height);
            this.§="-§.copyPixels(this.§2!L§,this.§%!x§,new Point(0,0));
         }
         return this.§="-§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§'<§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§1!Q§ = param1;
      }
      
      public function §,!g§(param1:Boolean = false, param2:Boolean = true) : §3!i§
      {
         var _loc3_:§3!i§ = new §3!i§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§0!0§)
         {
            this.§0!0§.dispose();
            this.§0!0§ = null;
         }
         if(this.§2!L§)
         {
            this.§2!L§.dispose();
            this.§2!L§ = null;
         }
      }
   }
}
