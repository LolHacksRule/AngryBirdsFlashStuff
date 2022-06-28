package §?b§
{
   import §5!@§.Texture;
   import §9W§.§6!0§;
   
   public class §;]§
   {
       
      
      private var §15§:§6!0§;
      
      private var §0^§:Number;
      
      public function §;]§(param1:Texture, param2:Number)
      {
         super();
         this.§15§ = new §6!0§(param1);
         this.§0^§ = param2;
      }
      
      public function get image() : §6!0§
      {
         return this.§15§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§0^§;
      }
      
      public function dispose() : void
      {
         if(this.§15§)
         {
            this.§15§.dispose();
            this.§15§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§0^§ -= param1;
      }
      
      public function §6!#§(param1:Number) : void
      {
         this.§0^§ = param1;
      }
      
      public function §;a§(param1:Texture) : void
      {
         this.§15§.texture = param1;
      }
   }
}
