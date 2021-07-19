package §_-4g§
{
   import §_-ia§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-HY§ extends Texture
   {
       
      
      private var §_-H4§:TextureBase;
      
      private var §_-sa§:int;
      
      private var §_-cr§:int;
      
      private var §_-ne§:Boolean;
      
      private var §_-Cr§:Boolean;
      
      public function §_-HY§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-H4§ = param1;
         this.§_-sa§ = param2;
         this.§_-cr§ = param3;
         this.§_-ne§ = param4;
         this.§_-Cr§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-H4§)
         {
            this.§_-H4§.dispose();
         }
         super.dispose();
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-H4§ = §_-Ml§(param1,param2,param3);
         this.§_-sa§ = getNextPowerOfTwo(param1.width);
         this.§_-cr§ = getNextPowerOfTwo(param1.height);
         this.§_-ne§ = param2;
         this.§_-Cr§ = true;
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-H4§;
      }
      
      override public function get width() : Number
      {
         return this.§_-sa§;
      }
      
      override public function get height() : Number
      {
         return this.§_-cr§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-ne§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Cr§;
      }
   }
}
