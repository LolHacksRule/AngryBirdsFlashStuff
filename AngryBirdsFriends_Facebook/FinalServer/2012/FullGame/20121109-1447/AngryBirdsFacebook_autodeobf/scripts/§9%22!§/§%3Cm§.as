package §9"!§
{
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   
   public class §<m§
   {
       
      
      private var §#!5§:§0!N§;
      
      private var §]!a§:Number;
      
      public function §<m§(param1:Texture, param2:Number)
      {
         super();
         this.§#!5§ = new §0!N§(param1);
         this.§]!a§ = param2;
      }
      
      public function get image() : §0!N§
      {
         return this.§#!5§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§]!a§;
      }
      
      public function dispose() : void
      {
         if(this.§#!5§)
         {
            this.§#!5§.dispose();
            this.§#!5§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§]!a§ -= param1;
      }
      
      public function §<!?§(param1:Number) : void
      {
         this.§]!a§ = param1;
      }
      
      public function § !C§(param1:Texture) : void
      {
         this.§#!5§.texture = param1;
      }
   }
}
