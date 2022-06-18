package §`!B§
{
   import §#!`§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!I§
   {
       
      
      private var § 4§:Texture;
      
      private var §"I§:BitmapData;
      
      private var § v§:Rectangle;
      
      private var §"d§:BitmapData;
      
      private var §`!G§:int;
      
      private var §2F§:int;
      
      private var §#l§:Number = 1.0;
      
      public function §4!I§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§ 4§ = param1;
         this.§"I§ = param2;
         this.§ v§ = param3.clone();
         this.§`!G§ = param4;
         this.§2F§ = param5;
         this.§#l§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§#l§;
      }
      
      public function get texture() : Texture
      {
         return this.§ 4§;
      }
      
      public function get pivotX() : int
      {
         return this.§`!G§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§2F§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§ 4§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§ 4§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§"d§)
         {
            this.§"d§ = new BitmapData(this.§ v§.width,this.§ v§.height);
            this.§"d§.copyPixels(this.§"I§,this.§ v§,new Point(0,0));
         }
         return this.§"d§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§`!G§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§2F§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§ 4§)
         {
            this.§ 4§.dispose();
            this.§ 4§ = null;
         }
         if(this.§"I§)
         {
            this.§"I§.dispose();
            this.§"I§ = null;
         }
      }
   }
}
