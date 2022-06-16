package §`"8§
{
   import §9$;§.Texture;
   import §?"e§.Starling;
   import §^"S§.Image;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`"X§
   {
       
      
      private var §6!4§:Texture;
      
      private var §%"j§:BitmapData;
      
      private var §>!t§:Rectangle;
      
      private var §[K§:BitmapData;
      
      private var §3$'§:int;
      
      private var §,#g§:int;
      
      private var §^#5§:Number = 1.0;
      
      private var §'u§:Boolean;
      
      private var §;!]§:Texture;
      
      public function §`"X§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§6!4§ = param1;
         this.§%"j§ = param2;
         this.§>!t§ = param3.clone();
         this.§3$'§ = param4;
         this.§,#g§ = param5;
         this.§^#5§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      public function get texture() : Texture
      {
         if(this.§'u§)
         {
            return this.§;!]§;
         }
         return this.§6!4§;
      }
      
      public function get pivotX() : int
      {
         return this.§3$'§;
      }
      
      public function get pivotY() : int
      {
         return this.§,#g§;
      }
      
      public function get width() : Number
      {
         return this.§6!4§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§6!4§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§[K§)
         {
            this.§[K§ = new BitmapData(this.§>!t§.width,this.§>!t§.height);
            this.§[K§.copyPixels(this.§%"j§,this.§>!t§,new Point(0,0));
         }
         return this.§[K§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§3$'§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§,#g§ = param1;
      }
      
      public function §5#w§(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§6!4§)
         {
            this.§6!4§.dispose();
            this.§6!4§ = null;
         }
         if(this.§;!]§)
         {
            this.§;!]§.dispose();
            this.§;!]§ = null;
         }
         if(this.§[K§)
         {
            this.§[K§.dispose();
            this.§[K§ = null;
         }
         this.§%"j§ = null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(param1)
         {
            if(!this.§;!]§)
            {
               _loc2_ = new BitmapData(this.§6!4§.width,this.§6!4§.height,true,0);
               _loc3_ = new Matrix(-1,0,0,1,this.§6!4§.width,0);
               _loc2_.draw(this.bitmapData,_loc3_,null,null,null,true);
               this.§;!]§ = Starling.§8T§(_loc2_);
            }
         }
         this.§'u§ = param1;
      }
   }
}
