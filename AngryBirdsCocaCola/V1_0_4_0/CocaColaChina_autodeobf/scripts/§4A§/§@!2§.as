package §4A§
{
   import § !K§.§5+§;
   import §"![§.Texture;
   
   public class §@!2§
   {
       
      
      private var §;5§:§5+§;
      
      private var §?§:Number;
      
      public function §@!2§(param1:Texture, param2:Number)
      {
         super();
         this.§;5§ = new §5+§(param1);
         this.§?§ = param2;
      }
      
      public function get image() : §5+§
      {
         return this.§;5§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§?§;
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
         this.§?§ -= param1;
      }
      
      public function §0=§(param1:Number) : void
      {
         this.§?§ = param1;
      }
      
      public function §5!,§(param1:Texture) : void
      {
         this.§;5§.texture = param1;
      }
   }
}
