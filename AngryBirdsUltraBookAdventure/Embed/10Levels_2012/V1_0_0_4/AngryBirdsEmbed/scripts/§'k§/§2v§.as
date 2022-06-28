package §'k§
{
   import §5!@§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2v§
   {
       
      
      private var §7#§:Texture;
      
      private var § 5§:BitmapData;
      
      private var §6!D§:Rectangle;
      
      private var §@?§:BitmapData;
      
      private var §3O§:int;
      
      private var §=A§:int;
      
      private var §!!%§:Number = 1.0;
      
      public function §2v§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§7#§ = param1;
         this.§ 5§ = param2;
         this.§6!D§ = param3.clone();
         this.§3O§ = param4;
         this.§=A§ = param5;
         this.§!!%§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§!!%§;
      }
      
      public function get texture() : Texture
      {
         return this.§7#§;
      }
      
      public function get pivotX() : int
      {
         return this.§3O§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§=A§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§7#§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§7#§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§@?§)
         {
            this.§@?§ = new BitmapData(this.§6!D§.width,this.§6!D§.height);
            this.§@?§.copyPixels(this.§ 5§,this.§6!D§,new Point(0,0));
         }
         return this.§@?§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§3O§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§=A§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§7#§)
         {
            this.§7#§.dispose();
            this.§7#§ = null;
         }
         if(this.§ 5§)
         {
            this.§ 5§.dispose();
            this.§ 5§ = null;
         }
      }
   }
}
