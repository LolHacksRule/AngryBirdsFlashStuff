package §0V§
{
   import §+![§.Texture;
   import §3§.§4!!§;
   
   public class §^F§
   {
       
      
      private var §0>§:§4!!§;
      
      private var §0=§:Number;
      
      public function §^F§(param1:Texture, param2:Number)
      {
         super();
         this.§0>§ = new §4!!§(param1);
         this.§0=§ = param2;
      }
      
      public function get image() : §4!!§
      {
         return this.§0>§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§0=§;
      }
      
      public function dispose() : void
      {
         if(this.§0>§)
         {
            this.§0>§.dispose();
            this.§0>§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§0=§ -= param1;
      }
      
      public function §;F§(param1:Number) : void
      {
         this.§0=§ = param1;
      }
      
      public function §[6§(param1:Texture) : void
      {
         this.§0>§.texture = param1;
      }
   }
}
