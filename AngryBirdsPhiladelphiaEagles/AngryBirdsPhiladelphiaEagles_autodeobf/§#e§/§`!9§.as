package §#e§
{
   import §8z§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!9§
   {
       
      
      private var §-`§:Texture;
      
      private var § if§:BitmapData;
      
      private var §+1§:Rectangle;
      
      private var §6m§:BitmapData;
      
      private var §%O§:int;
      
      private var §&!I§:int;
      
      private var §6-§:Number = 1.0;
      
      public function §`!9§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§-`§ = param1;
         this.§ if§ = param2;
         this.§+1§ = param3.clone();
         this.§%O§ = param4;
         this.§&!I§ = param5;
         this.§6-§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function get texture() : Texture
      {
         return this.§-`§;
      }
      
      public function get pivotX() : int
      {
         return this.§%O§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§&!I§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§-`§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§-`§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§6m§)
         {
            this.§6m§ = new BitmapData(this.§+1§.width,this.§+1§.height);
            this.§6m§.copyPixels(this.§ if§,this.§+1§,new Point(0,0));
         }
         return this.§6m§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§%O§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§&!I§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§-`§)
         {
            this.§-`§.dispose();
            this.§-`§ = null;
         }
         if(this.§ if§)
         {
            this.§ if§.dispose();
            this.§ if§ = null;
         }
      }
   }
}
