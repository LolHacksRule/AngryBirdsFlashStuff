package §_-Di§
{
   import §_-Q0§.Texture;
   import §_-SE§.§_-rl§;
   
   public class §_-b-§
   {
       
      
      private var §_-53§:§_-rl§;
      
      private var §_-eQ§:Number;
      
      public function §_-b-§(param1:Texture, param2:Number)
      {
         super();
         this.§_-53§ = new §_-rl§(param1);
         this.§_-eQ§ = param2;
      }
      
      public function get image() : §_-rl§
      {
         return this.§_-53§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-eQ§;
      }
      
      public function dispose() : void
      {
         if(this.§_-53§)
         {
            this.§_-53§.dispose();
            this.§_-53§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-eQ§ -= param1;
      }
      
      public function §_-fb§(param1:Number) : void
      {
         this.§_-eQ§ = param1;
      }
      
      public function §_-P4§(param1:Texture) : void
      {
         this.§_-53§.texture = param1;
      }
   }
}
