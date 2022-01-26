package §_-0y§
{
   import §_-jY§.Texture;
   import §_-se§.§_-N§;
   
   public class §_-m4§
   {
       
      
      private var §_-Le§:§_-N§;
      
      private var §_-2S§:Number;
      
      public function §_-m4§(param1:Texture, param2:Number)
      {
         super();
         this.§_-Le§ = new §_-N§(param1);
         this.§_-2S§ = param2;
      }
      
      public function get image() : §_-N§
      {
         return this.§_-Le§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-2S§;
      }
      
      public function dispose() : void
      {
         if(this.§_-Le§)
         {
            this.§_-Le§.dispose();
            this.§_-Le§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-2S§ -= param1;
      }
      
      public function §_-dC§(param1:Number) : void
      {
         this.§_-2S§ = param1;
      }
      
      public function §_-GL§(param1:Texture) : void
      {
         this.§_-Le§.texture = param1;
      }
   }
}
