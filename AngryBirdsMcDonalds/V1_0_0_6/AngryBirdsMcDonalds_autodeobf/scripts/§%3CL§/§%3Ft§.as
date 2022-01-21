package §<L§
{
   import § !^§.Texture;
   import §2![§.§[!U§;
   
   public class §?t§
   {
       
      
      private var §#Z§:§[!U§;
      
      private var §,!,§:Number;
      
      public function §?t§(param1:Texture, param2:Number)
      {
         super();
         this.§#Z§ = new §[!U§(param1);
         this.§,!,§ = param2;
      }
      
      public function get image() : §[!U§
      {
         return this.§#Z§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§,!,§;
      }
      
      public function dispose() : void
      {
         if(this.§#Z§)
         {
            this.§#Z§.dispose();
            this.§#Z§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§,!,§ -= param1;
      }
      
      public function §5!c§(param1:Number) : void
      {
         this.§,!,§ = param1;
      }
      
      public function §try§(param1:Texture) : void
      {
         this.§#Z§.texture = param1;
      }
   }
}
