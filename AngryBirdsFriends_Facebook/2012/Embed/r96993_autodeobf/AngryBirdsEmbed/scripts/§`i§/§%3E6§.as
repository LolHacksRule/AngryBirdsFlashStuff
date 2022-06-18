package §`i§
{
   import §>u§.Texture;
   import §]!6§.§>T§;
   
   public class §>6§
   {
       
      
      private var §@q§:§>T§;
      
      private var §%#§:Number;
      
      public function §>6§(param1:Texture, param2:Number)
      {
         super();
         this.§@q§ = new §>T§(param1);
         this.§%#§ = param2;
      }
      
      public function get image() : §>T§
      {
         return this.§@q§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§%#§;
      }
      
      public function dispose() : void
      {
         if(this.§@q§)
         {
            this.§@q§.dispose();
            this.§@q§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§%#§ -= param1;
      }
      
      public function §`5§(param1:Number) : void
      {
         this.§%#§ = param1;
      }
      
      public function §#G§(param1:Texture) : void
      {
         this.§@q§.texture = param1;
      }
   }
}
