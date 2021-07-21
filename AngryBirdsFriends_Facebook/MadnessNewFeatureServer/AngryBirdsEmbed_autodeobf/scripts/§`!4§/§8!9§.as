package §`!4§
{
   import §21§.Texture;
   import §90§.§8S§;
   
   public class §8!9§
   {
       
      
      private var §%^§:§8S§;
      
      private var §%&§:Number;
      
      public function §8!9§(param1:Texture, param2:Number)
      {
         super();
         this.§%^§ = new §8S§(param1);
         this.§%&§ = param2;
      }
      
      public function get image() : §8S§
      {
         return this.§%^§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§%&§;
      }
      
      public function dispose() : void
      {
         if(this.§%^§)
         {
            this.§%^§.dispose();
            this.§%^§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§%&§ -= param1;
      }
      
      public function §#!,§(param1:Number) : void
      {
         this.§%&§ = param1;
      }
      
      public function §9R§(param1:Texture) : void
      {
         this.§%^§.texture = param1;
      }
   }
}
