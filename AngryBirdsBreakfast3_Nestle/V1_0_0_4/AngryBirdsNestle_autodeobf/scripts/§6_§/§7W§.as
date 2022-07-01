package §6_§
{
   import §-!f§.§-!,§;
   import §7"+§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7W§
   {
       
      
      private var §4r§:Texture;
      
      private var § !§:BitmapData;
      
      private var §8!r§:Rectangle;
      
      private var §"M§:BitmapData;
      
      private var §1e§:int;
      
      private var §,r§:int;
      
      private var §79§:Number = 1.0;
      
      public function §7W§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§4r§ = param1;
         this.§ !§ = param2;
         this.§8!r§ = param3.clone();
         this.§1e§ = param4;
         this.§,r§ = param5;
         this.§79§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§79§;
      }
      
      public function get texture() : Texture
      {
         return this.§4r§;
      }
      
      public function get pivotX() : int
      {
         return this.§1e§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§,r§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§4r§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§4r§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§"M§)
         {
            this.§"M§ = new BitmapData(this.§8!r§.width,this.§8!r§.height);
            this.§"M§.copyPixels(this.§ !§,this.§8!r§,new Point(0,0));
         }
         return this.§"M§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1e§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§,r§ = param1;
      }
      
      public function §;#§(param1:Boolean = false, param2:Boolean = true) : §-!,§
      {
         var _loc3_:§-!,§ = new §-!,§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§4r§)
         {
            this.§4r§.dispose();
            this.§4r§ = null;
         }
         if(this.§ !§)
         {
            this.§ !§.dispose();
            this.§ !§ = null;
         }
      }
   }
}
