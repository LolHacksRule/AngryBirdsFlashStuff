package §=!<§
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!!§
   {
       
      
      private var §-y§:Texture;
      
      private var §+!C§:BitmapData;
      
      private var §0!4§:Rectangle;
      
      private var §+<§:BitmapData;
      
      private var §var §:int;
      
      private var §9!K§:int;
      
      private var get:Number = 1.0;
      
      public function §8!!§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§-y§ = param1;
         this.§+!C§ = param2;
         this.§0!4§ = param3.clone();
         this.§var § = param4;
         this.§9!K§ = param5;
         this.get = param6;
      }
      
      public function get scale() : Number
      {
         return this.get;
      }
      
      public function get texture() : Texture
      {
         return this.§-y§;
      }
      
      public function get pivotX() : int
      {
         return this.§var § * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§9!K§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§-y§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§-y§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§+<§)
         {
            this.§+<§ = new BitmapData(this.§0!4§.width,this.§0!4§.height);
            this.§+<§.copyPixels(this.§+!C§,this.§0!4§,new Point(0,0));
         }
         return this.§+<§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§var § = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§9!K§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§-y§)
         {
            this.§-y§.dispose();
            this.§-y§ = null;
         }
         if(this.§+!C§)
         {
            this.§+!C§.dispose();
            this.§+!C§ = null;
         }
      }
   }
}
