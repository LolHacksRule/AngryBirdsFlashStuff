package §_-Cy§
{
   import §_-kX§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-eH§ extends Texture
   {
       
      
      private var §_-Dd§:TextureBase;
      
      private var §_-NR§:int;
      
      private var §_-gD§:int;
      
      private var §_-pW§:Boolean;
      
      private var §_-Hn§:Boolean;
      
      public function §_-eH§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-Dd§ = param1;
         this.§_-NR§ = param2;
         this.§_-gD§ = param3;
         this.§_-pW§ = param4;
         this.§_-Hn§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-Dd§)
         {
            this.§_-Dd§.dispose();
         }
         super.dispose();
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-Dd§ = §_-6b§(param1,param2,param3);
         this.§_-NR§ = getNextPowerOfTwo(param1.width);
         this.§_-gD§ = getNextPowerOfTwo(param1.height);
         this.§_-pW§ = param2;
         this.§_-Hn§ = true;
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-Dd§;
      }
      
      override public function get width() : Number
      {
         return this.§_-NR§;
      }
      
      override public function get height() : Number
      {
         return this.§_-gD§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-pW§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Hn§;
      }
   }
}
