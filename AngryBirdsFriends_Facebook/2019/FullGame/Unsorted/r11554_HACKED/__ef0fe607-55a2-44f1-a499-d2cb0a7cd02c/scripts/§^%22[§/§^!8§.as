package §^"[§
{
   import §!6§.Image;
   import §""'§.Texture;
   import §]"P§.Starling;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^!8§
   {
       
      
      private var §;Z§:Texture;
      
      private var §5$+§:BitmapData;
      
      private var §^!'§:Rectangle;
      
      private var §'#Z§:BitmapData;
      
      private var §?"1§:int;
      
      private var §5"#§:int;
      
      private var §6z§:Number = 1.0;
      
      private var §8#H§:Boolean;
      
      private var § q§:Texture;
      
      public function §^!8§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§;Z§ = param1;
         this.§5$+§ = param2;
         this.§^!'§ = param3.clone();
         this.§?"1§ = param4;
         this.§5"#§ = param5;
         this.§6z§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6z§;
      }
      
      public function get texture() : Texture
      {
         if(this.§8#H§)
         {
            return this.§ q§;
         }
         return this.§;Z§;
      }
      
      public function get pivotX() : int
      {
         return this.§?"1§;
      }
      
      public function get pivotY() : int
      {
         return this.§5"#§;
      }
      
      public function get width() : Number
      {
         return this.§;Z§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§;Z§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§'#Z§)
         {
            this.§'#Z§ = new BitmapData(this.§^!'§.width,this.§^!'§.height);
            this.§'#Z§.copyPixels(this.§5$+§,this.§^!'§,new Point(0,0));
         }
         return this.§'#Z§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§?"1§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§5"#§ = param1;
      }
      
      public function §4!d§(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§;Z§)
         {
            this.§;Z§.dispose();
            this.§;Z§ = null;
         }
         if(this.§ q§)
         {
            this.§ q§.dispose();
            this.§ q§ = null;
         }
         if(this.§'#Z§)
         {
            this.§'#Z§.dispose();
            this.§'#Z§ = null;
         }
         this.§5$+§ = null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(param1)
         {
            if(!this.§ q§)
            {
               _loc2_ = new BitmapData(this.§;Z§.width,this.§;Z§.height,true,0);
               _loc3_ = new Matrix(-1,0,0,1,this.§;Z§.width,0);
               _loc2_.draw(this.bitmapData,_loc3_,null,null,null,true);
               this.§ q§ = Starling.§6`§(_loc2_);
            }
         }
         this.§8#H§ = param1;
      }
   }
}
