package §_-0-K§
{
   import §_-i9§.Texture;
   import §case §.§_-G3§;
   
   public class §_-rY§
   {
       
      
      private var §_-pV§:§_-G3§;
      
      private var §_-co§:Number;
      
      public function §_-rY§(param1:Texture, param2:Number)
      {
         super();
         this.§_-pV§ = new §_-G3§(param1);
         this.§_-co§ = param2;
      }
      
      public function get image() : §_-G3§
      {
         return this.§_-pV§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-co§;
      }
      
      public function dispose() : void
      {
         if(this.§_-pV§)
         {
            this.§_-pV§.dispose();
            this.§_-pV§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-co§ -= param1;
      }
      
      public function §_-015§(param1:Number) : void
      {
         this.§_-co§ = param1;
      }
      
      public function §_-0Z§(param1:Texture) : void
      {
         this.§_-pV§.texture = param1;
      }
   }
}
