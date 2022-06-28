package §_-TG§
{
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   
   public class §_-0-E§
   {
       
      
      private var §_-0DD§:§_-09b§;
      
      private var §_-047§:Number;
      
      public function §_-0-E§(param1:Texture, param2:Number)
      {
         super();
         this.§_-0DD§ = new §_-09b§(param1);
         this.§_-047§ = param2;
      }
      
      public function get image() : §_-09b§
      {
         return this.§_-0DD§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-047§;
      }
      
      public function dispose() : void
      {
         if(this.§_-0DD§)
         {
            this.§_-0DD§.dispose();
            this.§_-0DD§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-047§ -= param1;
      }
      
      public function §_-tX§(param1:Number) : void
      {
         this.§_-047§ = param1;
      }
      
      public function §_-F§(param1:Texture) : void
      {
         this.§_-0DD§.texture = param1;
      }
   }
}
