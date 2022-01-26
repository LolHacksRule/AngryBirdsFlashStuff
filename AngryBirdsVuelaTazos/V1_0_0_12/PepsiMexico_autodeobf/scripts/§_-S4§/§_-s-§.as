package §_-S4§
{
   import §_-0b§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-s-§ extends Texture
   {
       
      
      private var §_-9i§:TextureBase;
      
      private var §_-Fy§:int;
      
      private var §_-XU§:int;
      
      private var §_-U-§:Boolean;
      
      private var §_-hD§:Boolean;
      
      public function §_-s-§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-9i§ = param1;
         this.§_-Fy§ = param2;
         this.§_-XU§ = param3;
         this.§_-U-§ = param4;
         this.§_-hD§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-9i§)
         {
            this.§_-9i§.dispose();
         }
         super.dispose();
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-9i§ = §_-6C§(param1,param2,param3);
         this.§_-Fy§ = getNextPowerOfTwo(param1.width);
         this.§_-XU§ = getNextPowerOfTwo(param1.height);
         this.§_-U-§ = param2;
         this.§_-hD§ = true;
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-9i§;
      }
      
      override public function get width() : Number
      {
         return this.§_-Fy§;
      }
      
      override public function get height() : Number
      {
         return this.§_-XU§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-U-§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-hD§;
      }
   }
}
