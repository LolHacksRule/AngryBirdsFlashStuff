package §4A§
{
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   
   public class §'N§
   {
       
      
      private var §;5§:§%^§;
      
      private var §#N§:Number;
      
      public function §'N§(param1:Texture, param2:Number)
      {
         super();
         this.§;5§ = new §%^§(param1);
         this.§#N§ = param2;
      }
      
      public function get image() : §%^§
      {
         return this.§;5§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§#N§;
      }
      
      public function dispose() : void
      {
         if(this.§;5§)
         {
            this.§;5§.dispose();
            this.§;5§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§#N§ -= param1;
      }
      
      public function §9y§(param1:Number) : void
      {
         this.§#N§ = param1;
      }
      
      public function §8!%§(param1:Texture) : void
      {
         this.§;5§.texture = param1;
      }
   }
}
