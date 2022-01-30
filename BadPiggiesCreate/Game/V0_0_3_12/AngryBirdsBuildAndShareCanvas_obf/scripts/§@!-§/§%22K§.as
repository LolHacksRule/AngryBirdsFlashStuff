package §@!-§
{
   import §^Q§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"K§
   {
       
      
      private var §@"+§:Texture;
      
      private var §"J§:BitmapData;
      
      private var §[]§:Rectangle;
      
      private var §^!I§:BitmapData;
      
      private var §=5§:int;
      
      private var §,!<§:int;
      
      private var §2"§:Number = 1.0;
      
      public function §"K§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§@"+§ = param1;
         this.§"J§ = param2;
         this.§[]§ = param3.clone();
         this.§=5§ = param4;
         this.§,!<§ = param5;
         this.§2"§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§2"§;
      }
      
      public function get texture() : Texture
      {
         return this.§@"+§;
      }
      
      public function get pivotX() : int
      {
         return this.§=5§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§,!<§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§@"+§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§@"+§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§^!I§)
         {
            this.§^!I§ = new BitmapData(this.§[]§.width,this.§[]§.height);
            this.§^!I§.copyPixels(this.§"J§,this.§[]§,new Point(0,0));
         }
         return this.§^!I§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§=5§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§,!<§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§@"+§)
         {
            this.§@"+§.dispose();
            this.§@"+§ = null;
         }
         if(this.§"J§)
         {
            this.§"J§.dispose();
            this.§"J§ = null;
         }
      }
   }
}
