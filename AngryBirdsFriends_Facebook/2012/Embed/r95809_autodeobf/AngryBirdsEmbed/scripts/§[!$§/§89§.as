package §[!$§
{
   import §&!7§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §89§
   {
       
      
      private var §3P§:Texture;
      
      private var §`O§:BitmapData;
      
      private var §8g§:Rectangle;
      
      private var §=U§:BitmapData;
      
      private var §&K§:int;
      
      private var §]r§:int;
      
      private var §?!C§:Number = 1.0;
      
      public function §89§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§3P§ = param1;
         this.§`O§ = param2;
         this.§8g§ = param3.clone();
         this.§&K§ = param4;
         this.§]r§ = param5;
         this.§?!C§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function get texture() : Texture
      {
         return this.§3P§;
      }
      
      public function get pivotX() : int
      {
         return this.§&K§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§]r§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§3P§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§3P§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§=U§)
         {
            this.§=U§ = new BitmapData(this.§8g§.width,this.§8g§.height);
            this.§=U§.copyPixels(this.§`O§,this.§8g§,new Point(0,0));
         }
         return this.§=U§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§&K§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§]r§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§3P§)
         {
            this.§3P§.dispose();
            this.§3P§ = null;
         }
         if(this.§`O§)
         {
            this.§`O§.dispose();
            this.§`O§ = null;
         }
      }
   }
}
