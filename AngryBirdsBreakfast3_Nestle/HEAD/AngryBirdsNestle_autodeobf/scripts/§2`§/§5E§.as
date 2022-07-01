package §2`§
{
   import §3!J§.§4!2§;
   import §=!4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5E§
   {
       
      
      private var §>"5§:Texture;
      
      private var §@!`§:BitmapData;
      
      private var § G§:Rectangle;
      
      private var §!H§:BitmapData;
      
      private var §6!f§:int;
      
      private var §<!C§:int;
      
      private var §2c§:Number = 1.0;
      
      public function §5E§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§>"5§ = param1;
         this.§@!`§ = param2;
         this.§ G§ = param3.clone();
         this.§6!f§ = param4;
         this.§<!C§ = param5;
         this.§2c§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get texture() : Texture
      {
         return this.§>"5§;
      }
      
      public function get pivotX() : int
      {
         return this.§6!f§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§<!C§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§>"5§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§>"5§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§!H§)
         {
            this.§!H§ = new BitmapData(this.§ G§.width,this.§ G§.height);
            this.§!H§.copyPixels(this.§@!`§,this.§ G§,new Point(0,0));
         }
         return this.§!H§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§6!f§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§<!C§ = param1;
      }
      
      public function § !l§(param1:Boolean = false, param2:Boolean = true) : §4!2§
      {
         var _loc3_:§4!2§ = new §4!2§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§>"5§)
         {
            this.§>"5§.dispose();
            this.§>"5§ = null;
         }
         if(this.§@!`§)
         {
            this.§@!`§.dispose();
            this.§@!`§ = null;
         }
      }
   }
}
