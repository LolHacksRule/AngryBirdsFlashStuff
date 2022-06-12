package §[B§
{
   import §@!i§.§%Q§;
   import §^Q§.Texture;
   
   public class §[!#§
   {
       
      
      private var §#9§:§%Q§;
      
      private var §?@§:Number;
      
      public function §[!#§(param1:Texture, param2:Number)
      {
         super();
         this.§#9§ = new §%Q§(param1);
         this.§?@§ = param2;
      }
      
      public function get image() : §%Q§
      {
         return this.§#9§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§?@§;
      }
      
      public function dispose() : void
      {
         if(this.§#9§)
         {
            this.§#9§.dispose();
            this.§#9§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§?@§ -= param1;
      }
      
      public function §<U§(param1:Number) : void
      {
         this.§?@§ = param1;
      }
      
      public function § !9§(param1:Texture) : void
      {
         this.§#9§.texture = param1;
      }
   }
}
