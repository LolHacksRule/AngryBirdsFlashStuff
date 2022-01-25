package §8r§
{
   import §#!a§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!$§
   {
       
      
      private var §]Z§:Texture;
      
      private var §=p§:BitmapData;
      
      private var §'!@§:Rectangle;
      
      private var §,!>§:BitmapData;
      
      private var §1S§:int;
      
      private var §=!&§:int;
      
      private var §`z§:Number = 1.0;
      
      public function §-!$§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§]Z§ = param1;
         this.§=p§ = param2;
         this.§'!@§ = param3.clone();
         this.§1S§ = param4;
         this.§=!&§ = param5;
         this.§`z§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§`z§;
      }
      
      public function get texture() : Texture
      {
         return this.§]Z§;
      }
      
      public function get pivotX() : int
      {
         return this.§1S§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§=!&§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§]Z§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§]Z§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§,!>§)
         {
            this.§,!>§ = new BitmapData(this.§'!@§.width,this.§'!@§.height);
            this.§,!>§.copyPixels(this.§=p§,this.§'!@§,new Point(0,0));
         }
         return this.§,!>§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1S§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§=!&§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§]Z§)
         {
            this.§]Z§.dispose();
            this.§]Z§ = null;
         }
         if(this.§=p§)
         {
            this.§=p§.dispose();
            this.§=p§ = null;
         }
      }
   }
}
