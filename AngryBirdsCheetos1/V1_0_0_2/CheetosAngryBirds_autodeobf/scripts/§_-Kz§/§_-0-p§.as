package §_-Kz§
{
   import §_-GY§.§_-4W§;
   import §_-yp§.Texture;
   
   public class §_-0-p§
   {
       
      
      private var §_-B9§:§_-4W§;
      
      private var §_-5Y§:Number;
      
      public function §_-0-p§(param1:Texture, param2:Number)
      {
         super();
         this.§_-B9§ = new §_-4W§(param1);
         this.§_-5Y§ = param2;
      }
      
      public function get image() : §_-4W§
      {
         return this.§_-B9§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-5Y§;
      }
      
      public function dispose() : void
      {
         if(this.§_-B9§)
         {
            this.§_-B9§.dispose();
            this.§_-B9§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-5Y§ -= param1;
      }
      
      public function §_-v8§(param1:Number) : void
      {
         this.§_-5Y§ = param1;
      }
      
      public function §_-0k§(param1:Texture) : void
      {
         this.§_-B9§.texture = param1;
      }
   }
}
