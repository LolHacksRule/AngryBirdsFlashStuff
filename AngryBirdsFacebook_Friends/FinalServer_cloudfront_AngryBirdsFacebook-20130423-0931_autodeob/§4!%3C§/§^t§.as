package §4!<§
{
   import §'!6§.§ "E§;
   import §<5§.Texture;
   
   public class §^t§
   {
       
      
      private var §8!U§:§ "E§;
      
      private var §^"!§:Number;
      
      public function §^t§(param1:Texture, param2:Number)
      {
         super();
         this.§8!U§ = new § "E§(param1);
         this.§^"!§ = param2;
      }
      
      public function get image() : § "E§
      {
         return this.§8!U§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§^"!§;
      }
      
      public function dispose() : void
      {
         if(this.§8!U§)
         {
            this.§8!U§.dispose();
            this.§8!U§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§^"!§ -= param1;
      }
      
      public function §9"0§(param1:Number) : void
      {
         this.§^"!§ = param1;
      }
      
      public function §0Y§(param1:Texture) : void
      {
         this.§8!U§.texture = param1;
      }
   }
}
