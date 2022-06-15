package §7"T§
{
   import §"#k§.Starling;
   import §,#e§.Image;
   import §-#]§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!L§
   {
       
      
      private var §[!-§:Texture;
      
      private var §2#_§:BitmapData;
      
      private var §&%§:Rectangle;
      
      private var §9"_§:BitmapData;
      
      private var §;"M§:int;
      
      private var §>!H§:int;
      
      private var §#!1§:Number = 1.0;
      
      private var §4!4§:Boolean;
      
      private var §,#;§:Texture;
      
      public function §4!L§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§[!-§ = param1;
         this.§2#_§ = param2;
         this.§&%§ = param3.clone();
         this.§;"M§ = param4;
         this.§>!H§ = param5;
         this.§#!1§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      public function get texture() : Texture
      {
         if(this.§4!4§)
         {
            return this.§,#;§;
         }
         return this.§[!-§;
      }
      
      public function get pivotX() : int
      {
         return this.§;"M§;
      }
      
      public function get pivotY() : int
      {
         return this.§>!H§;
      }
      
      public function get width() : Number
      {
         return this.§[!-§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§[!-§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§9"_§)
         {
            this.§9"_§ = new BitmapData(this.§&%§.width,this.§&%§.height);
            this.§9"_§.copyPixels(this.§2#_§,this.§&%§,new Point(0,0));
         }
         return this.§9"_§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§;"M§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§>!H§ = param1;
      }
      
      public function §="'§(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§[!-§)
         {
            this.§[!-§.dispose();
            this.§[!-§ = null;
         }
         if(this.§,#;§)
         {
            this.§,#;§.dispose();
            this.§,#;§ = null;
         }
         if(this.§9"_§)
         {
            this.§9"_§.dispose();
            this.§9"_§ = null;
         }
         this.§2#_§ = null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(param1)
         {
            if(!this.§,#;§)
            {
               _loc2_ = new BitmapData(this.§[!-§.width,this.§[!-§.height,true,0);
               _loc3_ = new Matrix(-1,0,0,1,this.§[!-§.width,0);
               _loc2_.draw(this.bitmapData,_loc3_,null,null,null,true);
               this.§,#;§ = Starling.§"!B§(_loc2_);
            }
         }
         this.§4!4§ = param1;
      }
   }
}
