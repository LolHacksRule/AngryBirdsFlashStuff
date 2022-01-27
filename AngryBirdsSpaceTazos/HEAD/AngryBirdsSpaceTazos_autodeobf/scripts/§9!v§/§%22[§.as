package §9!v§
{
   import §&!]§.§#[§;
   import §9"@§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"[§
   {
       
      
      private var §3!2§:Texture;
      
      private var §7Q§:BitmapData;
      
      private var §in §:Rectangle;
      
      private var §%!<§:BitmapData;
      
      private var §;;§:int;
      
      private var §6"C§:int;
      
      private var §&!A§:Number = 1.0;
      
      public function §"[§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§3!2§ = param1;
         this.§7Q§ = param2;
         this.§in § = param3.clone();
         this.§;;§ = param4;
         this.§6"C§ = param5;
         this.§&!A§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§&!A§;
      }
      
      public function get texture() : Texture
      {
         return this.§3!2§;
      }
      
      public function get pivotX() : int
      {
         return this.§;;§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§6"C§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§3!2§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§3!2§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§%!<§)
         {
            this.§%!<§ = new BitmapData(this.§in §.width,this.§in §.height);
            this.§%!<§.copyPixels(this.§7Q§,this.§in §,new Point(0,0));
         }
         return this.§%!<§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§;;§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§6"C§ = param1;
      }
      
      public function §,!&§(param1:Boolean = false, param2:Boolean = true) : §#[§
      {
         var _loc3_:§#[§ = new §#[§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§3!2§)
         {
            this.§3!2§.dispose();
            this.§3!2§ = null;
         }
         if(this.§7Q§)
         {
            this.§7Q§.dispose();
            this.§7Q§ = null;
         }
      }
   }
}
