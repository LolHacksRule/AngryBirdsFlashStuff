package §;'§
{
   import §"X§.Texture;
   import §;^§.§ @§;
   
   public class §?[§
   {
       
      
      private var §"U§:§ @§;
      
      private var § !"§:Number;
      
      public function §?[§(param1:Texture, param2:Number)
      {
         super();
         this.§"U§ = new § @§(param1);
         this.§ !"§ = param2;
      }
      
      public function get image() : § @§
      {
         return this.§"U§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§ !"§;
      }
      
      public function dispose() : void
      {
         if(this.§"U§)
         {
            this.§"U§.dispose();
            this.§"U§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§ !"§ -= param1;
      }
      
      public function §85§(param1:Number) : void
      {
         this.§ !"§ = param1;
      }
      
      public function §>2§(param1:Texture) : void
      {
         this.§"U§.texture = param1;
      }
   }
}
