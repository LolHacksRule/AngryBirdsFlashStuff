package §7!j§
{
   import §&!v§.Image;
   import §-"+§.Texture;
   import §9+§.Starling;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'#'§
   {
       
      
      private var §9$0§:Texture;
      
      private var §"p§:BitmapData;
      
      private var §0"v§:Rectangle;
      
      private var §5"s§:BitmapData;
      
      private var § #Q§:int;
      
      private var §9!d§:int;
      
      private var § "A§:Number = 1.0;
      
      private var §1#i§:Boolean;
      
      private var §`$#§:Texture;
      
      public function §'#'§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§9$0§ = param1;
         this.§"p§ = param2;
         this.§0"v§ = param3.clone();
         this.§ #Q§ = param4;
         this.§9!d§ = param5;
         this.§ "A§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      public function get texture() : Texture
      {
         if(this.§1#i§)
         {
            return this.§`$#§;
         }
         return this.§9$0§;
      }
      
      public function get pivotX() : int
      {
         return this.§ #Q§;
      }
      
      public function get pivotY() : int
      {
         return this.§9!d§;
      }
      
      public function get width() : Number
      {
         return this.§9$0§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§9$0§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§5"s§)
         {
            this.§5"s§ = new BitmapData(this.§0"v§.width,this.§0"v§.height);
            this.§5"s§.copyPixels(this.§"p§,this.§0"v§,new Point(0,0));
         }
         return this.§5"s§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§ #Q§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§9!d§ = param1;
      }
      
      public function §6"#§(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§9$0§)
         {
            this.§9$0§.dispose();
            this.§9$0§ = null;
         }
         if(this.§`$#§)
         {
            this.§`$#§.dispose();
            this.§`$#§ = null;
         }
         if(this.§5"s§)
         {
            this.§5"s§.dispose();
            this.§5"s§ = null;
         }
         this.§"p§ = null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(param1)
         {
            if(!this.§`$#§)
            {
               _loc2_ = new BitmapData(this.§9$0§.width,this.§9$0§.height,true,0);
               _loc3_ = new Matrix(-1,0,0,1,this.§9$0§.width,0);
               _loc2_.draw(this.bitmapData,_loc3_,null,null,null,true);
               this.§`$#§ = Starling.§-$#§(_loc2_);
            }
         }
         this.§1#i§ = param1;
      }
   }
}
