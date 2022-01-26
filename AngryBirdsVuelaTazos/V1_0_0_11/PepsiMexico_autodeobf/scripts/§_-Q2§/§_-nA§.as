package §_-Q2§
{
   import §_-6A§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-nA§ extends Texture
   {
       
      
      private var §_-IB§:TextureBase;
      
      private var §_-x9§:int;
      
      private var §_-Ql§:int;
      
      private var §_-QJ§:Boolean;
      
      private var §_-9I§:Boolean;
      
      public function §_-nA§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-IB§ = param1;
         this.§_-x9§ = param2;
         this.§_-Ql§ = param3;
         this.§_-QJ§ = param4;
         this.§_-9I§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-IB§)
         {
            this.§_-IB§.dispose();
         }
         super.dispose();
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-IB§ = §_-32§(param1,param2,param3);
         this.§_-x9§ = getNextPowerOfTwo(param1.width);
         this.§_-Ql§ = getNextPowerOfTwo(param1.height);
         this.§_-QJ§ = param2;
         this.§_-9I§ = true;
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-IB§;
      }
      
      override public function get width() : Number
      {
         return this.§_-x9§;
      }
      
      override public function get height() : Number
      {
         return this.§_-Ql§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-QJ§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-9I§;
      }
   }
}
