package §+N§
{
   import §@'§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!+§
   {
       
      
      private var §3!+§:Texture;
      
      private var §%§:BitmapData;
      
      private var §4!E§:Rectangle;
      
      private var §=!,§:BitmapData;
      
      private var §[D§:int;
      
      private var §+?§:int;
      
      private var §3!T§:Number = 1.0;
      
      public function §=!+§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§3!+§ = param1;
         this.§%§ = param2;
         this.§4!E§ = param3.clone();
         this.§[D§ = param4;
         this.§+?§ = param5;
         this.§3!T§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§3!T§;
      }
      
      public function get texture() : Texture
      {
         return this.§3!+§;
      }
      
      public function get pivotX() : int
      {
         return this.§[D§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+?§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§3!+§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§3!+§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§=!,§)
         {
            this.§=!,§ = new BitmapData(this.§4!E§.width,this.§4!E§.height);
            this.§=!,§.copyPixels(this.§%§,this.§4!E§,new Point(0,0));
         }
         return this.§=!,§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§[D§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§+?§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§3!+§)
         {
            this.§3!+§.dispose();
            this.§3!+§ = null;
         }
         if(this.§%§)
         {
            this.§%§.dispose();
            this.§%§ = null;
         }
      }
   }
}
