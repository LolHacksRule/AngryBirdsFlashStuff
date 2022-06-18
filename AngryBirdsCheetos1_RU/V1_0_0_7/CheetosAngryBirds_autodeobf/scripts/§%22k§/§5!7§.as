package §"k§
{
   import §]p§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5!7§
   {
       
      
      private var §`h§:Texture;
      
      private var §[[§:BitmapData;
      
      private var §";§:Rectangle;
      
      private var §=p§:BitmapData;
      
      private var §1!H§:int;
      
      private var §+!`§:int;
      
      private var §-b§:Number = 1.0;
      
      public function §5!7§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§`h§ = param1;
         this.§[[§ = param2;
         this.§";§ = param3.clone();
         this.§1!H§ = param4;
         this.§+!`§ = param5;
         this.§-b§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§-b§;
      }
      
      public function get texture() : Texture
      {
         return this.§`h§;
      }
      
      public function get pivotX() : int
      {
         return this.§1!H§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+!`§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§`h§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§`h§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§=p§)
         {
            this.§=p§ = new BitmapData(this.§";§.width,this.§";§.height);
            this.§=p§.copyPixels(this.§[[§,this.§";§,new Point(0,0));
         }
         return this.§=p§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1!H§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§+!`§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`h§)
         {
            this.§`h§.dispose();
            this.§`h§ = null;
         }
         if(this.§[[§)
         {
            this.§[[§.dispose();
            this.§[[§ = null;
         }
      }
   }
}
