package §9T§
{
   import § N§.§1!A§;
   import §8z§.Texture;
   
   public class §0!4§
   {
       
      
      private var §<!8§:§1!A§;
      
      private var §+t§:Number;
      
      public function §0!4§(param1:Texture, param2:Number)
      {
         super();
         this.§<!8§ = new §1!A§(param1);
         this.§+t§ = param2;
      }
      
      public function get image() : §1!A§
      {
         return this.§<!8§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§+t§;
      }
      
      public function dispose() : void
      {
         if(this.§<!8§)
         {
            this.§<!8§.dispose();
            this.§<!8§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§+t§ -= param1;
      }
      
      public function §]!D§(param1:Number) : void
      {
         this.§+t§ = param1;
      }
      
      public function §6?§(param1:Texture) : void
      {
         this.§<!8§.texture = param1;
      }
   }
}
