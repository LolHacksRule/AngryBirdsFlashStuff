package §"o§
{
   import §%?§.Texture;
   import §@!=§.§"S§;
   
   public class §%'§
   {
       
      
      private var §,6§:§"S§;
      
      private var §7Q§:Number;
      
      public function §%'§(param1:Texture, param2:Number)
      {
         super();
         this.§,6§ = new §"S§(param1);
         this.§7Q§ = param2;
      }
      
      public function get image() : §"S§
      {
         return this.§,6§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§7Q§;
      }
      
      public function dispose() : void
      {
         if(this.§,6§)
         {
            this.§,6§.dispose();
            this.§,6§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§7Q§ -= param1;
      }
      
      public function §1!4§(param1:Number) : void
      {
         this.§7Q§ = param1;
      }
      
      public function §6h§(param1:Texture) : void
      {
         this.§,6§.texture = param1;
      }
   }
}
