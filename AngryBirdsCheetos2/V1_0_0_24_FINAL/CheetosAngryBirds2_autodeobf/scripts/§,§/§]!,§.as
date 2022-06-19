package §,§
{
   import §]!a§.Texture;
   import §^a§.§6p§;
   
   public class §]!,§
   {
       
      
      private var §#P§:§6p§;
      
      private var §>V§:Number;
      
      public function §]!,§(param1:Texture, param2:Number)
      {
         super();
         this.§#P§ = new §6p§(param1);
         this.§>V§ = param2;
      }
      
      public function get image() : §6p§
      {
         return this.§#P§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§>V§;
      }
      
      public function dispose() : void
      {
         if(this.§#P§)
         {
            this.§#P§.dispose();
            this.§#P§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§>V§ -= param1;
      }
      
      public function §,!h§(param1:Number) : void
      {
         this.§>V§ = param1;
      }
      
      public function §#!0§(param1:Texture) : void
      {
         this.§#P§.texture = param1;
      }
   }
}
