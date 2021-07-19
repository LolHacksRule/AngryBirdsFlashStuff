package §7!F§
{
   import §!!U§.§#"t§;
   import §&v§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!W§
   {
       
      
      private var §^"R§:Texture;
      
      private var §<#_§:BitmapData;
      
      private var § !8§:Rectangle;
      
      private var §!I§:BitmapData;
      
      private var §%!<§:int;
      
      private var §=!C§:int;
      
      private var §8"2§:Number = 1.0;
      
      public function §8!W§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§^"R§ = param1;
         this.§<#_§ = param2;
         this.§ !8§ = param3.clone();
         this.§%!<§ = param4;
         this.§=!C§ = param5;
         this.§8"2§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get texture() : Texture
      {
         return this.§^"R§;
      }
      
      public function get pivotX() : int
      {
         return this.§%!<§;
      }
      
      public function get pivotY() : int
      {
         return this.§=!C§;
      }
      
      public function get width() : Number
      {
         return this.§^"R§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§^"R§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§!I§)
         {
            this.§!I§ = new BitmapData(this.§ !8§.width,this.§ !8§.height);
            this.§!I§.copyPixels(this.§<#_§,this.§ !8§,new Point(0,0));
         }
         return this.§!I§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§%!<§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§=!C§ = param1;
      }
      
      public function § "P§(param1:Boolean = false, param2:Boolean = true) : §#"t§
      {
         var _loc3_:§#"t§ = new §#"t§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§^"R§)
         {
            this.§^"R§.dispose();
            this.§^"R§ = null;
         }
         if(this.§!I§)
         {
            this.§!I§.dispose();
            this.§!I§ = null;
         }
         this.§<#_§ = null;
      }
   }
}
