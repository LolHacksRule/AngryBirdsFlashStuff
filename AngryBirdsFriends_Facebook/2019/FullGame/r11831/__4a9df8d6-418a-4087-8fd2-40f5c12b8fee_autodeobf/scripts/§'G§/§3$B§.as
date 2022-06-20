package §'G§
{
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §6#H§.Image;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3$B§
   {
       
      
      private var §;!D§:Texture;
      
      private var §]"l§:BitmapData;
      
      private var §`$8§:Rectangle;
      
      private var §<#,§:BitmapData;
      
      private var §-!,§:int;
      
      private var §;"K§:int;
      
      private var §5>§:Number = 1.0;
      
      private var §<!I§:Boolean;
      
      private var §%1§:Texture;
      
      public function §3$B§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§;!D§ = param1;
         this.§]"l§ = param2;
         this.§`$8§ = param3.clone();
         this.§-!,§ = param4;
         this.§;"K§ = param5;
         this.§5>§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§5>§;
      }
      
      public function get texture() : Texture
      {
         if(this.§<!I§)
         {
            return this.§%1§;
         }
         return this.§;!D§;
      }
      
      public function get pivotX() : int
      {
         return this.§-!,§;
      }
      
      public function get pivotY() : int
      {
         return this.§;"K§;
      }
      
      public function get width() : Number
      {
         return this.§;!D§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§;!D§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§<#,§)
         {
            this.§<#,§ = new BitmapData(this.§`$8§.width,this.§`$8§.height);
            this.§<#,§.copyPixels(this.§]"l§,this.§`$8§,new Point(0,0));
         }
         return this.§<#,§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§-!,§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§;"K§ = param1;
      }
      
      public function §"$ §(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§;!D§)
         {
            this.§;!D§.dispose();
            this.§;!D§ = null;
         }
         if(this.§%1§)
         {
            this.§%1§.dispose();
            this.§%1§ = null;
         }
         if(this.§<#,§)
         {
            this.§<#,§.dispose();
            this.§<#,§ = null;
         }
         this.§]"l§ = null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(param1)
         {
            if(!this.§%1§)
            {
               _loc2_ = new BitmapData(this.§;!D§.width,this.§;!D§.height,true,0);
               _loc3_ = new Matrix(-1,0,0,1,this.§;!D§.width,0);
               _loc2_.draw(this.bitmapData,_loc3_,null,null,null,true);
               this.§%1§ = Starling.§2u§(_loc2_);
            }
         }
         this.§<!I§ = param1;
      }
   }
}
