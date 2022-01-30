package §-!b§
{
   import §,!q§.§+Q§;
   import §?V§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!T§
   {
       
      
      private var §3",§:Texture;
      
      private var §8S§:BitmapData;
      
      private var §#!9§:Rectangle;
      
      private var §<!Z§:BitmapData;
      
      private var §&!#§:int;
      
      private var §?3§:int;
      
      private var §?!C§:Number = 1.0;
      
      public function §=!T§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§3",§ = param1;
         this.§8S§ = param2;
         this.§#!9§ = param3.clone();
         this.§&!#§ = param4;
         this.§?3§ = param5;
         this.§?!C§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function get texture() : Texture
      {
         return this.§3",§;
      }
      
      public function get pivotX() : int
      {
         return this.§&!#§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§?3§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§3",§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§3",§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§<!Z§)
         {
            this.§<!Z§ = new BitmapData(this.§#!9§.width,this.§#!9§.height);
            this.§<!Z§.copyPixels(this.§8S§,this.§#!9§,new Point(0,0));
         }
         return this.§<!Z§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§&!#§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§?3§ = param1;
      }
      
      public function § !a§(param1:Boolean = false, param2:Boolean = true) : §+Q§
      {
         var _loc3_:§+Q§ = new §+Q§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§3",§)
         {
            this.§3",§.dispose();
            this.§3",§ = null;
         }
         if(this.§8S§)
         {
            this.§8S§.dispose();
            this.§8S§ = null;
         }
      }
   }
}
