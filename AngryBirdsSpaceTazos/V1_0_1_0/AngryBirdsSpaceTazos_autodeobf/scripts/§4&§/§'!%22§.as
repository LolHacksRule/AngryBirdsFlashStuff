package §4&§
{
   import §7!8§.§`y§;
   import §`!#§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!"§
   {
       
      
      private var §2-§:Texture;
      
      private var §%!C§:BitmapData;
      
      private var §8y§:Rectangle;
      
      private var §!Q§:BitmapData;
      
      private var §;o§:int;
      
      private var §+!H§:int;
      
      private var §=T§:Number = 1.0;
      
      public function §'!"§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§2-§ = param1;
         this.§%!C§ = param2;
         this.§8y§ = param3.clone();
         this.§;o§ = param4;
         this.§+!H§ = param5;
         this.§=T§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get texture() : Texture
      {
         return this.§2-§;
      }
      
      public function get pivotX() : int
      {
         return this.§;o§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+!H§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§2-§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§2-§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§!Q§)
         {
            this.§!Q§ = new BitmapData(this.§8y§.width,this.§8y§.height);
            this.§!Q§.copyPixels(this.§%!C§,this.§8y§,new Point(0,0));
         }
         return this.§!Q§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§;o§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§+!H§ = param1;
      }
      
      public function §;K§(param1:Boolean = false, param2:Boolean = true) : §`y§
      {
         var _loc3_:§`y§ = new §`y§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§2-§)
         {
            this.§2-§.dispose();
            this.§2-§ = null;
         }
         if(this.§%!C§)
         {
            this.§%!C§.dispose();
            this.§%!C§ = null;
         }
      }
   }
}
