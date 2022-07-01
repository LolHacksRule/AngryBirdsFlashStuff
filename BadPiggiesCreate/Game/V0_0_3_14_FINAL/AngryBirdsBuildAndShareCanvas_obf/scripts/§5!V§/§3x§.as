package §5!V§
{
   import §7R§.Texture;
   import §default§.§=!Z§;
   
   public class §3x§
   {
       
      
      private var §2u§:§=!Z§;
      
      private var §^!F§:Number;
      
      public function §3x§(param1:Texture, param2:Number)
      {
         super();
         this.§2u§ = new §=!Z§(param1);
         this.§^!F§ = param2;
      }
      
      public function get image() : §=!Z§
      {
         return this.§2u§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§^!F§;
      }
      
      public function dispose() : void
      {
         if(this.§2u§)
         {
            this.§2u§.dispose();
            this.§2u§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§^!F§ -= param1;
      }
      
      public function § O§(param1:Number) : void
      {
         this.§^!F§ = param1;
      }
      
      public function §7!X§(param1:Texture) : void
      {
         this.§2u§.texture = param1;
      }
   }
}
