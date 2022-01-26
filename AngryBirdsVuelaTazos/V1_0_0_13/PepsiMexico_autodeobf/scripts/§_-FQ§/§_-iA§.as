package §_-FQ§
{
   import §_-Cy§.Texture;
   import §_-UX§.§_-2S§;
   
   public class §_-iA§
   {
       
      
      private var §_-Bk§:§_-2S§;
      
      private var §_-oj§:Number;
      
      public function §_-iA§(param1:Texture, param2:Number)
      {
         super();
         this.§_-Bk§ = new §_-2S§(param1);
         this.§_-oj§ = param2;
      }
      
      public function get image() : §_-2S§
      {
         return this.§_-Bk§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-oj§;
      }
      
      public function dispose() : void
      {
         if(this.§_-Bk§)
         {
            this.§_-Bk§.dispose();
            this.§_-Bk§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-oj§ -= param1;
      }
      
      public function §_-Tt§(param1:Number) : void
      {
         this.§_-oj§ = param1;
      }
      
      public function §_-wq§(param1:Texture) : void
      {
         this.§_-Bk§.texture = param1;
      }
   }
}
