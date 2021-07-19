package § ! §
{
   import §%q§.Texture;
   import §6![§.§1!J§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8-§
   {
       
      
      private var §'!t§:Texture;
      
      private var §'y§:BitmapData;
      
      private var §@E§:Rectangle;
      
      private var §1!!§:BitmapData;
      
      private var §=$§:int;
      
      private var §0I§:int;
      
      private var §6!r§:Number = 1.0;
      
      public function §8-§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§'!t§ = param1;
         this.§'y§ = param2;
         this.§@E§ = param3.clone();
         this.§=$§ = param4;
         this.§0I§ = param5;
         this.§6!r§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get texture() : Texture
      {
         return this.§'!t§;
      }
      
      public function get pivotX() : int
      {
         return this.§=$§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§0I§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§'!t§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§'!t§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§1!!§)
         {
            this.§1!!§ = new BitmapData(this.§@E§.width,this.§@E§.height);
            this.§1!!§.copyPixels(this.§'y§,this.§@E§,new Point(0,0));
         }
         return this.§1!!§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§=$§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§0I§ = param1;
      }
      
      public function §'h§(param1:Boolean = false, param2:Boolean = true) : §1!J§
      {
         var _loc3_:§1!J§ = new §1!J§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§'!t§)
         {
            this.§'!t§.dispose();
            this.§'!t§ = null;
         }
         if(this.§'y§)
         {
            this.§'y§.dispose();
            this.§'y§ = null;
         }
      }
   }
}
