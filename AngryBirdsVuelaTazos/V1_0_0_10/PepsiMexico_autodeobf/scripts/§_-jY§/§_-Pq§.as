package §_-jY§
{
   import §_-Zq§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-Pq§ extends Texture
   {
       
      
      private var §_-OT§:TextureBase;
      
      private var §_-NR§:int;
      
      private var §_-F0§:int;
      
      private var §_-oL§:Boolean;
      
      private var §_-Hr§:Boolean;
      
      public function §_-Pq§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         super();
         this.§_-OT§ = param1;
         this.§_-NR§ = param2;
         this.§_-F0§ = param3;
         this.§_-oL§ = param4;
         this.§_-Hr§ = param5;
      }
      
      override public function dispose() : void
      {
         if(this.§_-OT§)
         {
            this.§_-OT§.dispose();
         }
         super.dispose();
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-OT§ = §_-qT§(param1,param2,param3);
         this.§_-NR§ = getNextPowerOfTwo(param1.width);
         this.§_-F0§ = getNextPowerOfTwo(param1.height);
         this.§_-oL§ = param2;
         this.§_-Hr§ = true;
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-OT§;
      }
      
      override public function get width() : Number
      {
         return this.§_-NR§;
      }
      
      override public function get height() : Number
      {
         return this.§_-F0§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-oL§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Hr§;
      }
   }
}
