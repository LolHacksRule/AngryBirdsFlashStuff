package §^!Y§
{
   import §4>§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1C§
   {
       
      
      private var §5!6§:Texture;
      
      private var §0!E§:BitmapData;
      
      private var §0!2§:Rectangle;
      
      private var §>!F§:BitmapData;
      
      private var §`Q§:int;
      
      private var §-Z§:int;
      
      private var §'!I§:Number = 1.0;
      
      public function §1C§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§5!6§ = param1;
         this.§0!E§ = param2;
         this.§0!2§ = param3.clone();
         this.§`Q§ = param4;
         this.§-Z§ = param5;
         this.§'!I§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function get texture() : Texture
      {
         return this.§5!6§;
      }
      
      public function get pivotX() : int
      {
         return this.§`Q§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§-Z§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§5!6§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§5!6§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§>!F§)
         {
            this.§>!F§ = new BitmapData(this.§0!2§.width,this.§0!2§.height);
            this.§>!F§.copyPixels(this.§0!E§,this.§0!2§,new Point(0,0));
         }
         return this.§>!F§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§`Q§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§-Z§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§5!6§)
         {
            this.§5!6§.dispose();
            this.§5!6§ = null;
         }
         if(this.§0!E§)
         {
            this.§0!E§.dispose();
            this.§0!E§ = null;
         }
      }
   }
}
