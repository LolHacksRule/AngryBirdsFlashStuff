package §%t§
{
   import §4!S§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#B§
   {
       
      
      private var §,!>§:Texture;
      
      private var §#<§:BitmapData;
      
      private var §9!S§:Rectangle;
      
      private var §[U§:BitmapData;
      
      private var §;"'§:int;
      
      private var §-e§:int;
      
      private var §5N§:Number = 1.0;
      
      public function §#B§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§,!>§ = param1;
         this.§#<§ = param2;
         this.§9!S§ = param3.clone();
         this.§;"'§ = param4;
         this.§-e§ = param5;
         this.§5N§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§5N§;
      }
      
      public function get texture() : Texture
      {
         return this.§,!>§;
      }
      
      public function get pivotX() : int
      {
         return this.§;"'§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§-e§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§,!>§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§,!>§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§[U§)
         {
            this.§[U§ = new BitmapData(this.§9!S§.width,this.§9!S§.height);
            this.§[U§.copyPixels(this.§#<§,this.§9!S§,new Point(0,0));
         }
         return this.§[U§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§;"'§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§-e§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§,!>§)
         {
            this.§,!>§.dispose();
            this.§,!>§ = null;
         }
         if(this.§#<§)
         {
            this.§#<§.dispose();
            this.§#<§ = null;
         }
      }
   }
}
