package §_-5Y§
{
   import §_-DQ§.Texture;
   import §_-b5§.§_-Xj§;
   
   public class §_-p3§
   {
       
      
      private var §_-Cb§:§_-Xj§;
      
      private var §_-U-§:Number;
      
      public function §_-p3§(param1:Texture, param2:Number)
      {
         super();
         this.§_-Cb§ = new §_-Xj§(param1);
         this.§_-U-§ = param2;
      }
      
      public function get image() : §_-Xj§
      {
         return this.§_-Cb§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-U-§;
      }
      
      public function dispose() : void
      {
         if(this.§_-Cb§)
         {
            this.§_-Cb§.dispose();
            this.§_-Cb§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-U-§ -= param1;
      }
      
      public function §_-Wi§(param1:Number) : void
      {
         this.§_-U-§ = param1;
      }
      
      public function §_-sH§(param1:Texture) : void
      {
         this.§_-Cb§.texture = param1;
      }
   }
}
