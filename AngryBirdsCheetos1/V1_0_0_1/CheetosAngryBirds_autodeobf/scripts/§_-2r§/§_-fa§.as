package §_-2r§
{
   import §_-Dk§.Texture;
   import §_-Ls§.§_-Nd§;
   
   public class §_-fa§
   {
       
      
      private var §_-CV§:§_-Nd§;
      
      private var §_-Gr§:Number;
      
      public function §_-fa§(param1:Texture, param2:Number)
      {
         super();
         this.§_-CV§ = new §_-Nd§(param1);
         this.§_-Gr§ = param2;
      }
      
      public function get image() : §_-Nd§
      {
         return this.§_-CV§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-Gr§;
      }
      
      public function dispose() : void
      {
         if(this.§_-CV§)
         {
            this.§_-CV§.dispose();
            this.§_-CV§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-Gr§ -= param1;
      }
      
      public function §_-mJ§(param1:Number) : void
      {
         this.§_-Gr§ = param1;
      }
      
      public function §_-q8§(param1:Texture) : void
      {
         this.§_-CV§.texture = param1;
      }
   }
}
