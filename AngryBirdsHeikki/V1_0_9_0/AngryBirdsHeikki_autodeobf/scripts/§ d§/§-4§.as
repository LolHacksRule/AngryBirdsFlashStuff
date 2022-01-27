package § d§
{
   import § 0§.Texture;
   import §#!f§.§9!,§;
   
   public class §-4§
   {
       
      
      private var §6-§:§9!,§;
      
      private var §`4§:Number;
      
      public function §-4§(param1:Texture, param2:Number)
      {
         super();
         this.§6-§ = new §9!,§(param1);
         this.§`4§ = param2;
      }
      
      public function get image() : §9!,§
      {
         return this.§6-§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§`4§;
      }
      
      public function dispose() : void
      {
         if(this.§6-§)
         {
            this.§6-§.dispose();
            this.§6-§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§`4§ -= param1;
      }
      
      public function §&@§(param1:Number) : void
      {
         this.§`4§ = param1;
      }
      
      public function §@!;§(param1:Texture) : void
      {
         this.§6-§.texture = param1;
      }
   }
}
