package §^!7§
{
   import §"!<§.Texture;
   import §<!-§.§^B§;
   
   public class §[!,§
   {
       
      
      private var §7!§:§^B§;
      
      private var §0!B§:Number;
      
      public function §[!,§(param1:Texture, param2:Number)
      {
         super();
         this.§7!§ = new §^B§(param1);
         this.§0!B§ = param2;
      }
      
      public function get image() : §^B§
      {
         return this.§7!§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§0!B§;
      }
      
      public function dispose() : void
      {
         if(this.§7!§)
         {
            this.§7!§.dispose();
            this.§7!§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§0!B§ -= param1;
      }
      
      public function §9!9§(param1:Number) : void
      {
         this.§0!B§ = param1;
      }
      
      public function §'j§(param1:Texture) : void
      {
         this.§7!§.texture = param1;
      }
   }
}
