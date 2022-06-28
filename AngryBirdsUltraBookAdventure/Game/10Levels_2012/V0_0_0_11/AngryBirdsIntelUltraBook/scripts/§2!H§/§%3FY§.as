package §2!H§
{
   import §6!7§.§-m§;
   import §7i§.Texture;
   
   public class §?Y§
   {
       
      
      private var §"!P§:§-m§;
      
      private var §5!i§:Number;
      
      public function §?Y§(param1:Texture, param2:Number)
      {
         super();
         this.§"!P§ = new §-m§(param1);
         this.§5!i§ = param2;
      }
      
      public function get image() : §-m§
      {
         return this.§"!P§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§5!i§;
      }
      
      public function dispose() : void
      {
         if(this.§"!P§)
         {
            this.§"!P§.dispose();
            this.§"!P§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§5!i§ -= param1;
      }
      
      public function §6X§(param1:Number) : void
      {
         this.§5!i§ = param1;
      }
      
      public function §[B§(param1:Texture) : void
      {
         this.§"!P§.texture = param1;
      }
   }
}
