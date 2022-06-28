package §+&§
{
   import §!!9§.Texture;
   import §9E§.§;!U§;
   
   public class §@B§
   {
       
      
      private var §[!!§:§;!U§;
      
      private var §87§:Number;
      
      public function §@B§(param1:Texture, param2:Number)
      {
         super();
         this.§[!!§ = new §;!U§(param1);
         this.§87§ = param2;
      }
      
      public function get image() : §;!U§
      {
         return this.§[!!§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§87§;
      }
      
      public function dispose() : void
      {
         if(this.§[!!§)
         {
            this.§[!!§.dispose();
            this.§[!!§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§87§ -= param1;
      }
      
      public function §^;§(param1:Number) : void
      {
         this.§87§ = param1;
      }
      
      public function §4!"§(param1:Texture) : void
      {
         this.§[!!§.texture = param1;
      }
   }
}
