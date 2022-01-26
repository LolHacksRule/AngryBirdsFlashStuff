package §_-DQ§
{
   import §_-CG§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-Pc§ extends Texture
   {
       
      
      private var §_-CX§:TextureBase;
      
      private var §_-U0§:int;
      
      private var §_-bN§:int;
      
      private var §_-Yl§:Boolean;
      
      private var §_-dx§:Boolean;
      
      public function §_-Pc§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-CX§ = param1;
         this.§_-U0§ = param2;
         this.§_-bN§ = param3;
         this.§_-Yl§ = param4;
         this.§_-dx§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-CX§)
         {
            this.§_-CX§.dispose();
         }
         super.dispose();
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-CX§ = §_-ok§(param1,param2,param3);
         this.§_-U0§ = getNextPowerOfTwo(param1.width);
         this.§_-bN§ = getNextPowerOfTwo(param1.height);
         this.§_-Yl§ = param2;
         this.§_-dx§ = true;
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-CX§;
      }
      
      override public function get width() : Number
      {
         return this.§_-U0§;
      }
      
      override public function get height() : Number
      {
         return this.§_-bN§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-Yl§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-dx§;
      }
   }
}
