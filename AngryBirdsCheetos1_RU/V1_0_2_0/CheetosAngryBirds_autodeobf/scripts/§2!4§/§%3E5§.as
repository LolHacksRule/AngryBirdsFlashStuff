package §2!4§
{
   import §,Y§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>5§
   {
       
      
      private var §&%§:Texture;
      
      private var §6p§:BitmapData;
      
      private var §@I§:Rectangle;
      
      private var §&!S§:BitmapData;
      
      private var §+!O§:int;
      
      private var §7j§:int;
      
      private var §case §:Number = 1.0;
      
      public function §>5§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§&%§ = param1;
         this.§6p§ = param2;
         this.§@I§ = param3.clone();
         this.§+!O§ = param4;
         this.§7j§ = param5;
         this.§case § = param6;
      }
      
      public function get scale() : Number
      {
         return this.§case §;
      }
      
      public function get texture() : Texture
      {
         return this.§&%§;
      }
      
      public function get pivotX() : int
      {
         return this.§+!O§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§7j§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§&%§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§&%§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§&!S§)
         {
            this.§&!S§ = new BitmapData(this.§@I§.width,this.§@I§.height);
            this.§&!S§.copyPixels(this.§6p§,this.§@I§,new Point(0,0));
         }
         return this.§&!S§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§+!O§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§7j§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&%§)
         {
            this.§&%§.dispose();
            this.§&%§ = null;
         }
         if(this.§6p§)
         {
            this.§6p§.dispose();
            this.§6p§ = null;
         }
      }
   }
}
