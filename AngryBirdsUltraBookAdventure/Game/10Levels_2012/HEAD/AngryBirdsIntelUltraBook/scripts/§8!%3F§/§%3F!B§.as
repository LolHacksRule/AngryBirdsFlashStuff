package §8!?§
{
   import §'_§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!B§
   {
       
      
      private var §!!!§:Texture;
      
      private var §3!I§:BitmapData;
      
      private var §-N§:Rectangle;
      
      private var §!T§:BitmapData;
      
      private var §@!h§:int;
      
      private var §#O§:int;
      
      private var §[+§:Number = 1.0;
      
      public function §?!B§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§!!!§ = param1;
         this.§3!I§ = param2;
         this.§-N§ = param3.clone();
         this.§@!h§ = param4;
         this.§#O§ = param5;
         this.§[+§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function get texture() : Texture
      {
         return this.§!!!§;
      }
      
      public function get pivotX() : int
      {
         return this.§@!h§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§#O§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§!!!§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§!!!§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§!T§)
         {
            this.§!T§ = new BitmapData(this.§-N§.width,this.§-N§.height);
            this.§!T§.copyPixels(this.§3!I§,this.§-N§,new Point(0,0));
         }
         return this.§!T§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§@!h§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§#O§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!!!§)
         {
            this.§!!!§.dispose();
            this.§!!!§ = null;
         }
         if(this.§3!I§)
         {
            this.§3!I§.dispose();
            this.§3!I§ = null;
         }
      }
   }
}
