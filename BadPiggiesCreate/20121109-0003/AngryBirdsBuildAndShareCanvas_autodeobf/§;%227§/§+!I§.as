package §;"7§
{
   import §0!%§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!I§
   {
       
      
      private var §=#§:Texture;
      
      private var §`"4§:BitmapData;
      
      private var §!!X§:Rectangle;
      
      private var §-s§:BitmapData;
      
      private var §=;§:int;
      
      private var §62§:int;
      
      private var §=9§:Number = 1.0;
      
      public function §+!I§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§=#§ = param1;
         this.§`"4§ = param2;
         this.§!!X§ = param3.clone();
         this.§=;§ = param4;
         this.§62§ = param5;
         this.§=9§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§=9§;
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
      }
      
      public function get pivotX() : int
      {
         return this.§=;§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§62§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§=#§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§=#§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§-s§)
         {
            this.§-s§ = new BitmapData(this.§!!X§.width,this.§!!X§.height);
            this.§-s§.copyPixels(this.§`"4§,this.§!!X§,new Point(0,0));
         }
         return this.§-s§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§=;§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§62§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§=#§)
         {
            this.§=#§.dispose();
            this.§=#§ = null;
         }
         if(this.§`"4§)
         {
            this.§`"4§.dispose();
            this.§`"4§ = null;
         }
      }
   }
}
