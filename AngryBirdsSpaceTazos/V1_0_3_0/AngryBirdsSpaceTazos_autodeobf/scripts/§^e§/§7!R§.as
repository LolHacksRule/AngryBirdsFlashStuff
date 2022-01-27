package §^e§
{
   import §'@§.Texture;
   import §4"@§.§?!0§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!R§
   {
       
      
      private var §^!N§:Texture;
      
      private var §@!'§:BitmapData;
      
      private var §2!1§:Rectangle;
      
      private var §0"#§:BitmapData;
      
      private var §9!P§:int;
      
      private var §<$§:int;
      
      private var §1!k§:Number = 1.0;
      
      public function §7!R§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§^!N§ = param1;
         this.§@!'§ = param2;
         this.§2!1§ = param3.clone();
         this.§9!P§ = param4;
         this.§<$§ = param5;
         this.§1!k§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§1!k§;
      }
      
      public function get texture() : Texture
      {
         return this.§^!N§;
      }
      
      public function get pivotX() : int
      {
         return this.§9!P§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§<$§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§^!N§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§^!N§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§0"#§)
         {
            this.§0"#§ = new BitmapData(this.§2!1§.width,this.§2!1§.height);
            this.§0"#§.copyPixels(this.§@!'§,this.§2!1§,new Point(0,0));
         }
         return this.§0"#§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§9!P§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§<$§ = param1;
      }
      
      public function §`!L§(param1:Boolean = false, param2:Boolean = true) : §?!0§
      {
         var _loc3_:§?!0§ = new §?!0§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§^!N§)
         {
            this.§^!N§.dispose();
            this.§^!N§ = null;
         }
         if(this.§@!'§)
         {
            this.§@!'§.dispose();
            this.§@!'§ = null;
         }
      }
   }
}
