package §#;§
{
   import §5@§.Texture;
   import §;q§.§[E§;
   
   public class §%>§
   {
       
      
      private var § T§:§[E§;
      
      private var §>!G§:Number;
      
      public function §%>§(param1:Texture, param2:Number)
      {
         super();
         this.§ T§ = new §[E§(param1);
         this.§>!G§ = param2;
      }
      
      public function get image() : §[E§
      {
         return this.§ T§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§>!G§;
      }
      
      public function dispose() : void
      {
         if(this.§ T§)
         {
            this.§ T§.dispose();
            this.§ T§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§>!G§ -= param1;
      }
      
      public function §44§(param1:Number) : void
      {
         this.§>!G§ = param1;
      }
      
      public function §7T§(param1:Texture) : void
      {
         this.§ T§.texture = param1;
      }
   }
}
