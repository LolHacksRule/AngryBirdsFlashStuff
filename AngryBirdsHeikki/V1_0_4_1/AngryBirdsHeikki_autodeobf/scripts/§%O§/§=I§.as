package §%O§
{
   import §"!<§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=I§
   {
       
      
      private var §]m§:Texture;
      
      private var §4r§:BitmapData;
      
      private var §`9§:Rectangle;
      
      private var §'!O§:BitmapData;
      
      private var §1S§:int;
      
      private var § b§:int;
      
      private var §0!^§:Number = 1.0;
      
      public function §=I§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§]m§ = param1;
         this.§4r§ = param2;
         this.§`9§ = param3.clone();
         this.§1S§ = param4;
         this.§ b§ = param5;
         this.§0!^§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function get texture() : Texture
      {
         return this.§]m§;
      }
      
      public function get pivotX() : int
      {
         return this.§1S§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§ b§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§]m§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§]m§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§'!O§)
         {
            this.§'!O§ = new BitmapData(this.§`9§.width,this.§`9§.height);
            this.§'!O§.copyPixels(this.§4r§,this.§`9§,new Point(0,0));
         }
         return this.§'!O§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1S§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§ b§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§]m§)
         {
            this.§]m§.dispose();
            this.§]m§ = null;
         }
         if(this.§4r§)
         {
            this.§4r§.dispose();
            this.§4r§ = null;
         }
      }
   }
}
