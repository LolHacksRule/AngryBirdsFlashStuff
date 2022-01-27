package §!!k§
{
   import §&"s§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §use§.§,!u§;
   
   public class §'!j§
   {
       
      
      private var §'"C§:Texture;
      
      private var §4"0§:BitmapData;
      
      private var §^f§:Rectangle;
      
      private var §?h§:BitmapData;
      
      private var §["2§:int;
      
      private var §?!_§:int;
      
      private var §#"5§:Number = 1.0;
      
      public function §'!j§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§'"C§ = param1;
         this.§4"0§ = param2;
         this.§^f§ = param3.clone();
         this.§["2§ = param4;
         this.§?!_§ = param5;
         this.§#"5§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§#"5§;
      }
      
      public function get texture() : Texture
      {
         return this.§'"C§;
      }
      
      public function get pivotX() : int
      {
         return this.§["2§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§?!_§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§'"C§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§'"C§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§?h§)
         {
            this.§?h§ = new BitmapData(this.§^f§.width,this.§^f§.height);
            this.§?h§.copyPixels(this.§4"0§,this.§^f§,new Point(0,0));
         }
         return this.§?h§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§["2§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§?!_§ = param1;
      }
      
      public function §6z§(param1:Boolean = false, param2:Boolean = true) : §,!u§
      {
         var _loc3_:§,!u§ = new §,!u§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§'"C§)
         {
            this.§'"C§.dispose();
            this.§'"C§ = null;
         }
         if(this.§4"0§)
         {
            this.§4"0§.dispose();
            this.§4"0§ = null;
         }
      }
   }
}
