package §_-yp§
{
   import §_-mb§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-w1§ extends Texture
   {
       
      
      private var §_-3u§:TextureBase;
      
      private var §_-a9§:int;
      
      private var §_-7y§:int;
      
      private var §_-du§:Boolean;
      
      private var §_-Qx§:Boolean;
      
      public function §_-w1§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-3u§ = param1;
         this.§_-a9§ = param2;
         this.§_-7y§ = param3;
         this.§_-du§ = param4;
         this.§_-Qx§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-3u§)
         {
            this.§_-3u§.dispose();
         }
         super.dispose();
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         if(param1 is BitmapData)
         {
            this.§_-3u§ = §_-S5§(param1 as BitmapData,this.§_-du§,false);
            this.§_-a9§ = getNextPowerOfTwo(param1.width);
            this.§_-7y§ = getNextPowerOfTwo(param1.height);
            this.§_-Qx§ = true;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-3u§;
      }
      
      override public function get width() : Number
      {
         return this.§_-a9§;
      }
      
      override public function get height() : Number
      {
         return this.§_-7y§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-du§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Qx§;
      }
   }
}
