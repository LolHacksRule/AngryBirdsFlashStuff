package §+!%§
{
   import §&!7§.Texture;
   import §->§.§2! §;
   
   public class § ,§
   {
       
      
      private var §"m§:§2! §;
      
      private var §@+§:Number;
      
      public function § ,§(param1:Texture, param2:Number)
      {
         super();
         this.§"m§ = new §2! §(param1);
         this.§@+§ = param2;
      }
      
      public function get image() : §2! §
      {
         return this.§"m§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§@+§;
      }
      
      public function dispose() : void
      {
         if(this.§"m§)
         {
            this.§"m§.dispose();
            this.§"m§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§@+§ -= param1;
      }
      
      public function §"Z§(param1:Number) : void
      {
         this.§@+§ = param1;
      }
      
      public function §@j§(param1:Texture) : void
      {
         this.§"m§.texture = param1;
      }
   }
}
