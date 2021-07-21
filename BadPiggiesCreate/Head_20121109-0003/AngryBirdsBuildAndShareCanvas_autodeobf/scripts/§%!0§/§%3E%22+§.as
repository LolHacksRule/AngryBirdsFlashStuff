package §%!0§
{
   import §+!-§.§7"#§;
   import §0!%§.Texture;
   
   public class §>"+§
   {
       
      
      private var §>i§:§7"#§;
      
      private var §%6§:Number;
      
      public function §>"+§(param1:Texture, param2:Number)
      {
         super();
         this.§>i§ = new §7"#§(param1);
         this.§%6§ = param2;
      }
      
      public function get image() : §7"#§
      {
         return this.§>i§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§%6§;
      }
      
      public function dispose() : void
      {
         if(this.§>i§)
         {
            this.§>i§.dispose();
            this.§>i§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§%6§ -= param1;
      }
      
      public function §[@§(param1:Number) : void
      {
         this.§%6§ = param1;
      }
      
      public function § "§(param1:Texture) : void
      {
         this.§>i§.texture = param1;
      }
   }
}
