package §_-ez§
{
   import §_-Q2§.Texture;
   import §_-vO§.§_-OW§;
   
   public class §_-C8§
   {
       
      
      private var §_-9r§:§_-OW§;
      
      private var §_-vu§:Number;
      
      public function §_-C8§(param1:Texture, param2:Number)
      {
         super();
         this.§_-9r§ = new §_-OW§(param1);
         this.§_-vu§ = param2;
      }
      
      public function get image() : §_-OW§
      {
         return this.§_-9r§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-vu§;
      }
      
      public function dispose() : void
      {
         if(this.§_-9r§)
         {
            this.§_-9r§.dispose();
            this.§_-9r§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-vu§ -= param1;
      }
      
      public function §_-TN§(param1:Number) : void
      {
         this.§_-vu§ = param1;
      }
      
      public function §_-AJ§(param1:Texture) : void
      {
         this.§_-9r§.texture = param1;
      }
   }
}
