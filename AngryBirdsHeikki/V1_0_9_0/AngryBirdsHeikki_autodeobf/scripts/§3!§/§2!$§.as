package §3!§
{
   import § 0§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2!$§
   {
       
      
      private var §<;§:Texture;
      
      private var §!r§:BitmapData;
      
      private var §64§:Rectangle;
      
      private var §`!c§:BitmapData;
      
      private var §"Q§:int;
      
      private var §]!+§:int;
      
      private var §0!^§:Number = 1.0;
      
      public function §2!$§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§<;§ = param1;
         this.§!r§ = param2;
         this.§64§ = param3.clone();
         this.§"Q§ = param4;
         this.§]!+§ = param5;
         this.§0!^§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function get texture() : Texture
      {
         return this.§<;§;
      }
      
      public function get pivotX() : int
      {
         return this.§"Q§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§]!+§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§<;§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§<;§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§`!c§)
         {
            this.§`!c§ = new BitmapData(this.§64§.width,this.§64§.height);
            this.§`!c§.copyPixels(this.§!r§,this.§64§,new Point(0,0));
         }
         return this.§`!c§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§"Q§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§]!+§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§<;§)
         {
            this.§<;§.dispose();
            this.§<;§ = null;
         }
         if(this.§!r§)
         {
            this.§!r§.dispose();
            this.§!r§ = null;
         }
      }
   }
}
