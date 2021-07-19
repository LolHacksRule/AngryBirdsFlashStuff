package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-LP§.§_-19§;
   
   public class §_-Lo§
   {
       
      
      private var §_-v4§:§_-19§;
      
      private var §_-F7§:Number;
      
      public function §_-Lo§(param1:Texture, param2:Number)
      {
         super();
         this.§_-v4§ = new §_-19§(param1);
         this.§_-F7§ = param2;
      }
      
      public function get image() : §_-19§
      {
         return this.§_-v4§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-F7§;
      }
      
      public function dispose() : void
      {
         if(this.§_-v4§)
         {
            this.§_-v4§.dispose();
            this.§_-v4§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-F7§ -= param1;
      }
      
      public function §_-db§(param1:Number) : void
      {
         this.§_-F7§ = param1;
      }
      
      public function §_-sb§(param1:Texture) : void
      {
         this.§_-v4§.texture = param1;
      }
   }
}
