package §3,§
{
   import §<L§.Texture;
   import §]&§.§-§;
   
   public class §1"&§
   {
       
      
      private var §0" §:§-§;
      
      private var §`!7§:Number;
      
      public function §1"&§(param1:Texture, param2:Number)
      {
         super();
         this.§0" § = new §-§(param1);
         this.§`!7§ = param2;
      }
      
      public function get image() : §-§
      {
         return this.§0" §;
      }
      
      public function get lifeTime() : Number
      {
         return this.§`!7§;
      }
      
      public function dispose() : void
      {
         if(this.§0" §)
         {
            this.§0" §.dispose();
            this.§0" § = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§`!7§ -= param1;
      }
      
      public function §@""§(param1:Number) : void
      {
         this.§`!7§ = param1;
      }
      
      public function §%!q§(param1:Texture) : void
      {
         this.§0" §.texture = param1;
      }
   }
}
