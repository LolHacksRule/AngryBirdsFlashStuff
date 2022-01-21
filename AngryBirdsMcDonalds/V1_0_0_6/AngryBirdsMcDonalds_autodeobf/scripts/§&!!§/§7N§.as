package §&!!§
{
   import § !^§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7N§
   {
       
      
      private var §`L§:Texture;
      
      private var §<@§:BitmapData;
      
      private var §4v§:Rectangle;
      
      private var §=!&§:BitmapData;
      
      private var §7f§:int;
      
      private var §,!l§:int;
      
      private var §6R§:Number = 1.0;
      
      public function §7N§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§`L§ = param1;
         this.§<@§ = param2;
         this.§4v§ = param3.clone();
         this.§7f§ = param4;
         this.§,!l§ = param5;
         this.§6R§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6R§;
      }
      
      public function get texture() : Texture
      {
         return this.§`L§;
      }
      
      public function get pivotX() : int
      {
         return this.§7f§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§,!l§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§`L§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§`L§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§=!&§)
         {
            this.§=!&§ = new BitmapData(this.§4v§.width,this.§4v§.height);
            this.§=!&§.copyPixels(this.§<@§,this.§4v§,new Point(0,0));
         }
         return this.§=!&§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§7f§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§,!l§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`L§)
         {
            this.§`L§.dispose();
            this.§`L§ = null;
         }
         if(this.§<@§)
         {
            this.§<@§.dispose();
            this.§<@§ = null;
         }
      }
   }
}
