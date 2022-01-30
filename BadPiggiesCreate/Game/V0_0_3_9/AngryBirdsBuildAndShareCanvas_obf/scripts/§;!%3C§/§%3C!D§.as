package §;!<§
{
   import §8Y§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!D§
   {
       
      
      private var §!E§:Texture;
      
      private var §5!9§:BitmapData;
      
      private var §,F§:Rectangle;
      
      private var §`#§:BitmapData;
      
      private var §6o§:int;
      
      private var §["2§:int;
      
      private var §`"§:Number = 1.0;
      
      public function §<!D§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§!E§ = param1;
         this.§5!9§ = param2;
         this.§,F§ = param3.clone();
         this.§6o§ = param4;
         this.§["2§ = param5;
         this.§`"§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§`"§;
      }
      
      public function get texture() : Texture
      {
         return this.§!E§;
      }
      
      public function get pivotX() : int
      {
         return this.§6o§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§["2§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§!E§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§!E§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§`#§)
         {
            this.§`#§ = new BitmapData(this.§,F§.width,this.§,F§.height);
            this.§`#§.copyPixels(this.§5!9§,this.§,F§,new Point(0,0));
         }
         return this.§`#§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§6o§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§["2§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!E§)
         {
            this.§!E§.dispose();
            this.§!E§ = null;
         }
         if(this.§5!9§)
         {
            this.§5!9§.dispose();
            this.§5!9§ = null;
         }
      }
   }
}
