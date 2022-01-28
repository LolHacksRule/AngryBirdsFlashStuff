package §_-Q0§
{
   import §_-OP§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-JQ§ extends Texture
   {
       
      
      private var §_-ZK§:TextureBase;
      
      private var §_-3Y§:int;
      
      private var §_-cy§:int;
      
      private var §_-Xo§:Boolean;
      
      private var §_-Yr§:Boolean;
      
      public function §_-JQ§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-ZK§ = param1;
         this.§_-3Y§ = param2;
         this.§_-cy§ = param3;
         this.§_-Xo§ = param4;
         this.§_-Yr§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-ZK§)
         {
            this.§_-ZK§.dispose();
         }
         super.dispose();
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-ZK§ = §_-wu§(param1,param2,param3);
         this.§_-3Y§ = getNextPowerOfTwo(param1.width);
         this.§_-cy§ = getNextPowerOfTwo(param1.height);
         this.§_-Xo§ = param2;
         this.§_-Yr§ = true;
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-ZK§;
      }
      
      override public function get width() : Number
      {
         return this.§_-3Y§;
      }
      
      override public function get height() : Number
      {
         return this.§_-cy§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-Xo§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Yr§;
      }
   }
}
