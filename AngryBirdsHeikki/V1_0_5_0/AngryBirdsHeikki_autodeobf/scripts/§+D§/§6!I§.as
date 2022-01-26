package §+D§
{
   import § !9§.Texture;
   import §[=§.§@!#§;
   
   public class §6!I§
   {
       
      
      private var §;b§:§@!#§;
      
      private var §4!%§:Number;
      
      public function §6!I§(param1:Texture, param2:Number)
      {
         super();
         this.§;b§ = new §@!#§(param1);
         this.§4!%§ = param2;
      }
      
      public function get image() : §@!#§
      {
         return this.§;b§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§4!%§;
      }
      
      public function dispose() : void
      {
         if(this.§;b§)
         {
            this.§;b§.dispose();
            this.§;b§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§4!%§ -= param1;
      }
      
      public function §-!I§(param1:Number) : void
      {
         this.§4!%§ = param1;
      }
      
      public function §9!W§(param1:Texture) : void
      {
         this.§;b§.texture = param1;
      }
   }
}
