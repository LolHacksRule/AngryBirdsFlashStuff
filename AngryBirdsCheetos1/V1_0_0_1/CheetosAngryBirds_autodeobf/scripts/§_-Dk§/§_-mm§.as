package §_-Dk§
{
   import §_-Bt§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-mm§ extends Texture
   {
       
      
      private var §_-lX§:TextureBase;
      
      private var §_-aC§:int;
      
      private var §_-3v§:int;
      
      private var §_-h1§:Boolean;
      
      private var §_-Wp§:Boolean;
      
      public function §_-mm§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-lX§ = param1;
         this.§_-aC§ = param2;
         this.§_-3v§ = param3;
         this.§_-h1§ = param4;
         this.§_-Wp§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-lX§)
         {
            this.§_-lX§.dispose();
         }
         super.dispose();
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         if(param1 is BitmapData)
         {
            this.§_-lX§ = §_-9u§(param1 as BitmapData,this.§_-h1§,false);
            this.§_-aC§ = getNextPowerOfTwo(param1.width);
            this.§_-3v§ = getNextPowerOfTwo(param1.height);
            this.§_-Wp§ = true;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-lX§;
      }
      
      override public function get width() : Number
      {
         return this.§_-aC§;
      }
      
      override public function get height() : Number
      {
         return this.§_-3v§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-h1§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Wp§;
      }
   }
}
