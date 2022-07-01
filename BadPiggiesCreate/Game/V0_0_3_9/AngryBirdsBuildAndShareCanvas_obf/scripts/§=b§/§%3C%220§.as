package §=b§
{
   import §7q§.§0!§;
   import §8Y§.Texture;
   
   public class §<"0§
   {
       
      
      private var §5!w§:§0!§;
      
      private var §^"8§:Number;
      
      public function §<"0§(param1:Texture, param2:Number)
      {
         super();
         this.§5!w§ = new §0!§(param1);
         this.§^"8§ = param2;
      }
      
      public function get image() : §0!§
      {
         return this.§5!w§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§^"8§;
      }
      
      public function dispose() : void
      {
         if(this.§5!w§)
         {
            this.§5!w§.dispose();
            this.§5!w§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§^"8§ -= param1;
      }
      
      public function §]-§(param1:Number) : void
      {
         this.§^"8§ = param1;
      }
      
      public function §2f§(param1:Texture) : void
      {
         this.§5!w§.texture = param1;
      }
   }
}
